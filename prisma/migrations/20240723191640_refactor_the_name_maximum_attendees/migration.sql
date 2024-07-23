/*
  Warnings:

  - You are about to drop the column `maximum_attendess` on the `events` table. All the data in the column will be lost.

*/
-- RedefineTables
PRAGMA defer_foreign_keys=ON;
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_events" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "title" TEXT NOT NULL,
    "details" TEXT,
    "slug" TEXT NOT NULL,
    "maximum_attendees" INTEGER
);
INSERT INTO "new_events" ("details", "id", "slug", "title") SELECT "details", "id", "slug", "title" FROM "events";
DROP TABLE "events";
ALTER TABLE "new_events" RENAME TO "events";
CREATE UNIQUE INDEX "events_id_key" ON "events"("id");
CREATE UNIQUE INDEX "events_slug_key" ON "events"("slug");
PRAGMA foreign_keys=ON;
PRAGMA defer_foreign_keys=OFF;
