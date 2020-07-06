<template>
    <div id="dash_table">
        <div id="manipu_data">
            <div id="m_con">
                <div>
                    <button>Sort</button>
                    <button>Export</button>
                </div>
            </div>
            <div id="search">
                <input type="text" id="searchbox" name="search" placeholder="Type here to search"/>
            </div>
        </div>
        <div id="t_con">
            <div id="theading">
                <div id="heading_name" v-for="(name, index) in headers" :key="index"> 
                    <p id="h_name">{{name}}</p>
                </div>
                <span id="spacer"></span>
            </div>
            <div id="tbody">
                <div id="tbody_con">
                    <div id="t_row" v-for="(row, index) in tdata" :key="index">
                        <div id="t_column" v-for="(column, cindex) in row" :key="cindex">
                            <p>{{column}}</p>
                        </div>
                        <span id="spacer"></span>
                    </div>
                </div>

            </div>
        </div>

    </div>
</template>

<script>
export default {
    name:'Big_Table',
    props:{
        headers:{
            type:Array,
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
#dash_table
{
    position: relative;
    display: flex;
    align-items: center;
    flex-direction: column;
}

#dash_table  > #manipu_data
{
    position: relative;
    display: flex;
    flex-direction: row;
    height: 80px;
    width: 100%;
    background-color: white;
    justify-content: space-between;
    align-items: center;
    box-shadow: 0px 10px 63px -25px rgba(212, 212, 212, 0.8);
    border-radius: 15px;
    
}

#dash_table > #t_con
{
    display: flex;
    flex-direction: column;
    width: 95%;
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

#dash_table > #t_con > #tbody
{
    display: flex;
    flex-direction: column;
    height: 600px;
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

#dash_table > #t_con > #tbody > #tbody_con > #t_row
{
    display: flex;
    flex-direction: row;
    justify-content: space-between;
    height: 60px;


}

#dash_table > #t_con > #tbody > #tbody_con > #t_row:hover
{
    background-color: #ffffff;
    border-radius: 50px;
    box-shadow: 0px 10px 63px -25px rgb(161, 161, 161);
    transition: 0.2s ease-in;

}

#dash_table > #t_con > #tbody > #tbody_con > #t_row > #t_column
{
    position: relative;
    height: 100%;
    width: 20%;
    display: flex;
    align-items: center;
}
#dash_table > #t_con > #tbody > #tbody_con > #t_row > #t_column > p
{
    font-size: 17px;
    font-weight: lighter;
    font-family: 'Lato', sans-serif;
    margin: 0px;
}
</style>