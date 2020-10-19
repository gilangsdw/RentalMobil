<?php

/* @var $this yii\web\View */

use yii\helpers\Html;

$this->title = 'About';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="site-about">
    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        This is the About page. You may modify the following file to customize its content:
    </p>

    <div class="body-content">

        <div class="row">
            <div class="col-lg-4">

                <h2>Title 1</h2>     
                <?= Html::img('@web/images/test.jpg', ['alt' => 'My logo'])?>
                <br><br><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
            dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip
            ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu
            fugiat nulla pariatur.</p>

                 <p><a class="btn btn-default" href="http://www.yiiframework.com/doc/">First Content &raquo;</a></p>
    
    </div>

        <div class="col-lg-4">

                <h2>Title 2</h2>     
                <?= Html::img('@web/images/test.jpg', ['alt' => 'My logo']) ?>     
                <br><br><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
            dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip
            ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu
            fugiat nulla pariatur.</p>

             <p><a class="btn btn-default" href="http://www.yiiframework.com/doc/">Second Content &raquo;</a></p>
    
    </div>

    <div class="col-lg-4">

                <h2>Title 3</h2>     
                 <?= Html::img('@web/images/test.jpg', ['alt' => 'My logo']) ?>     
                 <br><br><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
    dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip
    ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu
    fugiat nulla pariatur.</p>

             <p><a class="btn btn-default" href="http://www.yiiframework.com/doc/">Third Content &raquo;</a></p>

    </div>

</div>
</div>
</div>