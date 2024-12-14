import Random "mo:base/Random";

type Character = {
    name: Text;
    strength: Int;
    dexterity: Int;
    constitution: Int;
    intelligence: Int;
    wisdom: Int;
    charisma: Int;
    hp: Int;
    ac: Int;  // Armor Class
};

actor DndCharacterSheet {

    var player: Character = {
        name = "Draegon Garbaros Hellrune";
        strength = 16;
        dexterity = 14;
        constitution = 14;
        intelligence = 10;
        wisdom = 12;
        charisma = 15;
        hp = 30;  // Starting HP
        ac = 16;   // Armor Class
    };

    // Roll a dice with a given number of faces
    public func rollDice(faces: Int) : async Int {
        let roll = Random.random_int(faces);  // Random number from 0 to faces-1
        return roll + 1;  // To get a number from 1 to faces
    };

    // Calculate ability modifier
    public func calculateModifier(abilityScore: Int) : Int {
        return (abilityScore - 10) / 2;
    };

    // Perform an attack roll (using either strength or dexterity modifier)
    public func attackRoll(ability: Text) : async Int {
        let baseRoll = await rollDice(20);
        let modifier = match ability {
            "strength" => calculateModifier(player.strength),
            "dexterity" => calculateModifier(player.dexterity),
            _ => 0
        };
        return baseRoll + modifier;
    };

    // Perform a damage roll (using a dice type and ability modifier)
    public func damageRoll(diceType: Int, ability: Text) : async Int {
        let baseRoll = await rollDice(diceType);
        let modifier = match ability {
            "strength" => calculateModifier(player.strength),
            _ => 0
        };
        return baseRoll + modifier;
    };

    // Perform an ability check (using d20 + ability modifier)
    public func abilityCheck(ability: Text) : async Int {
        let baseRoll = await rollDice(20);
        let modifier = match ability {
            "strength" => calculateModifier(player.strength),
            "dexterity" => calculateModifier(player.dexterity),
            "constitution" => calculateModifier(player.constitution),
            "intelligence" => calculateModifier(player.intelligence),
            "wisdom" => calculateModifier(player.wisdom),
            "charisma" => calculateModifier(player.charisma),
            _ => 0
        };
        return baseRoll + modifier;
    };

    // Perform a saving throw (using d20 + ability modifier)
    public func savingThrow(ability: Text) : async Int {
        let baseRoll = await rollDice(20);
        let modifier = match ability {
            "strength" => calculateModifier(player.strength),
            "dexterity" => calculateModifier(player.dexterity),
            "constitution" => calculateModifier(player.constitution),
            "intelligence" => calculateModifier(player.intelligence),
            "wisdom" => calculateModifier(player.wisdom),
            "charisma" => calculateModifier(player.charisma),
            _ => 0
        };
        return baseRoll + modifier;
    };

    // Get character's basic information
    public func getCharacterInfo() : Text {
        return "Character: " # player.name # "\n" #
               "HP: " # Text.fromInt(player.hp) # "\n" #
               "AC: " # Text.fromInt(player.ac) # "\n" #
               "Strength: " # Text.fromInt(player.strength) # "\n" #
               "Dexterity: " # Text.fromInt(player.dexterity) # "\n" #
               "Constitution: " # Text.fromInt(player.constitution) # "\n" #
               "Intelligence: " # Text.fromInt(player.intelligence) # "\n" #
               "Wisdom: " # Text.fromInt(player.wisdom) # "\n" #
               "Charisma: " # Text.fromInt(player.charisma);
    };

    // Perform an attack roll using strength modifier
    public func rollAttackWithStrength() : async Text {
        let result = await attackRoll("strength");
        return "Attack roll (Strength modifier): " # Text.fromInt(result);
    };

    // Perform a damage roll using strength modifier (e.g., for a sword attack)
    public func rollDamageWithStrength() : async Text {
        let result = await damageRoll(6, "strength"); // d6 damage roll (for example)
        return "Damage roll (Strength modifier): " # Text.fromInt(result);
    };

    // Perform a strength ability check
    public func rollStrengthCheck() : async Text {
        let result = await abilityCheck("strength");
        return "Strength ability check: " # Text.fromInt(result);
    };

    // Perform a constitution saving throw
    public func rollConstitutionSavingThrow() : async Text {
        let result = await savingThrow("constitution");
        return "Constitution saving throw: " # Text.fromInt(result);
    };
};
