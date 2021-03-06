%%raw(`import './styles/global.css'`)

@react.component
let make = () => {
  let url = RescriptReactRouter.useUrl()

  switch url.path {
  | list{} => <Index />
  | list{"about"} => <About />
  | _ => <Error404 />
  }
}
