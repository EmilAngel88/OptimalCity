<template>
    <form :class="$style.Form">
        <div :class="$style.headLine">
            <div>
                name:
            </div>
            <div v-if="editingItem.name">
                {{ editingItem.name }}
            </div>
        </div>
        <Input
            @onInput="$emit('onInput', $event)"
            :value="inputData"
            :class="$style.input"
        />
        <div :class="$style.btns">
            <button
                :class="$style.btn"
                @click="onSubmit"
            >
                Ok
            </button>
            <button
                :class="$style.btn"
                @click="$emit('onCansel')"
            >
                Cancel
            </button>
        </div>
    </form>
</template>

<script>
import Input from "./Input.vue";

export default {
    name: 'Form',

    components: {
        Input,
    },

    props:{
        editingItem: {
            type: Object,
            default: () => ({}),
        },

        inputData: {
            type: [String, Number],
            default: null,
        }
    },
}
</script>

<style module>
.Form {
    width: 200px;
}

.headLine {
    display: flex;
    justify-content: space-between;
    margin-bottom: 8px;
}

.input {
    margin-bottom: 12px;
}

.btns {
    display: flex;
    justify-content: space-between;
}

.btn {
    width: 47%;
    box-sizing: border-box;
    padding: 8px 15px;
    border-radius: 6px;
    text-align: center;
    text-decoration: none;
    cursor: pointer;
}
</style>