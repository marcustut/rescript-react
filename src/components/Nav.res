@react.component
let make = () => {
  <div>
    <div onClick={_ => RescriptReactRouter.push("/")}> {"Home"->React.string} </div>
    <div onClick={_ => RescriptReactRouter.push("about")}> {"About"->React.string} </div>
    <div onClick={_ => RescriptReactRouter.push("form")}> {"Form"->React.string} </div>
  </div>
}
