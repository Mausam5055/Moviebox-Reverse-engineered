.class public abstract Landroidx/compose/animation/core/h;
.super Ljava/lang/Object;


# direct methods
.method public static final synthetic a(Landroidx/compose/animation/core/s0;Ljava/lang/Object;)Landroidx/compose/animation/core/o;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/animation/core/h;->b(Landroidx/compose/animation/core/s0;Ljava/lang/Object;)Landroidx/compose/animation/core/o;

    move-result-object p0

    return-object p0
.end method

.method private static final b(Landroidx/compose/animation/core/s0;Ljava/lang/Object;)Landroidx/compose/animation/core/o;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Landroidx/compose/animation/core/s0;->a()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/animation/core/o;

    return-object p0
.end method

.method public static final c(FFLjava/lang/Object;)Landroidx/compose/animation/core/o0;
    .locals 1

    new-instance v0, Landroidx/compose/animation/core/o0;

    invoke-direct {v0, p0, p1, p2}, Landroidx/compose/animation/core/o0;-><init>(FFLjava/lang/Object;)V

    return-object v0
.end method

.method public static synthetic d(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/o0;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    :cond_0
    and-int/lit8 p4, p3, 0x2

    if-eqz p4, :cond_1

    const p1, 0x44bb8000    # 1500.0f

    :cond_1
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_2

    const/4 p2, 0x0

    :cond_2
    invoke-static {p0, p1, p2}, Landroidx/compose/animation/core/h;->c(FFLjava/lang/Object;)Landroidx/compose/animation/core/o0;

    move-result-object p0

    return-object p0
.end method

.method public static final e(IILandroidx/compose/animation/core/z;)Landroidx/compose/animation/core/r0;
    .locals 1

    new-instance v0, Landroidx/compose/animation/core/r0;

    invoke-direct {v0, p0, p1, p2}, Landroidx/compose/animation/core/r0;-><init>(IILandroidx/compose/animation/core/z;)V

    return-object v0
.end method

.method public static synthetic f(IILandroidx/compose/animation/core/z;ILjava/lang/Object;)Landroidx/compose/animation/core/r0;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/16 p0, 0x12c

    :cond_0
    and-int/lit8 p4, p3, 0x2

    if-eqz p4, :cond_1

    const/4 p1, 0x0

    :cond_1
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_2

    invoke-static {}, Landroidx/compose/animation/core/b0;->c()Landroidx/compose/animation/core/z;

    move-result-object p2

    :cond_2
    invoke-static {p0, p1, p2}, Landroidx/compose/animation/core/h;->e(IILandroidx/compose/animation/core/z;)Landroidx/compose/animation/core/r0;

    move-result-object p0

    return-object p0
.end method
