.class public abstract Landroidx/compose/material/RippleKt;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroidx/compose/runtime/s1;

.field private static final b:Landroidx/compose/runtime/s1;

.field private static final c:Landroidx/compose/material/i;

.field private static final d:Landroidx/compose/material/i;

.field private static final e:Landroidx/compose/material/ripple/c;

.field private static final f:Landroidx/compose/material/ripple/c;

.field private static final g:Landroidx/compose/material/ripple/c;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    sget-object v0, Landroidx/compose/material/RippleKt$LocalUseFallbackRippleImplementation$1;->INSTANCE:Landroidx/compose/material/RippleKt$LocalUseFallbackRippleImplementation$1;

    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->f(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/s1;

    move-result-object v0

    sput-object v0, Landroidx/compose/material/RippleKt;->a:Landroidx/compose/runtime/s1;

    sget-object v0, Landroidx/compose/material/RippleKt$LocalRippleConfiguration$1;->INSTANCE:Landroidx/compose/material/RippleKt$LocalRippleConfiguration$1;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v0, v1, v2}, Landroidx/compose/runtime/CompositionLocalKt;->d(Landroidx/compose/runtime/q2;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/compose/runtime/s1;

    move-result-object v0

    sput-object v0, Landroidx/compose/material/RippleKt;->b:Landroidx/compose/runtime/s1;

    new-instance v0, Landroidx/compose/material/i;

    sget-object v7, Lo0/i;->b:Lo0/i$a;

    invoke-virtual {v7}, Lo0/i$a;->b()F

    move-result v3

    sget-object v8, Landroidx/compose/ui/graphics/u1;->b:Landroidx/compose/ui/graphics/u1$a;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/u1$a;->e()J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v2, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroidx/compose/material/i;-><init>(ZFJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/material/RippleKt;->c:Landroidx/compose/material/i;

    new-instance v0, Landroidx/compose/material/i;

    invoke-virtual {v7}, Lo0/i$a;->b()F

    move-result v11

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/u1$a;->e()J

    move-result-wide v12

    const/4 v14, 0x0

    const/4 v10, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v14}, Landroidx/compose/material/i;-><init>(ZFJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/material/RippleKt;->d:Landroidx/compose/material/i;

    new-instance v0, Landroidx/compose/material/ripple/c;

    const v1, 0x3e23d70a    # 0.16f

    const v2, 0x3e75c28f    # 0.24f

    const v3, 0x3da3d70a    # 0.08f

    invoke-direct {v0, v1, v2, v3, v2}, Landroidx/compose/material/ripple/c;-><init>(FFFF)V

    sput-object v0, Landroidx/compose/material/RippleKt;->e:Landroidx/compose/material/ripple/c;

    new-instance v0, Landroidx/compose/material/ripple/c;

    const v1, 0x3df5c28f    # 0.12f

    const v2, 0x3d23d70a    # 0.04f

    invoke-direct {v0, v3, v1, v2, v1}, Landroidx/compose/material/ripple/c;-><init>(FFFF)V

    sput-object v0, Landroidx/compose/material/RippleKt;->f:Landroidx/compose/material/ripple/c;

    new-instance v0, Landroidx/compose/material/ripple/c;

    const v4, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v3, v1, v2, v4}, Landroidx/compose/material/ripple/c;-><init>(FFFF)V

    sput-object v0, Landroidx/compose/material/RippleKt;->g:Landroidx/compose/material/ripple/c;

    return-void
.end method

.method public static final synthetic a()Landroidx/compose/material/ripple/c;
    .locals 1

    sget-object v0, Landroidx/compose/material/RippleKt;->g:Landroidx/compose/material/ripple/c;

    return-object v0
.end method

.method public static final synthetic b()Landroidx/compose/material/ripple/c;
    .locals 1

    sget-object v0, Landroidx/compose/material/RippleKt;->e:Landroidx/compose/material/ripple/c;

    return-object v0
.end method

.method public static final synthetic c()Landroidx/compose/material/ripple/c;
    .locals 1

    sget-object v0, Landroidx/compose/material/RippleKt;->f:Landroidx/compose/material/ripple/c;

    return-object v0
.end method

.method public static final d()Landroidx/compose/runtime/s1;
    .locals 1

    sget-object v0, Landroidx/compose/material/RippleKt;->b:Landroidx/compose/runtime/s1;

    return-object v0
.end method

.method public static final e(ZFJ)Landroidx/compose/foundation/b0;
    .locals 7

    sget-object v0, Lo0/i;->b:Lo0/i$a;

    invoke-virtual {v0}, Lo0/i$a;->b()F

    move-result v0

    invoke-static {p1, v0}, Lo0/i;->i(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroidx/compose/ui/graphics/u1;->b:Landroidx/compose/ui/graphics/u1$a;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/u1$a;->e()J

    move-result-wide v0

    invoke-static {p2, p3, v0, v1}, Landroidx/compose/ui/graphics/u1;->m(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    sget-object p0, Landroidx/compose/material/RippleKt;->c:Landroidx/compose/material/i;

    return-object p0

    :cond_0
    sget-object p0, Landroidx/compose/material/RippleKt;->d:Landroidx/compose/material/i;

    goto :goto_0

    :cond_1
    new-instance v6, Landroidx/compose/material/i;

    const/4 v5, 0x0

    move-object v0, v6

    move v1, p0

    move v2, p1

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Landroidx/compose/material/i;-><init>(ZFJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object p0, v6

    :goto_0
    return-object p0
.end method

.method public static final f(ZFJLandroidx/compose/runtime/i;II)Landroidx/compose/foundation/x;
    .locals 7

    and-int/lit8 v0, p6, 0x1

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    :cond_0
    move v0, p0

    and-int/lit8 p0, p6, 0x2

    if-eqz p0, :cond_1

    sget-object p0, Lo0/i;->b:Lo0/i$a;

    invoke-virtual {p0}, Lo0/i$a;->b()F

    move-result p1

    :cond_1
    move v1, p1

    and-int/lit8 p0, p6, 0x4

    if-eqz p0, :cond_2

    sget-object p0, Landroidx/compose/ui/graphics/u1;->b:Landroidx/compose/ui/graphics/u1$a;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/u1$a;->e()J

    move-result-wide p2

    :cond_2
    move-wide v2, p2

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, -0x1

    const-string p1, "androidx.compose.material.rippleOrFallbackImplementation (Ripple.kt:264)"

    const p2, -0x381ae9e

    invoke-static {p2, p5, p0, p1}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    :cond_3
    sget-object p0, Landroidx/compose/material/RippleKt;->a:Landroidx/compose/runtime/s1;

    invoke-interface {p4, p0}, Landroidx/compose/runtime/i;->l(Landroidx/compose/runtime/q;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_4

    const p0, 0x5bf221e

    invoke-interface {p4, p0}, Landroidx/compose/runtime/i;->P(I)V

    and-int/lit16 v5, p5, 0x3fe

    const/4 v6, 0x0

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Landroidx/compose/material/ripple/h;->f(ZFJLandroidx/compose/runtime/i;II)Landroidx/compose/foundation/x;

    move-result-object p0

    invoke-interface {p4}, Landroidx/compose/runtime/i;->K()V

    goto :goto_0

    :cond_4
    const p0, 0x5c08587

    invoke-interface {p4, p0}, Landroidx/compose/runtime/i;->P(I)V

    invoke-interface {p4}, Landroidx/compose/runtime/i;->K()V

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/material/RippleKt;->e(ZFJ)Landroidx/compose/foundation/b0;

    move-result-object p0

    :goto_0
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    :cond_5
    return-object p0
.end method
