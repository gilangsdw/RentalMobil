<?php

namespace app\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Pemesanan;
use app\models\Car;


/**
 * EmployeeSearch represents the model behind the search form of `app\models\Employee`.
 */
class PemesananSearch extends Pemesanan
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id','car'], 'integer'],
            [['start_date', 'return_date'], 'string'],
            [['actual_return_date'], 'string'],
            [['name','location'], 'string'],
            [['id'], 'unique'],
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
        $query = Pemesanan::find();

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
            'code_car' => $this->id,
        ]);

        $query->andFilterWhere(['like', 'id', $this->id])
             ->andFilterWhere(['like', 'name', $this->name])
            ->andFilterWhere(['like', 'start_date', $this->start_date])
            ->andFilterWhere(['like', 'return_date', $this->return_date])
            ->andFilterWhere(['like', 'actual_return_date', $this->actual_return_date]);
 
        return $dataProvider;
    }
}
