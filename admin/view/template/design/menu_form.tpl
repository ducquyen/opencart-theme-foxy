<?php echo $header; ?>

<div id="content">
    <div class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
            <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
        <?php } ?>
    </div>
    <?php if ($warning) { ?>
        <div class="warning">
            <?=$warning?>
        </div>
    <?php } ?>
    <div class="box">
	<div class="heading">
	    <h1><img src="view/image/category.png" alt=""><?=$heading_title?></h1>
	    <div class="buttons">
            <a class="button" onclick="$('#form').submit()"><?=$save_btn_text?></a>
            <a class="button" href="<?=$cancel?>"><?=$cancel_btn_text?></a>
	    </div>
	</div><!-- end .heading -->
	<div class="content">
	    <div id="tabs" class="htabs">
                <!-- if is edit page - show active menu item -->
                <?php foreach($menus as $menu) { ?>
                    <?php if ($menu['active'] && ! $show_identifer) { ?>
                        <a href="<?=$menu['href']?>" class="selected"><?=$menu['name']?></a>
                    <?php } else { ?>
                        <a href="<?=$menu['href']?>"><?=$menu['name']?></a>
                    <?php } ?>
                <?php } ?>
                
                <!-- if is NOT edit page - show '+' like active -->
                <?php if ($show_identifer) { ?>
                    <a class="selected" href="<?=$create_menu?>">+</a>
                <?php } else { ?>
                    <a href="<?=$create_menu?>" title="<?=$create_menu_text?>">+</a>
                <?php } ?>
	    </div><!-- end #tabs -->
	    <form action="" method="post" enctype="multipart/form-data" id="form">
		<ul id="create_menu">
                    <li>
                        <span><?=$edit_name_text?></span>
                        <input name="menu_name" type="text" value="<?=$default_name?>" placeholder="<?=$edit_name_text?>...">
                    </li>
                    <li>
                        <span><?=$edit_identifer_text?></span>
                        <?php if ($show_identifer) { ?>
                            <input name="menu_code" type="text" value="<?=$default_identifer?>" placeholder="<?=$edit_identifer_text?>...">
                        <?php } else { ?>
                            <input type="text" value="<?=$default_identifer?>" value="<?=$default_identifer?>" disabled="disabled" placeholder="<?=$edit_identifer_text?>...">
                            <input type="hidden" name="menu_code" value="<?=$default_identifer?>">
                        <?php }  ?>
                        <i><?=$edit_identifer_hint_text?></i>
                    </li>
                    <li>
                        <span><?=$edit_wrapper_text?></span>
                        <input name="menu_wrapper" type="text" placeholder="edit_wrapper_text" value="<?=$default_template_wrapper?>">
                        <i><?=$edit_wrapper_hint_text?></i>
                    </li>
                    <li>
                        <span><?=$edit_template?></span>
                        <textarea name="menu_template" class="template"><?=$default_template?></textarea>
                        <p><?=$edit_template_hint_text?></p>
                    </li>
                </ul>
	    </form>
	</div><!-- end .content -->
    </div><!-- end .box -->
</div><!-- end #content -->

<script lang="javascript" src="/admin/view/javascript/jquery/nestedsortable/nestedsortable.js"></script>
<script lang="javascript" src="/admin/view/javascript/jquery/nestedsortable/common.js"></script>

<?php echo $footer; ?>