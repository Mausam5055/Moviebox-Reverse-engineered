.class abstract Landroidx/core/view/WindowInsetsControllerCompat$e;
.super Landroidx/core/view/WindowInsetsControllerCompat$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# direct methods
.method constructor <init>(Landroid/view/Window;Landroidx/core/view/WindowInsetsControllerCompat;Landroidx/core/view/SoftwareKeyboardControllerCompat;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/core/view/WindowInsetsControllerCompat$d;-><init>(Landroid/view/Window;Landroidx/core/view/WindowInsetsControllerCompat;Landroidx/core/view/SoftwareKeyboardControllerCompat;)V

    return-void
.end method

.method constructor <init>(Landroid/view/WindowInsetsController;Landroidx/core/view/WindowInsetsControllerCompat;Landroidx/core/view/SoftwareKeyboardControllerCompat;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/core/view/WindowInsetsControllerCompat$d;-><init>(Landroid/view/WindowInsetsController;Landroidx/core/view/WindowInsetsControllerCompat;Landroidx/core/view/SoftwareKeyboardControllerCompat;)V

    return-void
.end method


# virtual methods
.method c()I
    .locals 1

    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$d;->b:Landroid/view/WindowInsetsController;

    invoke-static {v0}, Landroidx/core/view/x2;->a(Landroid/view/WindowInsetsController;)I

    move-result v0

    return v0
.end method

.method j(I)V
    .locals 1

    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$d;->b:Landroid/view/WindowInsetsController;

    invoke-static {v0, p1}, Landroidx/core/view/v2;->a(Landroid/view/WindowInsetsController;I)V

    return-void
.end method
