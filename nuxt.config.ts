export default defineNuxtConfig({
  app: {
    head: {
      meta: [
        { name: "charset", content: "utf-8" },
        { name: "viewport", content: "width=device-width, initial-scale=1" },
        { name: "title", content: "D.S.R. Proteus-Eretes" },
        {
          name: "description",
          content: "Delftse Studenten Roeivereniging Proteus-Eretes",
        },
        { name: "theme-color", content: "#004A95" },
      ],
      link: [{ rel: "icon", href: "/favicon.png" }],
      noscript: [{ textContent: "This website requires JavaScript." }],
    },
  },
  modules: ["@nuxtjs/tailwindcss", "nuxt-icon"],
  typescript: {
    strict: true,
  },
});
