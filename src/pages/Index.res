open CssJs

@react.component
let make = () => {
  <div className={style(. [background(black)])}>
    <h1> {"Home Page"->React.string} </h1> <Nav />
  </div>
}
