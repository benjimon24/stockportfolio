class Portfolios extends React.Component{
  render() {
    let portfolios = this.props.portfolios;

  return (
    <li className="portfolios">

    <div className="portfolios-content">
        <span className="portfolio-name">{portfolios.name}</span><br />
        <span className="portfolio-PnL">{portfolios.pnl}</span><br />
    </div>
  </li>
  )
  }
}
