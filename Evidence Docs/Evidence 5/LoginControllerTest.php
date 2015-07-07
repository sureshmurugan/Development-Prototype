<?php
/**
 * Created by PhpStorm.
 * User: vijaykumar
 * Date: 7/7/15
 * Time: 11:47 AM
 */

namespace AppBundle\Tests\Controller;


use AppBundle\Controller\LoginController;

class LoginControllerTest extends \PHPUnit_Framework_TestCase {
    protected $login;

    protected function setUp()
    {
        $this->$login=new LoginController();
    }

    public function userloginActionTest()
    {
        $this->assertEmpty($this->Dashboard->userlogin());
        $this->assertNull($this->Dashboard->userlogin());
    }

}
 