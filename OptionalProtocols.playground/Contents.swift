protocol optionalProtocol: class {
    func done()
}

extension optionalProtocol {
    func done() {
        print("Optional Protocol")
    }
}

class exampleOne: optionalProtocol {
    func done() {
        print("Conforming to Protocol")
    }
}

class exampleTwo: optionalProtocol {
    
}

let one = exampleOne()
let two = exampleTwo()

one.done()
two.done()
