class Signup extends React.Component {
  constructor() {
    super();
    this.handleSubmit = this.handleSubmit.bind(this)
  }


  handleSubmit(e) {
    let user_input = {first_name: this.refs.first_name.value, last_name: this.refs.last_name.value, email: this.refs.email.value, password: this.refs.password.value}
    e.preventDefault();
    $.ajax({
      url: 'sessions/login',
      method: 'post',
      data: user_input
    }).done(response => {
      console.log(response)
    })
  }

  render() {
    return(
      <div className="signup-form">
        <h1>Sign Up:</h1>
        <form className="" onSubmit={this.handleSubmit}>
          <input type="text" name="user[first_name]" ref='first_name' placeholder="First Name"/><br/><br/>
          <input type="text" name="user[last_name]"  ref='last_name' placeholder="Last Name"/><br/><br/>
          <input type="text" name="user[email]"  ref='email' placeholder="Email@email.com"/><br/><br/>
          <input type="text" name="user[password]"  ref='password' placeholder="Password"/><br/><br/>
          <input type="submit" name="" value="Sign up"/>
        </form>
      </div>
    )
  }
}
