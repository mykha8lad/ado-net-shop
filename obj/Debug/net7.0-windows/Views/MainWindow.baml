   M S B A M L   `   `   `  ����G  CAdoSqlBrands, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:AdoSqlBrandsAdoSqlBrands  5   	       AdoSqlBrands.MainWindow   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:AdoSqlBrands     5   	   -   5          � Title$  Shop db��5
   	   $	��450��6   $	��800��6&   .��5      �  � ShowGridLines$
 True��6    � ColumnDefinitions 5   
   �� 5      �� 5      �� 5      �� 5       � RowDefinitions 5   
   �� 5      $��* �6   �� 5      $��2* �6   .+�5   
   ��  �� Orientation$ Vertical=�5      $
��Left=�5      $	��200��5      .+�5      �� -   5         ��Name$ CreateTableBrands��5      $
��10 5q�5      .��5   1   CREATE TABLE BRANDS5       �� 5!      -   5        $ InsertBrandsData��5"      $
��10 5q�5$      .��6   INSERT BRANDS DATA5&      5'      �� 5)   
   $ Vertical=�6   $��1��5*      $��0��6"   .+�5,      �� $��Shop Brands��6   �� 5.      ��6   �� *Brands+ �� View 5/      �� 50      .P�51      �� $��Id��52       �� Width$ 50��6)    �� DisplayMemberBinding 53      �� 	 �� Path$	 id��� 54      $
��Name��55       56      �� $
	 name�58      5:      5<      �� 5>   
   $ Vertical=�6   $��1��5?      $��1��6"   .+�5A      �� $��Brands Country��6   �� 5C      ��6   �� *countryColumns+5E      5G      5H      5I      