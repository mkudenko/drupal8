<?php namespace Drupal\Tests\touchcast\Unit;

use Drupal\Tests\UnitTestCase;

class TouchcastFilesPermissionsTest extends UnitTestCase
{

    public function testSettingsDotPhpPermissions()
    {
        $fileLocation = __DIR__ . '/../../../../../../sites/default/settings.php';

        $correctPermissions = '444';
        $actualPermissions = substr(sprintf('%o', fileperms($fileLocation)), -4);

        $this->assertEquals($correctPermissions, $actualPermissions);
    }

}
