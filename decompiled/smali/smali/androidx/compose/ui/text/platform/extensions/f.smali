.class public abstract Landroidx/compose/ui/text/platform/extensions/f;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Landroidx/compose/ui/text/platform/AndroidTextPaint;Landroidx/compose/ui/text/x;Lkotlin/jvm/functions/Function4;Lo0/e;Z)Landroidx/compose/ui/text/x;
    .locals 6

    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->k()J

    move-result-wide v0

    invoke-static {v0, v1}, Lo0/w;->g(J)J

    move-result-wide v0

    sget-object v2, Lo0/y;->b:Lo0/y$a;

    invoke-virtual {v2}, Lo0/y$a;->b()J

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Lo0/y;->g(JJ)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->k()J

    move-result-wide v0

    invoke-interface {p3, v0, v1}, Lo0/e;->h0(J)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lo0/y$a;->a()J

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Lo0/y;->g(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->k()J

    move-result-wide v3

    invoke-static {v3, v4}, Lo0/w;->h(J)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_1
    :goto_0
    invoke-static {p1}, Landroidx/compose/ui/text/platform/extensions/f;->d(Landroidx/compose/ui/text/x;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->i()Landroidx/compose/ui/text/font/h;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->n()Landroidx/compose/ui/text/font/p;

    move-result-object v1

    if-nez v1, :cond_2

    sget-object v1, Landroidx/compose/ui/text/font/p;->b:Landroidx/compose/ui/text/font/p$a;

    invoke-virtual {v1}, Landroidx/compose/ui/text/font/p$a;->a()Landroidx/compose/ui/text/font/p;

    move-result-object v1

    :cond_2
    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->l()Landroidx/compose/ui/text/font/n;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroidx/compose/ui/text/font/n;->i()I

    move-result v3

    goto :goto_1

    :cond_3
    sget-object v3, Landroidx/compose/ui/text/font/n;->b:Landroidx/compose/ui/text/font/n$a;

    invoke-virtual {v3}, Landroidx/compose/ui/text/font/n$a;->b()I

    move-result v3

    :goto_1
    invoke-static {v3}, Landroidx/compose/ui/text/font/n;->c(I)Landroidx/compose/ui/text/font/n;

    move-result-object v3

    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->m()Landroidx/compose/ui/text/font/o;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroidx/compose/ui/text/font/o;->k()I

    move-result v4

    goto :goto_2

    :cond_4
    sget-object v4, Landroidx/compose/ui/text/font/o;->b:Landroidx/compose/ui/text/font/o$a;

    invoke-virtual {v4}, Landroidx/compose/ui/text/font/o$a;->a()I

    move-result v4

    :goto_2
    invoke-static {v4}, Landroidx/compose/ui/text/font/o;->e(I)Landroidx/compose/ui/text/font/o;

    move-result-object v4

    invoke-interface {p2, v0, v1, v3, v4}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Typeface;

    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_5
    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->p()Ln0/i;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->p()Ln0/i;

    move-result-object p2

    sget-object v0, Ln0/i;->c:Ln0/i$a;

    invoke-virtual {v0}, Ln0/i$a;->a()Ln0/i;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p2, v0, :cond_6

    sget-object p2, Landroidx/compose/ui/text/platform/extensions/d;->a:Landroidx/compose/ui/text/platform/extensions/d;

    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->p()Ln0/i;

    move-result-object v0

    invoke-virtual {p2, p0, v0}, Landroidx/compose/ui/text/platform/extensions/d;->b(Landroidx/compose/ui/text/platform/AndroidTextPaint;Ln0/i;)V

    goto :goto_4

    :cond_6
    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->p()Ln0/i;

    move-result-object p2

    invoke-virtual {p2}, Ln0/i;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_7

    sget-object p2, Ln0/h;->b:Ln0/h$a;

    invoke-virtual {p2}, Ln0/h$a;->a()Ln0/h;

    move-result-object p2

    goto :goto_3

    :cond_7
    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->p()Ln0/i;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ln0/i;->e(I)Ln0/h;

    move-result-object p2

    :goto_3
    invoke-virtual {p2}, Ln0/h;->a()Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setTextLocale(Ljava/util/Locale;)V

    :cond_8
    :goto_4
    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->j()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_9

    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->j()Ljava/lang/String;

    move-result-object p2

    const-string v0, ""

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->j()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setFontFeatureSettings(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->u()Landroidx/compose/ui/text/style/m;

    move-result-object p2

    if-eqz p2, :cond_a

    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->u()Landroidx/compose/ui/text/style/m;

    move-result-object p2

    sget-object v0, Landroidx/compose/ui/text/style/m;->c:Landroidx/compose/ui/text/style/m$a;

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/m$a;->a()Landroidx/compose/ui/text/style/m;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextScaleX()F

    move-result p2

    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->u()Landroidx/compose/ui/text/style/m;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/m;->b()F

    move-result v0

    mul-float/2addr p2, v0

    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setTextScaleX(F)V

    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSkewX()F

    move-result p2

    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->u()Landroidx/compose/ui/text/style/m;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/m;->c()F

    move-result v0

    add-float/2addr p2, v0

    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setTextSkewX(F)V

    :cond_a
    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->g()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->f(J)V

    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->f()Landroidx/compose/ui/graphics/j1;

    move-result-object p2

    sget-object v0, Ly/m;->b:Ly/m$a;

    invoke-virtual {v0}, Ly/m$a;->a()J

    move-result-wide v0

    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->c()F

    move-result v3

    invoke-virtual {p0, p2, v0, v1, v3}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->e(Landroidx/compose/ui/graphics/j1;JF)V

    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->r()Landroidx/compose/ui/graphics/z4;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->h(Landroidx/compose/ui/graphics/z4;)V

    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->s()Landroidx/compose/ui/text/style/i;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->i(Landroidx/compose/ui/text/style/i;)V

    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->h()Lz/h;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->g(Lz/h;)V

    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->o()J

    move-result-wide v0

    invoke-static {v0, v1}, Lo0/w;->g(J)J

    move-result-wide v0

    invoke-virtual {v2}, Lo0/y$a;->b()J

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Lo0/y;->g(JJ)Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->o()J

    move-result-wide v0

    invoke-static {v0, v1}, Lo0/w;->h(J)F

    move-result p2

    const/4 v0, 0x0

    cmpg-float p2, p2, v0

    if-nez p2, :cond_b

    goto :goto_5

    :cond_b
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result p2

    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextScaleX()F

    move-result v1

    mul-float/2addr p2, v1

    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->o()J

    move-result-wide v1

    invoke-interface {p3, v1, v2}, Lo0/e;->h0(J)F

    move-result p3

    cmpg-float v0, p2, v0

    if-nez v0, :cond_c

    goto :goto_6

    :cond_c
    div-float/2addr p3, p2

    invoke-virtual {p0, p3}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    goto :goto_6

    :cond_d
    :goto_5
    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->o()J

    move-result-wide p2

    invoke-static {p2, p3}, Lo0/w;->g(J)J

    move-result-wide p2

    invoke-virtual {v2}, Lo0/y$a;->a()J

    move-result-wide v0

    invoke-static {p2, p3, v0, v1}, Lo0/y;->g(JJ)Z

    move-result p2

    if-eqz p2, :cond_e

    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->o()J

    move-result-wide p2

    invoke-static {p2, p3}, Lo0/w;->h(J)F

    move-result p2

    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    :cond_e
    :goto_6
    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->o()J

    move-result-wide v0

    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->d()J

    move-result-wide v3

    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->e()Landroidx/compose/ui/text/style/a;

    move-result-object v5

    move v2, p4

    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/text/platform/extensions/f;->c(JZJLandroidx/compose/ui/text/style/a;)Landroidx/compose/ui/text/x;

    move-result-object p0

    return-object p0
.end method

.method public static final b(F)F
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0
.end method

.method private static final c(JZJLandroidx/compose/ui/text/style/a;)Landroidx/compose/ui/text/x;
    .locals 32

    move-wide/from16 v0, p3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_1

    invoke-static/range {p0 .. p1}, Lo0/w;->g(J)J

    move-result-wide v4

    sget-object v6, Lo0/y;->b:Lo0/y$a;

    invoke-virtual {v6}, Lo0/y$a;->b()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lo0/y;->g(JJ)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static/range {p0 .. p1}, Lo0/w;->h(J)F

    move-result v4

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v2

    :goto_1
    sget-object v5, Landroidx/compose/ui/graphics/u1;->b:Landroidx/compose/ui/graphics/u1$a;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/u1$a;->e()J

    move-result-wide v6

    invoke-static {v0, v1, v6, v7}, Landroidx/compose/ui/graphics/u1;->m(JJ)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/u1$a;->d()J

    move-result-wide v6

    invoke-static {v0, v1, v6, v7}, Landroidx/compose/ui/graphics/u1;->m(JJ)Z

    move-result v6

    if-nez v6, :cond_2

    move v6, v3

    goto :goto_2

    :cond_2
    move v6, v2

    :goto_2
    if-eqz p5, :cond_3

    sget-object v7, Landroidx/compose/ui/text/style/a;->b:Landroidx/compose/ui/text/style/a$a;

    invoke-virtual {v7}, Landroidx/compose/ui/text/style/a$a;->a()F

    move-result v7

    invoke-virtual/range {p5 .. p5}, Landroidx/compose/ui/text/style/a;->h()F

    move-result v8

    invoke-static {v8, v7}, Landroidx/compose/ui/text/style/a;->e(FF)Z

    move-result v7

    if-nez v7, :cond_3

    move v2, v3

    :cond_3
    const/4 v3, 0x0

    if-nez v4, :cond_4

    if-nez v6, :cond_4

    if-nez v2, :cond_4

    goto :goto_7

    :cond_4
    if-eqz v4, :cond_5

    move-wide/from16 v19, p0

    goto :goto_3

    :cond_5
    sget-object v4, Lo0/w;->b:Lo0/w$a;

    invoke-virtual {v4}, Lo0/w$a;->a()J

    move-result-wide v7

    move-wide/from16 v19, v7

    :goto_3
    if-eqz v6, :cond_6

    :goto_4
    move-wide/from16 v24, v0

    goto :goto_5

    :cond_6
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/u1$a;->e()J

    move-result-wide v0

    goto :goto_4

    :goto_5
    if-eqz v2, :cond_7

    move-object/from16 v21, p5

    goto :goto_6

    :cond_7
    move-object/from16 v21, v3

    :goto_6
    new-instance v3, Landroidx/compose/ui/text/x;

    move-object v9, v3

    const v30, 0xf67f

    const/16 v31, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-direct/range {v9 .. v31}, Landroidx/compose/ui/text/x;-><init>(JJLandroidx/compose/ui/text/font/p;Landroidx/compose/ui/text/font/n;Landroidx/compose/ui/text/font/o;Landroidx/compose/ui/text/font/h;Ljava/lang/String;JLandroidx/compose/ui/text/style/a;Landroidx/compose/ui/text/style/m;Ln0/i;JLandroidx/compose/ui/text/style/i;Landroidx/compose/ui/graphics/z4;Landroidx/compose/ui/text/v;Lz/h;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_7
    return-object v3
.end method

.method public static final d(Landroidx/compose/ui/text/x;)Z
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/ui/text/x;->i()Landroidx/compose/ui/text/font/h;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/text/x;->l()Landroidx/compose/ui/text/font/n;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/text/x;->n()Landroidx/compose/ui/text/font/p;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static final e(Landroidx/compose/ui/text/platform/AndroidTextPaint;Landroidx/compose/ui/text/style/o;)V
    .locals 3

    if-nez p1, :cond_0

    sget-object p1, Landroidx/compose/ui/text/style/o;->c:Landroidx/compose/ui/text/style/o$a;

    invoke-virtual {p1}, Landroidx/compose/ui/text/style/o$a;->a()Landroidx/compose/ui/text/style/o;

    move-result-object p1

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/text/style/o;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    or-int/lit16 v0, v0, 0x80

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, -0x81

    :goto_0
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setFlags(I)V

    invoke-virtual {p1}, Landroidx/compose/ui/text/style/o;->b()I

    move-result p1

    sget-object v0, Landroidx/compose/ui/text/style/o$b;->a:Landroidx/compose/ui/text/style/o$b$a;

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/o$b$a;->b()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/compose/ui/text/style/o$b;->e(II)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result p1

    or-int/lit8 p1, p1, 0x40

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setFlags(I)V

    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setHinting(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/o$b$a;->a()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/compose/ui/text/style/o$b;->e(II)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setHinting(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/o$b$a;->c()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/ui/text/style/o$b;->e(II)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setHinting(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    :goto_1
    return-void
.end method
