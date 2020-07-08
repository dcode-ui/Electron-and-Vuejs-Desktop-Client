<template>
    <div id="big_table">
        {{ncheck}}
        <div id="manipu_data">
            <div id="m_con">
                <div id="button_con">
                    <div id="sort_con">
                        <button id="sort" name="sort" @click="toggle_Sort()">Sort</button>
                        <div id="sort_box" v-if="ncheck == 'Farmers'" >
                            <button id="crop_sort" v-show="sort_visible" class="sort_button" name="crop_sort">Crop</button>
                            <button id="date_sort" v-show="sort_visible" class="sort_button" name="date_sort">Date</button>
                        </div>
                        <div id="sort_box" v-if="ncheck == 'Farms'" >
                            <button id="crop_sort" v-show="sort_visible" class="sort_button" name="crop_sort">Crop</button>
                            <button id="date_sort" v-show="sort_visible" class="sort_button" name="date_sort">Date</button>
                        </div>
                        <div id="sort_box" v-if="ncheck == 'Crop_Yield'" >
                            <button id="crop_sort" v-show="sort_visible" class="sort_button" name="crop_sort">Crop</button>
                            <button id="date_sort" v-show="sort_visible" class="sort_button" name="date_sort">Date</button>
                        </div>
                        <div id="sort_box" v-if="ncheck == 'Farm_View'" >
                            <button id="crop_sort" v-show="sort_visible" class="sort_button" name="crop_sort">Crop</button>
                            <button id="date_sort" v-show="sort_visible" class="sort_button" name="date_sort">Date</button>
                        </div>
                    </div>
                    <button id="export" name="export">Export</button>
                </div>
                <div id="search" v-if="searchB">
                    <input type="text" id="searchbox" name="search" placeholder="Type here to search"/>
                </div>
                <div id="addcrop_con" v-if="addCrop">
                    <div id="addcrop_c_con">
                        <input type="text" id="addcropbox" name="addcropbox" placeholder="Enter crop you want to add" v-model="crop_name"/>
                    </div>
                    <button id="export" name="export" @click="add_Crop">Add Crop</button>
                </div>
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
    name:'BigTable',
    props:{
        headers:{
            type:Array,
            required:true
        },
        tdata:{
            type:Array,
            required:true
        },
        searchB:
        {
            type:Boolean,
            required:true
        },
        addCrop:
        {
            type:Boolean,
            required:true
        },
        ncheck:
        {
            type:String,
            required:true
        }
    },
    data(){
        return{
            sort_visible:false,
            crop_name:''
            
        }
    
    },
    methods:{
        add_Crop()
        {
            let data = JSON.stringify({crop:this.crop_name})
            console.log(data)
        },
        toggle_Sort()
        {
            this.sort_visible = !this.sort_visible
        }
    }
}
</script>

<style scoped>
#big_table
{
    position: relative;
    display: flex;
    align-items: center;
    flex-direction: column;
}


#big_table  > #manipu_data
{
    position: relative;
    display: flex;
    flex-direction: row;
    height: 80px;
    width: 100%;
    background-color: white;
    justify-content: center;
    align-items: center;
    box-shadow: 0px 10px 63px -25px rgba(212, 212, 212, 0.8);
    border-radius: 15px;
    
}

#big_table > #manipu_data > #m_con 
{
    position: relative;
    display: flex;
    flex-direction: row;
    justify-content: space-between;
    width: 90%;
}
#big_table > #manipu_data > #m_con > #button_con 
{
    display: flex;
    justify-content: space-between;
    align-items: center;
    flex-direction: row;
    background-color: rgb(34,34,34);
    border-radius: 5px;
    height: 32px;
}
#big_table > #manipu_data > #m_con > #button_con > #sort_con 
{
    display: flex;
    flex-direction: row;
    align-items: center;
}

#big_table > #manipu_data > #m_con > #button_con > #sort_con > #sort_box 
{
    display: flex;
    flex-direction: row;
    background-color: rgb(249,251,250);
    border-radius: 5px;
}

button
{
    width: 80px;
    height: 28px;
    color: #ffffff;
    background: rgb(34,34,34);
    border:none;
    border-radius: 5px;
}

.sort_button
{
    background-color: transparent;
    color: rgb(34,34,34);
    font-weight: 800;
}

.sort_button:hover
{
    background-color: rgb(233, 233, 233);
    font-weight: 800;
    border: none;
    transition: 0.2s ease-in;
}

#big_table > #manipu_data > #m_con > #search
{
    display: flex;
    justify-content: center;
    align-items: center;
    width: 200px;
    border-radius: 10px;
    background-color: rgb(249,251,250);
    padding: 8px;
}

#big_table > #manipu_data > #m_con > #search > #searchbox
{
    font-family: 'Lato', sans-serif;
    font-size: 15px;
    width: 170px;
    background-color: rgb(249,251,250);
    border:none;


}
#big_table > #manipu_data > #m_con > #addcrop_con
{
    display: flex;
    justify-content: space-between;
    align-items: center;
    width: 310px;
    height: 28px;
    border-radius: 10px;
}
#big_table > #manipu_data > #m_con > #addcrop_con > #addcrop_c_con
{
    display: flex;
    justify-content: center;
    align-items: center;
    width: 200px;
    border-radius: 10px;
    background-color: rgb(249,251,250);
    padding-left: 8px;
    padding-right: 8px;
    padding-bottom: 5px;
    padding-top: 5px;


}

#big_table > #manipu_data > #m_con > #addcrop_con > #addcrop_c_con > #addcropbox
{
    font-family: 'Lato', sans-serif;
    font-size: 15px;
    width: 170px;
    background-color: rgb(249,251,250);
    border:none;
}

#big_table > #manipu_data > #m_con > #addcrop_con > #addcrop_c_con > #addcropbox::placeholder
{
    font-family: 'Lato', sans-serif;
    font-size: 13px;
}

#big_table > #manipu_data > #m_con > #search > #searchbox::placeholder
{
    font-size: 15px;
}
#big_table > #t_con
{
    display: flex;
    flex-direction: column;
    width: 95%;
}

#big_table > #t_con > #theading
{
    display: flex;
    flex-direction: row;
    justify-content: space-between;
    margin-top: 15px;
}

#big_table > #t_con > #theading > #heading_name
{
    width: 20%;

}

#big_table > #t_con > #theading > #heading_name > p
{
    font-size: 17px;
    font-family: 'Lato', sans-serif;
    color: rgb(212, 212, 212);
    margin-bottom: 10px;
}

#big_table > #t_con > #tbody
{
    display: flex;
    flex-direction: column;
    height: 500px;
    overflow-y: scroll;
}

#big_table > #t_con > #tbody::-webkit-scrollbar
{
    width: 5px;
    background-color: rgb(249,251,250);
    border-radius: 5px;

}

#big_table > #t_con > #tbody::-webkit-scrollbar-thumb
{
    background-color: rgb(224,224,224);
    border-radius: 5px;
}

#big_table > #t_con > #tbody > #tbody_con > #t_row
{
    display: flex;
    flex-direction: row;
    justify-content: space-between;
    height: 60px;


}

#big_table > #t_con > #tbody > #tbody_con > #t_row:hover
{
    background-color: #ffffff;
    border-radius: 20px;
    box-shadow: 0px 10px 63px -25px rgb(161, 161, 161);
    transition: 0.2s ease-in;
    padding-left: 10px;

}

#big_table > #t_con > #tbody > #tbody_con > #t_row > #t_column
{
    position: relative;
    height: 100%;
    width: 20%;
    display: flex;
    align-items: center;
}
#big_table > #t_con > #tbody > #tbody_con > #t_row > #t_column > p
{
    font-size: 17px;
    font-weight: lighter;
    font-family: 'Lato', sans-serif;
    margin: 0px;
}
</style>