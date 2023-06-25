<template>
    <main :class="$style.wrapper">
        <div :class="$style.content">
            <div :class="$style.list">
                <ItemCard
                  v-for="item in items"
                  :key="item.id"
                  :item="item"
                  :editing-item-index="editingIemIndex"
                  :class="$style.item"
                  @editItem="handlerEditor"
                />
            </div>
            <div :class="$style.form">
                <Form
                  v-if="editingIemIndex !== null"
                  :editing-item="items[editingIemIndex]"
                  :input-data="inputData"
                  @submit.prevent="handlerSubmit"
                  @onInput="handlerInput"
                  @onCansel="handlerCansel"
                />
            </div>
        </div>
    </main>
</template>

<script>
import ItemCard from './components/ItemCard.vue';
import Form from './components/Form.vue';

export default {
    components: {
        ItemCard,
        Form,
    },

    data() {
        return {
            inputData: null,
            editingIemIndex: null,

            items: [
                { id: 0, name: 'John', value: 'Apple' },
                { id: 1, name: 'Alice', value: 'Orange' },
                { id: 2, name: 'Bob', value: 'Banana' },
                { id: 3, name: 'Carol', value: 'Grape' },
                { id: 4, name: 'David', value: 'Mango' },
                { id: 5, name: 'Eve', value: 'Cherry' },
                { id: 6, name: 'Frank', value: 'Pineapple' },
                { id: 7, name: 'Grace', value: 'Watermelon' },
                { id: 8, name: 'Henry', value: 'Strawberry' },
                { id: 9, name: 'Bob', value: 'Lemon' },
                { id: 10, name: 'Jack', value: 'Pear' },
                { id: 11, name: 'Kelly', value: 'Peach' },
                { id: 12, name: 'Leo', value: 'Blueberry' },
                { id: 13, name: 'Mia', value: 'Raspberry' },
                { id: 14, name: 'Nathan', value: 'Kiwi' },
                { id: 15, name: 'Olivia', value: 'Blackberry' },
                { id: 16, name: 'Peter', value: 'Plum' },
                { id: 17, name: 'Queen', value: 'Cranberry' },
                { id: 18, name: 'Ryan', value: 'Apricot' },
                { id: 19, name: 'Sara', value: 'Avocado' },
            ]
        }
    },

    methods: {
        handlerInput(e) {
            this.inputData = e;
            console.log('dsds');
        },

        handlerEditor(id) {
            this.editingIemIndex = this.items.findIndex(el => el.id === id);
            this.inputData = this.items[this.editingIemIndex].value;
        },

        handlerSubmit() {
            this.items[this.editingIemIndex].value = this.inputData;

            this.handlerCansel();
        },

        handlerCansel() {
            this.inputData = null;
            this.editingIemIndex = null;
        },
    }
}
</script>

<style module>
.wrapper {
    display: flex;
    justify-content: center;
    align-items: center;
    width: 100%;
    height: 100%;
}

.content {
    display: flex;
}

.list {
    display: flex;
    justify-content: space-between;
    flex-wrap: wrap;
    width: 315px;
    margin-right: 30px;
}

.item {
    margin-bottom: 15px;
}

.form {
    width: 200px;
}
</style>
