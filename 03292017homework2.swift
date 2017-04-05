enum Color {
    case red
    case blue
    case yellow
    case green
    case orange
    case purple
}

let colorStatus: Color


func complement(colorStatus: Color) -> Color {
    switch colorStatus {
    case .red:
        return .green
    case .blue:
        return .orange
    case .yellow:
        return .purple
    case .green:
        return .red
    case .orange:
        return .blue
    case .purple:
        return .yellow
    }
}

complement(colorStatus: .red) == .green
complement(colorStatus: .orange) == .blue


enum Instruction {
    case left(Int)
    case right(Int)
}

let instructionSteps: Instruction

func printInstruction(instruction: Instruction) {
    switch instruction {
    case .left(let amount):
        if amount > 1 {
            print("Turn left and take \(amount) steps")
        } else if amount == 1 {
            print("Turn left and take \(amount) step")
        }
        else {
            print("Turn left")
        }
    case .right(let amount):
        if amount > 1 {
            print("Turn right and take \(amount) steps")
        } else if amount == 1 {
            print("Turn right and take \(amount) step")
        }
        else {
            print("Turn right")
        }
    }
}

printInstruction(instruction: .left(9))
printInstruction(instruction: .right(0))
printInstruction(instruction: .right(1))
