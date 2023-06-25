<template>
    <div :class="$style.inputWrap">
        <input
            type="text"
            @input="$emit('onInput', $event.target.value)"
            :class="$style.input"
            :value="value"
        >
    </div>
</template>

<script>
export default {
    name: 'Input',

    props: {
        value: {
            type: [String, Number],
            default: null,
        }
    },
}
</script>

<style module>
.inputWrap {
    width: 100%;
    max-height: 49px;
}

.input {
    box-sizing: border-box;
    width: 100%;
    height: auto;
    padding: 13px 85px 13px 20px;
    border-radius: 8px;
    border: 1px solid $Gray200;
    background-color: #fff;
    outline: none;
}
</style>