<template>
    <div id="nav_wrapper">
        <div id="main_nav">
            <div id="logo_con">
                <img src="@/assets/logo.svg" alt="Harpa Logo">
            </div>
            <div id="nav">
                <div id="route_nav">
                    <div id="nav_con">
                        <router-link to="/"><img src="@/assets/Icons/dashboard.svg" id="nav_icon" alt=""/><span id="o_route">Dashboard</span></router-link>
                    </div>
                </div>
                <div id="route_nav">
                    <div id="nav_con">
                        <router-link to="/farmers"><img src="@/assets/Icons/farmer.svg" id="nav_icon" alt=""/><span id="o_route">Farmers</span></router-link>
                    </div>
                </div>
                <div id="route_nav">
                    <div id="nav_con">
                        <router-link to="/farms"><img src="@/assets/Icons/farm.svg" id="nav_icon" alt=""/><span id="o_route">Farms</span></router-link>
                    </div>
                </div>
                <div id="route_nav">
                    <div id="nav_con">
                        <router-link to="/cropyields"><img src="@/assets/Icons/crops.svg" id="nav_icon" alt=""/><span id="o_route">Crop Yields</span></router-link>
                    </div>
                </div>
                <div id="route_nav">
                    <div id="nav_con">
                        <router-link to="/farmview"><img src="@/assets/Icons/crops.svg" id="nav_icon" alt=""/><span id="o_route">demo farm view</span></router-link>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    name:'Navbar',
    data(){
        return{
            noe:'crops.svg'
        }
    }
}
</script>

<style scoped>
@import url('https://fonts.googleapis.com/css2?family=Lato:wght@700&display=swap');

#main_nav
{
    width: 250px;
    height: 100vh;
    background-color: rgb(249, 251, 250);
    border-right: 2px solid rgb(242,244,243);
}

#logo_con
{
    height: 180px;
    display: flex;
    justify-content: center;
    align-items: center;
    border-bottom: 2px solid rgb(242,244,243);
}

#logo_con > img
{
    transform: scale(.9);
}
#nav
{
    margin-top: 100px;
}
#route_nav
{
    position: relative;
    display: flex;
    align-items: center;
    width: 100%;
    height: 50px;
}

#route_nav > #nav_con
{
    position: relative;
    display: flex;
    align-items: center;
}
#nav_icon
{
    width: 35px;
    height: 35px;
    margin-left: 40px;

}

#route_nav > #nav_con > a
{
    display: flex;
    align-items: center;
    font-size: 20px;
    font-family: 'Lato', sans-serif;
    font-weight: 700;
    text-decoration: none;
    color: rgb(132,188,82);
    width: 250px;


}
#nav_con > a > span
{
    margin-left: 20px;

}



</style>