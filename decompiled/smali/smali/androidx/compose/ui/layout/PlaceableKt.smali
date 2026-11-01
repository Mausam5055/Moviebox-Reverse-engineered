.class public abstract Landroidx/compose/ui/layout/PlaceableKt;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lkotlin/jvm/functions/Function1;

.field private static final b:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    sget-object v0, Landroidx/compose/ui/layout/PlaceableKt$DefaultLayerBlock$1;->INSTANCE:Landroidx/compose/ui/layout/PlaceableKt$DefaultLayerBlock$1;

    sput-object v0, Landroidx/compose/ui/layout/PlaceableKt;->a:Lkotlin/jvm/functions/Function1;

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lo0/c;->b(IIIIILjava/lang/Object;)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/ui/layout/PlaceableKt;->b:J

    return-void
.end method

.method public static final a(Landroidx/compose/ui/node/LookaheadCapablePlaceable;)Landroidx/compose/ui/layout/g0$a;
    .locals 1

    new-instance v0, Landroidx/compose/ui/layout/p;

    invoke-direct {v0, p0}, Landroidx/compose/ui/layout/p;-><init>(Landroidx/compose/ui/node/LookaheadCapablePlaceable;)V

    return-object v0
.end method

.method public static final b(Landroidx/compose/ui/node/y0;)Landroidx/compose/ui/layout/g0$a;
    .locals 1

    new-instance v0, Landroidx/compose/ui/layout/e0;

    invoke-direct {v0, p0}, Landroidx/compose/ui/layout/e0;-><init>(Landroidx/compose/ui/node/y0;)V

    return-object v0
.end method

.method public static final synthetic c()J
    .locals 2

    sget-wide v0, Landroidx/compose/ui/layout/PlaceableKt;->b:J

    return-wide v0
.end method

.method public static final synthetic d()Lkotlin/jvm/functions/Function1;
    .locals 1

    sget-object v0, Landroidx/compose/ui/layout/PlaceableKt;->a:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method
