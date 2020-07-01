<template>
    <div id="main_dash">
        <div id="left_con">
            <p>{{say}}</p>

        </div>
        <div id="middle_con">
            <p>{{say}}</p>

        </div>
        <div id="right_con">
            <p>{{say}}</p>

        </div>
    </div>
</template>

<script>
export default {
    name:"Dasboard",
    data(){
        return {
            say:'hello'
        }
    }

}
</script>
<style scoped>
#main_dash
{
    position: absolute;
    display: grid;
    grid-template-columns: 10% 60% 30%;
    width: 100vw;
    height: 100vh;
    top: 0px;
    left: 0px;
    background-color: red;
}

#left_con
{
    background-color: blue;
}

#middle_con
{
    background-color: pink;
}

#right_con
{
    background-color: yellow;
    display: flex;
    justify-content: center;
}


</style>