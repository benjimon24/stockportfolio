class Portfolios extends React.Component{
  render() {
    let portfolios = this.props.portfolios;

  return (
    <li className="portfolios">

    <div className="portfolios-content">
      <p>
        <span className="portfolio-name">{portfolios.name}</span><br />
        <span className="portfolio-PnL">{portfolios.pnl}</span><br />
      </p>
    </div>
  </li>
  )
  }
}
