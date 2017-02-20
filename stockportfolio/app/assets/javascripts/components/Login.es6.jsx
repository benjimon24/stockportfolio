class Login extends React.Component {
  render() {
    return(
      <div className="login-form">
        <h1>Sign In:</h1>
        <form className="" action="/sessions/login" method="post">
          <input type="text" name="user[email]" value="" placeholder="Email@email.com"/><br/><br/>
          <input type="text" name="user[password]" value="" placeholder="Password"/><br/><br/>
          <input type="submit" name="" value="login up"/>
        </form>
      </div>
    )
  }
}
