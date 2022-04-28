<template>
    <div>
        <h1 class="text-gray-900 bg-gray-100 text-center">
            {{ count }}
        </h1>
        <h1 class="text-yellow-900 bg-yellow-100 text-center">
            {{ plusOne }}
        </h1>
        <button @click="decrement">Decrement</button>
        <button @click="increment">Increment</button>
    </div>
</template>

<script setup>
const count = ref(0)

const plusOne = computed(() => count.value + 1)

function decrement() {
    count.value--
}

function increment() {
    count.value++
}
</script>