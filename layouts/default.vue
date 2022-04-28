<template>
    <div>
        <Title>Nuxt 3 example</Title>
        <nav class="bg-gray-100 text-center">
            <li><NuxtLink to="/">Home</NuxtLink></li>
            <li><NuxtLink to="/about">About</NuxtLink></li>
            <li><NuxtLink to="/contact">Contact</NuxtLink></li>
            <li><NuxtLink to="/posts">Posts</NuxtLink></li>
        </nav>
        <slot />
    </div>
</template>