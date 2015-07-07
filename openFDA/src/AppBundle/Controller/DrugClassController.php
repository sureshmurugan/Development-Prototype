<?php

namespace AppBundle\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use Symfony\Component\HttpFoundation\Response;
/**
 * @Route("/dataapi")
 *
 */
 class DrugClassController extends Controller {
     public function getDbConnection() {

         return $this->getDoctrine()->getManager()->getConnection();
     }

     public function putAllDrugClassAction(){

         try {

             $connection_obj= mysql_connect("localhost","root",'') or mysql_error();
             mysql_select_db("fda") or die('coulnt select db'); // True if DB Selected

             /** GET DRUG LIST FROM DB **/
             $drug_list_query = mysql_query("select * from drugs_list");
             while( $result = mysql_fetch_assoc( $drug_list_query ) ) {
                 $res[$result['drug_id']] = trim($result['drug_name']);
             }

             /** GET DRUG TYPS ID FROM DB **/
             $drug_type_query = mysql_query("select * from drugs_type");
             if( mysql_num_rows( $drug_type_query)  ) {
                 while( $drug_type_array = mysql_fetch_assoc( $drug_type_query ) ) {
                     $drug_type_id[$drug_type_array['drug_type_id']] = $drug_type_array['drug_type'];
                 }
             } else {
                 $drug_list_query = mysql_query("INSERT INTO `drugs_type`(drug_type_id,drug_type) VALUES(NULL, 'Serious'), (NULL, 'Less Serious') ");
                 $drug_type_id[1] = 'Serious';
                 $drug_type_id[2] = 'Less Serious';
             }


         } catch( Exception $e ) {
             echo $e->getMessage();
         }

         echo "<pre>";
         print_r( $res );
         print_r( $drug_type_id );


         /** REST API CALLING **/
         /** CALL CURL TO OPENFDA API **/


         /* RUN CURL 2 TIMES
          * 1. Serious Count
          * 2. Less Serious Count
          */


         /** INPUT PARAMETERS **/
         $year_from  = '2004';
         $year_to  = '2004';


         $array = array();
         for( $i=1; $i<=2; $i++ ) {

             $openfda_url = "https://api.fda.gov/drug/event.json?search=serious:$i+AND+receivedate:[".$year_from."0101+TO+".$year_to."1231]&count=patient.drug.openfda.pharm_class_epc.exact";

             echo $openfda_url."<br/>";
             $curl_handle  = curl_init( $openfda_url );
             curl_setopt($curl_handle,CURLOPT_RETURNTRANSFER,true);
             curl_setopt($curl_handle,CURLOPT_SSL_VERIFYPEER,false);  // TO DISABLE HTTPS
             $curl_result = curl_exec($curl_handle);
             ( $i==1 ) ? $array['serious'] = json_decode($curl_result,true) : $array['less_serious'] = json_decode($curl_result,true ) ;
             curl_close($curl_handle);
         }

         $get_count  = count( $array['serious']['results'] );

         /** GET DRUG NAME , SERIOUS COUNT , LESS SERIOUS COUNT **/
         $i=0;
         foreach( $array as $key=> $val ) {
             $drug_type_id_insert= '';
             /** CHECK DRUG TYPE ID HERE **/
             if( $drug_type_id[1] == 'Serious' || $drug_type_id[1] == 'serious') {
                 $drug_type_id_insert = 1;
                 $drug_type_id[1] ='';
             } else if( $drug_type_id[2] == 'Serious' || $drug_type_id[2] == 'serious' ){

                 $drug_type_id_insert = 2;
                 $drug_type_id[2]='';
             } else if( $drug_type_id[1] == 'Less Serious' || $drug_type_id[1] == 'less seroius' ){

                 $drug_type_id_insert = 1;
                 $drug_type_id[1] ='';
             } else if( $drug_type_id[2] == 'Less Serious' || $drug_type_id[2] == 'less serious' ){

                 $drug_type_id_insert = 2;
                 $drug_type_id[2]='';
             }

             foreach( $val['results'] as $value  ) {

                 foreach( $res as $key_drug_id=>$val_drug ) {

                     $replace_val = preg_replace('/\[|\]/','', $val_drug);

                     if( preg_match( "/$replace_val/i", preg_replace('/\[|\]/','', $value['term']) ) ) {

                         $final_result[$key_drug_id]['drug_id'] = trim($key_drug_id);
                         $final_result[$key_drug_id]['drug_name'] = trim($value['term']);
                         $final_result[$key_drug_id]['drug_type_ids'][$drug_type_id_insert] = trim($value['count']);

                     }

                 }

             }
         }

         echo "<pre>";
         ksort($final_result,SORT_NUMERIC);
         print_r($final_result  );

         /**************************************************************************/
         /** HERE WE INSERT THE DATA INTO DATABASE **/
         foreach( $final_result as $key=>$val ) {
             mysql_query("INSERT INTO drugs_classes_data (drug_id,drug_type_id,year,count) values($val[drug_id], 1,'".$year_from."', ".$val["drug_type_ids"][1].") ");

             mysql_query( "INSERT INTO drugs_classes_data (drug_id,drug_type_id,year,count) values( $val[drug_id], 2,'".$year_from."', ".$val["drug_type_ids"][2].")");

         }
     }


} 