class PortfoliosContainer extends React.Component{
  constructor(){
    super();
  }

  render() {
    return (
      <section id="portfolios-container">
        <h3>Your Portfolios</h3>
        <ul>
          {
           this.props.portfolios.map((portfolios,i) => {
             return <Portfolios portfolio={portfolio} key={i} />
           })
          }
        </ul>
      </section>
    )
  }
}
