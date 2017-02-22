class PortfoliosContainer extends React.Component{
  constructor(){
    super();
  }

  render() {
    return (
      <div id="portfolios-container">
        <h3 className="medium-header">Your Portfolios</h3>
        {
           this.state.portfolios.map((portfolio,i) => {
             return <Portfolios portfolio={portfolio} key={i} />
           })
          }
      </div>
    )
  }
}
