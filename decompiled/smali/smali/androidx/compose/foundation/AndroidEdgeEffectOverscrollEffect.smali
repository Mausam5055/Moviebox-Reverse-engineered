.class public final Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/foundation/f0;


# instance fields
.field private a:Ly/g;

.field private final b:Landroidx/compose/foundation/p;

.field private final c:Landroidx/compose/runtime/i1;

.field private d:Z

.field private e:Z

.field private f:J

.field private g:Landroidx/compose/ui/input/pointer/v;

.field private final h:Landroidx/compose/ui/f;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/compose/foundation/e0;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/compose/foundation/p;

    invoke-virtual {p2}, Landroidx/compose/foundation/e0;->b()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/w1;->j(J)I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroidx/compose/foundation/p;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->b:Landroidx/compose/foundation/p;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {}, Landroidx/compose/runtime/r2;->g()Landroidx/compose/runtime/q2;

    move-result-object v1

    invoke-static {p1, v1}, Landroidx/compose/runtime/r2;->e(Ljava/lang/Object;Landroidx/compose/runtime/q2;)Landroidx/compose/runtime/i1;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->c:Landroidx/compose/runtime/i1;

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->d:Z

    sget-object v1, Ly/m;->b:Ly/m$a;

    invoke-virtual {v1}, Ly/m$a;->b()J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->f:J

    sget-object v1, Landroidx/compose/ui/f;->a:Landroidx/compose/ui/f$a;

    new-instance v2, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$effectModifier$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$effectModifier$1;-><init>(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, p1, v2}, Landroidx/compose/ui/input/pointer/l0;->c(Landroidx/compose/ui/f;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/f;

    move-result-object p1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v1, v2, :cond_1

    new-instance p2, Landroidx/compose/foundation/n;

    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$special$$inlined$debugInspectorInfo$1;

    invoke-direct {v1, p0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$special$$inlined$debugInspectorInfo$1;-><init>(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->a()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    :goto_0
    invoke-direct {p2, p0, v0, v1}, Landroidx/compose/foundation/n;-><init>(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/foundation/p;Lkotlin/jvm/functions/Function1;)V

    goto :goto_2

    :cond_1
    new-instance v1, Landroidx/compose/foundation/h;

    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$special$$inlined$debugInspectorInfo$2;

    invoke-direct {v2, p0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$special$$inlined$debugInspectorInfo$2;-><init>(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;)V

    goto :goto_1

    :cond_2
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->a()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    :goto_1
    invoke-direct {v1, p0, v0, p2, v2}, Landroidx/compose/foundation/h;-><init>(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/foundation/p;Landroidx/compose/foundation/e0;Lkotlin/jvm/functions/Function1;)V

    move-object p2, v1

    :goto_2
    invoke-interface {p1, p2}, Landroidx/compose/ui/f;->e(Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->h:Landroidx/compose/ui/f;

    return-void
.end method

.method public static final synthetic e(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;)Landroidx/compose/ui/input/pointer/v;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->g:Landroidx/compose/ui/input/pointer/v;

    return-object p0
.end method

.method public static final synthetic f(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/ui/input/pointer/v;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->g:Landroidx/compose/ui/input/pointer/v;

    return-void
.end method

.method public static final synthetic g(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Ly/g;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->a:Ly/g;

    return-void
.end method

.method private final h()V
    .locals 5

    iget-object v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->b:Landroidx/compose/foundation/p;

    invoke-static {v0}, Landroidx/compose/foundation/p;->d(Landroidx/compose/foundation/p;)Landroid/widget/EdgeEffect;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v0}, Landroidx/compose/foundation/p;->a(Landroidx/compose/foundation/p;)Landroid/widget/EdgeEffect;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v1, v4

    :cond_3
    :goto_2
    invoke-static {v0}, Landroidx/compose/foundation/p;->b(Landroidx/compose/foundation/p;)Landroid/widget/EdgeEffect;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_5

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    move v1, v2

    goto :goto_4

    :cond_5
    :goto_3
    move v1, v4

    :cond_6
    :goto_4
    invoke-static {v0}, Landroidx/compose/foundation/p;->c(Landroidx/compose/foundation/p;)Landroid/widget/EdgeEffect;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_7

    if-eqz v1, :cond_8

    :cond_7
    move v2, v4

    :cond_8
    move v1, v2

    :cond_9
    if-eqz v1, :cond_a

    invoke-virtual {p0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->k()V

    :cond_a
    return-void
.end method

.method private final l(J)F
    .locals 6

    invoke-virtual {p0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->i()J

    move-result-wide v0

    invoke-static {v0, v1}, Ly/g;->m(J)F

    move-result v0

    invoke-static {p1, p2}, Ly/g;->n(J)F

    move-result v1

    iget-wide v2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->f:J

    invoke-static {v2, v3}, Ly/m;->g(J)F

    move-result v2

    div-float/2addr v1, v2

    iget-object v2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->b:Landroidx/compose/foundation/p;

    invoke-virtual {v2}, Landroidx/compose/foundation/p;->f()Landroid/widget/EdgeEffect;

    move-result-object v2

    sget-object v3, Landroidx/compose/foundation/o;->a:Landroidx/compose/foundation/o;

    neg-float v1, v1

    const/4 v4, 0x1

    int-to-float v4, v4

    sub-float/2addr v4, v0

    invoke-virtual {v3, v2, v1, v4}, Landroidx/compose/foundation/o;->d(Landroid/widget/EdgeEffect;FF)F

    move-result v0

    neg-float v0, v0

    iget-wide v4, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->f:J

    invoke-static {v4, v5}, Ly/m;->g(J)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {v3, v2}, Landroidx/compose/foundation/o;->b(Landroid/widget/EdgeEffect;)F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Ly/g;->n(J)F

    move-result v0

    :goto_0
    return v0
.end method

.method private final m(J)F
    .locals 6

    invoke-virtual {p0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->i()J

    move-result-wide v0

    invoke-static {v0, v1}, Ly/g;->n(J)F

    move-result v0

    invoke-static {p1, p2}, Ly/g;->m(J)F

    move-result v1

    iget-wide v2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->f:J

    invoke-static {v2, v3}, Ly/m;->i(J)F

    move-result v2

    div-float/2addr v1, v2

    iget-object v2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->b:Landroidx/compose/foundation/p;

    invoke-virtual {v2}, Landroidx/compose/foundation/p;->h()Landroid/widget/EdgeEffect;

    move-result-object v2

    sget-object v3, Landroidx/compose/foundation/o;->a:Landroidx/compose/foundation/o;

    const/4 v4, 0x1

    int-to-float v4, v4

    sub-float/2addr v4, v0

    invoke-virtual {v3, v2, v1, v4}, Landroidx/compose/foundation/o;->d(Landroid/widget/EdgeEffect;FF)F

    move-result v0

    iget-wide v4, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->f:J

    invoke-static {v4, v5}, Ly/m;->i(J)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {v3, v2}, Landroidx/compose/foundation/o;->b(Landroid/widget/EdgeEffect;)F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Ly/g;->m(J)F

    move-result v0

    :goto_0
    return v0
.end method

.method private final n(J)F
    .locals 6

    invoke-virtual {p0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->i()J

    move-result-wide v0

    invoke-static {v0, v1}, Ly/g;->n(J)F

    move-result v0

    invoke-static {p1, p2}, Ly/g;->m(J)F

    move-result v1

    iget-wide v2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->f:J

    invoke-static {v2, v3}, Ly/m;->i(J)F

    move-result v2

    div-float/2addr v1, v2

    iget-object v2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->b:Landroidx/compose/foundation/p;

    invoke-virtual {v2}, Landroidx/compose/foundation/p;->j()Landroid/widget/EdgeEffect;

    move-result-object v2

    sget-object v3, Landroidx/compose/foundation/o;->a:Landroidx/compose/foundation/o;

    neg-float v1, v1

    invoke-virtual {v3, v2, v1, v0}, Landroidx/compose/foundation/o;->d(Landroid/widget/EdgeEffect;FF)F

    move-result v0

    neg-float v0, v0

    iget-wide v4, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->f:J

    invoke-static {v4, v5}, Ly/m;->i(J)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {v3, v2}, Landroidx/compose/foundation/o;->b(Landroid/widget/EdgeEffect;)F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Ly/g;->m(J)F

    move-result v0

    :goto_0
    return v0
.end method

.method private final o(J)F
    .locals 6

    invoke-virtual {p0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->i()J

    move-result-wide v0

    invoke-static {v0, v1}, Ly/g;->m(J)F

    move-result v0

    invoke-static {p1, p2}, Ly/g;->n(J)F

    move-result v1

    iget-wide v2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->f:J

    invoke-static {v2, v3}, Ly/m;->g(J)F

    move-result v2

    div-float/2addr v1, v2

    iget-object v2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->b:Landroidx/compose/foundation/p;

    invoke-virtual {v2}, Landroidx/compose/foundation/p;->l()Landroid/widget/EdgeEffect;

    move-result-object v2

    sget-object v3, Landroidx/compose/foundation/o;->a:Landroidx/compose/foundation/o;

    invoke-virtual {v3, v2, v1, v0}, Landroidx/compose/foundation/o;->d(Landroid/widget/EdgeEffect;FF)F

    move-result v0

    iget-wide v4, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->f:J

    invoke-static {v4, v5}, Ly/m;->g(J)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {v3, v2}, Landroidx/compose/foundation/o;->b(Landroid/widget/EdgeEffect;)F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Ly/g;->n(J)F

    move-result v0

    :goto_0
    return v0
.end method

.method private final p(J)Z
    .locals 7

    iget-object v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->b:Landroidx/compose/foundation/p;

    invoke-virtual {v0}, Landroidx/compose/foundation/p;->r()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Ly/g;->m(J)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    sget-object v0, Landroidx/compose/foundation/o;->a:Landroidx/compose/foundation/o;

    iget-object v4, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->b:Landroidx/compose/foundation/p;

    invoke-virtual {v4}, Landroidx/compose/foundation/p;->h()Landroid/widget/EdgeEffect;

    move-result-object v4

    invoke-static {p1, p2}, Ly/g;->m(J)F

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroidx/compose/foundation/o;->e(Landroid/widget/EdgeEffect;F)V

    iget-object v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->b:Landroidx/compose/foundation/p;

    invoke-virtual {v0}, Landroidx/compose/foundation/p;->r()Z

    move-result v0

    xor-int/2addr v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iget-object v4, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->b:Landroidx/compose/foundation/p;

    invoke-virtual {v4}, Landroidx/compose/foundation/p;->u()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {p1, p2}, Ly/g;->m(J)F

    move-result v4

    cmpl-float v4, v4, v2

    if-lez v4, :cond_3

    sget-object v4, Landroidx/compose/foundation/o;->a:Landroidx/compose/foundation/o;

    iget-object v5, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->b:Landroidx/compose/foundation/p;

    invoke-virtual {v5}, Landroidx/compose/foundation/p;->j()Landroid/widget/EdgeEffect;

    move-result-object v5

    invoke-static {p1, p2}, Ly/g;->m(J)F

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroidx/compose/foundation/o;->e(Landroid/widget/EdgeEffect;F)V

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->b:Landroidx/compose/foundation/p;

    invoke-virtual {v0}, Landroidx/compose/foundation/p;->u()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v3

    goto :goto_2

    :cond_2
    :goto_1
    move v0, v1

    :cond_3
    :goto_2
    iget-object v4, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->b:Landroidx/compose/foundation/p;

    invoke-virtual {v4}, Landroidx/compose/foundation/p;->y()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {p1, p2}, Ly/g;->n(J)F

    move-result v4

    cmpg-float v4, v4, v2

    if-gez v4, :cond_6

    sget-object v4, Landroidx/compose/foundation/o;->a:Landroidx/compose/foundation/o;

    iget-object v5, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->b:Landroidx/compose/foundation/p;

    invoke-virtual {v5}, Landroidx/compose/foundation/p;->l()Landroid/widget/EdgeEffect;

    move-result-object v5

    invoke-static {p1, p2}, Ly/g;->n(J)F

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroidx/compose/foundation/o;->e(Landroid/widget/EdgeEffect;F)V

    if-nez v0, :cond_5

    iget-object v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->b:Landroidx/compose/foundation/p;

    invoke-virtual {v0}, Landroidx/compose/foundation/p;->y()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    move v0, v3

    goto :goto_4

    :cond_5
    :goto_3
    move v0, v1

    :cond_6
    :goto_4
    iget-object v4, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->b:Landroidx/compose/foundation/p;

    invoke-virtual {v4}, Landroidx/compose/foundation/p;->o()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {p1, p2}, Ly/g;->n(J)F

    move-result v4

    cmpl-float v2, v4, v2

    if-lez v2, :cond_9

    sget-object v2, Landroidx/compose/foundation/o;->a:Landroidx/compose/foundation/o;

    iget-object v4, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->b:Landroidx/compose/foundation/p;

    invoke-virtual {v4}, Landroidx/compose/foundation/p;->f()Landroid/widget/EdgeEffect;

    move-result-object v4

    invoke-static {p1, p2}, Ly/g;->n(J)F

    move-result p1

    invoke-virtual {v2, v4, p1}, Landroidx/compose/foundation/o;->e(Landroid/widget/EdgeEffect;F)V

    if-nez v0, :cond_8

    iget-object p1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->b:Landroidx/compose/foundation/p;

    invoke-virtual {p1}, Landroidx/compose/foundation/p;->o()Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_5

    :cond_7
    move v1, v3

    :cond_8
    :goto_5
    move v0, v1

    :cond_9
    return v0
.end method

.method private final q()Z
    .locals 4

    iget-object v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->b:Landroidx/compose/foundation/p;

    invoke-virtual {v0}, Landroidx/compose/foundation/p;->t()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Ly/g;->b:Ly/g$a;

    invoke-virtual {v0}, Ly/g$a;->c()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->m(J)F

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->b:Landroidx/compose/foundation/p;

    invoke-virtual {v2}, Landroidx/compose/foundation/p;->w()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v0, Ly/g;->b:Ly/g$a;

    invoke-virtual {v0}, Ly/g$a;->c()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->n(J)F

    move v0, v1

    :cond_1
    iget-object v2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->b:Landroidx/compose/foundation/p;

    invoke-virtual {v2}, Landroidx/compose/foundation/p;->A()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v0, Ly/g;->b:Ly/g$a;

    invoke-virtual {v0}, Ly/g$a;->c()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->o(J)F

    move v0, v1

    :cond_2
    iget-object v2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->b:Landroidx/compose/foundation/p;

    invoke-virtual {v2}, Landroidx/compose/foundation/p;->q()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v0, Ly/g;->b:Ly/g$a;

    invoke-virtual {v0}, Ly/g$a;->c()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->l(J)F

    goto :goto_1

    :cond_3
    move v1, v0

    :goto_1
    return v1
.end method


# virtual methods
.method public a()Z
    .locals 5

    iget-object v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->b:Landroidx/compose/foundation/p;

    invoke-static {v0}, Landroidx/compose/foundation/p;->d(Landroidx/compose/foundation/p;)Landroid/widget/EdgeEffect;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    sget-object v4, Landroidx/compose/foundation/o;->a:Landroidx/compose/foundation/o;

    invoke-virtual {v4, v1}, Landroidx/compose/foundation/o;->b(Landroid/widget/EdgeEffect;)F

    move-result v1

    cmpg-float v1, v1, v3

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    :goto_0
    invoke-static {v0}, Landroidx/compose/foundation/p;->a(Landroidx/compose/foundation/p;)Landroid/widget/EdgeEffect;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-object v4, Landroidx/compose/foundation/o;->a:Landroidx/compose/foundation/o;

    invoke-virtual {v4, v1}, Landroidx/compose/foundation/o;->b(Landroid/widget/EdgeEffect;)F

    move-result v1

    cmpg-float v1, v1, v3

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    return v2

    :cond_3
    :goto_1
    invoke-static {v0}, Landroidx/compose/foundation/p;->b(Landroidx/compose/foundation/p;)Landroid/widget/EdgeEffect;

    move-result-object v1

    if-eqz v1, :cond_5

    sget-object v4, Landroidx/compose/foundation/o;->a:Landroidx/compose/foundation/o;

    invoke-virtual {v4, v1}, Landroidx/compose/foundation/o;->b(Landroid/widget/EdgeEffect;)F

    move-result v1

    cmpg-float v1, v1, v3

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    return v2

    :cond_5
    :goto_2
    invoke-static {v0}, Landroidx/compose/foundation/p;->c(Landroidx/compose/foundation/p;)Landroid/widget/EdgeEffect;

    move-result-object v0

    if-eqz v0, :cond_7

    sget-object v1, Landroidx/compose/foundation/o;->a:Landroidx/compose/foundation/o;

    invoke-virtual {v1, v0}, Landroidx/compose/foundation/o;->b(Landroid/widget/EdgeEffect;)F

    move-result v0

    cmpg-float v0, v0, v3

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    return v2

    :cond_7
    :goto_3
    const/4 v0, 0x0

    return v0
.end method

.method public b()Landroidx/compose/ui/f;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->h:Landroidx/compose/ui/f;

    return-object v0
.end method

.method public c(JILkotlin/jvm/functions/Function1;)J
    .locals 10

    iget-wide v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->f:J

    invoke-static {v0, v1}, Ly/m;->k(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Ly/g;->d(J)Ly/g;

    move-result-object p1

    invoke-interface {p4, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ly/g;

    invoke-virtual {p1}, Ly/g;->v()J

    move-result-wide p1

    return-wide p1

    :cond_0
    iget-boolean v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->e:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->q()Z

    iput-boolean v1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->e:Z

    :cond_1
    invoke-static {p1, p2}, Ly/g;->n(J)F

    move-result v0

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-nez v0, :cond_3

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->b:Landroidx/compose/foundation/p;

    invoke-virtual {v0}, Landroidx/compose/foundation/p;->A()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->o(J)F

    move-result v0

    iget-object v3, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->b:Landroidx/compose/foundation/p;

    invoke-virtual {v3}, Landroidx/compose/foundation/p;->A()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->b:Landroidx/compose/foundation/p;

    invoke-virtual {v3}, Landroidx/compose/foundation/p;->l()Landroid/widget/EdgeEffect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->b:Landroidx/compose/foundation/p;

    invoke-virtual {v0}, Landroidx/compose/foundation/p;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->l(J)F

    move-result v0

    iget-object v3, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->b:Landroidx/compose/foundation/p;

    invoke-virtual {v3}, Landroidx/compose/foundation/p;->q()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->b:Landroidx/compose/foundation/p;

    invoke-virtual {v3}, Landroidx/compose/foundation/p;->f()Landroid/widget/EdgeEffect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_5
    :goto_0
    invoke-static {p1, p2}, Ly/g;->m(J)F

    move-result v3

    cmpg-float v3, v3, v2

    if-nez v3, :cond_6

    goto :goto_1

    :cond_6
    iget-object v3, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->b:Landroidx/compose/foundation/p;

    invoke-virtual {v3}, Landroidx/compose/foundation/p;->t()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->m(J)F

    move-result v2

    iget-object v3, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->b:Landroidx/compose/foundation/p;

    invoke-virtual {v3}, Landroidx/compose/foundation/p;->t()Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->b:Landroidx/compose/foundation/p;

    invoke-virtual {v3}, Landroidx/compose/foundation/p;->h()Landroid/widget/EdgeEffect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_1

    :cond_7
    iget-object v3, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->b:Landroidx/compose/foundation/p;

    invoke-virtual {v3}, Landroidx/compose/foundation/p;->w()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->n(J)F

    move-result v2

    iget-object v3, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->b:Landroidx/compose/foundation/p;

    invoke-virtual {v3}, Landroidx/compose/foundation/p;->w()Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->b:Landroidx/compose/foundation/p;

    invoke-virtual {v3}, Landroidx/compose/foundation/p;->j()Landroid/widget/EdgeEffect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_8
    :goto_1
    invoke-static {v2, v0}, Ly/h;->a(FF)J

    move-result-wide v2

    sget-object v0, Ly/g;->b:Ly/g$a;

    invoke-virtual {v0}, Ly/g$a;->c()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ly/g;->j(JJ)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->k()V

    :cond_9
    invoke-static {p1, p2, v2, v3}, Ly/g;->q(JJ)J

    move-result-wide v4

    invoke-static {v4, v5}, Ly/g;->d(J)Ly/g;

    move-result-object v0

    invoke-interface {p4, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ly/g;

    invoke-virtual {p4}, Ly/g;->v()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ly/g;->q(JJ)J

    move-result-wide v4

    sget-object p4, Landroidx/compose/ui/input/nestedscroll/e;->a:Landroidx/compose/ui/input/nestedscroll/e$a;

    invoke-virtual {p4}, Landroidx/compose/ui/input/nestedscroll/e$a;->b()I

    move-result p4

    invoke-static {p3, p4}, Landroidx/compose/ui/input/nestedscroll/e;->d(II)Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_10

    invoke-static {v4, v5}, Ly/g;->m(J)F

    move-result p3

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float p3, p3, v0

    const/high16 v8, -0x41000000    # -0.5f

    if-lez p3, :cond_a

    invoke-direct {p0, v4, v5}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->m(J)F

    :goto_2
    move p3, v1

    goto :goto_3

    :cond_a
    invoke-static {v4, v5}, Ly/g;->m(J)F

    move-result p3

    cmpg-float p3, p3, v8

    if-gez p3, :cond_b

    invoke-direct {p0, v4, v5}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->n(J)F

    goto :goto_2

    :cond_b
    move p3, p4

    :goto_3
    invoke-static {v4, v5}, Ly/g;->n(J)F

    move-result v9

    cmpl-float v0, v9, v0

    if-lez v0, :cond_c

    invoke-direct {p0, v4, v5}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->o(J)F

    :goto_4
    move v0, v1

    goto :goto_5

    :cond_c
    invoke-static {v4, v5}, Ly/g;->n(J)F

    move-result v0

    cmpg-float v0, v0, v8

    if-gez v0, :cond_d

    invoke-direct {p0, v4, v5}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->l(J)F

    goto :goto_4

    :cond_d
    move v0, p4

    :goto_5
    if-nez p3, :cond_f

    if-eqz v0, :cond_e

    goto :goto_6

    :cond_e
    move v1, p4

    :cond_f
    :goto_6
    move p4, v1

    :cond_10
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->p(J)Z

    move-result p1

    if-nez p1, :cond_11

    if-eqz p4, :cond_12

    :cond_11
    invoke-virtual {p0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->k()V

    :cond_12
    invoke-static {v2, v3, v6, v7}, Ly/g;->r(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public d(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p4, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$applyToFling$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$applyToFling$1;

    iget v1, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$applyToFling$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$applyToFling$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$applyToFling$1;

    invoke-direct {v0, p0, p4}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$applyToFling$1;-><init>(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$applyToFling$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$applyToFling$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-wide p1, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$applyToFling$1;->J$0:J

    iget-object p3, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$applyToFling$1;->L$0:Ljava/lang/Object;

    check-cast p3, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-wide v6, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->f:J

    invoke-static {v6, v7}, Ly/m;->k(J)Z

    move-result p4

    if-eqz p4, :cond_5

    invoke-static {p1, p2}, Lo0/z;->b(J)Lo0/z;

    move-result-object p1

    iput v4, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$applyToFling$1;->label:I

    invoke-interface {p3, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_5
    invoke-static {p1, p2}, Lo0/z;->h(J)F

    move-result p4

    cmpl-float p4, p4, v5

    if-lez p4, :cond_6

    iget-object p4, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->b:Landroidx/compose/foundation/p;

    invoke-virtual {p4}, Landroidx/compose/foundation/p;->t()Z

    move-result p4

    if-eqz p4, :cond_6

    sget-object p4, Landroidx/compose/foundation/o;->a:Landroidx/compose/foundation/o;

    iget-object v2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->b:Landroidx/compose/foundation/p;

    invoke-virtual {v2}, Landroidx/compose/foundation/p;->h()Landroid/widget/EdgeEffect;

    move-result-object v2

    invoke-static {p1, p2}, Lo0/z;->h(J)F

    move-result v4

    invoke-static {v4}, Lkotlin/math/MathKt;->d(F)I

    move-result v4

    invoke-virtual {p4, v2, v4}, Landroidx/compose/foundation/o;->c(Landroid/widget/EdgeEffect;I)V

    invoke-static {p1, p2}, Lo0/z;->h(J)F

    move-result p4

    goto :goto_2

    :cond_6
    invoke-static {p1, p2}, Lo0/z;->h(J)F

    move-result p4

    cmpg-float p4, p4, v5

    if-gez p4, :cond_7

    iget-object p4, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->b:Landroidx/compose/foundation/p;

    invoke-virtual {p4}, Landroidx/compose/foundation/p;->w()Z

    move-result p4

    if-eqz p4, :cond_7

    sget-object p4, Landroidx/compose/foundation/o;->a:Landroidx/compose/foundation/o;

    iget-object v2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->b:Landroidx/compose/foundation/p;

    invoke-virtual {v2}, Landroidx/compose/foundation/p;->j()Landroid/widget/EdgeEffect;

    move-result-object v2

    invoke-static {p1, p2}, Lo0/z;->h(J)F

    move-result v4

    invoke-static {v4}, Lkotlin/math/MathKt;->d(F)I

    move-result v4

    neg-int v4, v4

    invoke-virtual {p4, v2, v4}, Landroidx/compose/foundation/o;->c(Landroid/widget/EdgeEffect;I)V

    invoke-static {p1, p2}, Lo0/z;->h(J)F

    move-result p4

    goto :goto_2

    :cond_7
    move p4, v5

    :goto_2
    invoke-static {p1, p2}, Lo0/z;->i(J)F

    move-result v2

    cmpl-float v2, v2, v5

    if-lez v2, :cond_8

    iget-object v2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->b:Landroidx/compose/foundation/p;

    invoke-virtual {v2}, Landroidx/compose/foundation/p;->A()Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Landroidx/compose/foundation/o;->a:Landroidx/compose/foundation/o;

    iget-object v4, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->b:Landroidx/compose/foundation/p;

    invoke-virtual {v4}, Landroidx/compose/foundation/p;->l()Landroid/widget/EdgeEffect;

    move-result-object v4

    invoke-static {p1, p2}, Lo0/z;->i(J)F

    move-result v6

    invoke-static {v6}, Lkotlin/math/MathKt;->d(F)I

    move-result v6

    invoke-virtual {v2, v4, v6}, Landroidx/compose/foundation/o;->c(Landroid/widget/EdgeEffect;I)V

    invoke-static {p1, p2}, Lo0/z;->i(J)F

    move-result v2

    goto :goto_3

    :cond_8
    invoke-static {p1, p2}, Lo0/z;->i(J)F

    move-result v2

    cmpg-float v2, v2, v5

    if-gez v2, :cond_9

    iget-object v2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->b:Landroidx/compose/foundation/p;

    invoke-virtual {v2}, Landroidx/compose/foundation/p;->q()Z

    move-result v2

    if-eqz v2, :cond_9

    sget-object v2, Landroidx/compose/foundation/o;->a:Landroidx/compose/foundation/o;

    iget-object v4, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->b:Landroidx/compose/foundation/p;

    invoke-virtual {v4}, Landroidx/compose/foundation/p;->f()Landroid/widget/EdgeEffect;

    move-result-object v4

    invoke-static {p1, p2}, Lo0/z;->i(J)F

    move-result v6

    invoke-static {v6}, Lkotlin/math/MathKt;->d(F)I

    move-result v6

    neg-int v6, v6

    invoke-virtual {v2, v4, v6}, Landroidx/compose/foundation/o;->c(Landroid/widget/EdgeEffect;I)V

    invoke-static {p1, p2}, Lo0/z;->i(J)F

    move-result v2

    goto :goto_3

    :cond_9
    move v2, v5

    :goto_3
    invoke-static {p4, v2}, Lo0/a0;->a(FF)J

    move-result-wide v6

    sget-object p4, Lo0/z;->b:Lo0/z$a;

    invoke-virtual {p4}, Lo0/z$a;->a()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Lo0/z;->g(JJ)Z

    move-result p4

    if-nez p4, :cond_a

    invoke-virtual {p0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->k()V

    :cond_a
    invoke-static {p1, p2, v6, v7}, Lo0/z;->k(JJ)J

    move-result-wide p1

    invoke-static {p1, p2}, Lo0/z;->b(J)Lo0/z;

    move-result-object p4

    iput-object p0, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$applyToFling$1;->L$0:Ljava/lang/Object;

    iput-wide p1, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$applyToFling$1;->J$0:J

    iput v3, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$applyToFling$1;->label:I

    invoke-interface {p3, p4, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_b

    return-object v1

    :cond_b
    move-object p3, p0

    :goto_4
    check-cast p4, Lo0/z;

    invoke-virtual {p4}, Lo0/z;->n()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lo0/z;->k(JJ)J

    move-result-wide p1

    const/4 p4, 0x0

    iput-boolean p4, p3, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->e:Z

    invoke-static {p1, p2}, Lo0/z;->h(J)F

    move-result p4

    cmpl-float p4, p4, v5

    if-lez p4, :cond_c

    sget-object p4, Landroidx/compose/foundation/o;->a:Landroidx/compose/foundation/o;

    iget-object v0, p3, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->b:Landroidx/compose/foundation/p;

    invoke-virtual {v0}, Landroidx/compose/foundation/p;->h()Landroid/widget/EdgeEffect;

    move-result-object v0

    invoke-static {p1, p2}, Lo0/z;->h(J)F

    move-result v1

    invoke-static {v1}, Lkotlin/math/MathKt;->d(F)I

    move-result v1

    invoke-virtual {p4, v0, v1}, Landroidx/compose/foundation/o;->c(Landroid/widget/EdgeEffect;I)V

    goto :goto_5

    :cond_c
    invoke-static {p1, p2}, Lo0/z;->h(J)F

    move-result p4

    cmpg-float p4, p4, v5

    if-gez p4, :cond_d

    sget-object p4, Landroidx/compose/foundation/o;->a:Landroidx/compose/foundation/o;

    iget-object v0, p3, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->b:Landroidx/compose/foundation/p;

    invoke-virtual {v0}, Landroidx/compose/foundation/p;->j()Landroid/widget/EdgeEffect;

    move-result-object v0

    invoke-static {p1, p2}, Lo0/z;->h(J)F

    move-result v1

    invoke-static {v1}, Lkotlin/math/MathKt;->d(F)I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p4, v0, v1}, Landroidx/compose/foundation/o;->c(Landroid/widget/EdgeEffect;I)V

    :cond_d
    :goto_5
    invoke-static {p1, p2}, Lo0/z;->i(J)F

    move-result p4

    cmpl-float p4, p4, v5

    if-lez p4, :cond_e

    sget-object p4, Landroidx/compose/foundation/o;->a:Landroidx/compose/foundation/o;

    iget-object v0, p3, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->b:Landroidx/compose/foundation/p;

    invoke-virtual {v0}, Landroidx/compose/foundation/p;->l()Landroid/widget/EdgeEffect;

    move-result-object v0

    invoke-static {p1, p2}, Lo0/z;->i(J)F

    move-result v1

    invoke-static {v1}, Lkotlin/math/MathKt;->d(F)I

    move-result v1

    invoke-virtual {p4, v0, v1}, Landroidx/compose/foundation/o;->c(Landroid/widget/EdgeEffect;I)V

    goto :goto_6

    :cond_e
    invoke-static {p1, p2}, Lo0/z;->i(J)F

    move-result p4

    cmpg-float p4, p4, v5

    if-gez p4, :cond_f

    sget-object p4, Landroidx/compose/foundation/o;->a:Landroidx/compose/foundation/o;

    iget-object v0, p3, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->b:Landroidx/compose/foundation/p;

    invoke-virtual {v0}, Landroidx/compose/foundation/p;->f()Landroid/widget/EdgeEffect;

    move-result-object v0

    invoke-static {p1, p2}, Lo0/z;->i(J)F

    move-result v1

    invoke-static {v1}, Lkotlin/math/MathKt;->d(F)I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p4, v0, v1}, Landroidx/compose/foundation/o;->c(Landroid/widget/EdgeEffect;I)V

    :cond_f
    :goto_6
    sget-object p4, Lo0/z;->b:Lo0/z$a;

    invoke-virtual {p4}, Lo0/z$a;->a()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lo0/z;->g(JJ)Z

    move-result p1

    if-nez p1, :cond_10

    invoke-virtual {p3}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->k()V

    :cond_10
    invoke-direct {p3}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->h()V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final i()J
    .locals 5

    iget-object v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->a:Ly/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ly/g;->v()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->f:J

    invoke-static {v0, v1}, Ly/n;->b(J)J

    move-result-wide v0

    :goto_0
    invoke-static {v0, v1}, Ly/g;->m(J)F

    move-result v2

    iget-wide v3, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->f:J

    invoke-static {v3, v4}, Ly/m;->i(J)F

    move-result v3

    div-float/2addr v2, v3

    invoke-static {v0, v1}, Ly/g;->n(J)F

    move-result v0

    iget-wide v3, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->f:J

    invoke-static {v3, v4}, Ly/m;->g(J)F

    move-result v1

    div-float/2addr v0, v1

    invoke-static {v2, v0}, Ly/h;->a(FF)J

    move-result-wide v0

    return-wide v0
.end method

.method public final j()Landroidx/compose/runtime/i1;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->c:Landroidx/compose/runtime/i1;

    return-object v0
.end method

.method public final k()V
    .locals 2

    iget-boolean v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->c:Landroidx/compose/runtime/i1;

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v0, v1}, Landroidx/compose/runtime/i1;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final r(J)V
    .locals 4

    iget-wide v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->f:J

    sget-object v2, Ly/m;->b:Ly/m$a;

    invoke-virtual {v2}, Ly/m$a;->b()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ly/m;->f(JJ)Z

    move-result v0

    iget-wide v1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->f:J

    invoke-static {p1, p2, v1, v2}, Ly/m;->f(JJ)Z

    move-result v1

    iput-wide p1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->f:J

    if-nez v1, :cond_0

    iget-object v2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->b:Landroidx/compose/foundation/p;

    invoke-static {p1, p2}, Ly/m;->i(J)F

    move-result v3

    invoke-static {v3}, Lkotlin/math/MathKt;->d(F)I

    move-result v3

    invoke-static {p1, p2}, Ly/m;->g(J)F

    move-result p1

    invoke-static {p1}, Lkotlin/math/MathKt;->d(F)I

    move-result p1

    invoke-static {v3, p1}, Lo0/u;->a(II)J

    move-result-wide p1

    invoke-virtual {v2, p1, p2}, Landroidx/compose/foundation/p;->B(J)V

    :cond_0
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->k()V

    invoke-direct {p0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->h()V

    :cond_1
    return-void
.end method
