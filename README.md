# ADO Shop:department_store:
## Home work 17.08
> * Спроєктувати принаймні одну таблицю, скласти для неї 
> * SQL запит створення та заповнення тестовими даними
```cs
private void CreateTableBrands_Click(object sender, RoutedEventArgs e)
{
    using SqlCommand command = new();
    command.Connection = connection;
    command.CommandText =
    @"
    CREATE TABLE Country (
        id int PRIMARY KEY,
        name varchar(50) NOT NULL
    )
        CREATE TABLE Logo (
        id int PRIMARY KEY,
        url varchar(255) NOT NULL
    )
        CREATE TABLE Brands (
        brand_id int PRIMARY KEY,
        name varchar(255) NOT NULL,
        logo_id int,
        description TEXT,
        country_id int,
        website varchar(255),
        founded_date date,                    
    )";
    try
    {
        command.ExecuteNonQuery();
        MessageBox.Show("Table Created");
    }
    catch (Exception ex)
    {
        MessageBox.Show(ex.Message, "Create error",
        MessageBoxButton.OK, MessageBoxImage.Error);
    }
}
```
```cs
private void InsertBrandsData_Click(object sender, RoutedEventArgs e)
{
    using SqlCommand command = new();
    command.Connection = connection;
    command.CommandText =
    @"
    INSERT INTO Country (id, name) VALUES
        (1, 'USA'),
        (2, 'Germany'),
        (3, 'Japan'),
        (4, 'France'),
        (5, 'Italy')

    INSERT INTO Logo (id, url) VALUES
        (1, 'https://logo1.com'),           
        (2, 'https://logo2.com'),           
        (3, 'https://logo3.com'),           
        (4, 'https://logo4.com'),           
        (5, 'https://logo5.com')            

    INSERT INTO Brands (brand_id, name, description, country_id, logo_id, website, founded_date) VALUES
        (1, 'Brand1', 'Description1', 1, 2, 'https://brand1.com', '2000-01-01'),
        (2, 'Brand2', 'Description2', 2, 4, 'https://brand2.com', '2005-02-15'),
        (3, 'Brand3', 'Description3', 3, 1, 'https://brand3.com', '1998-07-10'),
        (4, 'Brand4', 'Description4', 4, 3, 'https://brand4.com', '2010-03-20'),
        (5, 'Brand5', 'Description5', 5, 5, 'https://brand5.com', '2015-11-05')
    ";
    try
    {
        command.ExecuteNonQuery();
        MessageBox.Show("Data Insert");
    }
    catch (Exception ex)
    {
        MessageBox.Show(ex.Message, "Insert error",
        MessageBoxButton.OK, MessageBoxImage.Error);
    }
}
```
> [![photo-2023-08-22-17-27-29.jpg](https://i.postimg.cc/g08J1nn8/photo-2023-08-22-17-27-29.jpg)](https://postimg.cc/hJ4cd48t)
> [![photo-2023-08-22-17-30-23.jpg](https://i.postimg.cc/x84nX2X9/photo-2023-08-22-17-30-23.jpg)](https://postimg.cc/JHZ9FS3F)
----
## Home work 18.08
> * Реалізувати виведення даних з таблиці, створеної у першому Д.З.
```cs
private void LoadBrands()
{            
    using SqlCommand command = new();
    command.Connection = connection;
    command.CommandText = "SELECT name, website FROM Brands";

    try
    {
        using SqlDataReader reader = command.ExecuteReader();

        while (reader.Read())
        {
            brandsColumns.Add(
                $"Title: {reader.GetString(0)}, {reader.GetString(1)}"
            );
        }
    }
    catch (Exception ex)
    {
        MessageBox.Show(ex.Message, "Query error",
        MessageBoxButton.OK, MessageBoxImage.Error);
    }
}
```
```cs
private void LoadBrandsCountry()
{
    using SqlCommand command = new();
    command.Connection = connection;
    command.CommandText = "SELECT Brands.name, Country.name FROM Brands " +
                          "INNER JOIN Country ON Brands.country_id = Country.id";

    try
    {
        using SqlDataReader reader = command.ExecuteReader();
    
        while (reader.Read())
        {
            countryColumns.Add(
                $"{reader.GetString(0)}, Country: {reader.GetString(1)}"
            );
        }
    }
    catch (Exception ex)
    {
        MessageBox.Show(ex.Message, "Query error",
        MessageBoxButton.OK, MessageBoxImage.Error);
    }
}
```
[![photo-2023-08-22-17-41-43.jpg](https://i.postimg.cc/7PnydSXq/photo-2023-08-22-17-41-43.jpg)](https://postimg.cc/5jyGFYZr)
[![photo-2023-08-22-17-42-32.jpg](https://i.postimg.cc/CLMVgd6k/photo-2023-08-22-17-42-32.jpg)](https://postimg.cc/0r44G5vy)
----
## Home work 22.08
> * Зазначити для якоїсь групи товарів "видалення" (дату у полі DeleteDt)
> * Модифікувати запит у головному вікні з метою "фільтрування" видалених груп (показує тільки невидалені)
```cs
Brand.Add(new()
{
    Name = reader.GetString(0),
    Website = reader.GetString(1),
});
```
## Home work 24.08
> * Реалізувати перевірку введених даних щодо оновлення на валідність (пустоту, відповідність форматам)
> * ** Відстежувати зміни - якщо реальних змін не було, то деактивувати кнопку "збереження"
```cs
private void Window_Loaded(object sender, RoutedEventArgs e)
{
    Name.Text = Brands?.Name.ToString() ?? "";
    Description.Text = Brands?.Description.ToString() ?? "";
    Website.Text = Brands?.Website.ToString() ?? "";
    Date.Text = Brands?.Founded_date.ToString() ?? "";
}
```
```cs
private void Description_TextChanged(object sender, TextChangedEventArgs e)
{
    if (Description.Text != Brands?.Description.ToString())
        SaveButton.IsEnabled = true;
    else
        SaveButton.IsEnabled = false;
}
```
[![1.jpg](https://i.postimg.cc/QtGwS0hK/1.jpg)](https://postimg.cc/xk561Gk9)
[![2.jpg](https://i.postimg.cc/HL5PJXXY/2.jpg)](https://postimg.cc/sBjJqBTq)
----
