<?php echo $header; ?>

<!-- Content -->
<div class="container">
  <div class="row">
    <?php if (trim($column_left)): ?>
      <div class="col-lg-3 col-md-4 col-sm-4 hidden-xs">
        <?php echo $column_left; ?>
      </div>
      <div class="col-lg-9 col-md-8 col-sm-8 the-content account-page">
    <?php elseif (trim($column_right)): ?>
      <div class="col-lg-9 col-md-8 col-sm-8 the-content account-page">
    <?php else: ?>
      <div class="col-lg-12 the-content account-page">
    <?php endif ?>

      <!-- Breadcrumbs -->
      <div class="breadcrumb">
        <?php foreach ($breadcrumbs as $key => $breadcrumb) { ?>
          <?php if ($key == count($breadcrumbs) - 1): ?>
            <li><?php echo $breadcrumb['text']; ?></li>
          <?php else: ?>
            <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
          <?php endif ?>
        <?php } ?>
      </div>

      <!-- Title -->
      <h1><?php echo $heading_title; ?></h1>

      <!-- Content -->
      <?php if ($products) { ?>
        <table class="table-wishlist cart">
          <thead>
            <tr>
              <th class="text-center"><?php echo $column_image; ?></th>
              <th class="text-left"><?php echo $column_name; ?></th>
              <th class="text-left hidden-xs"><?php echo $column_model; ?></th>
              <th class="text-right hidden-xs"><?php echo $column_stock; ?></th>
              <th class="text-right"><?php echo $column_price; ?></th>
              <th class="text-right"><?php echo $column_action; ?></th>
            </tr>
          </thead>
          <?php foreach ($products as $product) { ?>
          <tbody id="wishlist-row<?php echo $product['product_id']; ?>">
            <tr>
              <td class="text-center"><?php if ($product['thumb']) { ?>
                <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
                <?php } else { ?>
                <a href="<?php echo $product['href']; ?>"><img src="catalog/view/theme/default/image/placeholder.png" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
                <?php } ?></td>
              <td class="text-left"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?> </a></td>
              <td class="text-left hidden-xs"><?php echo $product['model']; ?></td>
              <td class="text-right hidden-xs"><?php echo $product['stock']; ?></td>
              <td class="text-right"><?php if ($product['price']) { ?>
                <div class="price">
                  <?php if (!$product['special']) { ?>
                  <?php echo $product['price']; ?>
                  <?php } else { ?>
                  <?php echo $product['special']; ?><span class="price-old"><?php echo $product['price']; ?></span>
                  <?php } ?>
                </div>
                <?php } ?></td>
              <td class="text-right">
                <a onclick="addToCart('<?php echo $product['product_id']; ?>');" data-toggle="tooltip" title="<?php echo $button_cart; ?>" class="btn btn-micro tooltiped" data-toggle="tooltip" data-placement="left"><span class="glyphicon glyphicon-shopping-cart"></span></a>
                <a href="<?php echo $product['remove']; ?>" data-toggle="tooltip" data-placement="left" title="<?php echo $button_remove; ?>" class="btn btn-micro tooltiped"><span class="glyphicon glyphicon-remove"></span></a>
              </td>
            </tr>
          </tbody>
          <?php } ?>
        </table>
       <?php } else { ?>
        <p><?php echo $text_empty; ?></p>
      <?php } ?>
      <div class="buttons clearfix">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"> <?php echo $button_continue; ?></a></div>
      </div>
    </div>
    <?php if (trim($column_right) AND ! trim($column_left)): ?>
      <div class="col-lg-3 col-md-4 col-sm-4 hidden-xs">
        <?php echo $column_right; ?>
      </div>
    <?php endif ?>
  </div>
</div>

<?php echo $footer; ?>