import Random "mo:base/Random";
import Text "mo:base/Text";

actor DndCharacterSheet {

    type Character = {
        name: Text;
        strength: Int;
        dexterity: Int;
        constitution: Int;
        intelligence: Int;
        wisdom: Int;
        charisma: Int;
        hp: Int;
        ac: Int;  
    };

    var player: Character = {
        name = "Draegon Garbaros Hellrune";
        strength = 16;
        dexterity = 14;
        constitution = 14;
        intelligence = 10;
        wisdom = 12;
        charisma = 15;
        hp = 30;  // Starting HP
        ac = 16;   
    };

    // Roll a dice with a given number of faces
    public func rollDice(faces: Int) : async Int {
        let roll = await Random.range(faces);
        switch (roll) {
            case (?value) { Int.abs(value % faces) + 1 };
            case (_) { 1 };
        }
    };

    // Calculate ability modifier
    public func calculateModifier(abilityScore: Int) : async Int {
        return (abilityScore - 10) / 2;
    };

    // Perform an attack roll (using either strength or dexterity modifier)
    public func attackRoll(ability: Text) : async Int {
        let baseRoll = await rollDice(20);
        let modifier = switch (ability) {
            case ("strength") { calculateModifier(player.strength) };
            case ("dexterity") { calculateModifier(player.dexterity) };
            case (_) { 0 };
        };
        return baseRoll + modifier;
    };

    // Perform a damage roll (using a dice type and ability modifier)
    public func damageRoll(diceType: Int, ability: Text) : async Int {
        let baseRoll = await rollDice(diceType);
        let modifier = switch (ability) {
            case ("strength") { calculateModifier(player.strength) };
            case (_) { 0 };
        };
        return baseRoll + modifier;
    };

    // Perform an ability check (using d20 + ability modifier)
    public func abilityCheck(ability: Text) : async Int {
        let baseRoll = await rollDice(20);
        let modifier = switch (ability) {
            case ("strength") { calculateModifier(player.strength) };
            case ("dexterity") { calculateModifier(player.dexterity) };
            case ("constitution") { calculateModifier(player.constitution) };
            case ("intelligence") { calculateModifier(player.intelligence) };
            case ("wisdom") { calculateModifier(player.wisdom) };
            case ("charisma") { calculateModifier(player.charisma) };
            case (_) { 0 };
        };
        return baseRoll + modifier;
    };

    // Perform a saving throw (using d20 + ability modifier)
    public func savingThrow(ability: Text) : async Int {
        let baseRoll = await rollDice(20);
        let modifier = switch (ability) {
            case ("strength") { calculateModifier(player.strength) };
            case ("dexterity") { calculateModifier(player.dexterity) };
            case ("constitution") { calculateModifier(player.constitution) };
            case ("intelligence") { calculateModifier(player.intelligence) };
            case ("wisdom") { calculateModifier(player.wisdom) };
            case ("charisma") { calculateModifier(player.charisma) };
            case (_) { 0 };
        };
        return baseRoll + modifier;
    };

    // Get character's basic information
    public func getCharacterInfo() : async Text {
        return "Character: " # player.name # "\n" #
               "HP: " # Text.fromNat(player.hp) # "\n" #
               "AC: " # Text.fromNat(player.ac) # "\n" #
               "Strength: " # Text.fromNat(player.strength) # "\n" #
               "Dexterity: " # Text.fromNat(player.dexterity) # "\n" #
               "Constitution: " # Text.fromNat(player.constitution) # "\n" #
               "Intelligence: " # Text.fromNat(player.intelligence) # "\n" #
               "Wisdom: " # Text.fromNat(player.wisdom) # "\n" #
               "Charisma: " # Text.fromNat(player.charisma);
    };

    // Perform an attack roll using strength modifier
    public func rollAttackWithStrength() : async Text {
        let result = await attackRoll("strength");
        return "Attack roll (Strength modifier): " # Text.fromNat(result);
    };

    // Perform a damage roll using strength modifier (e.g., for a sword attack)
    public func rollDamageWithStrength() : async Text {
        let result = await damageRoll(6, "strength"); // d6 damage roll (for example)
        return "Damage roll (Strength modifier): " # Text.fromNat(result);
    };

    // Perform a strength ability check
    public func rollStrengthCheck() : async Text {
        let result = await abilityCheck("strength");
        return "Strength ability check: " # Text.fromNat(result);
    };

    // Perform a constitution saving throw
    public func rollConstitutionSavingThrow() : async Text {
        let result = await savingThrow("constitution");
        return "Constitution saving throw: " # Text.fromNat(result);
    };
};
