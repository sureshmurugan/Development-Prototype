<?php
namespace AppBundle\Controller;

namespace AppBundle\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use Symfony\Component\HttpFoundation\Response;
/**
 * @Route("/drugdataapi")
 *
 */
class DrugIndicationController extends Controller{

    public function getDbConnection() {

        return $this->getDoctrine()->getManager()->getConnection();
    }
    public function putAllDrugIndicationAction(){

        try {

            $connection_obj= mysql_connect("localhost","root",'') or mysql_error();
            mysql_select_db("fda") or mysql_error(); // True if DB Selected

            /**********************************************************************/
            /** GET DISEASE LIST FROM DB **/
            $disease_list_query = mysql_query("select * from disease_list");
            while( $result = mysql_fetch_assoc( $disease_list_query ) ) {
                $res[$result['disease_id']] = trim($result['disease_name']);
            }
            /**********************************************************************/


            /**********************************************************************/
            /** GET GENDER FROM DB **/
            $gender_type_query = mysql_query("select * from gender");
            if( mysql_num_rows( $gender_type_query)  ) {
                while( $gender_type_array = mysql_fetch_assoc( $gender_type_query ) ) {
                    $gender_type_id[$gender_type_array['gender_id']] = $gender_type_array['gender_name'];
                }
            } else {
                $drug_list_query = mysql_query("INSERT INTO `drugs_type`(drug_type_id,drug_type) VALUES(NULL, 'Serious'), (NULL, 'Less Serious') ");
                $drug_type_id[1] = 'Serious';
                $drug_type_id[2] = 'Less Serious';
            }
            /**********************************************************************/

            /**********************************************************************/
            /** GET GENDER CATEGORY FROM DB **/
            $gender_cat_type_query = mysql_query("select * from gender_category");
            while( $gender_cat_type_array = mysql_fetch_assoc( $gender_cat_type_query ) ) {
                $gender_cat_type_id[$gender_cat_type_array['gender_category_id']] = $gender_cat_type_array['gender_category'];
            }
            /**********************************************************************/



        } catch( Exception $e ) {
            echo $e->getMessage();
        }

        /** REST API CALLING **/
        /** CALL CURL TO OPENFDA API **/

        /* RUN CURL 2 TIMES
         * 1. Male
         * 2. Female
         */

        /** INPUT PARAMETERS - YEAR **/
        $year_from  = '2004';
        $year_to  = '2004';

        $array = array();
        for( $i=1; $i<=2; $i++ ) {

            //MALE || FEMALE  - AGE: 5-17 - OPEN FDA REST API URL
            $drug_indication_data_one = "https://api.fda.gov/drug/event.json?search=receivedate:[".$year_from."0101+TO+".$year_to."1231]+AND+patient.patientsex:$i+AND+patient.patientonsetage:[5+TO+17]&count=patient.drug.drugindication.exact";

            /** GET GENDER  CATEGORY  ID HERE **/
            foreach( $gender_cat_type_id as $key=> $val ) {
                if( preg_match( '/\[5\+TO\+17\]/i',$drug_indication_data_one  ) ) {
                    if( preg_match( '/5 to 17/i',$val ) )
                        $gender_cat_sub_id_one = $key;
                }
            }

            //MALE || FEMALE  - AGE: 18-54 - OPEN FDA REST API URL
            $drug_indication_data_two = "https://api.fda.gov/drug/event.json?search=receivedate:[".$year_from."0101+TO+".$year_to."1231]+AND+patient.patientsex:$i+AND+patient.patientonsetage:[18+TO+54]&count=patient.drug.drugindication.exact";

            /** GET GENDER SUB CAT ID HERE **/
            foreach( $gender_cat_type_id as $key=> $val ) {
                if( preg_match( '/\[18\+TO\+54\]/i',$drug_indication_data_two  ) ) {
                    if( preg_match( '/18 to 54/i',$val ))
                        $gender_cat_sub_id_two = $key;
                }
            }

            //MALE || FEMALE  - AGE: 55-90 - OPEN FDA REST API URL
            $drug_indication_data_three = "https://api.fda.gov/drug/event.json?search=receivedate:[".$year_from."0101+TO+".$year_to."1231]+AND+patient.patientsex:$i+AND+patient.patientonsetage:[55+TO+90]&count=patient.drug.drugindication.exact";

            /** GET GENDER SUB CAT ID HERE **/
            foreach( $gender_cat_type_id as $key=> $val ) {
                if( preg_match( '/\[55\+TO\+90\]/i',$drug_indication_data_three  ) ) {
                    if( preg_match( '/55 to 90/i',$val ))
                        $gender_cat_sub_id_three = $key;
                }
            }
            /*************************************************************/


            /*************************************************************/
            /** GET GENDER ID FROM DATABASE **/
            $gender_id_male = '';
            $gender_id_female = '';
            foreach( $gender_type_id as $gender_key => $gender_value ) {
                if( preg_match( '/^male$/i', $gender_value ) ) {
                    $gender_id_male = $gender_key;
                }

                if( preg_match( '/^female$/i', $gender_value ) ){
                    $gender_id_female = $gender_key;
                }
            }
            /************************************************************************/
            // FIRST CURL URL - CALLED HERE  ( // MALE || FEMALE : - AGE :  05 TO 17 )
            $curl_handle  = curl_init( $drug_indication_data_one );
            curl_setopt($curl_handle,CURLOPT_RETURNTRANSFER,true);
            curl_setopt($curl_handle,CURLOPT_SSL_VERIFYPEER,false);  // TO DISABLE HTTPS
            $curl_result = curl_exec($curl_handle);

            if( $i==1 ) { //MALE FROM OPENFDA
                $array['drug_indication_male_5_17'] = json_decode($curl_result,true);

                /** GET GENDER ID HERE **/
                $array['drug_indication_male_5_17']['gender_id'] = $gender_id_male;

                /**  GENDER AGE SUB CAT ID **/
                $array['drug_indication_male_5_17']['gender_age_cat_id'] = $gender_cat_sub_id_one;

            } else { // FEMALE FROM OPEND FDA
                $array['drug_indication_female_5_17'] = json_decode($curl_result,true );

                /** GET GENDER ID HERE **/
                $array['drug_indication_female_5_17']['gender_id'] = $gender_id_female;

                /**  GENDER AGE SUB CAT ID **/
                $array['drug_indication_female_5_17']['gender_age_cat_id'] = $gender_cat_sub_id_one;
            }

            /************************************************************************/

            /************************************************************************/
            // SECOND CURL URL - CALLED HERE ( MALE || FEMALE : - AGE :  18 TO 54 )
            $curl_handle  = curl_init( $drug_indication_data_two );
            curl_setopt($curl_handle,CURLOPT_RETURNTRANSFER,true);
            curl_setopt($curl_handle,CURLOPT_SSL_VERIFYPEER,false);  // TO DISABLE HTTPS
            $curl_result = curl_exec($curl_handle);

            if( $i==1 ) { // MALE FROM OPEN FDA

                $array['drug_indication_male_18_54'] = json_decode($curl_result,true);

                /** GET GENDER ID HERE **/
                $array['drug_indication_male_18_54']['gender_id'] = $gender_id_male;

                /**  GENDER AGE SUB CAT ID **/
                $array['drug_indication_male_18_54']['gender_age_cat_id'] = $gender_cat_sub_id_two;

            } else { //FEMALE FROM OPEND FDA

                $array['drug_indication_female_18_54'] = json_decode($curl_result,true );

                /** GET GENDER ID HERE **/
                $array['drug_indication_female_18_54']['gender_id'] = $gender_id_female;

                /**  GENDER AGE SUB CAT ID **/
                $array['drug_indication_female_18_54']['gender_age_cat_id'] = $gender_cat_sub_id_two;
            }

            /************************************************************************/


            /************************************************************************/
            // THIRD CURL URL - CALLED HERE ( MALE || FEMALE : - AGE :  55 TO 90 )
            $curl_handle  = curl_init( $drug_indication_data_three );
            curl_setopt($curl_handle,CURLOPT_RETURNTRANSFER,true);
            curl_setopt($curl_handle,CURLOPT_SSL_VERIFYPEER,false);  // TO DISABLE HTTPS
            $curl_result = curl_exec($curl_handle);

            if( $i==1 ) { // MALE FROM OPEN FDA

                $array['drug_indication_male_55_90'] = json_decode($curl_result,true);

                /** GET GENDER ID HERE **/
                $array['drug_indication_male_55_90']['gender_id'] = $gender_id_male;

                /**  GENDER AGE SUB CAT ID **/
                $array['drug_indication_male_55_90']['gender_age_cat_id'] = $gender_cat_sub_id_three;

            } else { //FEMALE FROM OPEND FDA

                $array['drug_indication_female_55_90'] = json_decode($curl_result,true );

                /** GET GENDER ID HERE **/
                $array['drug_indication_female_55_90']['gender_id'] = $gender_id_female;

                /**  GENDER AGE SUB CAT ID **/
                $array['drug_indication_female_55_90']['gender_age_cat_id'] = $gender_cat_sub_id_three;
            }

            /************************************************************************/




        }
        curl_close($curl_handle);

        /** DISEASE, GENDER, GENDER AGE SUB TYPE, YEAR , COUNT -   PART HERE  **/
        $i=0;
        foreach( $array as $key=> $val ) {
            $drug_type_id_insert= '';

            /** CHECK GENDER CATEGORY  ID HERE **/
            foreach( $val['results'] as $value  ) {

                foreach( $res as $key_disease_id=>$val_drug ) { //Disease ID & Disease Name

                    $replace_val = preg_replace('/\[|\]\//','', $val_drug);

                    if( preg_match( "/^$replace_val$/i", preg_replace('/\[|\]|\//','', $value['term']) ) ) {
                        $final_result[$key_disease_id]['disease_id'] = trim($key_disease_id);
                        $final_result[$key_disease_id]['disease_name'] = trim($value['term']);
                        $final_result[$key_disease_id]['gender'][] = array( "gender_id"=> $val['gender_id'], "gender_cat_id"=>  $val['gender_age_cat_id'], "year"=> $year_from, "count" => $value['count']  );
                    }
                }
            }
        }


        ksort($final_result,SORT_NUMERIC);
        /**************************************************************************/
        /** HERE WE INSERT THE DATA INTO DATABASE **/
        foreach( $final_result as $key=>$val ) {

            foreach( $val['gender'] as  $inner_val) {

                mysql_query("INSERT INTO `drugs_indication_data` (disease_id,gender_id,gender_category_id,year,count) values($val[disease_id], $inner_val[gender_id], $inner_val[gender_cat_id], $year_from, $inner_val[count]) ");

            }
        }
    }
}