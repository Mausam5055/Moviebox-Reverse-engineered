.class public abstract Loh/a;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Landroid/graphics/Bitmap;II)I
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const-string v3, "bitmap"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v3, -0x1000000

    :try_start_0
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-lez v4, :cond_8

    if-lez v5, :cond_8

    if-lt v1, v2, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v6, 0x0

    invoke-static {v1, v6}, Lkotlin/ranges/RangesKt;->f(II)I

    move-result v1

    invoke-static {v2, v5}, Lkotlin/ranges/RangesKt;->i(II)I

    move-result v2

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->t(II)Lkotlin/ranges/IntRange;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->s(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->f()I

    move-result v5

    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->h()I

    move-result v7

    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->l()I

    move-result v1

    if-lez v1, :cond_1

    if-le v5, v7, :cond_2

    :cond_1
    if-gez v1, :cond_7

    if-gt v7, v5, :cond_7

    :cond_2
    move v8, v6

    move v9, v8

    move v10, v9

    move v11, v10

    :goto_0
    invoke-static {v6, v4}, Lkotlin/ranges/RangesKt;->t(II)Lkotlin/ranges/IntRange;

    move-result-object v12

    invoke-static {v12, v2}, Lkotlin/ranges/RangesKt;->s(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object v12

    invoke-virtual {v12}, Lkotlin/ranges/IntProgression;->f()I

    move-result v13

    invoke-virtual {v12}, Lkotlin/ranges/IntProgression;->h()I

    move-result v14

    invoke-virtual {v12}, Lkotlin/ranges/IntProgression;->l()I

    move-result v12

    if-lez v12, :cond_3

    if-le v13, v14, :cond_4

    :cond_3
    if-gez v12, :cond_5

    if-gt v14, v13, :cond_5

    :cond_4
    :goto_1
    invoke-virtual {v0, v13, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v15

    invoke-static {v15}, Landroid/graphics/Color;->red(I)I

    move-result v16

    add-int v8, v8, v16

    invoke-static {v15}, Landroid/graphics/Color;->green(I)I

    move-result v16

    add-int v9, v9, v16

    invoke-static {v15}, Landroid/graphics/Color;->blue(I)I

    move-result v15

    add-int/2addr v10, v15

    add-int/lit8 v11, v11, 0x1

    if-eq v13, v14, :cond_5

    add-int/2addr v13, v12

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_5
    if-eq v5, v7, :cond_6

    add-int/2addr v5, v1

    goto :goto_0

    :cond_6
    move v6, v11

    goto :goto_2

    :cond_7
    move v8, v6

    move v9, v8

    move v10, v9

    :goto_2
    if-nez v6, :cond_9

    :cond_8
    :goto_3
    move v0, v3

    goto :goto_4

    :cond_9
    div-int/2addr v8, v6

    div-int/2addr v9, v6

    div-int/2addr v10, v6

    invoke-static {v8, v9, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    :goto_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :goto_5
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_6
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_7

    :cond_a
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_7
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public static synthetic b(Landroid/graphics/Bitmap;IIILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p4, p3, 0x2

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    :cond_1
    invoke-static {p0, p1, p2}, Loh/a;->a(Landroid/graphics/Bitmap;II)I

    move-result p0

    return p0
.end method
