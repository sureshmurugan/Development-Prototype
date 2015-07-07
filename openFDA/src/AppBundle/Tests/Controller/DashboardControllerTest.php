<?php


namespace AppBundle\Tests;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;


class DashboardControllerTest extends \PHPUnit_Framework_TestCase {
    protected $Dashboard;

    protected function setUp()
    {
        $this->Dashboard=new DashboardController();
    }
    public function getAllProductsTest()
    {
        $this->assertEmpty($this->Dashboard->getAllProductsAction());
        $this->assertNull($this->Dashboard->getAllProductsAction());
    }
    public function getAllDevicesTest()
    {
        $this->assertEmpty($this->Dashboard->getAllDevicesAction());
        $this->assertNull($this->Dashboard->getAllDevicesAction());
    }
    public function getAllDrugIndicationTest()
    {
        $this->assertEmpty($this->Dashboard->getAllDrugIndicationAction());
        $this->assertNull($this->Dashboard->getAllDrugIndicationAction());
    }
    public function getAllReportedReactionsTest()
    {
        $this->assertEmpty($this->Dashboard->getAllReportedReactionsAction());
        $this->assertNull($this->Dashboard->getAllDrugIndicationAction());
    }

}
 