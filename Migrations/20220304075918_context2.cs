using Microsoft.EntityFrameworkCore.Migrations;

namespace Bosphorus.Migrations
{
    public partial class context2 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "TeamPassword",
                table: "teams",
                type: "nvarchar(100)",
                maxLength: 100,
                nullable: false,
                defaultValue: "");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "TeamPassword",
                table: "teams");
        }
    }
}
