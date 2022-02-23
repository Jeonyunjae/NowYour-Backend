-- AlterTable
ALTER TABLE "UserLocation" ALTER COLUMN "address" DROP NOT NULL,
ALTER COLUMN "address" SET DEFAULT 0;
