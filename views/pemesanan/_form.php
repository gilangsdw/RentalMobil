<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use app\models\Car;
use app\models\Pemesanan;

/* @var $this yii\web\View */
/* @var $model app\models\Employee */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="employee-form">
    <?php
    $items = Car::find()
    ->select(['name_car','price','color','code_car',])
    ->indexBy('code_car')
    ->column();
    ?>
    <?php $form = ActiveForm::begin(); ?>
    <?= $form->field($model, 'name')->textInput(['value' => Yii::$app->user->identity->username ,'readonly'=>'readonly'])->label('Customer Name') ?>
    <?= $form->field($model, 'car')->dropdownList($items) ?>
    <?= $form->field($model, 'start_date')->textInput(['type' => 'date'],['min' => date('Y-m-d')],['value'=>date('Y-m-d')])?>
    <?= $form->field($model, 'return_date')->textInput(['type' => 'date'],['min' => date('Y-m-d')],['value'=>date('Y-m-d')])?>
    <?= $form->field($model, 'location')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
