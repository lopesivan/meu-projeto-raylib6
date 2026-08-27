#include <raylib.h>

#include <iostream>

int main()
{
    InitWindow(1280, 720, "Exemplo raylib");

    Image image = LoadImage("../abobrinha.png");

    if(!IsImageValid(image))
    {
        std::cerr << "Erro ao carregar foto.png\n";
        CloseWindow();
        return 1;
    }

    const int new_width  = image.width / 2;
    const int new_height = image.height / 2;

    ImageResize(&image, new_width, new_height);

    Texture2D texture = LoadTextureFromImage(image);

    UnloadImage(image);

    SetTargetFPS(60);

    while(!WindowShouldClose())
    {
        BeginDrawing();

        ClearBackground(RAYWHITE);

        DrawTexture(texture, 50, 50, WHITE);

        EndDrawing();
    }

    UnloadTexture(texture);
    CloseWindow();

    return 0;
}
