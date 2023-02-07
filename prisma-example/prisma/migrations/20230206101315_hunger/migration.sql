/*
  Warnings:

  - The primary key for the `Recipes` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `id` on the `Recipes` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE "Ing_In_Rec" DROP CONSTRAINT "Ing_In_Rec_recipe_id_fkey";

-- DropForeignKey
ALTER TABLE "Liked" DROP CONSTRAINT "Liked_recipe_id_fkey";

-- AlterTable
ALTER TABLE "Recipes" DROP CONSTRAINT "Recipes_pkey",
DROP COLUMN "id",
ADD COLUMN     "recid" SERIAL NOT NULL,
ADD CONSTRAINT "Recipes_pkey" PRIMARY KEY ("recid");

-- AddForeignKey
ALTER TABLE "Liked" ADD CONSTRAINT "Liked_recipe_id_fkey" FOREIGN KEY ("recipe_id") REFERENCES "Recipes"("recid") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Ing_In_Rec" ADD CONSTRAINT "Ing_In_Rec_recipe_id_fkey" FOREIGN KEY ("recipe_id") REFERENCES "Recipes"("recid") ON DELETE RESTRICT ON UPDATE CASCADE;
