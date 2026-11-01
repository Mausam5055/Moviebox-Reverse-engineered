.class public abstract synthetic Landroidx/compose/ui/text/style/TextForegroundStyle$-CC;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroidx/compose/ui/text/style/l;Landroidx/compose/ui/text/style/l;)Landroidx/compose/ui/text/style/l;
    .locals 3

    instance-of v0, p1, Landroidx/compose/ui/text/style/b;

    if-eqz v0, :cond_0

    instance-of v1, p0, Landroidx/compose/ui/text/style/b;

    if-eqz v1, :cond_0

    new-instance v0, Landroidx/compose/ui/text/style/b;

    move-object v1, p1

    check-cast v1, Landroidx/compose/ui/text/style/b;

    invoke-virtual {v1}, Landroidx/compose/ui/text/style/b;->e()Landroidx/compose/ui/graphics/y4;

    move-result-object v1

    invoke-interface {p1}, Landroidx/compose/ui/text/style/l;->getAlpha()F

    move-result p1

    new-instance v2, Landroidx/compose/ui/text/style/TextForegroundStyle$merge$1;

    invoke-direct {v2, p0}, Landroidx/compose/ui/text/style/TextForegroundStyle$merge$1;-><init>(Landroidx/compose/ui/text/style/l;)V

    invoke-static {p1, v2}, Landroidx/compose/ui/text/style/k;->a(FLkotlin/jvm/functions/Function0;)F

    move-result p0

    invoke-direct {v0, v1, p0}, Landroidx/compose/ui/text/style/b;-><init>(Landroidx/compose/ui/graphics/y4;F)V

    move-object p0, v0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    instance-of v1, p0, Landroidx/compose/ui/text/style/b;

    if-nez v1, :cond_1

    move-object p0, p1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    instance-of v0, p0, Landroidx/compose/ui/text/style/b;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Landroidx/compose/ui/text/style/TextForegroundStyle$merge$2;

    invoke-direct {v0, p0}, Landroidx/compose/ui/text/style/TextForegroundStyle$merge$2;-><init>(Landroidx/compose/ui/text/style/l;)V

    invoke-interface {p1, v0}, Landroidx/compose/ui/text/style/l;->b(Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/text/style/l;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static b(Landroidx/compose/ui/text/style/l;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/text/style/l;
    .locals 1

    sget-object v0, Landroidx/compose/ui/text/style/l$b;->b:Landroidx/compose/ui/text/style/l$b;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/text/style/l;

    :goto_0
    return-object p0
.end method
