USE Rent; -- Rent veritabanını seç
GO

-- Marka (Brand) tablosu
CREATE TABLE Brands (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(100) NOT NULL
);

-- Renk (Color) tablosu
CREATE TABLE Colors (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(50) NOT NULL
);

-- Araba (Car) tablosu
CREATE TABLE Cars (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    BrandId INT NOT NULL,
    ColorId INT NOT NULL,
    ModelYear INT NOT NULL,
    DailyPrice DECIMAL(10,2) NOT NULL,
    Description NVARCHAR(255),
    FOREIGN KEY (BrandId) REFERENCES Brands(Id),
    FOREIGN KEY (ColorId) REFERENCES Colors(Id)
);

SELECT * FROM sys.tables;

INSERT INTO Brands (Name) VALUES ('BMW'), ('Mercedes'), ('Audi'),('Toyota'),
('Honda'),
('Ford'),
('Chevrolet'),
('Volkswagen'),
('Hyundai'),
('Tesla');

INSERT INTO Colors (Name) VALUES ('Red'), ('Black'), ('White'),('Blue'),
('Green'),
('Yellow'),
('Gray'),
('Silver'),
('Brown'),
('Orange');

INSERT INTO Cars (BrandId, ColorId, ModelYear, DailyPrice, Description) 
VALUES 
(1, 1, 2022, 1000.00, 'BMW 2022 Model Kırmızı'),
(2, 2, 2021, 1200.00, 'Mercedes 2021 Model Siyah'),
(3, 3, 2023, 1500.00, 'Audi 2023 Model Beyaz'),(4, 4, 2020, 950.00, 'Chevrolet 2020 Model Gri'),
(5, 5, 2019, 850.00, 'Volkswagen 2019 Model Gümüş'),
(6, 6, 2021, 1100.00, 'Hyundai 2021 Model Kahverengi'),
(7, 7, 2023, 2000.00, 'Tesla 2023 Model Turuncu'),
(1, 3, 2022, 1300.00, 'Toyota 2022 Model Sarı'),
(2, 2, 2020, 1000.00, 'Honda 2020 Model Siyah'),
(3, 1, 2021, 1150.00, 'Ford 2021 Model Mavi'),
(4, 7, 2018, 750.00, 'Chevrolet 2018 Model Turuncu'),
(5, 6, 2017, 650.00, 'Volkswagen 2017 Model Kahverengi'),
(6, 5, 2016, 600.00, 'Hyundai 2016 Model Gümüş'),
(7, 4, 2023, 2200.00, 'Tesla 2023 Model Gri');

SELECT * FROM Brands;
SELECT * FROM Colors;
SELECT * FROM Cars;
