<?php
namespace AppBundle\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
/**
 * @Route("/FDA")
 *
 */

class LoginController extends Controller {


    public function getDbConnection() {

        return $this->getDoctrine()->getManager()->getConnection();
    }
    /**
     * @Route("/")
     * @Template()
     */

    public function LoginAction()
    {
        return $this->render('login.html.twig');
    }

    /**
     * @Route("/login")
     * @Template()
     */

    public function indexAction()
    {

        return $this->render('login.html.twig');
    }

    /**
     * @Route("/userlogin")
     *
     */
    public function userloginAction(){
        $userLoginData = json_decode($_POST['data']);
        $usersecuredPassword = md5($userLoginData->password);
        $dbConn=$this->getDbConnection();
        $dbpassword = $dbConn->query("select password from user_credientials where user_name='$userLoginData->username'")->fetch();
        $valid = '';
        if( $dbpassword['password']===$usersecuredPassword){
            $valid = "password match";
        }
        else{
            $valid = "password not match";
        }
        return new Response(json_encode($valid));

    }

}