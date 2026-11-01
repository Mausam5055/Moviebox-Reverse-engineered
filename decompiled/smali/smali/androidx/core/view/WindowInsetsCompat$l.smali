.class Landroidx/core/view/WindowInsetsCompat$l;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "l"
.end annotation


# static fields
.field static final b:Landroidx/core/view/WindowInsetsCompat;


# instance fields
.field final a:Landroidx/core/view/WindowInsetsCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/core/view/WindowInsetsCompat$Builder;

    invoke-direct {v0}, Landroidx/core/view/WindowInsetsCompat$Builder;-><init>()V

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$Builder;->build()Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat;->consumeDisplayCutout()Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat;->consumeStableInsets()Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat;->consumeSystemWindowInsets()Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    sput-object v0, Landroidx/core/view/WindowInsetsCompat$l;->b:Landroidx/core/view/WindowInsetsCompat;

    return-void
.end method

.method constructor <init>(Landroidx/core/view/WindowInsetsCompat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat$l;->a:Landroidx/core/view/WindowInsetsCompat;

    return-void
.end method


# virtual methods
.method a()Landroidx/core/view/WindowInsetsCompat;
    .locals 1

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$l;->a:Landroidx/core/view/WindowInsetsCompat;

    return-object v0
.end method

.method b()Landroidx/core/view/WindowInsetsCompat;
    .locals 1

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$l;->a:Landroidx/core/view/WindowInsetsCompat;

    return-object v0
.end method

.method c()Landroidx/core/view/WindowInsetsCompat;
    .locals 1

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$l;->a:Landroidx/core/view/WindowInsetsCompat;

    return-object v0
.end method

.method d(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method e(Landroidx/core/view/WindowInsetsCompat;)V
    .locals 0

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/core/view/WindowInsetsCompat$l;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/core/view/WindowInsetsCompat$l;

    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$l;->p()Z

    move-result v1

    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat$l;->p()Z

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$l;->o()Z

    move-result v1

    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat$l;->o()Z

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$l;->l()Lz0/c;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat$l;->l()Lz0/c;

    move-result-object v3

    invoke-static {v1, v3}, Landroidx/core/util/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$l;->j()Lz0/c;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat$l;->j()Lz0/c;

    move-result-object v3

    invoke-static {v1, v3}, Landroidx/core/util/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$l;->f()Landroidx/core/view/DisplayCutoutCompat;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat$l;->f()Landroidx/core/view/DisplayCutoutCompat;

    move-result-object p1

    invoke-static {v1, p1}, Landroidx/core/util/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method f()Landroidx/core/view/DisplayCutoutCompat;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method g(I)Lz0/c;
    .locals 0

    sget-object p1, Lz0/c;->e:Lz0/c;

    return-object p1
.end method

.method h(I)Lz0/c;
    .locals 1

    and-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_0

    sget-object p1, Lz0/c;->e:Lz0/c;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unable to query the maximum insets for IME"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hashCode()I
    .locals 7

    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$l;->p()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$l;->o()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$l;->l()Lz0/c;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$l;->j()Lz0/c;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$l;->f()Landroidx/core/view/DisplayCutoutCompat;

    move-result-object v4

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v3, v5, v0

    const/4 v0, 0x4

    aput-object v4, v5, v0

    invoke-static {v5}, Landroidx/core/util/d;->b([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method i()Lz0/c;
    .locals 1

    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$l;->l()Lz0/c;

    move-result-object v0

    return-object v0
.end method

.method j()Lz0/c;
    .locals 1

    sget-object v0, Lz0/c;->e:Lz0/c;

    return-object v0
.end method

.method k()Lz0/c;
    .locals 1

    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$l;->l()Lz0/c;

    move-result-object v0

    return-object v0
.end method

.method l()Lz0/c;
    .locals 1

    sget-object v0, Lz0/c;->e:Lz0/c;

    return-object v0
.end method

.method m()Lz0/c;
    .locals 1

    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$l;->l()Lz0/c;

    move-result-object v0

    return-object v0
.end method

.method n(IIII)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    sget-object p1, Landroidx/core/view/WindowInsetsCompat$l;->b:Landroidx/core/view/WindowInsetsCompat;

    return-object p1
.end method

.method o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method p()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method q(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public r([Lz0/c;)V
    .locals 0

    return-void
.end method

.method s(Lz0/c;)V
    .locals 0

    return-void
.end method

.method t(Landroidx/core/view/WindowInsetsCompat;)V
    .locals 0

    return-void
.end method

.method public u(Lz0/c;)V
    .locals 0

    return-void
.end method

.method v(I)V
    .locals 0

    return-void
.end method
