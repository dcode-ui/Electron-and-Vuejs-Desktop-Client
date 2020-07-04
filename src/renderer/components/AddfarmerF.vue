<template>
    <div>
        <div id="form-control">
            <form>
                <div id="form-element">
                    <label for="firstname">Firstname</label>
                    <input type="text" name="firstname" id="form_input" placeholder="What's the farmer's firstname?"/>
                </div>
                <div id="form-element">
                    <label for="lastname">Lastname</label>
                    <input type="text" name="lastname" id="form_input" placeholder="What's the farmer's lastname?"/>
                </div>
                <div id="form-element">
                    <label for="gender">Gender</label>
                    <select id="form_input_select" class="select" name="gender">
                        <option v-for="(gender,index) in genders" :key="index" :value="gender.value">{{gender.value}}</option>
                    </select>
                </div>
                <div id="form-element">
                    <label for="mobile_number">Mobile Number</label>
                    <input type="text" name="mobile_number" id="form_input" placeholder="What's the farmer's mobile number?"/>
                </div>
                <div id="form-element">
                    <label for="parish">Parish</label>
                    <select id="form_input_select" class="select" name="parish">
                        <option v-for="(parish,index) in parishes" :key="index" :value="parish.value">{{parish.value}}</option>
                    </select>
                </div>
                <div id="form-element">
                    <label for="district">District</label>
                    <select id="form_input_select" class="select" name="District">
                        <option v-for="(district,index) in districts" :key="index" :value="district.value" id="option_con"><span>{{district.value}}</span></option>
                    </select>
                </div>
                <div id="form-element">
                    <div id="btn_wrapper">
                        <button type="submit" id="sub_button">Add Farmer</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</template>
<script>
export default {
    name:'AddfarmerF',
    data(){
        return{
            genders:[
                {value:"What's the farmers gender"},
                {value:'male'},
                {value:'female'}
                ],
            parishes:[
                {value:"What parish is the farmer from?"},
                {value:'Trelawny'},
                {value:'St.James'}
            ],
            districts:[
                {value:'What district is the farmer from?'},
                {value:'Border'},
                {value:'Mona'}
            ]
        }
    }
    
}
</script>
<style scoped>
@import url('https://fonts.googleapis.com/css2?family=Lato&display=swap');
#form-control
{
    position: relative;
    width: 100%;
    display: flex;
    justify-content: center;

}
#form-element
{
    display: flex;
    flex-direction: column;
    margin-top: 30px;
}

#btn_wrapper
{
    position: relative;
    width: 100%;
    height: 60px;
    display: flex;
    justify-content: center;
}
 button
{
    width: 60%;
    height: 60px;
    border-radius: 7px;
    border:none;
    background-color: rgb(255, 222, 58);
    font-size: 23px;
    font-family: 'Lato', sans-serif;
    box-shadow: 0px 10px 63px -25px rgba(254,222,67,0.8);


}
#form-element > label
{
    color: #ffffff;
    font-size: 20px;
    font-family: 'Lato', sans-serif;

}

form
{
    margin-top:15px;
    width: 80%;
}

#form_input
{
    background-color: transparent;
    height: 50px;
    margin-top: 10px; 
    border-radius: 7px;
    color:rgb(198, 198, 198);
    border: 1px solid rgb(198, 198, 198);
    padding-left: 30px;
    font-size: 20px;
    
}

#form_input::placeholder
{
    font-size: 20px;
    position: relative;
    margin-left: 20px;
    color:rgb(90,90,90);
}

#form_input_select
{
    background-color: transparent;
    height: 50px;
    margin-top: 10px; 
    border-radius: 7px;
    color:rgb(90,90,90);
    border: 1px solid rgb(198, 198, 198);
    padding-left: 30px;
    font-size: 20px;
}

#form_input_select:active
{
    background-color: transparent;
    height: 50px;
    margin-top: 10px; 
    border-radius: 7px;
    color:rgb(90,90,90);
    border: 1px solid rgb(198, 198, 198);
    padding-left: 30px;
    font-size: 20px;
    border: 1px solid none;
}
.select
{
    font-size: 20px;
    color: rgb(90,90,90);
}

.select > option
{
    color: red;
}

.select:active
{
    color: red;
}

</style>