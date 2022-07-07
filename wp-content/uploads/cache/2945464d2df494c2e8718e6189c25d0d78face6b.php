<?php $fields = get_fields();

?>
<?php if($fields): ?>
  <?php $__currentLoopData = $fields; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $name => $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
    <?php
      $sectionFields[$name] = $value
    ?>
  <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
<?php endif; ?>


<?php $__env->startSection('content'); ?>
<?php (the_field('titolo')); ?>
<br><hr>
<?php (the_field('sottotitolo')); ?>
<br><hr>
<?php (the_field('spiegazione_vista')); ?>
<br><hr>
<?php (the_field('spiegazione_modifica')); ?>
<br><hr>
<?php ($table= get_field('tabella')); ?>
<?php if ($__env->exists('tables.'.$table)) echo $__env->make('tables.'.$table, array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>

<?php $__env->stopSection(); ?>



<?php echo $__env->make('layouts.app', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>