.class public abstract Landroidx/compose/animation/core/d;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Landroidx/compose/animation/core/g;Landroidx/compose/animation/core/s0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroidx/compose/animation/core/p0;
    .locals 7

    new-instance v6, Landroidx/compose/animation/core/p0;

    invoke-interface {p1}, Landroidx/compose/animation/core/s0;->a()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-interface {v0, p4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    move-object v5, p4

    check-cast v5, Landroidx/compose/animation/core/o;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Landroidx/compose/animation/core/p0;-><init>(Landroidx/compose/animation/core/g;Landroidx/compose/animation/core/s0;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/o;)V

    return-object v6
.end method

.method public static final b(Landroidx/compose/animation/core/c;)J
    .locals 4

    invoke-interface {p0}, Landroidx/compose/animation/core/c;->d()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method
