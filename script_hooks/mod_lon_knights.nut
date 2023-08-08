local knightNames = [
    "Sir Achille",
    "Sir Aelfsige",
    "Sir Aelfwynn",
    "Sir Aethelstan",
    "Sir Agapito",
    "Sir Alcide",
    "Sir Anicho",
    "Sir Anselmo",
    "Sir Arstan",
    "Sir Arthur",
    "Sir Bors",
    "Sir Botwulf",
    "Sir Caio",
    "Sir Camillo",
    "Sir Chlotar",
    "Sir Cynebald",
    "Sir Elmo",
    "Sir Ercole",
    "Sir Fedor",
    "Sir Filibert",
    "Sir Galahad",
    "Sir Gareth",
    "Sir Gawain",
    "Sir Gereon",
    "Sir Giacomo",
    "Sir Godric",
    "Sir Godwin",
    "Sir Hektor"
    "Sir Jason",
    "Sir Leander",
    "Sir Leonida",
    "Sir Lysander",
    "Sir Owain",
    "Sir Pepin",
    "Sir Radobod",
    "Sir Ricmod",
    "Sir Rocco",
    "Sir Uhtric",
    "Sir Uther",
    "Sir Wandregisilus",
    "Sir Waramund",
    "Sir Wulfric",
];

// vanilla ones but with lowercase 'the' so that they can get first names
local vanillaHedgeKnightTitles = [
    "the Lone Wolf",
    "the Wolf",
    "the Hound",
    "Steelwielder",
    "the Slayer",
    "the Giant",
    "the Mountain",
    "the Defiler",
    "the Knightslayer",
    "the Hedge Knight",
    "the Scourge",
    "the Fallen Knight",
    "Mancrusher",
    "the Exiled",
    "Warshout",
    "the Skulltaker",
    "the Cleaver",
];

local regularKnightTitles = [
    "the Lancer",
    "the Steelforged",
    "the Little Bear",
    "the Handsome",
    "the Blackguard",
    "the Redguard",
    "Blackcloak",
    "the Grey",
    "the Morning Star",
    "the Bright",
    "the Defiant",
    "the Dour",
    "the Tall",
    "Oakenshield"
];

local thuggishKnightTitles = [
    "the Ogre",
    "the Troll",
    "the Strongboar",
    "the Soulless",
    "the Eastern Brute",
    "the Western Brute",
    "the Northern Brute",
    "Strongarm",
    "the Hog",
    "the Bear",
    "the Robber Knight",
];

local knightSurnames = [
    "von Adelmannsfelden",
    "Balk",
    "Bastheim",
    "von Battenberg",
    "von Brustem",
    "von Dettelbach",
    "von Dusberg",
    "von Estenfeld",
    "von Falkenstein",
    "von Berka",
    "von Ful",
    "von Giengen",
    "von Gruningen",
    "von Hallerberg",
    "von Heldrungen",
    "Mecklinger",
    "von Hausen",
    "von Horneck",
    "von Salza",
    "von Rohrbach",
    "von Winterstein",
    "von Treyden",
    "von Habsburg",
    "von Bassenheim",
    "von Tunna",
    "von Malberg",
    "zu %randomtown%",
    "zu %randomcity%",
    "von Braunschweig",
    "von Grimmelstein",
    "Barthauser",
    "Bergengrun",
    "von Littenheim",
    "von Stockhausen",
    "von Schneider",
    "Schurer",
    "Jarisch",
    "Herxheimer",
    "Aldringen",
    "Bayerlein",
    "Bohlen",
    "von Hohenlohe",
    "Steinmetz",
    "Flegel",
    "Wahlen",
    "von Luneberg",
    "von Keltring",
    "von Urach",
    "von Ursensollen",
    "von Schauenstein",
    "von Steckborn",
];

::Const.Strings.KnightNames.extend(knightNames);
::Const.Strings.HedgeKnightTitles = vanillaHedgeKnightTitles;
::Const.Strings.HedgeKnightTitles.extend(thuggishKnightTitles);
::Const.Strings.HedgeKnightTitles.extend(knightSurnames);
::Const.World.Spawn.Troops.HedgeKnight.NameList = ::Const.Strings.CharacterNames;
::Const.World.Spawn.Troops.HedgeKnight.TitleList = ::Const.Strings.HedgeKnightTitles;
::Const.World.Spawn.Troops.Knight.TitleList = regularKnightTitles;
::Const.World.Spawn.Troops.Knight.TitleList.extend(knightSurnames);

::mods_hookExactClass("skills/backgrounds/hedge_knight_background", function(o) {
    local create = o.create;
    o.create = function() {
        create();
        m.Titles <- vanillaHedgeKnightTitles;
        m.Titles.extend(thuggishKnightTitles);
        m.Titles.extend(knightSurnames);
    }
});