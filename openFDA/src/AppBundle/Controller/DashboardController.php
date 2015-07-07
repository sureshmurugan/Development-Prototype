<?php


namespace AppBundle\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use Symfony\Component\HttpFoundation\Response;



/**
 * @Route("/FDA")
 *
 */

class DashboardController extends Controller {

    public function getDbConnection() {

        return $this->getDoctrine()->getManager()->getConnection();
    }
    /**
     * @Route("/getAllProducts")
     *
     */
    public function getAllProductsAction(){

        $conn=$this->getDbConnection();
        $dataMain=array();
        $chartData = new \stdClass();

        $productsList=$conn->query("SELECT * FROM products_month_data pmd inner join products p on p.product_id=pmd.product_id group by p.product_id")->fetchAll();
        for($k=0;$k< sizeof($productsList);$k++)
        {
            $productsListObj = new \stdClass();
            $products = array();
            $prod_id= $productsList[$k]['product_id'];
            $allDrugYrs=$conn->query("SELECT * FROM products_month_data where product_id=$prod_id group by year")->fetchAll();
            for($j=0;$j< sizeof($allDrugYrs);$j++)
            {
                $year=$allDrugYrs[$j]['year'];
                $allDrugCount=$conn->query("SELECT sum(count) as sum FROM products_month_data where year=$year and product_id=$prod_id")->fetch();
                $products[$j]=intval($allDrugCount['sum']);
            }
            $productsListObj->label=$productsList[$k]['product_name'];
            $productsListObj->data=$products;
            array_push($dataMain,$productsListObj);
         }
        $chartData->main_data=$dataMain;
        return new Response(json_encode($chartData));

    }

    /**
     * @Route("/getAllDevices")
     *
     */

    public function getAllDevicesAction(){
        /* Initiate the Database Connection */
        $conn=$this->getDbConnection();

        /* Create and Array to hold the JSON array values */
        $pieData=array();

        $piechartData = new \stdClass();
        $deviceList=$conn->query("SELECT * FROM `devices_events_data` ded inner join `medical_devices` md on md.md_id=ded.md_id group by md.md_id")->fetchAll();
        for($i=0;$i< sizeof($deviceList);$i++)
        {
            $deviceEventsObj = new \stdClass();
            $data=array();
            $md_id= $deviceList[$i]['md_id'];
            $alldeviceEvents=$conn->query("SELECT * FROM devices_events_data where md_id=$md_id group by md_id")->fetchAll();
            for($j=0;$j< sizeof($alldeviceEvents);$j++)
            {

                $alldeviceEventsCount=$conn->query("SELECT sum(count) as sum FROM devices_events_data where md_id=$md_id ")->fetch();
                $devices=intval($alldeviceEventsCount['sum']);
                array_push($data,$devices);
            }
            $deviceEventsObj->label=$deviceList[$i]['md_name'];
            $deviceEventsObj->value=$devices;
            array_push($pieData, $deviceEventsObj);
        }
        $piechartData->content=$pieData;
        return new Response(json_encode($piechartData));
    }

    /**
     * @Route("/getAllDrugIndications")
     *
     */
    public function getAllDrugIndicationsAction(){
        /* Initiate the Database Connection */
        $conn=$this->getDbConnection();

        /* Create and Array to hold the JSON array values */
        $indicateData=array();
        $indications=array();
        $drugIndicateData = new \stdClass();
        $diseaseList=$conn->query("SELECT * FROM `drugs_indication_data` group by `year`")->fetchAll();
        for($i=0;$i< sizeof( $diseaseList);$i++)
        {
            $drugIndicateObj = new \stdClass();
            $year= $diseaseList[$i]['year'];

            $data=array();
            $drugIndicationCount=$conn->query("SELECT sum(count) as sum FROM drugs_indication_data where `year`=$year ")->fetch();
            $indications[$i]=intval( $drugIndicationCount['sum']);
            
        }
      
        $drugIndicateObj->data=$indications;
        array_push($indicateData, $drugIndicateObj);
        $drugIndicateData->main_data=$indicateData;
        return new Response(json_encode($drugIndicateData));

    }

    /**
     * @Route("/getAllReportedReactions")
     *
     */
    public function getAllReportedReactionsAction(){
        /* Initiate the Database Connection */
        $conn=$this->getDbConnection();

        /* Create and Array to hold the JSON array values */
        $reportedData=array();
        $reactions=array();
        $reportedReactionData = new \stdClass();
        $reactionsList=$conn->query("SELECT * FROM `drugs_reported_reaction_data` rrd inner join reactions_list rl on rl.`reactions_id`=rrd.`reactions_id` GROUP By year")->fetchAll();
        for($i=0;$i< sizeof($reactionsList);$i++)
        {
            $reportedReactionObj = new \stdClass();
            $year= $reactionsList[$i]['year'];
            $label[$i]=$reactionsList[$i]['year'];
            $reportedReactionCount=$conn->query("SELECT sum(count) as sum FROM drugs_reported_reaction_data where `year`=$year ")->fetch();
            $reactions[$i]=intval($reportedReactionCount['sum']);
        }
       
        $reportedReactionObj->data=$reactions;
        array_push($reportedData, $reportedReactionObj);
        $reportedReactionData->main_data=$reportedData;
        return new Response(json_encode($reportedReactionData));

    }
}