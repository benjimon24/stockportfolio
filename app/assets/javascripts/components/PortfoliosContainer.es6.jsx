class PortfoliosContainer extends React.Component{
  constructor(){
    super();
  }

  render() {
    return (
      <container id="portfolios-container">
        <h3>Your Portfolios</h3>
          {
           this.props.portfolios.map((portfolio,i) => {
             return <Portfolios portfolio={portfolio} key={i} />
           })
          }
      </container>
    )
  }
}
