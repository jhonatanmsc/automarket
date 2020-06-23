class SimpleSeeder extends \CodeIgniter\Database\Seeder
{
        public function run()
        {
                $data = [
                        'model' => 'darth',
                        'brand'    => 'Mitsubishi',
                        'manufacture_year' => '2020',
                        'color' => '',
                        'price' => ''
                ];

                // Simple Queries
                $this->db->query("INSERT INTO users (model, brand, 'manufacture_year', 'color', 'price') VALUES (:model:, :brand:, :manufacture_year:, :color:, :price:)",
                        $data
                );

                // Using Query Builder
                $this->db->table('cars')->insert($data);
        }
}