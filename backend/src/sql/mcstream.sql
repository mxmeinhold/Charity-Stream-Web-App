CREATE TABLE IF NOT EXISTS players(
    username varchar(255) NOT NULL,
    name varchar(255) NOT NULL,
    type ENUM('csh', 'blackbaud', 'hogs', 'ehouse', 'sse', 'arthouse', 'rit'),
    PRIMARY KEY (username)
);

CREATE TABLE IF NOT EXISTS items(
    id INT NOT NULL,
    name VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    type ENUM('weapon', 'armor', 'misc', 'tool', 'food', 'buff', 'material'),
    price FLOAT(20, 2) NOT NULL,
    PRIMARY KEY (id, type)
);

CREATE TABLE IF NOT EXISTS weapon(
    id INT NOT NULL,
    damage FLOAT(20, 2) NOT NULL,
    durability INT NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS armor(
    id INT NOT NULL,
    protection INT NOT NULL,
    durability INT NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS tool(
    id INT NOT NULL,
    speed INT NOT NULL,
    durability INT NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS food(
    id INT NOT NULL,
    hungerFill FLOAT(4, 2) NOT NULL,
    effects TEXT NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS buff(
    id INT NOT NULL,
    seconds INT NOT NULL,
    effects TEXT NOT NULL,
    PRIMARY KEY(id)
);