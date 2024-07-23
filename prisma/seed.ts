import { prisma } from "../src/lib/prisma";

async function seed() {
  await prisma.event.create({
    data: {
      id: "8573b120-00f8-492b-a9e5-8c5686cef247",
      title: "Unite Summit",
      slug: "unite-summit",
      details: "Um evento p/ devs apaixonados(as) por código!",
      maximumAttendees: 120,
    },
  });
}

seed().then(() => {
  console.log("Database seeded!");
  prisma.$disconnect();
});
