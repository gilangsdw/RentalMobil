<?php

use yii\helpers\Html;
use app\models\Pemesanan;


/* @var $this yii\web\View */
/* @var $model app\models\Employee */

$this->title = 'Input Rental';
$this->params['breadcrumbs'][] = ['label' => 'Rental Order', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="employee-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
