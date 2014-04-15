<?php 

/**
 * Include autoloader for loading all the application classes
 */
require_once('lib/TeilAutoload.php');


/**
 * Init autoloader
 *
 *  1st param - priority files
 *  2nd param - files to exclude
 *
 */
$teilautoload = new TeilAutoload(
    array('Container.php', 'App.php'),
    array('autoload.php')
);


/**
 * Simply load all the files (limit 100)
 */
$teil_files = $teilautoload->getLoaderPaths(DIR_SYSTEM . 'teil/');
foreach ($teil_files as $teil_file_path)
{
    require_once($teil_file_path);
}


/**
 * Startup the application
 */
require_once('startup.php');