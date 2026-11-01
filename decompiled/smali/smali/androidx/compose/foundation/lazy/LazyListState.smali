.class public final Landroidx/compose/foundation/lazy/LazyListState;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/foundation/gestures/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/lazy/LazyListState$a;
    }
.end annotation


# static fields
.field public static final y:Landroidx/compose/foundation/lazy/LazyListState$a;

.field private static final z:Landroidx/compose/runtime/saveable/d;


# instance fields
.field private final a:Landroidx/compose/foundation/lazy/r;

.field private b:Z

.field private c:Landroidx/compose/foundation/lazy/m;

.field private final d:Landroidx/compose/foundation/lazy/v;

.field private final e:Landroidx/compose/foundation/lazy/e;

.field private final f:Landroidx/compose/runtime/i1;

.field private final g:Lp/i;

.field private h:F

.field private final i:Landroidx/compose/foundation/gestures/o;

.field private j:I

.field private k:Z

.field private l:Landroidx/compose/ui/layout/h0;

.field private final m:Landroidx/compose/ui/layout/i0;

.field private final n:Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

.field private final o:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

.field private final p:Landroidx/compose/foundation/lazy/layout/e;

.field private final q:Landroidx/compose/foundation/lazy/layout/x;

.field private final r:Landroidx/compose/foundation/lazy/p;

.field private final s:Landroidx/compose/foundation/lazy/layout/w;

.field private final t:Landroidx/compose/runtime/i1;

.field private final u:Landroidx/compose/runtime/i1;

.field private final v:Landroidx/compose/runtime/i1;

.field private final w:Landroidx/compose/runtime/i1;

.field private x:Landroidx/compose/animation/core/i;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/foundation/lazy/LazyListState$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/foundation/lazy/LazyListState$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/foundation/lazy/LazyListState;->y:Landroidx/compose/foundation/lazy/LazyListState$a;

    sget-object v0, Landroidx/compose/foundation/lazy/LazyListState$Companion$Saver$1;->INSTANCE:Landroidx/compose/foundation/lazy/LazyListState$Companion$Saver$1;

    sget-object v1, Landroidx/compose/foundation/lazy/LazyListState$Companion$Saver$2;->INSTANCE:Landroidx/compose/foundation/lazy/LazyListState$Companion$Saver$2;

    invoke-static {v0, v1}, Landroidx/compose/runtime/saveable/ListSaverKt;->a(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/d;

    move-result-object v0

    sput-object v0, Landroidx/compose/foundation/lazy/LazyListState;->z:Landroidx/compose/runtime/saveable/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/lazy/LazyListState;-><init>(IILandroidx/compose/foundation/lazy/r;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Landroidx/compose/foundation/lazy/s;->b(IILjava/lang/Object;)Landroidx/compose/foundation/lazy/r;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Landroidx/compose/foundation/lazy/LazyListState;-><init>(IILandroidx/compose/foundation/lazy/r;)V

    return-void
.end method

.method public constructor <init>(IILandroidx/compose/foundation/lazy/r;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Landroidx/compose/foundation/lazy/LazyListState;->a:Landroidx/compose/foundation/lazy/r;

    new-instance v0, Landroidx/compose/foundation/lazy/v;

    invoke-direct {v0, p1, p2}, Landroidx/compose/foundation/lazy/v;-><init>(II)V

    iput-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->d:Landroidx/compose/foundation/lazy/v;

    new-instance p2, Landroidx/compose/foundation/lazy/e;

    invoke-direct {p2, p0}, Landroidx/compose/foundation/lazy/e;-><init>(Landroidx/compose/foundation/lazy/LazyListState;)V

    iput-object p2, p0, Landroidx/compose/foundation/lazy/LazyListState;->e:Landroidx/compose/foundation/lazy/e;

    invoke-static {}, Landroidx/compose/foundation/lazy/LazyListStateKt;->b()Landroidx/compose/foundation/lazy/m;

    move-result-object p2

    invoke-static {}, Landroidx/compose/runtime/r2;->g()Landroidx/compose/runtime/q2;

    move-result-object v1

    invoke-static {p2, v1}, Landroidx/compose/runtime/r2;->e(Ljava/lang/Object;Landroidx/compose/runtime/q2;)Landroidx/compose/runtime/i1;

    move-result-object p2

    iput-object p2, p0, Landroidx/compose/foundation/lazy/LazyListState;->f:Landroidx/compose/runtime/i1;

    invoke-static {}, Lp/h;->a()Lp/i;

    move-result-object p2

    iput-object p2, p0, Landroidx/compose/foundation/lazy/LazyListState;->g:Lp/i;

    new-instance p2, Landroidx/compose/foundation/lazy/LazyListState$scrollableState$1;

    invoke-direct {p2, p0}, Landroidx/compose/foundation/lazy/LazyListState$scrollableState$1;-><init>(Landroidx/compose/foundation/lazy/LazyListState;)V

    invoke-static {p2}, Landroidx/compose/foundation/gestures/p;->a(Lkotlin/jvm/functions/Function1;)Landroidx/compose/foundation/gestures/o;

    move-result-object p2

    iput-object p2, p0, Landroidx/compose/foundation/lazy/LazyListState;->i:Landroidx/compose/foundation/gestures/o;

    const/4 p2, 0x1

    iput-boolean p2, p0, Landroidx/compose/foundation/lazy/LazyListState;->k:Z

    new-instance v1, Landroidx/compose/foundation/lazy/LazyListState$c;

    invoke-direct {v1, p0}, Landroidx/compose/foundation/lazy/LazyListState$c;-><init>(Landroidx/compose/foundation/lazy/LazyListState;)V

    iput-object v1, p0, Landroidx/compose/foundation/lazy/LazyListState;->m:Landroidx/compose/ui/layout/i0;

    new-instance v1, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    invoke-direct {v1}, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;-><init>()V

    iput-object v1, p0, Landroidx/compose/foundation/lazy/LazyListState;->n:Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    new-instance v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    invoke-direct {v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;-><init>()V

    iput-object v1, p0, Landroidx/compose/foundation/lazy/LazyListState;->o:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    new-instance v1, Landroidx/compose/foundation/lazy/layout/e;

    invoke-direct {v1}, Landroidx/compose/foundation/lazy/layout/e;-><init>()V

    iput-object v1, p0, Landroidx/compose/foundation/lazy/LazyListState;->p:Landroidx/compose/foundation/lazy/layout/e;

    new-instance v1, Landroidx/compose/foundation/lazy/layout/x;

    invoke-interface {p3}, Landroidx/compose/foundation/lazy/r;->c()Landroidx/compose/foundation/lazy/layout/i0;

    move-result-object p3

    new-instance v2, Landroidx/compose/foundation/lazy/LazyListState$prefetchState$1;

    invoke-direct {v2, p0, p1}, Landroidx/compose/foundation/lazy/LazyListState$prefetchState$1;-><init>(Landroidx/compose/foundation/lazy/LazyListState;I)V

    invoke-direct {v1, p3, v2}, Landroidx/compose/foundation/lazy/layout/x;-><init>(Landroidx/compose/foundation/lazy/layout/i0;Lkotlin/jvm/functions/Function1;)V

    iput-object v1, p0, Landroidx/compose/foundation/lazy/LazyListState;->q:Landroidx/compose/foundation/lazy/layout/x;

    new-instance p1, Landroidx/compose/foundation/lazy/LazyListState$b;

    invoke-direct {p1, p0}, Landroidx/compose/foundation/lazy/LazyListState$b;-><init>(Landroidx/compose/foundation/lazy/LazyListState;)V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListState;->r:Landroidx/compose/foundation/lazy/p;

    new-instance p1, Landroidx/compose/foundation/lazy/layout/w;

    invoke-direct {p1}, Landroidx/compose/foundation/lazy/layout/w;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListState;->s:Landroidx/compose/foundation/lazy/layout/w;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/v;->b()Landroidx/compose/foundation/lazy/layout/u;

    const/4 p1, 0x0

    invoke-static {p1, p2, p1}, Landroidx/compose/foundation/lazy/layout/e0;->c(Landroidx/compose/runtime/i1;ILkotlin/jvm/internal/DefaultConstructorMarker;)Landroidx/compose/runtime/i1;

    move-result-object p3

    iput-object p3, p0, Landroidx/compose/foundation/lazy/LazyListState;->t:Landroidx/compose/runtime/i1;

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v0, 0x2

    invoke-static {p3, p1, v0, p1}, Landroidx/compose/runtime/r2;->f(Ljava/lang/Object;Landroidx/compose/runtime/q2;ILjava/lang/Object;)Landroidx/compose/runtime/i1;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/foundation/lazy/LazyListState;->u:Landroidx/compose/runtime/i1;

    invoke-static {p3, p1, v0, p1}, Landroidx/compose/runtime/r2;->f(Ljava/lang/Object;Landroidx/compose/runtime/q2;ILjava/lang/Object;)Landroidx/compose/runtime/i1;

    move-result-object p3

    iput-object p3, p0, Landroidx/compose/foundation/lazy/LazyListState;->v:Landroidx/compose/runtime/i1;

    invoke-static {p1, p2, p1}, Landroidx/compose/foundation/lazy/layout/e0;->c(Landroidx/compose/runtime/i1;ILkotlin/jvm/internal/DefaultConstructorMarker;)Landroidx/compose/runtime/i1;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListState;->w:Landroidx/compose/runtime/i1;

    sget-object p1, Lkotlin/jvm/internal/FloatCompanionObject;->a:Lkotlin/jvm/internal/FloatCompanionObject;

    invoke-static {p1}, Landroidx/compose/animation/core/VectorConvertersKt;->b(Lkotlin/jvm/internal/FloatCompanionObject;)Landroidx/compose/animation/core/s0;

    move-result-object v0

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/16 v8, 0x38

    const/4 v9, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object v1, v2

    invoke-static/range {v0 .. v9}, Landroidx/compose/animation/core/j;->d(Landroidx/compose/animation/core/s0;Ljava/lang/Object;Ljava/lang/Object;JJZILjava/lang/Object;)Landroidx/compose/animation/core/i;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListState;->x:Landroidx/compose/animation/core/i;

    return-void
.end method

.method public synthetic constructor <init>(IILandroidx/compose/foundation/lazy/r;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const/4 p3, 0x0

    const/4 p4, 0x1

    invoke-static {v0, p4, p3}, Landroidx/compose/foundation/lazy/s;->b(IILjava/lang/Object;)Landroidx/compose/foundation/lazy/r;

    move-result-object p3

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/lazy/LazyListState;-><init>(IILandroidx/compose/foundation/lazy/r;)V

    return-void
.end method

.method private final E(FLandroidx/compose/foundation/lazy/l;)V
    .locals 2

    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->a:Landroidx/compose/foundation/lazy/r;

    iget-object v1, p0, Landroidx/compose/foundation/lazy/LazyListState;->r:Landroidx/compose/foundation/lazy/p;

    invoke-interface {v0, v1, p1, p2}, Landroidx/compose/foundation/lazy/r;->b(Landroidx/compose/foundation/lazy/p;FLandroidx/compose/foundation/lazy/l;)V

    :cond_0
    return-void
.end method

.method public static synthetic H(Landroidx/compose/foundation/lazy/LazyListState;IILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/lazy/LazyListState;->G(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private I(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->v:Landroidx/compose/runtime/i1;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, Landroidx/compose/runtime/i1;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private J(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->u:Landroidx/compose/runtime/i1;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, Landroidx/compose/runtime/i1;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final L(FLo0/e;Lkotlinx/coroutines/n0;)V
    .locals 24

    move-object/from16 v1, p0

    move/from16 v0, p1

    invoke-static {}, Landroidx/compose/foundation/lazy/LazyListStateKt;->a()F

    move-result v2

    move-object/from16 v3, p2

    invoke-interface {v3, v2}, Lo0/e;->E0(F)F

    move-result v2

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_0

    return-void

    :cond_0
    sget-object v2, Landroidx/compose/runtime/snapshots/j;->e:Landroidx/compose/runtime/snapshots/j$a;

    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/j$a;->d()Landroidx/compose/runtime/snapshots/j;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/j;->h()Lkotlin/jvm/functions/Function1;

    move-result-object v5

    goto :goto_0

    :cond_1
    move-object v5, v4

    :goto_0
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/snapshots/j$a;->f(Landroidx/compose/runtime/snapshots/j;)Landroidx/compose/runtime/snapshots/j;

    move-result-object v6

    :try_start_0
    iget-object v7, v1, Landroidx/compose/foundation/lazy/LazyListState;->x:Landroidx/compose/animation/core/i;

    invoke-virtual {v7}, Landroidx/compose/animation/core/i;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    iget-object v8, v1, Landroidx/compose/foundation/lazy/LazyListState;->x:Landroidx/compose/animation/core/i;

    invoke-virtual {v8}, Landroidx/compose/animation/core/i;->h()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v9, v1, Landroidx/compose/foundation/lazy/LazyListState;->x:Landroidx/compose/animation/core/i;

    sub-float v10, v7, v0

    const/16 v17, 0x1e

    const/16 v18, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    invoke-static/range {v9 .. v18}, Landroidx/compose/animation/core/j;->g(Landroidx/compose/animation/core/i;FFJJZILjava/lang/Object;)Landroidx/compose/animation/core/i;

    move-result-object v0

    iput-object v0, v1, Landroidx/compose/foundation/lazy/LazyListState;->x:Landroidx/compose/animation/core/i;

    new-instance v10, Landroidx/compose/foundation/lazy/LazyListState$updateScrollDeltaForPostLookahead$2$1;

    invoke-direct {v10, v1, v4}, Landroidx/compose/foundation/lazy/LazyListState$updateScrollDeltaForPostLookahead$2$1;-><init>(Landroidx/compose/foundation/lazy/LazyListState;Lkotlin/coroutines/Continuation;)V

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v7, p3

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_2
    new-instance v7, Landroidx/compose/animation/core/i;

    sget-object v8, Lkotlin/jvm/internal/FloatCompanionObject;->a:Lkotlin/jvm/internal/FloatCompanionObject;

    invoke-static {v8}, Landroidx/compose/animation/core/VectorConvertersKt;->b(Lkotlin/jvm/internal/FloatCompanionObject;)Landroidx/compose/animation/core/s0;

    move-result-object v14

    neg-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    const/16 v22, 0x3c

    const/16 v23, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    move-object v13, v7

    invoke-direct/range {v13 .. v23}, Landroidx/compose/animation/core/i;-><init>(Landroidx/compose/animation/core/s0;Ljava/lang/Object;Landroidx/compose/animation/core/o;JJZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v7, v1, Landroidx/compose/foundation/lazy/LazyListState;->x:Landroidx/compose/animation/core/i;

    new-instance v11, Landroidx/compose/foundation/lazy/LazyListState$updateScrollDeltaForPostLookahead$2$2;

    invoke-direct {v11, v1, v4}, Landroidx/compose/foundation/lazy/LazyListState$updateScrollDeltaForPostLookahead$2$2;-><init>(Landroidx/compose/foundation/lazy/LazyListState;Lkotlin/coroutines/Continuation;)V

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v8, p3

    invoke-static/range {v8 .. v13}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-virtual {v2, v3, v6, v5}, Landroidx/compose/runtime/snapshots/j$a;->m(Landroidx/compose/runtime/snapshots/j;Landroidx/compose/runtime/snapshots/j;Lkotlin/jvm/functions/Function1;)V

    return-void

    :goto_2
    invoke-virtual {v2, v3, v6, v5}, Landroidx/compose/runtime/snapshots/j$a;->m(Landroidx/compose/runtime/snapshots/j;Landroidx/compose/runtime/snapshots/j;Lkotlin/jvm/functions/Function1;)V

    throw v0
.end method

.method public static final synthetic f(Landroidx/compose/foundation/lazy/LazyListState;)Landroidx/compose/runtime/i1;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListState;->f:Landroidx/compose/runtime/i1;

    return-object p0
.end method

.method public static final synthetic g(Landroidx/compose/foundation/lazy/LazyListState;)Landroidx/compose/foundation/lazy/r;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListState;->a:Landroidx/compose/foundation/lazy/r;

    return-object p0
.end method

.method public static final synthetic h()Landroidx/compose/runtime/saveable/d;
    .locals 1

    sget-object v0, Landroidx/compose/foundation/lazy/LazyListState;->z:Landroidx/compose/runtime/saveable/d;

    return-object v0
.end method

.method public static final synthetic i(Landroidx/compose/foundation/lazy/LazyListState;)Landroidx/compose/animation/core/i;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListState;->x:Landroidx/compose/animation/core/i;

    return-object p0
.end method

.method public static final synthetic j(Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/ui/layout/h0;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListState;->l:Landroidx/compose/ui/layout/h0;

    return-void
.end method

.method public static synthetic l(Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/lazy/m;ZZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/lazy/LazyListState;->k(Landroidx/compose/foundation/lazy/m;ZZ)V

    return-void
.end method


# virtual methods
.method public final A()Landroidx/compose/ui/layout/h0;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->l:Landroidx/compose/ui/layout/h0;

    return-object v0
.end method

.method public final B()Landroidx/compose/ui/layout/i0;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->m:Landroidx/compose/ui/layout/i0;

    return-object v0
.end method

.method public final C()F
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->x:Landroidx/compose/animation/core/i;

    invoke-virtual {v0}, Landroidx/compose/animation/core/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method public final D()F
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->h:F

    return v0
.end method

.method public final F(F)F
    .locals 8

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListState;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    cmpl-float v1, p1, v0

    if-lez v1, :cond_2

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListState;->b()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    return v0

    :cond_2
    iget v1, p0, Landroidx/compose/foundation/lazy/LazyListState;->h:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_8

    iget v1, p0, Landroidx/compose/foundation/lazy/LazyListState;->h:F

    add-float/2addr v1, p1

    iput v1, p0, Landroidx/compose/foundation/lazy/LazyListState;->h:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_6

    iget-object v1, p0, Landroidx/compose/foundation/lazy/LazyListState;->f:Landroidx/compose/runtime/i1;

    invoke-interface {v1}, Landroidx/compose/runtime/i1;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/foundation/lazy/m;

    iget v3, p0, Landroidx/compose/foundation/lazy/LazyListState;->h:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget-object v5, p0, Landroidx/compose/foundation/lazy/LazyListState;->c:Landroidx/compose/foundation/lazy/m;

    iget-boolean v6, p0, Landroidx/compose/foundation/lazy/LazyListState;->b:Z

    const/4 v7, 0x1

    xor-int/2addr v6, v7

    invoke-virtual {v1, v4, v6}, Landroidx/compose/foundation/lazy/m;->r(IZ)Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v5, :cond_3

    invoke-virtual {v5, v4, v7}, Landroidx/compose/foundation/lazy/m;->r(IZ)Z

    move-result v6

    :cond_3
    if-eqz v6, :cond_4

    iget-boolean v4, p0, Landroidx/compose/foundation/lazy/LazyListState;->b:Z

    invoke-virtual {p0, v1, v4, v7}, Landroidx/compose/foundation/lazy/LazyListState;->k(Landroidx/compose/foundation/lazy/m;ZZ)V

    iget-object v4, p0, Landroidx/compose/foundation/lazy/LazyListState;->w:Landroidx/compose/runtime/i1;

    invoke-static {v4}, Landroidx/compose/foundation/lazy/layout/e0;->d(Landroidx/compose/runtime/i1;)V

    iget v4, p0, Landroidx/compose/foundation/lazy/LazyListState;->h:F

    sub-float/2addr v3, v4

    invoke-direct {p0, v3, v1}, Landroidx/compose/foundation/lazy/LazyListState;->E(FLandroidx/compose/foundation/lazy/l;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Landroidx/compose/foundation/lazy/LazyListState;->l:Landroidx/compose/ui/layout/h0;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroidx/compose/ui/layout/h0;->d()V

    :cond_5
    iget v1, p0, Landroidx/compose/foundation/lazy/LazyListState;->h:F

    sub-float/2addr v3, v1

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListState;->t()Landroidx/compose/foundation/lazy/l;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Landroidx/compose/foundation/lazy/LazyListState;->E(FLandroidx/compose/foundation/lazy/l;)V

    :cond_6
    :goto_0
    iget v1, p0, Landroidx/compose/foundation/lazy/LazyListState;->h:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_7

    return p1

    :cond_7
    iget v1, p0, Landroidx/compose/foundation/lazy/LazyListState;->h:F

    sub-float/2addr p1, v1

    iput v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->h:F

    return p1

    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "entered drag with non-zero pending scroll: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->h:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final G(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    new-instance v2, Landroidx/compose/foundation/lazy/LazyListState$scrollToItem$2;

    const/4 v0, 0x0

    invoke-direct {v2, p0, p1, p2, v0}, Landroidx/compose/foundation/lazy/LazyListState$scrollToItem$2;-><init>(Landroidx/compose/foundation/lazy/LazyListState;IILkotlin/coroutines/Continuation;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/gestures/n;->c(Landroidx/compose/foundation/gestures/o;Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final K(IIZ)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->d:Landroidx/compose/foundation/lazy/v;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/v;->a()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->d:Landroidx/compose/foundation/lazy/v;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/v;->c()I

    move-result v0

    if-eq v0, p2, :cond_1

    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->o:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->n()V

    :cond_1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->d:Landroidx/compose/foundation/lazy/v;

    invoke-virtual {v0, p1, p2}, Landroidx/compose/foundation/lazy/v;->d(II)V

    if-eqz p3, :cond_2

    iget-object p1, p0, Landroidx/compose/foundation/lazy/LazyListState;->l:Landroidx/compose/ui/layout/h0;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroidx/compose/ui/layout/h0;->d()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Landroidx/compose/foundation/lazy/LazyListState;->t:Landroidx/compose/runtime/i1;

    invoke-static {p1}, Landroidx/compose/foundation/lazy/layout/e0;->d(Landroidx/compose/runtime/i1;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final M(Landroidx/compose/foundation/lazy/k;I)I
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->d:Landroidx/compose/foundation/lazy/v;

    invoke-virtual {v0, p1, p2}, Landroidx/compose/foundation/lazy/v;->j(Landroidx/compose/foundation/lazy/k;I)I

    move-result p1

    return p1
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->i:Landroidx/compose/foundation/gestures/o;

    invoke-interface {v0}, Landroidx/compose/foundation/gestures/o;->a()Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->v:Landroidx/compose/runtime/i1;

    invoke-interface {v0}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public c(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p3, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;

    iget v1, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;

    invoke-direct {v0, p0, p3}, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;-><init>(Landroidx/compose/foundation/lazy/LazyListState;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->L$2:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Lkotlin/jvm/functions/Function2;

    iget-object p1, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->L$1:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/foundation/MutatePriority;

    iget-object v2, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->L$0:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/foundation/lazy/LazyListState;

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p3, p0, Landroidx/compose/foundation/lazy/LazyListState;->n:Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    iput-object p0, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->label:I

    invoke-virtual {p3, v0}, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    :goto_1
    iget-object p3, v2, Landroidx/compose/foundation/lazy/LazyListState;->i:Landroidx/compose/foundation/gestures/o;

    const/4 v2, 0x0

    iput-object v2, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->L$1:Ljava/lang/Object;

    iput-object v2, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->label:I

    invoke-interface {p3, p1, p2, v0}, Landroidx/compose/foundation/gestures/o;->c(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->u:Landroidx/compose/runtime/i1;

    invoke-interface {v0}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public e(F)F
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->i:Landroidx/compose/foundation/gestures/o;

    invoke-interface {v0, p1}, Landroidx/compose/foundation/gestures/o;->e(F)F

    move-result p1

    return p1
.end method

.method public final k(Landroidx/compose/foundation/lazy/m;ZZ)V
    .locals 3

    if-nez p2, :cond_0

    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->b:Z

    if-eqz v0, :cond_0

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListState;->c:Landroidx/compose/foundation/lazy/m;

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    if-eqz p2, :cond_1

    iput-boolean v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->b:Z

    :cond_1
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/m;->i()Z

    move-result v1

    invoke-direct {p0, v1}, Landroidx/compose/foundation/lazy/LazyListState;->I(Z)V

    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/m;->j()Z

    move-result v1

    invoke-direct {p0, v1}, Landroidx/compose/foundation/lazy/LazyListState;->J(Z)V

    iget v1, p0, Landroidx/compose/foundation/lazy/LazyListState;->h:F

    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/m;->l()F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, p0, Landroidx/compose/foundation/lazy/LazyListState;->h:F

    iget-object v1, p0, Landroidx/compose/foundation/lazy/LazyListState;->f:Landroidx/compose/runtime/i1;

    invoke-interface {v1, p1}, Landroidx/compose/runtime/i1;->setValue(Ljava/lang/Object;)V

    if-eqz p3, :cond_2

    iget-object p3, p0, Landroidx/compose/foundation/lazy/LazyListState;->d:Landroidx/compose/foundation/lazy/v;

    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/m;->p()I

    move-result v1

    invoke-virtual {p3, v1}, Landroidx/compose/foundation/lazy/v;->i(I)V

    goto :goto_0

    :cond_2
    iget-object p3, p0, Landroidx/compose/foundation/lazy/LazyListState;->d:Landroidx/compose/foundation/lazy/v;

    invoke-virtual {p3, p1}, Landroidx/compose/foundation/lazy/v;->h(Landroidx/compose/foundation/lazy/m;)V

    iget-boolean p3, p0, Landroidx/compose/foundation/lazy/LazyListState;->k:Z

    if-eqz p3, :cond_3

    iget-object p3, p0, Landroidx/compose/foundation/lazy/LazyListState;->a:Landroidx/compose/foundation/lazy/r;

    iget-object v1, p0, Landroidx/compose/foundation/lazy/LazyListState;->r:Landroidx/compose/foundation/lazy/p;

    invoke-interface {p3, v1, p1}, Landroidx/compose/foundation/lazy/r;->d(Landroidx/compose/foundation/lazy/p;Landroidx/compose/foundation/lazy/l;)V

    :cond_3
    :goto_0
    if-eqz p2, :cond_4

    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/m;->q()F

    move-result p2

    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/m;->n()Lo0/e;

    move-result-object p3

    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/m;->m()Lkotlinx/coroutines/n0;

    move-result-object p1

    invoke-direct {p0, p2, p3, p1}, Landroidx/compose/foundation/lazy/LazyListState;->L(FLo0/e;Lkotlinx/coroutines/n0;)V

    :cond_4
    iget p1, p0, Landroidx/compose/foundation/lazy/LazyListState;->j:I

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/compose/foundation/lazy/LazyListState;->j:I

    :goto_1
    return-void
.end method

.method public final m()Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->n:Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    return-object v0
.end method

.method public final n()Landroidx/compose/foundation/lazy/layout/e;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->p:Landroidx/compose/foundation/lazy/layout/e;

    return-object v0
.end method

.method public final o()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->d:Landroidx/compose/foundation/lazy/v;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/v;->a()I

    move-result v0

    return v0
.end method

.method public final p()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->d:Landroidx/compose/foundation/lazy/v;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/v;->c()I

    move-result v0

    return v0
.end method

.method public final q()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->b:Z

    return v0
.end method

.method public final r()Lp/i;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->g:Lp/i;

    return-object v0
.end method

.method public final s()Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->o:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    return-object v0
.end method

.method public final t()Landroidx/compose/foundation/lazy/l;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->f:Landroidx/compose/runtime/i1;

    invoke-interface {v0}, Landroidx/compose/runtime/i1;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/l;

    return-object v0
.end method

.method public final u()Landroidx/compose/runtime/i1;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->t:Landroidx/compose/runtime/i1;

    return-object v0
.end method

.method public final v()Lkotlin/ranges/IntRange;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->d:Landroidx/compose/foundation/lazy/v;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/v;->b()Landroidx/compose/foundation/lazy/layout/u;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/ranges/IntRange;

    return-object v0
.end method

.method public final w()Landroidx/compose/foundation/lazy/layout/w;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->s:Landroidx/compose/foundation/lazy/layout/w;

    return-object v0
.end method

.method public final x()Landroidx/compose/runtime/i1;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->w:Landroidx/compose/runtime/i1;

    return-object v0
.end method

.method public final y()Landroidx/compose/foundation/lazy/m;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->c:Landroidx/compose/foundation/lazy/m;

    return-object v0
.end method

.method public final z()Landroidx/compose/foundation/lazy/layout/x;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->q:Landroidx/compose/foundation/lazy/layout/x;

    return-object v0
.end method
