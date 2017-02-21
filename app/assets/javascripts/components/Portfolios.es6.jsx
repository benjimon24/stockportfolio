class Portfolios extends React.Component{
  render() {
    let portfolio = this.props.portfolio;

  return (
    <section className="portfolios-content">
        <span className="portfolio-name">{portfolio.name}</span><br />
        {/* make the portfolio name a link to porfolios/:id page */}
        <span className="portfolio-PnL">{portfolio.net_profit}</span><br />
    </section>
  )
  }
}
