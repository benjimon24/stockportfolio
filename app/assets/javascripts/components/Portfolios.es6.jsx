class Portfolios extends React.Component{
  render() {
    let portfolio = this.props.portfolio;

  return (
    <section className="portfolios-content">
      <h1>Hi!!!</h1>
        <span className="portfolio-name">{portfolio.name}</span><br />
        {/* <a href="portfolios/{portfolio.id}>{portfolio.name}</a>"*/}
        <span className="portfolio-PnL">{portfolio.net_profit}</span><br />
    </section>
  )
  }
}
