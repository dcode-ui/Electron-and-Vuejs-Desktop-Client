<template>
    <div id="dash_table">
        <div id="table_title">
            <div id="t_title">
                <p>{{title}}</p>
            </div>
            <router-link :to="route_to">></router-link>
        </div>
        <div id="t_con">
            <div id="theading">
                <div id="heading_name" v-for="(name, index) in headers" :key="index"> 
                    <p id="h_name">{{name}}</p>
                </div>
                <span id="spacer"></span>
            </div>
            <div id="tbody">
                <div id="t_row" v-for="(row, index) in tdata" :key="index">
                    <div id="t_column" v-for="(column, cindex) in row" :key="cindex">
                        <p>{{column}}</p>
                    </div>
                    <span id="spacer"></span>
                </div>

            </div>
        </div>

    </div>
</template>

<script>
export default {
    name:'DashTable',
    props:{
        title:{
            type:String,
            required:true
            },
        headers:{
            type:Array,
            required:true
        },
        route_to:{
            type:String,
            required:true
        },
        tdata:{
            type:Array,
            required:true
        }
        },
    data(){
        return{

        }
    }
}
</script>

<style scoped>
@import url('https://fonts.googleapis.com/css2?family=Lato&display=swap');

#dash_table
{
    position: relative;
    background-color: #ffffff;
    border-radius: 10px;
    box-shadow: 0px 10px 63px -25px rgba(212, 212, 212, 0.8);
    display: flex;
    align-items: center;
    flex-direction: column;
    height: 400px;
}

#dash_table > #table_title
{
    position: relative;
    display: flex;
    flex-direction: row;
    align-items: center;
    justify-content: space-between;
    width: 90%;
    top: 20px;
}

#dash_table > #table_title > #t_title > p
{
    font-size: 30px;
    font-family: 'Lato',sans-serif;
    font-weight: 700;
    margin-top: 5px;
    margin-bottom:5px;
}

#dash_table > #table_title > a
{
    display: flex;
    justify-content: center;
    align-items: center;
    color: #ffffff;
    text-decoration: none;
    background-color: rgb(122,181,69);
    width: 45px;
    height: 30px;
    border-radius: 5px;
}

#dash_table > #t_con
{
    width: 85%;
}
#dash_table > #t_con > #theading
{
    display: flex;
    flex-direction: row;
    justify-content: space-between;
    margin-top: 15px;
}

#dash_table > #t_con > #theading > #heading_name
{
    width: 20%;

}

#dash_table > #t_con > #theading > #heading_name > p
{
    font-size: 17px;
    font-family: 'Lato', sans-serif;
    color: rgb(212, 212, 212);
    margin-bottom: 10px;
}

#dash_table > #t_con > #theading > #spacer
{
    width: 2%;
}

#dash_table > #t_con > #tbody
{
    display: flex;
    flex-direction: column;
    height: 250px;
    overflow-y: scroll;
}

#dash_table > #t_con > #tbody::-webkit-scrollbar
{
    width: 5px;
    background-color: rgb(249,251,250);
    border-radius: 5px;

}

#dash_table > #t_con > #tbody::-webkit-scrollbar-thumb
{
    background-color: rgb(224,224,224);
    border-radius: 5px;
}

#dash_table > #t_con > #tbody > #t_row
{
    display: flex;
    flex-direction: row;
    justify-content: space-between;
    margin: 20px;
    margin-left: 0px;
    margin-bottom: 20px;


}

#dash_table > #t_con > #tbody > #t_row > #t_column
{
    width: 20%;
}

#dash_table > #t_con > #tbody > #t_row > #t_column > p
{
    font-size: 17px;
    font-family: 'Lato', sans-serif;
    margin-bottom: 10px;
}

#dash_table > #t_con > #tbody > #t_row > #spacer
{
    width: 2%;
}
</style>
