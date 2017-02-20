class Login extends React.Component {
  constructor() {
    super();
    this.handleSubmit = this.handleSubmit.bind(this)
  }

  handleSubmit(e) {
    e.preventDefault();
    $.ajax({
      url: 'sessions/login',
      method: 'post'
    }).done(response => {
      console.log(response)
      debugger;
    })
  }

  render() {
    return(
      <div className="login-form">
        <h1>Sign In:</h1>
        <form  onSubmit={this.handleSubmit}>
          <input type="email" name="user[email]"  ref='email' placeholder="Email@email.com"/><br/><br/>
          <input type="password" name="user[password]" ref='password' placeholder="Password"/><br/><br/>
          <input type="submit" name="" value="Sign In"/>
        </form>
      </div>
    )
  }
}
