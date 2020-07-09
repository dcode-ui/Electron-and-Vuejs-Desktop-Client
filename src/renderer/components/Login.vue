<template>
    <div id="body_graph">
        <div id="main_login">
            <div id="login_con">
                <img src="@/assets/logo.svg" alt="" id="hlogo"/>
                <div id="welcome">
                    <p id="welcome_text">Welcome to Harpa</p>
                </div>
                <div id="login_form">
                    <form method="GET">
                        <div id="form-element" >
                            <label for="username" v-show="login_data.username != ''">USERNAME</label>
                            <input type="text" name="username" id="form_input" placeholder="USERNAME" v-model="login_data.username" required/>
                        </div>
                        <div id="form-element">
                            <label for="password" v-show="login_data.password != ''">PASSWORD</label>
                            <input type="text" name="password" id="form_input" placeholder="PASSWORD" v-model="login_data.password" required/>
                        </div>
                        <div id="nav_con">
                            <a @click="handle_Login"><span id="o_route">Login</span><img src="@/assets/Icons/arrowRightgreen.svg" id="nav_icon" alt=""/></a>
                        </div>
                    </form>
                </div>
            </div>
            <!--
            <div id="route_nav">
                    <div id="nav_con">
                        <router-link to="/farmers"><span id="o_route">Farmers</span></router-link>
                    </div>
                </div>-->
        </div>

    </div>
</template>
<script>
export default {
    name:'Login',
    data(){
        return{
            login_data:{
                username:'',
                password:''
            }
        }
    },
    methods:
    {
        handle_Login()
        {
            
            const _username = this.login_data.username
            const _password = this.login_data.password
            const _databody = {
                username:_username,
                password:_password
            }

            if(_username == '' || _password == '')
            {
                alert('Please enter a Username and Password')
            }
            else if(_username == '' && _password != '')
            {
                alert('Please enter a Username')
            }
            else if(_password == '' && _username != '')
            {
                alert('Please enter a Password')
            }
            else
            {
                fetch('http://localhost:5000/api/login',{
                method: 'POST',
                body: JSON.stringify(_databody),
                headers: {
                    'Authorization': 'Bearer '+localStorage.getItem('acctoken'),
                    'content-type': 'application/json'
                }
                }).then((resp)=>{
                        resp.json().then((data)=>{
                            if(data.udetails)
                            {
                                console.log(data.token)
                                localStorage.setItem('acctoken', data.token)
                                localStorage.setItem('userid',data.udetails.userid)
                                localStorage.setItem('username',data.udetails.username)
                                this.$router.push({ path: `/dashboard` })
                            }
                            else
                            {
                                alert('Their was an error logging into Harpa')
                            }
                            })
                }).catch((err)=>{
                    console.log(err)
                })
                //this.$router.push({path:'/Dashboard'})
            }

            //console.log(_databody)
            //this.$router.push({path:'/Dashboard'})
        }
    }
}
</script>

<style scoped>
@import url('https://fonts.googleapis.com/css2?family=Roboto:wght@900&display=swap');

#body_graph
{
    position: relative;
    top: 0px;
    left: 0px;
    width: 100%;
    height: 1060px;
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
    background-color: #ffffff;
}
#login_con
{
    position: relative;
    width: 100%;
    height: 100%;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;

}
#login_con > #hlogo
{
    transform: scale(.45);
}
#main_login
{
    width: 50%;
    height: 70%;
    background-color: #ffffff;
    border-radius: 10px;
}

#welcome
{
    position: relative;
    top: -70px;
    display:flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
}

#welcome > p
{
    margin: 0px;
}

#welcome > #welcome_text
{
    font-family: 'Roboto', sans-serif;
    color: rgb(54,54,54);
    font-weight: 900;
    font-size: 50px;
    text-transform: uppercase;
}
#welcome > #welcome_descr
{

    color: rgb(163,163,163);
    font-family: 'Lato', sans-serif;
    font-size: 19px;

}

#login_form
{
    position: relative;
    top:-10px;
    width: 80%;
}

#form-element
{
    display:flex;
    height: 70px;
    flex-direction: column;
    border-left: 10px solid rgb(122,181,69);
    padding:15px;
    margin-bottom: 5px;
    box-shadow: 0px 10px 63px -25px rgba(212, 212, 212, 0.8);
}
#form-element > label
{
    font-size: 15px;
    font-weight: 500;
    font-family: 'Lato',sans-serif;
}

#form-element > #form_input
{
    height: 50px;
    font-size: 20px;
    font-family: 'Lato',sans-serif;
    font-weight: 700;
    padding-left: 10px;
    border:none;
}

#form-element > #form_input::placeholder
{
    padding-left: 10px;
}

a > #o_route
{
    font-family: 'Lato', sans-serif;
    font-weight: 700;
    font-size:21px;
}

#nav_con
{
    top: 20px;
    position: relative;
    float: right;
}
a > img
{
    transform: scale(1.7);
    margin-left: 10px;
}
</style>