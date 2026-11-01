.class Landroidx/core/view/WindowInsetsCompat$d;
.super Landroidx/core/view/WindowInsetsCompat$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/core/view/WindowInsetsCompat$c;-><init>()V

    return-void
.end method

.method constructor <init>(Landroidx/core/view/WindowInsetsCompat;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/core/view/WindowInsetsCompat$c;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    return-void
.end method


# virtual methods
.method d(ILz0/c;)V
    .locals 1

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$b;->c:Landroid/view/WindowInsets$Builder;

    invoke-static {p1}, Landroidx/core/view/WindowInsetsCompat$n;->a(I)I

    move-result p1

    invoke-virtual {p2}, Lz0/c;->g()Landroid/graphics/Insets;

    move-result-object p2

    invoke-static {v0, p1, p2}, Landroidx/core/view/w1;->a(Landroid/view/WindowInsets$Builder;ILandroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method e(ILz0/c;)V
    .locals 1

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$b;->c:Landroid/view/WindowInsets$Builder;

    invoke-static {p1}, Landroidx/core/view/WindowInsetsCompat$n;->a(I)I

    move-result p1

    invoke-virtual {p2}, Lz0/c;->g()Landroid/graphics/Insets;

    move-result-object p2

    invoke-static {v0, p1, p2}, Landroidx/core/view/y1;->a(Landroid/view/WindowInsets$Builder;ILandroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method k(IZ)V
    .locals 1

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$b;->c:Landroid/view/WindowInsets$Builder;

    invoke-static {p1}, Landroidx/core/view/WindowInsetsCompat$n;->a(I)I

    move-result p1

    invoke-static {v0, p1, p2}, Landroidx/core/view/x1;->a(Landroid/view/WindowInsets$Builder;IZ)Landroid/view/WindowInsets$Builder;

    return-void
.end method
