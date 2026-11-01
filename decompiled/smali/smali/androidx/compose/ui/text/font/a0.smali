.class final Landroidx/compose/ui/text/font/a0;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/ui/text/font/x;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final c(Ljava/lang/String;Landroidx/compose/ui/text/font/p;I)Landroid/graphics/Typeface;
    .locals 1

    sget-object v0, Landroidx/compose/ui/text/font/n;->b:Landroidx/compose/ui/text/font/n$a;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/n$a;->b()I

    move-result v0

    invoke-static {p3, v0}, Landroidx/compose/ui/text/font/n;->f(II)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroidx/compose/ui/text/font/p;->b:Landroidx/compose/ui/text/font/p$a;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/p$a;->a()Landroidx/compose/ui/text/font/p;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    return-object p1

    :cond_1
    invoke-static {p2, p3}, Landroidx/compose/ui/text/font/d;->c(Landroidx/compose/ui/text/font/p;I)I

    move-result p2

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-nez p3, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_1

    :cond_3
    :goto_0
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method private final d(Ljava/lang/String;Landroidx/compose/ui/text/font/p;I)Landroid/graphics/Typeface;
    .locals 3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/text/font/a0;->c(Ljava/lang/String;Landroidx/compose/ui/text/font/p;I)Landroid/graphics/Typeface;

    move-result-object p1

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {p2, p3}, Landroidx/compose/ui/text/font/d;->c(Landroidx/compose/ui/text/font/p;I)I

    move-result v2

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, v1, p2, p3}, Landroidx/compose/ui/text/font/a0;->c(Ljava/lang/String;Landroidx/compose/ui/text/font/p;I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    move-object v1, p1

    :cond_1
    return-object v1
.end method


# virtual methods
.method public a(Landroidx/compose/ui/text/font/s;Landroidx/compose/ui/text/font/p;I)Landroid/graphics/Typeface;
    .locals 1

    invoke-virtual {p1}, Landroidx/compose/ui/text/font/s;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroidx/compose/ui/text/font/b0;->b(Ljava/lang/String;Landroidx/compose/ui/text/font/p;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroidx/compose/ui/text/font/a0;->d(Ljava/lang/String;Landroidx/compose/ui/text/font/p;I)Landroid/graphics/Typeface;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroidx/compose/ui/text/font/s;->c()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/text/font/a0;->c(Ljava/lang/String;Landroidx/compose/ui/text/font/p;I)Landroid/graphics/Typeface;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public b(Landroidx/compose/ui/text/font/p;I)Landroid/graphics/Typeface;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroidx/compose/ui/text/font/a0;->c(Ljava/lang/String;Landroidx/compose/ui/text/font/p;I)Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1
.end method
