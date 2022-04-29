type height = int
type bark = bool
type animal = Zebra | Giraffe(height) | Dog(bark)

type state = {selectedAnimal: option<animal>}

let state = {selectedAnimal: None}

type action = AnimalSelected(animal)

let reducer = (state, action) => {
  switch action {
  | AnimalSelected(a) => {...state, selectedAnimal: Some(a)}
  }
}

//// end reducer

let getInformation = (a: animal) => {
  switch a {
  | Zebra => "The animal is a Zebra"
  | Giraffe(h) => `The giraffe is ${h->Belt.Int.toString} feet tall`
  | Dog(b) => `The dog is ${b ? "is barking" : "is not barking"}`
  }
}

let getAnimalString = (a: option<animal>) => {
  switch a {
  | Some(a) => a->getInformation
  | None => "no animals"
  }
}

@react.component
let make = () => {
  let (state, dispatch) = React.useReducer(reducer, state)

  <>
    <SelectedAnimalHeader description={state.selectedAnimal->getAnimalString} />
    <button onClick={_ => Zebra->AnimalSelected->dispatch}> {"Select Zebra"->React.string} </button>
    <button onClick={_ => Giraffe(10)->AnimalSelected->dispatch}>
      {"Select Giraffe"->React.string}
    </button>
    <button onClick={_ => Dog(true)->AnimalSelected->dispatch}>
      {"Select Dog"->React.string}
    </button>
  </>
}
