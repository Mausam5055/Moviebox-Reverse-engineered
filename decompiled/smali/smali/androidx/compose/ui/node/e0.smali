.class public abstract Landroidx/compose/ui/node/e0;
.super Ljava/lang/Object;


# direct methods
.method public static final synthetic a(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/f$c;
    .locals 0

    invoke-static {p0}, Landroidx/compose/ui/node/e0;->b(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/f$c;

    move-result-object p0

    return-object p0
.end method

.method private static final b(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/f$c;
    .locals 4

    const/4 v0, 0x4

    invoke-static {v0}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v1

    invoke-interface {p0}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object p0

    const/4 v2, 0x0

    if-nez p0, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->a1()I

    move-result v3

    and-int/2addr v3, v0

    if-nez v3, :cond_1

    return-object v2

    :cond_1
    :goto_0
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->f1()I

    move-result v3

    and-int/2addr v3, v1

    if-eqz v3, :cond_2

    return-object v2

    :cond_2
    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->f1()I

    move-result v3

    and-int/2addr v3, v0

    if-eqz v3, :cond_3

    return-object p0

    :cond_3
    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object p0

    goto :goto_0

    :cond_4
    return-object v2
.end method
