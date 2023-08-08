// hedge knights are in the knights file so they can get nice surnames

local sellswordTitles = [
    "the Demon",
    "the Depraved",
    "the Malicious",
    "Throat-Slitter",
    "the Rabid",
    "the Wicked",
    "the Crow",
    "the Raven",
    "the Sinister",
];

local swordmasterTitles = [
    "the True",
    "the Trueblade",
    "Redblade",
    "the Flash",
    "the Honorable",
    "Brightblade",
    "the Lightning",
    "Liechtenauer",
    "Ringeck",
    "Talhoffer",
    "von Danzig",
    "Kal",
    "dei Liberi",
    "Meyer",
    "Mair",
    "von Speyer",
    "Falkner",
    "Folz",
    "Leckuchner",
    "Jud",
    "von der Nyssen",
    "Preuss",
    "Pauernfeindt",
    "von Siegmeister",
    "Mittermeyer",
    "von Schonkopf",
    "von Kreutzer",
    "the Laugher",
    "the Barber",
    "von Reuenthal",
    "Mintz",
    "Blumart",
    "von der Decken",
];

local banditLeaderNames = [
    "%randomname% the Razor",
    "Grinning %randomname%",
    "%randomname% the Dwarf",
    "%randomname% the Sly",
    "%randomname% Blue-Cheek",
    "Two-Face",
    "%randomname% the Bear-Killer",
    "The Thirty-Man Slayer",
    "The Count",
    "%randomname% the Demon",
    "%randomname% the Flenser",
    "%randomname% the Sweetling",
];

::Const.Strings.BanditLeaderNames.extend(banditLeaderNames);
::Const.Strings.SellswordTitles.extend(sellswordTitles);
::Const.Strings.SwordmasterTitles.extend(swordmasterTitles);
