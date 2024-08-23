-- Run this block if you already have a database and need to re-create it
DELETE FROM Ship;
DELETE FROM Hauler;
DELETE FROM Dock;

DROP TABLE IF EXISTS Ship;
DROP TABLE IF EXISTS Hauler;
DROP TABLE IF EXISTS Dock;
-- End block 


CREATE TABLE `Metals`
(
    `id` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    `metal` NVARCHAR(160) NOT NULL,
    `price` NUMERIC(5,2) NOT NULL
);

CREATE TABLE `Sizes`
(
    `id` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    `size` NVARCHAR(160) NOT NULL,
    `price` NUMERIC(5,2) NOT NULL
);

CREATE TABLE `Styles`
(
    `id` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    `style` NVARCHAR(160) NOT NULL,
    `price` NUMERIC(5,2) NOT NULL
);

CREATE TABLE `Orders`
(
    `id` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    [metal_id] INTEGER NOT NULL,
    [size_id] INTEGER NOT NULL,
    [style_id] INTEGER NOT NULL,
    FOREIGN KEY(`metal_id`) REFERENCES `Metals`(`id`)
    FOREIGN KEY(`size_id`) REFERENCES `Sizes`(`id`)
    FOREIGN KEY(`style_id`) REFERENCES `Styles`(`id`)
);