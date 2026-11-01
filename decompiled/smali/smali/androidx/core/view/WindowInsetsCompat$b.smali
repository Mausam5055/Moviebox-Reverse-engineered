.class Landroidx/core/view/WindowInsetsCompat$b;
.super Landroidx/core/view/WindowInsetsCompat$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field final c:Landroid/view/WindowInsets$Builder;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/core/view/WindowInsetsCompat$e;-><init>()V

    invoke-static {}, Le1/c;->a()Landroid/view/WindowInsets$Builder;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat$b;->c:Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method constructor <init>(Landroidx/core/view/WindowInsetsCompat;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/core/view/WindowInsetsCompat$e;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroidx/core/view/v1;->a(Landroid/view/WindowInsets;)Landroid/view/WindowInsets$Builder;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Le1/c;->a()Landroid/view/WindowInsets$Builder;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat$b;->c:Landroid/view/WindowInsets$Builder;

    return-void
.end method


# virtual methods
.method b()Landroidx/core/view/WindowInsetsCompat;
    .locals 2

    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$e;->a()V

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$b;->c:Landroid/view/WindowInsets$Builder;

    invoke-static {v0}, Le1/d;->a(Landroid/view/WindowInsets$Builder;)Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    iget-object v1, p0, Landroidx/core/view/WindowInsetsCompat$e;->b:[Lz0/c;

    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsCompat;->setOverriddenInsets([Lz0/c;)V

    return-object v0
.end method

.method c(Landroidx/core/view/DisplayCutoutCompat;)V
    .locals 1

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$b;->c:Landroid/view/WindowInsets$Builder;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/core/view/DisplayCutoutCompat;->unwrap()Landroid/view/DisplayCutout;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, p1}, Landroidx/core/view/u1;->a(Landroid/view/WindowInsets$Builder;Landroid/view/DisplayCutout;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method f(Lz0/c;)V
    .locals 1

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$b;->c:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Lz0/c;->g()Landroid/graphics/Insets;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/core/view/s1;->a(Landroid/view/WindowInsets$Builder;Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method g(Lz0/c;)V
    .locals 1

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$b;->c:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Lz0/c;->g()Landroid/graphics/Insets;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/core/view/q1;->a(Landroid/view/WindowInsets$Builder;Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method h(Lz0/c;)V
    .locals 1

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$b;->c:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Lz0/c;->g()Landroid/graphics/Insets;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/core/view/r1;->a(Landroid/view/WindowInsets$Builder;Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method i(Lz0/c;)V
    .locals 1

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$b;->c:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Lz0/c;->g()Landroid/graphics/Insets;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/core/view/p1;->a(Landroid/view/WindowInsets$Builder;Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method j(Lz0/c;)V
    .locals 1

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$b;->c:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Lz0/c;->g()Landroid/graphics/Insets;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/core/view/t1;->a(Landroid/view/WindowInsets$Builder;Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method
