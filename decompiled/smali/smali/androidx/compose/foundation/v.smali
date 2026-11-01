.class public abstract Landroidx/compose/foundation/v;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Landroidx/compose/ui/f;Lp/i;Z)Landroidx/compose/ui/f;
    .locals 0

    if-eqz p2, :cond_0

    new-instance p2, Landroidx/compose/foundation/HoverableElement;

    invoke-direct {p2, p1}, Landroidx/compose/foundation/HoverableElement;-><init>(Lp/i;)V

    goto :goto_0

    :cond_0
    sget-object p2, Landroidx/compose/ui/f;->a:Landroidx/compose/ui/f$a;

    :goto_0
    invoke-interface {p0, p2}, Landroidx/compose/ui/f;->e(Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroidx/compose/ui/f;Lp/i;ZILjava/lang/Object;)Landroidx/compose/ui/f;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/v;->a(Landroidx/compose/ui/f;Lp/i;Z)Landroidx/compose/ui/f;

    move-result-object p0

    return-object p0
.end method
