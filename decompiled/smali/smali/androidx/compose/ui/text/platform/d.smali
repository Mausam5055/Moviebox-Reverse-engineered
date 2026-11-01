.class public abstract Landroidx/compose/ui/text/platform/d;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Ljava/lang/String;Landroidx/compose/ui/text/d0;Ljava/util/List;Ljava/util/List;Lo0/e;Landroidx/compose/ui/text/font/h$b;)Landroidx/compose/ui/text/o;
    .locals 8

    new-instance v7, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;-><init>(Ljava/lang/String;Landroidx/compose/ui/text/d0;Ljava/util/List;Ljava/util/List;Landroidx/compose/ui/text/font/h$b;Lo0/e;)V

    return-object v7
.end method

.method public static final synthetic b(Landroidx/compose/ui/text/d0;)Z
    .locals 0

    invoke-static {p0}, Landroidx/compose/ui/text/platform/d;->c(Landroidx/compose/ui/text/d0;)Z

    move-result p0

    return p0
.end method

.method private static final c(Landroidx/compose/ui/text/d0;)Z
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/ui/text/d0;->w()Landroidx/compose/ui/text/w;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/text/w;->a()Landroidx/compose/ui/text/u;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/text/u;->a()I

    move-result p0

    invoke-static {p0}, Landroidx/compose/ui/text/e;->d(I)Landroidx/compose/ui/text/e;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    sget-object v0, Landroidx/compose/ui/text/e;->b:Landroidx/compose/ui/text/e$a;

    invoke-virtual {v0}, Landroidx/compose/ui/text/e$a;->c()I

    move-result v0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/text/e;->j()I

    move-result p0

    invoke-static {p0, v0}, Landroidx/compose/ui/text/e;->g(II)Z

    move-result p0

    :goto_1
    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static final d(ILn0/i;)I
    .locals 6

    sget-object v0, Landroidx/compose/ui/text/style/j;->b:Landroidx/compose/ui/text/style/j$a;

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/j$a;->b()I

    move-result v1

    invoke-static {p0, v1}, Landroidx/compose/ui/text/style/j;->j(II)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/j$a;->c()I

    move-result v1

    invoke-static {p0, v1}, Landroidx/compose/ui/text/style/j;->j(II)Z

    move-result v1

    const/4 v3, 0x3

    if-eqz v1, :cond_2

    :cond_1
    move v2, v3

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/j$a;->d()I

    move-result v1

    invoke-static {p0, v1}, Landroidx/compose/ui/text/style/j;->j(II)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    move v2, v4

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/j$a;->e()I

    move-result v1

    invoke-static {p0, v1}, Landroidx/compose/ui/text/style/j;->j(II)Z

    move-result v1

    const/4 v5, 0x1

    if-eqz v1, :cond_4

    move v2, v5

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/j$a;->a()I

    move-result v1

    invoke-static {p0, v1}, Landroidx/compose/ui/text/style/j;->j(II)Z

    move-result v1

    if-eqz v1, :cond_5

    move p0, v5

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/j$a;->f()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/ui/text/style/j;->j(II)Z

    move-result p0

    :goto_0
    if-eqz p0, :cond_9

    if-eqz p1, :cond_6

    invoke-virtual {p1, v4}, Ln0/i;->e(I)Ln0/h;

    move-result-object p0

    invoke-virtual {p0}, Ln0/h;->a()Ljava/util/Locale;

    move-result-object p0

    if-nez p0, :cond_7

    :cond_6
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    :cond_7
    invoke-static {p0}, Landroidx/core/text/v;->a(Ljava/util/Locale;)I

    move-result p0

    if-eqz p0, :cond_8

    if-eq p0, v5, :cond_1

    :cond_8
    :goto_1
    return v2

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Invalid TextDirection."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
