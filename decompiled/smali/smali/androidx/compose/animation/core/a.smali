.class public abstract Landroidx/compose/animation/core/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroidx/compose/animation/core/k;

.field private static final b:Landroidx/compose/animation/core/l;

.field private static final c:Landroidx/compose/animation/core/m;

.field private static final d:Landroidx/compose/animation/core/n;

.field private static final e:Landroidx/compose/animation/core/k;

.field private static final f:Landroidx/compose/animation/core/l;

.field private static final g:Landroidx/compose/animation/core/m;

.field private static final h:Landroidx/compose/animation/core/n;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-static {v0}, Landroidx/compose/animation/core/p;->a(F)Landroidx/compose/animation/core/k;

    move-result-object v1

    sput-object v1, Landroidx/compose/animation/core/a;->a:Landroidx/compose/animation/core/k;

    invoke-static {v0, v0}, Landroidx/compose/animation/core/p;->b(FF)Landroidx/compose/animation/core/l;

    move-result-object v1

    sput-object v1, Landroidx/compose/animation/core/a;->b:Landroidx/compose/animation/core/l;

    invoke-static {v0, v0, v0}, Landroidx/compose/animation/core/p;->c(FFF)Landroidx/compose/animation/core/m;

    move-result-object v1

    sput-object v1, Landroidx/compose/animation/core/a;->c:Landroidx/compose/animation/core/m;

    invoke-static {v0, v0, v0, v0}, Landroidx/compose/animation/core/p;->d(FFFF)Landroidx/compose/animation/core/n;

    move-result-object v0

    sput-object v0, Landroidx/compose/animation/core/a;->d:Landroidx/compose/animation/core/n;

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    invoke-static {v0}, Landroidx/compose/animation/core/p;->a(F)Landroidx/compose/animation/core/k;

    move-result-object v1

    sput-object v1, Landroidx/compose/animation/core/a;->e:Landroidx/compose/animation/core/k;

    invoke-static {v0, v0}, Landroidx/compose/animation/core/p;->b(FF)Landroidx/compose/animation/core/l;

    move-result-object v1

    sput-object v1, Landroidx/compose/animation/core/a;->f:Landroidx/compose/animation/core/l;

    invoke-static {v0, v0, v0}, Landroidx/compose/animation/core/p;->c(FFF)Landroidx/compose/animation/core/m;

    move-result-object v1

    sput-object v1, Landroidx/compose/animation/core/a;->g:Landroidx/compose/animation/core/m;

    invoke-static {v0, v0, v0, v0}, Landroidx/compose/animation/core/p;->d(FFFF)Landroidx/compose/animation/core/n;

    move-result-object v0

    sput-object v0, Landroidx/compose/animation/core/a;->h:Landroidx/compose/animation/core/n;

    return-void
.end method

.method public static final a(FF)Landroidx/compose/animation/core/Animatable;
    .locals 8

    new-instance v7, Landroidx/compose/animation/core/Animatable;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    sget-object p0, Lkotlin/jvm/internal/FloatCompanionObject;->a:Lkotlin/jvm/internal/FloatCompanionObject;

    invoke-static {p0}, Landroidx/compose/animation/core/VectorConvertersKt;->b(Lkotlin/jvm/internal/FloatCompanionObject;)Landroidx/compose/animation/core/s0;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroidx/compose/animation/core/Animatable;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/s0;Ljava/lang/Object;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7
.end method

.method public static synthetic b(FFILjava/lang/Object;)Landroidx/compose/animation/core/Animatable;
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const p1, 0x3c23d70a    # 0.01f

    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/animation/core/a;->a(FF)Landroidx/compose/animation/core/Animatable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c()Landroidx/compose/animation/core/k;
    .locals 1

    sget-object v0, Landroidx/compose/animation/core/a;->e:Landroidx/compose/animation/core/k;

    return-object v0
.end method

.method public static final synthetic d()Landroidx/compose/animation/core/l;
    .locals 1

    sget-object v0, Landroidx/compose/animation/core/a;->f:Landroidx/compose/animation/core/l;

    return-object v0
.end method

.method public static final synthetic e()Landroidx/compose/animation/core/m;
    .locals 1

    sget-object v0, Landroidx/compose/animation/core/a;->g:Landroidx/compose/animation/core/m;

    return-object v0
.end method

.method public static final synthetic f()Landroidx/compose/animation/core/n;
    .locals 1

    sget-object v0, Landroidx/compose/animation/core/a;->h:Landroidx/compose/animation/core/n;

    return-object v0
.end method

.method public static final synthetic g()Landroidx/compose/animation/core/k;
    .locals 1

    sget-object v0, Landroidx/compose/animation/core/a;->a:Landroidx/compose/animation/core/k;

    return-object v0
.end method

.method public static final synthetic h()Landroidx/compose/animation/core/l;
    .locals 1

    sget-object v0, Landroidx/compose/animation/core/a;->b:Landroidx/compose/animation/core/l;

    return-object v0
.end method

.method public static final synthetic i()Landroidx/compose/animation/core/m;
    .locals 1

    sget-object v0, Landroidx/compose/animation/core/a;->c:Landroidx/compose/animation/core/m;

    return-object v0
.end method

.method public static final synthetic j()Landroidx/compose/animation/core/n;
    .locals 1

    sget-object v0, Landroidx/compose/animation/core/a;->d:Landroidx/compose/animation/core/n;

    return-object v0
.end method
