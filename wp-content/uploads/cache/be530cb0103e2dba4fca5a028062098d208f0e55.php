<?php $fields = get_fields();

?>
<?php if($fields): ?>
  <?php $__currentLoopData = $fields; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $name => $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
    <?php
      $sectionFields[$name] = $value
    ?>
  <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
<?php endif; ?>

<?php
$id_pagamento=intval($_GET['id']);
?>
<?php $__env->startSection('content'); ?>
<?php (the_field('titolo')); ?>
<br><hr>
<?php (the_field('sottotitolo')); ?>
<br><hr>
<?php (the_field('spiegazione_vista')); ?>
<br><hr>
<?php (the_field('spiegazione_modifica')); ?>
<br><hr>
<h2>Rate</h2>
<?php echo $__env->make('tables.rate_pagamento',['id_pagamento'=>$id_pagamento], array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
<?php $__env->stopSection(); ?>



<?php echo $__env->make('layouts.app', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>