.class public abstract Landroidx/compose/animation/core/g1;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ly/i;

.field private static final b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Ly/i;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, v1, v1, v1, v1}, Ly/i;-><init>(FFFF)V

    sput-object v0, Landroidx/compose/animation/core/g1;->a:Ly/i;

    sget-object v0, Lkotlin/jvm/internal/IntCompanionObject;->a:Lkotlin/jvm/internal/IntCompanionObject;

    invoke-static {v0}, Landroidx/compose/animation/core/VectorConvertersKt;->c(Lkotlin/jvm/internal/IntCompanionObject;)Landroidx/compose/animation/core/s0;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    sget-object v3, Lo0/t;->b:Lo0/t$a;

    invoke-static {v3}, Landroidx/compose/animation/core/VectorConvertersKt;->g(Lo0/t$a;)Landroidx/compose/animation/core/s0;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    sget-object v4, Lo0/p;->b:Lo0/p$a;

    invoke-static {v4}, Landroidx/compose/animation/core/VectorConvertersKt;->f(Lo0/p$a;)Landroidx/compose/animation/core/s0;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    sget-object v4, Lkotlin/jvm/internal/FloatCompanionObject;->a:Lkotlin/jvm/internal/FloatCompanionObject;

    invoke-static {v4}, Landroidx/compose/animation/core/VectorConvertersKt;->b(Lkotlin/jvm/internal/FloatCompanionObject;)Landroidx/compose/animation/core/s0;

    move-result-object v4

    const v5, 0x3c23d70a    # 0.01f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    sget-object v5, Ly/i;->e:Ly/i$a;

    invoke-static {v5}, Landroidx/compose/animation/core/VectorConvertersKt;->i(Ly/i$a;)Landroidx/compose/animation/core/s0;

    move-result-object v5

    invoke-static {v5, v2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    sget-object v6, Ly/m;->b:Ly/m$a;

    invoke-static {v6}, Landroidx/compose/animation/core/VectorConvertersKt;->j(Ly/m$a;)Landroidx/compose/animation/core/s0;

    move-result-object v6

    invoke-static {v6, v2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    sget-object v7, Ly/g;->b:Ly/g$a;

    invoke-static {v7}, Landroidx/compose/animation/core/VectorConvertersKt;->h(Ly/g$a;)Landroidx/compose/animation/core/s0;

    move-result-object v7

    invoke-static {v7, v2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    sget-object v7, Lo0/i;->b:Lo0/i$a;

    invoke-static {v7}, Landroidx/compose/animation/core/VectorConvertersKt;->d(Lo0/i$a;)Landroidx/compose/animation/core/s0;

    move-result-object v7

    const v8, 0x3dcccccd    # 0.1f

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    sget-object v9, Lo0/k;->b:Lo0/k$a;

    invoke-static {v9}, Landroidx/compose/animation/core/VectorConvertersKt;->e(Lo0/k$a;)Landroidx/compose/animation/core/s0;

    move-result-object v9

    invoke-static {v9, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/16 v9, 0x9

    new-array v9, v9, [Lkotlin/Pair;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    const/4 v0, 0x1

    aput-object v3, v9, v0

    const/4 v0, 0x2

    aput-object v1, v9, v0

    const/4 v0, 0x3

    aput-object v4, v9, v0

    const/4 v0, 0x4

    aput-object v5, v9, v0

    const/4 v0, 0x5

    aput-object v6, v9, v0

    const/4 v0, 0x6

    aput-object v2, v9, v0

    const/4 v0, 0x7

    aput-object v7, v9, v0

    const/16 v0, 0x8

    aput-object v8, v9, v0

    invoke-static {v9}, Lkotlin/collections/MapsKt;->l([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroidx/compose/animation/core/g1;->b:Ljava/util/Map;

    return-void
.end method

.method public static final a(Lo0/i$a;)F
    .locals 0

    const p0, 0x3dcccccd    # 0.1f

    invoke-static {p0}, Lo0/i;->g(F)F

    move-result p0

    return p0
.end method

.method public static final b(Ly/g$a;)J
    .locals 2

    const/high16 p0, 0x3f000000    # 0.5f

    invoke-static {p0, p0}, Ly/h;->a(FF)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final c(Ly/m$a;)J
    .locals 2

    const/high16 p0, 0x3f000000    # 0.5f

    invoke-static {p0, p0}, Ly/n;->a(FF)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final d(Ly/i$a;)Ly/i;
    .locals 0

    sget-object p0, Landroidx/compose/animation/core/g1;->a:Ly/i;

    return-object p0
.end method
