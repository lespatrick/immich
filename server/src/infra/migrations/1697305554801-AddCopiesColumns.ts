import { MigrationInterface, QueryRunner } from "typeorm";

export class AddCopiesColumns1697305554801 implements MigrationInterface {
    name = 'AddCopiesColumns1697305554801'

    public async up(queryRunner: QueryRunner): Promise<void> {
        await queryRunner.query(`ALTER TABLE "assets" ADD "smallCopies" integer NOT NULL DEFAULT 0`);
        await queryRunner.query(`ALTER TABLE "assets" ADD "mediumCopies" integer NOT NULL DEFAULT 0`);
        await queryRunner.query(`ALTER TABLE "assets" ADD "largeCopies" integer NOT NULL DEFAULT 0`);
    }

    public async down(queryRunner: QueryRunner): Promise<void> {
        await queryRunner.query(`ALTER TABLE "assets" DROP COLUMN "largeCopies"`);
        await queryRunner.query(`ALTER TABLE "assets" DROP COLUMN "mediumCopies"`);
        await queryRunner.query(`ALTER TABLE "assets" DROP COLUMN "smallCopies"`);
    }

}
