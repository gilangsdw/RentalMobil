<?php

namespace app\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Car;

/**
 * EmployeeSearch represents the model behind the search form of `app\models\Employee`.
 */
class CarSearch extends Car
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['code_car'], 'integer'],
            [['name_car', 'price', 'color'], 'safe'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = Car::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'code_car' => $this->code_car,
        ]);

        $query->andFilterWhere(['like', 'code_car', $this->code_car])
            ->andFilterWhere(['like', 'name_car', $this->name_car])
            ->andFilterWhere(['like', 'price', $this->price])
            ->andFilterWhere(['like', 'color', $this->color]);

        return $dataProvider;
    }
}
