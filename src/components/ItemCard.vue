<template>
    <div
        :class="[$style.ItemCard, {
            [$style._selected] : editingItemIndex === item.id,
        }]"
        @click="$emit('editItem', item.id)"
    >
        <div :class="$style.name">
            <div class="">
                name:
            </div>
            <div class="">
                {{ item.name }}
            </div>
        </div>
        <div :class="$style.value">
            <div class="">
                value:
            </div>
            <div class="">
                {{ item.value }}
            </div>
        </div>
    </div>
</template>

<script>
export default {
    name: 'ItemCard',

    props: {
        item: {
            type: Object,
            default: () => ({}),
        },

        editingItemIndex: {
            type: Number,
            default: null,
        }
    }
}
</script>

<style lang="scss" module>
.ItemCard {
    width: 150px;
    padding: 4px 8px;
    border: 1px solid #1f222a;
    border-radius: 8px;
    transition: .3s all ease;

    &:hover {
        cursor: pointer;
        box-shadow: 0 0 10px rgba(0,0,0,0.5);
    }

    &._selected {
        box-shadow: 0 0 10px rgba(0,0,0,0.5);
    }
}

.name {
    display: flex;
    justify-content: space-between;
}

.value {
    display: flex;
    justify-content: space-between;
}
</style>