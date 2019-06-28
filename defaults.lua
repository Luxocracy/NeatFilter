NeatFilterSettings = NeatFilterSettings or {}

-- "true" means enabled, "false" means disabled
NeatFilter = {
  ["settings"] = {
    ["configmode"] = false -- In this mode all icons are shown and can be moved.
  },
  ["defaults"] = {
    ["DEMONHUNTER"] = {

    -- Fiery Brand, Blur
    {enabled = true, spellId = {207744}, size = 32, unitId = "target", isMine = true, filter = "HARMFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 185, 34}},
    {enabled = true, spellId = {212800}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 185, 34}},
    -- Empower Wards, Netherwalk
    {enabled = true, spellId = {218256, 196555}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 219, 34}},
    -- Metamorphosis (Vengeance)
    {enabled = true, spellId = {187827}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 253, 34}},
    -- Darkness
    {enabled = true, spellId = {809426}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 287, 34}},

    -- Soul Fragments
    {enabled = true, spellId = {203981}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 185, 13}},
    -- Demon Spikes
    {enabled = true, spellId = {203819}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 219, 13}},
    -- Painbringer (Artifact)
    {enabled = true, spellId = {207387}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 253, 13}},

    -- Bloodlet
    {enabled = true, spellId = {207690}, size = 32, unitId = "target", isMine = true, filter = "HARMFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 185, -21}},

    },

    ["DEATHKNIGHT"] = {

    -- Icebond Fortitude
    {enabled = true, spellId = {48792}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 185, 34}},
    -- Dancing Rune Weapon
    {enabled = true, spellId = {81256}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 219, 34}},
    -- Vampiric Blood,  Corpse Shield
    {enabled = true, spellId = {55233, 207319}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 253, 34}},
    -- Anti-magic Shell
    {enabled = true, spellId = {48707}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 287, 34}},

    -- Death and Decay, Icy Talons, Bone Shield
    {enabled = true, spellId = {188290, 194879, 195181}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 185, 13}},
    -- Blood Shield
    {enabled = true, spellId = {77535}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 219, 13}},
    -- Dark Transformation
    {enabled = true, spellId = {63560}, size = 32, unitId = "pet", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 219, 13}},
    -- Rune Tap
    {enabled = true, spellId = {194679}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 219, 13}},
    -- Soul Reaper (buff), Blood Mirror, Bonestorm
    {enabled = true, spellId = {215711, 206977, 194844}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 287, 13}},

    -- Frost Fever, Festering Wound, Blood Plague
    {enabled = true, spellId = {55095, 194310, 55078}, size = 32, unitId = "target", isMine = true, filter = "HARMFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 185, -21}},
    -- Virulent Plague, Mark of Blood
    {enabled = true, spellId = {191587, 206940}, size = 32, unitId = "target", isMine = true, filter = "HARMFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 219, -21}},
    -- Scourge of Worlds
    {enabled = true, spellId = {191748}, size = 32, unitId = "target", isMine = true, filter = "HARMFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 253, -21}},
    -- Necrosis
    {enabled = true, spellId = {207346, 216974}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 253, 13}},
    -- Soul Reaper (target)
    {enabled = true, spellId = {130736}, size = 32, unitId = "target", isMine = true, filter = "HARMFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 287, -21}},

    -- Killing Machine (Frost), Sudden Doom (Unholy), Crimson Scourge (Blood)
    {enabled = true, spellId = {51124, 81340, 81141}, size = 66, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 185, -55}},
    -- Rime (Freezing Fog)
    {enabled = true, spellId = {59052}, size = 66, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 253, -55}},

    },

    ["DRUID"] = {

    -- Ironfur
    {enabled = true, spellId = {192081}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 185, 34}},
    -- Mark of Ursol
    {enabled = true, spellId = {192083}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 219, 34}},
    -- Barkskin
    {enabled = true, spellId = {22812}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 253, 34}},
    -- Ironbark, Survival Instincts
    {enabled = true, spellId = {102342, 61336}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 287, 34}},

    -- Abundance,  Rage of the Sleeper
    {enabled = true, spellId = {207640, 200851}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 185, 13}},
    -- Savage roar, Solar Peak, Frenzied Regeneration
    {enabled = true, spellId = {52610, 171744, 22842}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 219, 13}},
    -- Lunar Empowerment, Pulverize, Bloodtalons
    {enabled = true, spellId = {164547, 158792, 145152}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 253, 13}},
    -- Solar Empowerment, Predator's Swiftness, Guardian of Elune
    {enabled = true, spellId = {164545, 69369, 213680}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 287, 13}},

    -- Moonfire, Lifebloom
    {enabled = true, spellId = {8921}, size = 32, unitId = "target", isMine = true, filter = "HARMFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 185, -21}},
    {enabled = true, spellId = {33763}, size = 32, unitId = "target", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 185, -21}},
    -- Thrash, Sunfire, Rejuvenation
    {enabled = true, spellId = {77758, 164815, 774}, size = 32, unitId = "target", isMine = true, filter = "HARMFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 219, -21}},
    {enabled = true, spellId = {774}, size = 32, unitId = "target", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 219, -21}},
    -- Rake, Stellar Flare, Rejuvenation (Germination)
    {enabled = true, spellId = {155722, 202347, 155777}, size = 32, unitId = "target", isMine = true, filter = "HARMFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 253, -21}},
    {enabled = true, spellId = {155777}, size = 32, unitId = "target", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 253, -21}},
    -- Entangling Roots, Rip
    {enabled = true, spellId = {339, 1079}, size = 32, unitId = "target", isMine = true, filter = "HARMFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 287, -21}},

    -- Soul of the Forest, Innervate, Galactic Guardian
    {enabled = true, spellId = {114108, 29166, 213708}, size = 66, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 185, -55}},
    -- Clearcasting, Empowered Moonkin, Mangle!
    {enabled = true, spellId = {16870, 157228, 93622}, size = 66, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 253, -55}},

    },

    ["HUNTER"] = {

    -- Making Targets, Mongoose Fury
    {enabled = true, spellId = {223138, 190931}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 185, 34}},
    -- Bestial Wrath, Mok'Nathal Tactics
    {enabled = true, spellId = {19574, 201081}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 219, 34}},
    -- Steady Focus, Instincts of the Mongoose, Instincts of the Cheetah, Instincts of the Raptor
    {enabled = true, spellId = {193534}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 253, 34}},
    {enabled = true, spellId = {204333, 204324, 204321}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 253, 34}},
    -- Volley
    {enabled = true, spellId = {194386}, size = 32, unitId = "target", isMine = false, filter = "HARMFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 287, 34}},

    -- Hunter's Mark,
    {enabled = true, spellId = {185365}, size = 32, unitId = "target", isMine = true, filter = "HARMFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 185, 13}},
    {enabled = true, spellId = {227272}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 185, 13}},
    -- Trick Shot
    {enabled = true, spellId = {227272}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 219, 13}},
    -- Freezing Trap, Ice trap
    {enabled = true, spellId = {3355, 71647}, size = 32, unitId = "target", isMine = false, filter = "HARMFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 287, 13}},

    -- Vulnerable, Lacerate
    {enabled = true, spellId = {187131, 185855}, size = 32, unitId = "target", isMine = true, filter = "HARMFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 185, -21}},
    -- Black Arrow, True Aim, On the Trail
    {enabled = true, spellId = {194599, 199803, 204081}, size = 32, unitId = "target", isMine = true, filter = "HARMFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 219, -21}},
    -- Serpent Sting
    {enabled = true, spellId = {118253}, size = 32, unitId = "target", isMine = true, filter = "HARMFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 253, -21}},
    -- Wyvern Sting
    {enabled = true, spellId = {19386}, size = 32, unitId = "target", isMine = true, filter = "HARMFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 287, -21}},

    -- One wtih the Pack, Lock and Load
    {enabled = true, spellId = {185791, 194594}, size = 66, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 185, -55}},

    },

    ["MAGE"] = {

    -- Ice Block
    {enabled = true, spellId = {45483}, size = 32, unitId = "player", isMine = false, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 185, 34}},
    -- Ice Barrier
    {enabled = true, spellId = {11426}, size = 32, unitId = "player", isMine = false, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 219, 34}},
    -- Blazing Speed, Ice Floes
    {enabled = true, spellId = {108843, 108839}, size = 32, unitId = "player", isMine = false, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 253, 34}},
    -- Polymorph - Sheep, Pig, Turkey
    {enabled = true, spellId = {118, 28272, 61780}, size = 32, unitId = "target", isMine = 1, filter = "HARMFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 287, 34}},
    -- Polymorph - Black Cat, Rabbit, Turtle
    {enabled = true, spellId = {61305, 61721, 28271}, size = 32, unitId = "target", isMine = 1, filter = "HARMFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 287, 34}},
    -- Polymorph - Penguin, Monkey, Polar Bear Cub
    {enabled = true, spellId = {161355, 161354, 161353}, size = 32, unitId = "target", isMine = 1, filter = "HARMFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 287, 34}},
    -- Polymorph - Peacock, Porcupine
    {enabled = true, spellId = {161355, 126819}, size = 32, unitId = "target", isMine = 1, filter = "HARMFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 287, 34}},

    -- Arcane Missiles!, Ray of Frost (Damage Multiplier), Bone Chilling
    {enabled = true, spellId = {79683}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 185, 13}},
    {enabled = true, spellId = {208141, 205766}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 185, 13}},
    -- Chain Reaction, Displacement Beacon, Mark of Aluneth
    {enabled = true, spellId = {195418, 212799}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 219, 13}},
    {enabled = true, spellId = {224968}, size = 32, unitId = "target", isMine = true, filter = "HARMFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 219, 13}},
    -- Icecles, Quickening
    {enabled = true, spellId = {205473, 198924}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 253, 13}},
    -- Incanter's Flow, Rune of Power
    {enabled = true, spellId = {116267, 116014}, size = 32, unitId = "player", isMine = false, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 287, 13}},

    -- Living Bomb, Nether Tempest, Frost Bomb
    {enabled = true, spellId = {217694, 114923, 112948}, size = 32, unitId = "target", isMine = true, filter = "HARMFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 185, -21}},
    -- Enhanced Pyrotechnics, Slow
    {enabled = true, spellId = {157644}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 219, -21}},
    {enabled = true, spellId = {31589}, size = 32, unitId = "target", isMine = true, filter = "HARMFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 219, -21}},
    -- Pyretic Incantation, Touch of Magi
    {enabled = true, spellId = {210824},  size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 253, -21}},
    {enabled = true, spellId = {194329},  size = 32, unitId = "target", isMine = true, filter = "HARMFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 253, -21}},
    -- Meteor (Fire), Erosion
    {enabled = true, spellId = {155158, 210134}, size = 32, unitId = "target", isMine = true, filter = "HARMFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 287, -21}},

    -- Fingers of Frost, Hot Streak, Heating Up
    --{enabled = true, spellId = {44544, 48108, 48107}, size = 66, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 185, -55}},
    -- Brain Freeze
    --{enabled = true, spellId = {190446}, size = 66, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 253, -55}},

    },

    ["MONK"] = {

    -- Fortifying Brew
    {enabled = true, spellId = {120954}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 185, 34}},
    -- Dampen Harm, Diffuse Magic
    {enabled = true, spellId = {122278, 122783}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 219, 34}},
    -- Elusive Brew
    --{enabled = true, spellId = {115308}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 253, 34}},
    -- Touch of Karma
    {enabled = true, spellId = {125174}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 287, 34}},
    -- Exploding Keg
    {enabled = true, spellId = {214326}, size = 32, unitId = "target", isMine = true, filter = "HARMFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 287, 34}},

    -- Light Stagger, Moderate Stagger, Heavy Stagger
    {enabled = true, spellId = {124275, 124274, 124273}, size = 32, unitId = "player", isMine = true, filter = "HARMFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 185, 13}},
    -- Lifecycles (Vivify), Lifecycles (Enveloping Mist)
    {enabled = true, spellId = {197916, 197919}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 185, 13}},
    -- Refreshing Jade Wind
    {enabled = true, spellId = {196725}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 219, 13}},

    -- Transfer the Power, Ironskin Brew
    {enabled = true, spellId = {195321, 215479}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 185, -21}},
    -- Mark of the Crane, Keg Smash
    {enabled = true, spellId = {228287, 121253}, size = 32, unitId = "target", isMine = true, filter = "HARMFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 219, -21}},
    -- Hit Combo
    {enabled = true, spellId = {196741}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 253, -21}},
    -- Eye of the Tiger
    {enabled = true, spellId = {196608}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 253, -21}},

    -- Uplifting Trance, Blackout Kick!
    {enabled = true, spellId = {197206, 116768}, size = 66, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 185, -55}},
    -- Innervate
    {enabled = true, spellId = {29166}, size = 66, unitId = "player", isMine = false, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 253, -55}},

    },

    ["PALADIN"] = {

    -- All
    -- Divine Steed
    {enabled = true, spellId = {221885}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 185, 13}},
    -- Blessing of Freedom
    {enabled = true, spellId = {1044}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 185, -21}},
    -- Divine Shield, Hand of Protection, Spellwarding
    {enabled = true, spellId = {642, 1022, 204018}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 253, 34}},
    -- Forbearance
    {enabled = true, spellId = {25771}, size = 32, unitId = "player", isMine = true, filter = "HARMFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 253, 13}},
    -- Judgment of the Light
    {enabled = true, spellId = {196941}, size = 32, unitId = "target", isMine = true, filter = "HARMFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 219, 13}},
    -- Divine Purpose
    {enabled = true, spellId = {216411}, size = 66, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 185, -55}},
  
  
    -- Protection
    -- Guardian of Ancient Kings (Protection)
    {enabled = true, spellId = {86659}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 287, 13}},  
     -- Ardent Defender
    {enabled = true, spellId = {31850}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 287, -21}},
    -- Shield of the Righteous
    {enabled = true, spellId = {132403}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 253, -21}},
    -- Consecration (Protection)	
    {enabled = true, spellId = {188370}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 219, -21}},
    -- Seraphim
    {enabled = true, spellId = {152262}, size = 66, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 185, -55}},

  
    -- Retribution
    -- Execution Sentence
    {enabled = true, spellId = {213757}, size = 32, unitId = "target", isMine = true, filter = "HARMFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 219, -21}},
    -- Zeal, Righteous Verdict
    {enabled = true, spellId = {269569, 267610}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 219, -21}},
    -- Inquisition
    {enabled = true, spellId = {84963}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 253, -21}},  
    -- The Fires of Justice, Blade of Wrath
    {enabled = true, spellId = {209785, 231832}, size = 66, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 253, -55}},
    -- Retribution
    {enabled = true, spellId = {183435}, size = 66, unitId = "player", isMine = false, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 253, -55}},
    -- Shield of vengence
    {enabled = true, spellId = {184662}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 287, -21}},
    -- Eye for an Eye
    {enabled = true, spellId = {205191}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 287, 13}},
    -- Selfless Healer
    {enabled = true, spellId = {85804}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 219, 13}},  
    -- Empyrean Power
    {enabled = true, spellId = {286390}, size = 66, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 253, -55}},
  
  
    -- Holy
    -- Infusion of Light
    {enabled = true, spellId = {54149}, size = 66, unitId = "player", isMine = false, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 253, -55}},

    },

    ["PRIEST"] = {

    -- Surge of Light, Surge of Darkness
    {enabled = true, spellId = {114255, 87160}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 185, 34}},
    -- Symbol of Hope
    {enabled = true, spellId = {64901}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 287, 34}},

    -- Borrowed Time, Void Ray
    {enabled = true, spellId = {197763, 205372}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 185, 13}},
    -- Rapture, Twist of Fate
    {enabled = true, spellId = {47536, 123254}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 219, 13}},
    -- Voidform, Lingering Insanity
    {enabled = true, spellId = {194249, 197937}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 253, 13}},
    -- Angelic Feather
    {enabled = true, spellId = {121557}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 287, 13}},

    -- Vampiric Touch, Schism
    {enabled = true, spellId = {34914, 214621}, size = 32, unitId = "target", isMine = true, filter = "HARMFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 185, -21}},
    -- Shadow Word:Pain, Purge the Wicked
    {enabled = true, spellId = {589, 204213}, size = 32, unitId = "target", isMine = true, filter = "HARMFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 219, -21}},
    -- Shadow Word: Void
    {enabled = true, spellId = {205351}, size = 32, unitId = "target", isMine = true, filter = "HARMFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 253, -21}},
    -- Mind Spike
    {enabled = true, spellId = {217673}, size = 32, unitId = "target", isMine = true, filter = "HARMFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 287, -21}},

    -- Shadowy Insight, Innervate
    {enabled = true, spellId = {124430, 29166}, size = 66, unitId = "player", isMine = false, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 185, -55}},

    },

    ["ROGUE"] = {

    -- Evasion, Riposte
    {enabled = true, spellId = {5277, 199754},size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 185, 34}},
    -- Cloak of Shadows
    {enabled = true, spellId = {31224}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 219, 34}},
    -- Feint
    {enabled = true, spellId = {1966}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 253, 34}},
    -- Slice and Dice, Enveloping Shadows
    {enabled = true, spellId = {5171, 206237}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 287, 34}},

    -- Shadow Dance, Curse of the Dreadblades
    {enabled = true, spellId = {185422, 202665}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 185, 13}},
    -- Cheap Shot, Gouge, Kidney Shot
    {enabled = true, spellId = {1833, 1776, 408}, size = 32, unitId = "target", isMine = true, filter = "HARMFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 219, 13}},
    -- Finality: Nightblade, Vendetta
    {enabled = true, spellId = {197498}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 253, 13}},
    {enabled = true, spellId = {79140}, size = 32, unitId = "target", isMine = true, filter = "HARMFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 253, 13}},
    {enabled = true, spellId = {212283}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 253, -21}},
    -- Finality: Eviscerate. Blade Flurry, Symbols of Death
    {enabled = true, spellId = {197496, 13877}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 287, 13}},

    -- Agonizing Poison, Deadly Poison, Ghostly Strike
    {enabled = true, spellId = {200803, 67710, 196937}, size = 32, unitId = "target", isMine = true, filter = "HARMFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 185, -21}},
    -- Rupture, Nightblade,
    {enabled = true, spellId = {1943, 195452}, size = 32, unitId = "target", isMine = true, filter = "HARMFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 253, -21}},
    -- Garrote
    {enabled = true, spellId = {703}, size = 32, unitId = "target", isMine = true, filter = "HARMFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 219, -21}},
    -- Broadsides, Shark Infested Waters, Grand Melee
    {enabled = true, spellId = {193356, 193357, 193358}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 287, -21}},
    -- Jolly Roger, Buried Treasure, True Bearing
    {enabled = true, spellId = {199603, 199600, 193359}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 287, -21}},
    -- Surge of Toxins
    {enabled = true, spellId = {192425}, size = 32, unitId = "target", isMine = true, filter = "HARMFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 253, -21}},

    -- Opportunity
    {enabled = true, spellId = {195627}, size = 66, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 185, -55}},

    },

    ["SHAMAN"] = {

     -- All
    -- Astral Shift
    --{enabled = true, spellId = {108271}, size = 32, unitId = "player", isMine = false, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 219, 47}},

    -- Hex
    --{enabled = true, spellId = {51514}, size = 32, unitId = "target", isMine = false, filter = "HARMFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 253, -21}},
    -- Ascendance
    --{enabled = true, spellId = {114049}, size = 66, unitId = "player", isMine = false, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 185, -123}},
  
  
    -- Enhancement
    -- Flametongue
    {enabled = true, spellId = {194084}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 185, 13}},
    -- Stormbringer
    {enabled = true, spellId = {201846}, size = 66, unitId = "player", isMine = false, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 185, -55}},
    -- Primal Primer
    {enabled = true, spellId = {273006}, size = 32, unitId = "target", isMine = false, filter = "HARMFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 185, -21}},
    -- Frostbrand
    {enabled = true, spellId = {196834}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 219, 13}},
    -- Crash Lightning
    {enabled = true, spellId = {187878}, size = 32, unitId = "player", isMine = false, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 219, -21}},
    -- Earthen Spike
    {enabled = true, spellId = {188089}, size = 32, unitId = "target", isMine = true, filter = "HARMFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 253, 13}},
    -- Landslide
    {enabled = true, spellId = {202004}, size = 66, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 253, -21}},
    -- Hot hand
    {enabled = true, spellId = {215785}, size = 66, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 253, -55}},
  
  
    -- Elemental
    -- Flame Shock
    {enabled = true, spellId = {194084}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 185, 13}},
    -- Lava Surge
    {enabled = true, spellId = {77762}, size = 66, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 253, -55}},
  
  
    -- Resto
    -- Tidal Waves
    {enabled = true, spellId = {53390}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 219, 13}},
    -- Spiritwalker's Grace
    {enabled = true, spellId = {79206}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 253, 13}},
    -- Unleashed life,
    {enabled = true, spellId = {73685}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 185, -21}},
    -- Cloudburst totem
    {enabled = true, spellId = {157504}, size = 32, unitId = "player", isMine = false, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 219, -21}},
    -- Innervate
    {enabled = true, spellId = {29166}, size = 66, unitId = "player", isMine = false, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 185, -55}},

    },

    ["WARLOCK"] = {

     -- All
    -- Unending Resolve
    --{enabled = true, spellId = {104773}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 287, 13}},
    -- Dark Pact, Burning Rush
    {enabled = true, spellId = {108416, 111400}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 287, -21}},
    -- Dark Soul (talent)
    --{enabled = true, spellId = {113860, 113858}, size = 66, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 253, -55}},
     -- Incandescent Sliver
    --{enabled = true, spellId = {289522}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 287, 13}},
  
  
    -- Destruction
    -- Backdraft (Destruction)
    {enabled = true, spellId = {117828}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 185, -21}},
    -- Havoc (Destruction)
    {enabled = true, spellId = {80240}, size = 32, unitId = "target", isMine = true, filter = "HARMFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 185, 13}},
    -- Immolation
    {enabled = true, spellId = {348}, size = 32, unitId = "target", isMine = true, filter = "HARMFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 219, -21}},
    -- Eradication
    {enabled = true, spellId = {196414}, size = 32, unitId = "target", isMine = true, filter = "HARMFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 219, 13}},

  
    -- Affliction
    -- Shadow Embrace, Haunt
    {enabled = true, spellId = {32388, 32390, 48181}, size = 32, unitId = "target", isMine = true, filter = "HARMFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 185, 13}},
    -- Phantom Singularity, Vile Taint
    {enabled = true, spellId = {205179, 278350}, size = 32, unitId = "target", isMine = true, filter = "HARMFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 253, 13}},
    -- Unstable Affliction
    {enabled = true, spellId = {30108}, size = 32, unitId = "target", isMine = true, filter = "HARMFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 219, 13}},
    -- Corruption, seed of Corruption
    {enabled = true, spellId = {172, 27243}, size = 32, unitId = "target", isMine = true, filter = "HARMFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 185, -21}},
    -- Agony
    {enabled = true, spellId = {980}, size = 32, unitId = "target", isMine = true, filter = "HARMFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 219, -21}},
    -- Siphon Life
    {enabled = true, spellId = {63106}, size = 32, unitId = "target", isMine = true, filter = "HARMFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 253, -21}},
    -- Inevitable Demise (Corruption  trait)
    {enabled = true, spellId = {273521}, size = 66, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 185, -55}},
    -- Nightfall
    {enabled = true, spellId = {108558}, size = 66, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 253, -55}},  
  
  
    -- Demonology 
    -- Doom
    {enabled = true, spellId = {603}, size = 32, unitId = "target", isMine = true, filter = "HARMFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 185, -21}},
    -- From the Shadows (Talent)
    {enabled = true, spellId = {270569}, size = 32, unitId = "target", isMine = true, filter = "HARMFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 219, -21}},
    -- Demonic Core
    {enabled = true, spellId = {267102}, size = 66, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 185, -55}},
    -- Explosive potential
    {enabled = true, spellId = {275395}, size = 66, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 253, -123}},
    -- Demonic Calling
    --{enabled = true, spellId = {205145}, size = 66, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 253, -55}},
    -- Nether Portal (talent)
    --{enabled = true, spellId = {267217}, size = 66, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 219, 13}},

    },

    ["WARRIOR"] = {

    -- Shield Wall
    {enabled = true, spellId = {871}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 185, 34}},
    -- Last Stand, Die by the Sword
    {enabled = true, spellId = {12975, 118038}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 219, 34}},
    -- Demoralizing Shout
    {enabled = true, spellId = {125565}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 253, 34}},
    -- Enraged Regeneration
    {enabled = true, spellId = {184364}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 287, 34}},

    -- Ignore Pain, Juggernaut
    {enabled = true, spellId = {190456, 201009}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 185, 13}},
    -- Shield Block, Berserking
    {enabled = true, spellId = {2565, 200953}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 219, 13}},
    -- Ravager
    {enabled = true, spellId = {152277}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 253, 13}},
    -- Focused Rage, Hamstring, Piercing Howl
    {enabled = true, spellId = {207982}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 287, 13}},
    {enabled = true, spellId = {1715, 12323}, size = 32, unitId = "target", isMine = false, filter = "HARMFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 287, 13}},

    -- Enrage, Ultimatum
    {enabled = true, spellId = {184362, 122510}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 185, -21}},
    -- Rend
    {enabled = true, spellId = {772}, size = 32, unitId = "target", isMine = true, filter = "HARMFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 185, -21}},
    -- Colossus Smash
    {enabled = true, spellId = {208086}, size = 32, unitId = "target", isMine = true, filter = "HARMFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 219, -21}},
    -- Taste for Blood, Vengeance: Focused Rage, Vengeance: Ignore Pain
    {enabled = true, spellId = {206333, 202573, 202574}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 219, -21}},
    -- Shattered Defenses, Frenzy
    {enabled = true, spellId = {209706, 202539}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 253, -21}},
    -- Cleave, Wrecking Ball
    {enabled = true, spellId = {188923, 215570}, size = 32, unitId = "player", isMine = true, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 287, -21}},

    -- Overpower!, Massacre
    {enabled = true, spellId = {60503, 206316}, size = 66, unitId = "player", isMine = false, filter = "HELPFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 253, -55}},

    },
  }
}

--[[ More info about config mode:
You can move icons with left mouse button while holding Alt OR Shift. Changed position won't be saved between sessions.
After click on icon you will see in chat info about its position. This can be used to change setPoint attribute is spell list.
Clicking on icon with right mouse button will reset its position to default.
]]

--[[ Closer look at spell lists:
All classes have their own spell list.
Each entry in list creates a separate icon. Entry is a table with values in it:
- spellId - id of spell you want to track. If you don't know it - check wowhead.com - last number in any spell link is spellid (example: http://www.wowhead.com/?spell=55095, id is 55095)
- spellId2, spellId3, spellId4, spellId5 - optional entries, these are the spellids you want to track if primary spell is NOT active.
- size - icon size in pixels
- unitId - unit at which you wish to track selected spell(s). More info: http://www.wowwiki.com/UnitId
- isMine - this is filter. isMine = true means only  effects from units in MyUnits table will be shown (see below for this table. Note: isMine = "1" will NOT work, it should be number, not string. Any other value will show effect from any source
- filter - filter again =). Needs to be "HELPFUL" for buffs and "HARMFUL" for debuffs.
- setPoint - where to place the icon. It's a table with coordinates inside. More info: http://www.wowwiki.com/API_Region_SetPoint
Original addon version: http://toxila.googlecode.com/svn/zips/sFilter/
]]