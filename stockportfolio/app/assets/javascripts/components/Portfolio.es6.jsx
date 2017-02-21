class Portfolio extends React.Component {
  constructor() {
    super();
  }
  render() {
    return(
      <div>
      <header className="w3-container">
        <h5><i className="fa fa-dashboard"></i>My Portfolio</h5>
      </header>
      <div className="w3-row-padding w3-margin-bottom">
        <div className="w3-quarter">
          <div className="w3-container w3-red w3-padding-16">
            <div className="w3-left"><i className="fa fa-comment w3-xxxlarge"></i></div>
            <div className="w3-right">
              <h3>AAPL - Apple</h3>
            </div>
            <div className="w3-clear"></div>
            <h4>Stock Symbol</h4>
          </div>
        </div>
        <div className="w3-quarter">
          <div className="w3-container w3-blue w3-padding-16">
            <div className="w3-left"><i className="fa fa-eye w3-xxxlarge"></i></div>
            <div className="w3-right">
              <h3>$50.00</h3>
            </div>
            <div className="w3-clear"></div>
            <h4>Purchase Price</h4>
          </div>
        </div>
        <div className="w3-quarter">
          <div className="w3-container w3-teal w3-padding-16">
            <div className="w3-left"><i className="fa fa-share-alt w3-xxxlarge"></i></div>
            <div className="w3-right">
              <h3>10</h3>
            </div>
            <div className="w3-clear"></div>
            <h4> Number of Shares</h4>
          </div>
        </div>
        <div className="w3-quarter">
          <div className="w3-container w3-orange w3-text-white w3-padding-16">
            <div className="w3-left"><i className="fa fa-users w3-xxxlarge"></i></div>
            <div className="w3-right">
              <h3>$50.00</h3>
            </div>
            <div className="w3-clear"></div>
            <h4>Current Price</h4>
          </div>
        </div>
      </div>

      <div className="w3-container w3-section">
        <div className="w3-row-padding">
          <div className="w3-third">
            <h5>Stock Chart</h5>
            <img src="http://www.thedigeratilife.com/images/aapl-stock.jpg" alt="Google Regional Map" />
          </div>
        </div>
      </div>
      <div className="w3-twothird">
        <h5>Profit & Loss</h5>
        <table className="w3-table w3-striped w3-white">
          <tr>
            <td><i className="fa fa-user w3-blue w3-padding-tiny"></i></td>
            <td>New record, over 90 views.</td>
            <td><i>10 mins</i></td>
          </tr>
          <tr>
            <td><i className="fa fa-bell w3-red w3-padding-tiny"></i></td>
            <td>Database error.</td>
            <td><i>15 mins</i></td>
          </tr>
          <tr>
            <td><i className="fa fa-users w3-orange w3-text-white w3-padding-tiny"></i></td>
            <td>New record, over 40 users.</td>
            <td><i>17 mins</i></td>
          </tr>
          <tr>
            <td><i className="fa fa-comment w3-red w3-padding-tiny"></i></td>
            <td>New comments.</td>
            <td><i>25 mins</i></td>
          </tr>
          <tr>
            <td><i className="fa fa-bookmark w3-light-blue w3-padding-tiny"></i></td>
            <td>Check transactions.</td>
            <td><i>28 mins</i></td>
          </tr>
          <tr>
            <td><i className="fa fa-laptop w3-red w3-padding-tiny"></i></td>
            <td>CPU overload.</td>
            <td><i>35 mins</i></td>
          </tr>
          <tr>
            <td><i className="fa fa-share-alt w3-green w3-padding-tiny"></i></td>
            <td>New shares.</td>
            <td><i>39 mins</i></td>
          </tr>
        </table>
      </div>
    </div>
    )
  }
}
