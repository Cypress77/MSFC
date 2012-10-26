<?php
    /*
    * Project:     Clan Stat
    * License:     Creative Commons - Attribution-Noncommercial-Share Alike 3.0 Unported
    * Link:        http://creativecommons.org/licenses/by-nc-sa/3.0/
    * -----------------------------------------------------------------------
    * Began:       2011
    * Date:        $Date: 2011-10-24 11:54:02 +0200 $
    * -----------------------------------------------------------------------
    * @author      $Author: Edd $
    * @copyright   2011-2012 Edd - Aleksandr Ustinov
    * @link        http://wot-news.com
    * @package     Clan Stat
    * @version     $Rev: 2.1.4 $
    *
    */
?>
<?php
    error_reporting(E_ALL);
    ini_set("display_errors", 1);
    if (file_exists(dirname(__FILE__).'/func_ajax.php')) {
        define('LOCAL_DIR', dirname(__FILE__));
        include_once (LOCAL_DIR.'/func_ajax.php');

        define('ROOT_DIR', base_dir('ajax'));

    }else{
        define('LOCAL_DIR', '.');
        include_once (LOCAL_DIR.'/func_ajax.php');

        define('ROOT_DIR', '..');

    }
    include_once(ROOT_DIR.'/including/check.php');
    include_once(ROOT_DIR.'/function/auth.php');
    include_once(ROOT_DIR.'/function/mysql.php');
    include_once(ROOT_DIR.'/function/func.php');
    include_once(ROOT_DIR.'/function/func_main.php');
    include_once(ROOT_DIR.'/function/config.php');
    include_once(ROOT_DIR.'/config/config_'.$config['server'].'.php');                      

    foreach(scandir(ROOT_DIR.'/translate/') as $files){
        if (preg_match ("/_".$config['lang'].".php/", $files)){
            include_once(ROOT_DIR.'/translate/'.$files);
        }
    } 
    include_once(ROOT_DIR.'/function/cache.php');

    //cache
    $cache = new Cache(ROOT_DIR.'/cache/');
    $res = $cache->get('res',0);
    if($_POST['type'] != 'all'){
        $type = array($_POST['type']);   
    }else{
        $type = array('AT-SPG','SPG','lightTank','mediumTank','heavyTank');
    }
    if($_POST['nation'] != 'all'){
        $nation = array($_POST['nation']);
    }else{
        $nation = array('germany','usa','china','ussr','france','uk');
    }
    if($_POST['lvl'] != 'all'){
        $lvl = array($_POST['lvl']);
    }else{
        $lvl = array('1','2','3','4','5','6','7','8','9','10');
    }
    $tanks_group = tanks_group_full($res,$nation,$type,$lvl);

    //print_r($res);
?>
<script type="text/javascript" id="js">     
    $(document).ready(function() 
    { 
        $("#tankslist").tablesorter({sortList:[[0,0]], widgets: ['zebra']});
    });
</script>
<table id="tankslist" class="tablesorter wid" cellspacing="1">
    <thead>
        <tr>
            <th><?php echo $lang['name']; ?></th>
            <?php foreach($tanks_group as $type => $types){
                    foreach($types as $lvl => $tank) {
                        foreach($tank as $column => $tmp){ ?>
                        <th><?php echo $column; ?></th>
                        <?php }
                    }
                }
            ?>
        </tr>
    </thead>
    <tbody>
        <?php foreach($res as $name => $val){ ?>
            <tr>
                <td><a href="<?php echo $config['base'].$name.'/'; ?>"
                        target="_blank"><?php echo $name; ?></a></td>
                <?php foreach($tanks_group as $type => $types){
                        foreach($types as $lvl => $tmp){
                            foreach($tmp as $column => $one){ ?>
                            <td>
                                <?php
                                    if(isset($val['tank'][$lvl][$type][$column])){
                                        if($val['tank'][$lvl][$type][$column]['total'] == 0){
                                            $percent = 0;
                                        }else{
                                            $percent = round($val['tank'][$lvl][$type][$column]['win']*100/$val['tank'][$lvl][$type][$column]['total'],2);
                                        }

                                        echo $percent.'% ('.$val['tank'][$lvl][$type][$column]['total'].'/'.$val['tank'][$lvl][$type][$column]['win'].')';
                                    }else{
                                        echo '0% (0/0)';
                                    }

                                ?>
                            </td>
                            <?php
                            }
                        }
                    }
                ?>
            </tr>
            <?php } ?>
    </tbody>  
    </table>