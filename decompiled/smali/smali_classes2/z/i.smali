.class public abstract synthetic Lz/i;
.super Ljava/lang/Object;


# direct methods
.method public static synthetic a(Lz/j;Landroidx/compose/ui/graphics/Path;IILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    sget-object p2, Landroidx/compose/ui/graphics/t1;->a:Landroidx/compose/ui/graphics/t1$a;

    invoke-virtual {p2}, Landroidx/compose/ui/graphics/t1$a;->b()I

    move-result p2

    :cond_0
    invoke-interface {p0, p1, p2}, Lz/j;->b(Landroidx/compose/ui/graphics/Path;I)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: clipPath-mtrdD-E"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
