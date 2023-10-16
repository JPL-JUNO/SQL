USE BeerStylesExample;

INSERT INTO
    Categories (CategoryID, CategoryDS)
VALUES (1, 'British or Irish Ales');

INSERT INTO
    Categories (CategoryID, CategoryDS)
VALUES (2, 'European Ales');

INSERT INTO
    Categories (CategoryID, CategoryDS)
VALUES (3, 'European Lagers');

INSERT INTO
    Categories (CategoryID, CategoryDS)
VALUES (4, 'American Beers');

INSERT INTO Countries (CountryID, CountryNM) VALUES (1, 'England');

INSERT INTO Countries (CountryID, CountryNM) VALUES (2, 'Ireland');

INSERT INTO Countries (CountryID, CountryNM) VALUES (3, 'Scotland');

INSERT INTO Countries (CountryID, CountryNM) VALUES (4, 'Belgium');

INSERT INTO Countries (CountryID, CountryNM) VALUES (5, 'Germany');

INSERT INTO Countries (CountryID, CountryNM) VALUES (6, 'France');

INSERT INTO
    Countries (CountryID, CountryNM)
VALUES (7, 'Bohemia (Czech Republic)');

INSERT INTO Countries (CountryID, CountryNM) VALUES (8, 'Austria');

INSERT INTO
    Countries (CountryID, CountryNM)
VALUES (9, 'United States');

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        1,
        1,
        1,
        'English Golden',
        3,
        9,
        4,
        5,
        40,
        55
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        2,
        1,
        1,
        'Ordinary Bitter',
        4,
        14,
        3,
        3.9,
        20,
        35
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        3,
        1,
        1,
        'Best Bitter',
        5,
        16,
        3.8,
        4.6,
        25,
        40
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        4,
        1,
        1,
        'Strong/Extra Special Bitter',
        6,
        18,
        4.6,
        6.2,
        30,
        50
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        5,
        1,
        1,
        'Pale Ale',
        5,
        14,
        3.8,
        6.2,
        20,
        15
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        6,
        1,
        1,
        'India Pale Ale',
        6,
        14,
        4.5,
        7.5,
        40,
        60
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        7,
        1,
        1,
        'Light/Pale Mild',
        8,
        17,
        2.8,
        5,
        10,
        20
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        8,
        1,
        2,
        'Irish Red Ale',
        9,
        18,
        4,
        6,
        17,
        28
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        9,
        1,
        3,
        'Scottish Ales',
        9,
        17,
        2.5,
        5,
        10,
        30
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        10,
        1,
        1,
        'English Barley Wine',
        8,
        22,
        8,
        12,
        35,
        70
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        11,
        1,
        3,
        'Strong Scotch Ale',
        14,
        25,
        6.5,
        10,
        17,
        35
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        12,
        1,
        1,
        'English Old Ale',
        10,
        30,
        4.5,
        6,
        30,
        60
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        13,
        1,
        1,
        'English Strong Old Ale',
        8,
        22,
        6.5,
        12,
        20,
        75
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        14,
        1,
        1,
        'Winter Warmer',
        18,
        22,
        5,
        7.5,
        30,
        50
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        15,
        1,
        1,
        'Dark Mild',
        15,
        34,
        2.8,
        5,
        10,
        25
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        16,
        1,
        1,
        'English Brown Ale',
        12,
        35,
        3,
        5.5,
        12,
        30
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        17,
        1,
        1,
        'English Porter',
        20,
        30,
        4,
        5.5,
        18,
        40
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        18,
        1,
        1,
        'Baltic Porter',
        17,
        30,
        5.5,
        9.5,
        20,
        40
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        19,
        1,
        2,
        'Irish Dry Stout',
        25,
        40,
        4,
        5,
        30,
        45
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        20,
        1,
        1,
        'Sweet Stout',
        30,
        40,
        3,
        6,
        15,
        40
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        21,
        1,
        1,
        'Oatmeal Stout',
        22,
        40,
        3.8,
        6,
        20,
        40
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        22,
        1,
        2,
        'Foreign/Extra Stout',
        30,
        40,
        5.5,
        8,
        30,
        70
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        23,
        1,
        1,
        'Imperial Russian Stout',
        30,
        40,
        7,
        13,
        50,
        90
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        24,
        2,
        4,
        'Witbier',
        2,
        4,
        4.5,
        5.5,
        10,
        20
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        25,
        2,
        5,
        'Gose',
        2,
        4,
        4.5,
        5.5,
        4,
        9
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        26,
        2,
        5,
        'Berliner Weisse',
        2,
        4,
        2.5,
        3.5,
        3,
        8
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        27,
        2,
        5,
        'Kölsch',
        3.5,
        5,
        4.4,
        5.2,
        20,
        30
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        28,
        2,
        4,
        'Belgian Strong Pale Ale',
        3.5,
        5.5,
        7,
        9,
        25,
        45
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        29,
        2,
        4,
        'Bière de Champagne',
        3,
        6,
        9,
        14,
        10,
        30
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        30,
        2,
        5,
        'Kristalweizen',
        2,
        8,
        4,
        5.5,
        10,
        15
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        31,
        2,
        5,
        'Weissbier',
        2,
        9,
        4,
        5.5,
        10,
        18
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        32,
        2,
        4,
        'Tripel',
        3.5,
        7,
        7.5,
        9.5,
        20,
        40
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        33,
        2,
        4,
        'Belgian Pale Ale',
        4,
        14,
        3.9,
        5.6,
        20,
        30
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (34, 2, 4, 'Lambic', 3, 7, 5, 6, 0, 10);

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        35,
        2,
        4,
        'Gueuze',
        3,
        13,
        5,
        8,
        0,
        23
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        36,
        2,
        4,
        'Fruit Lambic',
        3,
        7,
        5,
        7,
        0,
        10
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        37,
        2,
        4,
        'Belgian IPA',
        3,
        19,
        6,
        10.5,
        50,
        80
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        38,
        2,
        4,
        'Saison',
        5,
        14,
        4.5,
        8,
        20,
        45
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        39,
        2,
        6,
        'Bière de Garde',
        6,
        19,
        6,
        8.5,
        18,
        30
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        40,
        2,
        5,
        'Dunkelweizen',
        9,
        13,
        4.5,
        6,
        10,
        18
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        41,
        2,
        4,
        'Flanders Red',
        10,
        16,
        4.5,
        6.5,
        10,
        25
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        42,
        2,
        5,
        'Altbier',
        11,
        17,
        4.5,
        5.2,
        35,
        50
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        43,
        2,
        5,
        'Roggenbier',
        14,
        19,
        4.5,
        6,
        10,
        20
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        44,
        2,
        4,
        'Dubbel',
        10,
        20,
        6,
        7.8,
        15,
        25
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        45,
        2,
        4,
        'Flanders Brown',
        12,
        18,
        4.8,
        5.2,
        15,
        25
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        46,
        2,
        4,
        'Belgian Strong Dark Ale',
        7,
        22,
        7,
        11,
        20,
        50
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        47,
        2,
        5,
        'Weizenbock',
        15,
        20,
        6,
        8.5,
        15,
        30
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        48,
        2,
        4,
        'Belgian Black Ale',
        30,
        40,
        4,
        6.2,
        20,
        40
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        49,
        3,
        5,
        'German Pilsner',
        2,
        5,
        4.5,
        5.2,
        25,
        45
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        50,
        3,
        7,
        'Bohemian Pilsner',
        3.5,
        6,
        4,
        5.5,
        35,
        45
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        51,
        3,
        5,
        'Helles',
        3,
        5,
        4.7,
        5.4,
        16,
        22
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        52,
        3,
        5,
        'Dortmunder Export',
        4,
        6,
        4.8,
        6,
        23,
        30
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        53,
        3,
        5,
        'Maibock',
        6,
        11,
        6.3,
        7.5,
        23,
        35
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        54,
        3,
        5,
        'Märzen/Oktoberfest',
        7,
        14,
        4.8,
        5.9,
        20,
        28
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        55,
        3,
        8,
        'Vienna Lager',
        10,
        16,
        4.5,
        5.9,
        18,
        30
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        56,
        3,
        5,
        'Kellerbier',
        10,
        20,
        5,
        5.5,
        25,
        35
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        57,
        3,
        5,
        'Rauchbier',
        12,
        22,
        4.8,
        6,
        20,
        30
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        58,
        3,
        5,
        'Traditional Bock',
        14,
        22,
        6.2,
        7.2,
        20,
        27
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        59,
        3,
        5,
        'Munich Dunkel',
        14,
        28,
        4.5,
        5.6,
        16,
        30
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        60,
        3,
        5,
        'Doppelbock',
        15,
        30,
        6.5,
        10,
        12,
        30
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        61,
        3,
        5,
        'Eisbock',
        18,
        30,
        9,
        14,
        25,
        35
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        62,
        3,
        5,
        'Schwarzbier',
        25,
        30,
        3,
        3.9,
        22,
        30
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        63,
        4,
        9,
        'American Lager',
        2,
        3,
        2.8,
        4.2,
        5,
        14
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        64,
        4,
        9,
        'Pale Lager',
        2,
        8,
        4.3,
        5,
        13,
        23
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        65,
        4,
        9,
        'American Malt Liquor',
        2,
        5,
        6.25,
        9,
        12,
        23
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        66,
        4,
        9,
        'Pre-Prohibition Lager',
        3,
        5,
        3.5,
        6,
        25,
        40
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        67,
        4,
        9,
        'American Blonde/Golden Ale',
        3,
        6,
        3.8,
        6,
        15,
        28
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        68,
        4,
        9,
        'Cream Ale',
        3,
        10,
        4.5,
        5.5,
        15,
        25
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        69,
        4,
        9,
        'American Style Wheat',
        3,
        6,
        4,
        5.5,
        15,
        30
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        70,
        4,
        9,
        'Rye Beer',
        3,
        6,
        4,
        9,
        15,
        30
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        71,
        4,
        9,
        'American Pale Ale',
        5,
        14,
        4.5,
        6.2,
        30,
        45
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        72,
        4,
        9,
        'American IPA',
        6,
        15,
        5.5,
        7.5,
        40,
        70
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        73,
        4,
        9,
        'Wet Hop',
        NULL,
        NULL,
        5,
        7,
        35,
        70
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        74,
        4,
        9,
        'Single Hop IPA',
        6,
        15,
        5.5,
        7.5,
        40,
        70
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        75,
        4,
        9,
        'American Amber Lager',
        6,
        14,
        4.8,
        5.5,
        18,
        30
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        76,
        4,
        9,
        'Double/Imperial IPA',
        8,
        15,
        7.5,
        10,
        60,
        120
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        77,
        4,
        9,
        'Pumpkin Ale',
        6,
        12,
        5,
        6,
        10,
        15
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        78,
        4,
        9,
        'American Amber',
        10,
        17,
        4.5,
        6.2,
        25,
        40
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        79,
        4,
        9,
        'American Wild Ale',
        2,
        26,
        5.5,
        10,
        20,
        40
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        80,
        4,
        9,
        'California Common',
        10,
        14,
        4.5,
        5.5,
        30,
        45
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        81,
        4,
        9,
        'Fruit Beers',
        5,
        50,
        2.5,
        12,
        5,
        70
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        82,
        4,
        9,
        'American Barley Wine',
        10,
        19,
        8,
        12,
        50,
        120
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        83,
        4,
        9,
        'American Strong Ale',
        15,
        35,
        7.5,
        13,
        45,
        80
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        84,
        4,
        9,
        'American Brown Ale',
        18,
        35,
        4.3,
        6.2,
        20,
        40
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        85,
        4,
        9,
        'American Porter',
        22,
        35,
        4.8,
        6.5,
        25,
        50
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        86,
        4,
        9,
        'Black IPA',
        25,
        35,
        6,
        9,
        50,
        80
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        87,
        4,
        9,
        'Barrel-aged Beers',
        10,
        50,
        5,
        15,
        40,
        100
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        88,
        4,
        9,
        'Imperial and Hyper Beers',
        8,
        55,
        7,
        40,
        30,
        100
    );

INSERT INTO
    Styles (
        StyleID,
        CategoryFK,
        CountryFK,
        StyleNm,
        ColourLowNb,
        ColourHighNb,
        ABVLowNb,
        ABVHighNb,
        IBULowNb,
        IBUHighNb
    )
VALUES (
        89,
        4,
        9,
        'American Stout',
        30,
        40,
        5,
        12,
        35,
        75
    );