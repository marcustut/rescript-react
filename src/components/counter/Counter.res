@react.component
let make = () => {
  let (count, setCount) = React.useState(() => 0)

  <>
    <h1> {`Counter: ${count->Belt.Int.toString}`->React.string} </h1>
    <button onClick={_ => setCount(prev => prev + 1)}> {"Add One"->React.string} </button>
    <button onClick={_ => RescriptReactRouter.push("zoo")}> {"Go to Zoo"->React.string} </button>
  </>
}
