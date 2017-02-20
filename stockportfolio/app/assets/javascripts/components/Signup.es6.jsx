class Signup extends React.Component {
  render() {
    return(
      <div className="signup-form">
        <h1>Sign Up:</h1>
        <form className="" action="/users" method="post">
          <input type="text" name="user[first_name]" value="" placeholder="First Name"/><br/><br/>
          <input type="text" name="user[last_name]" value="" placeholder="Last Name"/><br/><br/>
          <input type="text" name="user[email]" value="" placeholder="Email@email.com"/><br/><br/>
          <input type="text" name="user[password]" value="" placeholder="Password"/><br/><br/>
          <input type="submit" name="" value="Sign up"/>
        </form>
      </div>
    )
  }
}
