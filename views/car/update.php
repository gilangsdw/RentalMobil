<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Employee */

$this->title = 'Update Car: ' . $model->code_car;
$this->params['breadcrumbs'][] = ['label' => 'Car', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->code_car, 'url' => ['view', 'id' => $model->code_car]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="employee-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
