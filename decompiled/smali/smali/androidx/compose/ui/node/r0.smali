.class public abstract Landroidx/compose/ui/node/r0;
.super Ljava/lang/Object;


# direct methods
.method public static final synthetic a(Landroidx/compose/ui/node/f;II)Landroidx/compose/ui/f$c;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/ui/node/r0;->b(Landroidx/compose/ui/node/f;II)Landroidx/compose/ui/f$c;

    move-result-object p0

    return-object p0
.end method

.method private static final b(Landroidx/compose/ui/node/f;II)Landroidx/compose/ui/f$c;
    .locals 3

    invoke-interface {p0}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->a1()I

    move-result v1

    and-int/2addr v1, p1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    :goto_0
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->f1()I

    move-result v1

    and-int v2, v1, p2

    if-eqz v2, :cond_2

    return-object v0

    :cond_2
    and-int/2addr v1, p1

    if-eqz v1, :cond_3

    return-object p0

    :cond_3
    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object p0

    goto :goto_0

    :cond_4
    return-object v0
.end method
