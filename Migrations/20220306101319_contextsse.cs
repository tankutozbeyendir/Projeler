using Microsoft.EntityFrameworkCore.Migrations;

namespace Bosphorus.Migrations
{
    public partial class contextsse : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "TeamImage",
                table: "teams",
                type: "nvarchar(max)",
                nullable: true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "TeamImage",
                table: "teams");
        }
    }
}
