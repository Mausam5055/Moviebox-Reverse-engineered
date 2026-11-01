.class public abstract Landroidx/compose/foundation/lazy/s;
.super Ljava/lang/Object;


# direct methods
.method public static final a(I)Landroidx/compose/foundation/lazy/r;
    .locals 1

    new-instance v0, Landroidx/compose/foundation/lazy/a;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/lazy/a;-><init>(I)V

    return-object v0
.end method

.method public static synthetic b(IILjava/lang/Object;)Landroidx/compose/foundation/lazy/r;
    .locals 0

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/4 p0, 0x2

    :cond_0
    invoke-static {p0}, Landroidx/compose/foundation/lazy/s;->a(I)Landroidx/compose/foundation/lazy/r;

    move-result-object p0

    return-object p0
.end method
