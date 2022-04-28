<template>
    <h1 class="bg-green-100 text-green-600 text-center">Homepage</h1>
    <Counter />
    <h1 class="text-xl text-indigo-500">x : {{ x }}</h1>
    <h1 class="text-xl text-emerald-500">y: {{ y }}</h1>
</template>

<script setup>
    const { x, y } = useMouse()
</script>