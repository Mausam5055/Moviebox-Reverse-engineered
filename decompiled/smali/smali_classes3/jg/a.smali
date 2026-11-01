.class public abstract Ljg/a;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget v0, Lcom/tn/lib/widget/R$font;->mulish_bold:I

    invoke-static {p0, v0}, Ly0/h;->g(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final b(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget v0, Lcom/tn/lib/widget/R$font;->mulish_extra_bold:I

    invoke-static {p0, v0}, Ly0/h;->g(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final c(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget v0, Lcom/tn/lib/widget/R$font;->mulish_semi_bold:I

    invoke-static {p0, v0}, Ly0/h;->g(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final d(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget v0, Lcom/tn/lib/widget/R$font;->mulish_regular:I

    invoke-static {p0, v0}, Ly0/h;->g(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
