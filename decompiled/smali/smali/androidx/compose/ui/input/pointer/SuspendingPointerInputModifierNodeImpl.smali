.class public final Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;
.super Landroidx/compose/ui/f$c;

# interfaces
.implements Landroidx/compose/ui/input/pointer/n0;
.implements Landroidx/compose/ui/input/pointer/e0;
.implements Lo0/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;,
        Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$a;
    }
.end annotation


# instance fields
.field private n:Ljava/lang/Object;

.field private o:Ljava/lang/Object;

.field private p:[Ljava/lang/Object;

.field private q:Lkotlin/jvm/functions/Function2;

.field private r:Lkotlinx/coroutines/t1;

.field private s:Landroidx/compose/ui/input/pointer/o;

.field private final t:Landroidx/compose/runtime/collection/b;

.field private final u:Landroidx/compose/runtime/collection/b;

.field private v:Landroidx/compose/ui/input/pointer/o;

.field private w:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/f$c;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->n:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->o:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->p:[Ljava/lang/Object;

    iput-object p4, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->q:Lkotlin/jvm/functions/Function2;

    invoke-static {}, Landroidx/compose/ui/input/pointer/l0;->b()Landroidx/compose/ui/input/pointer/o;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->s:Landroidx/compose/ui/input/pointer/o;

    new-instance p1, Landroidx/compose/runtime/collection/b;

    const/16 p2, 0x10

    new-array p3, p2, [Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    const/4 p4, 0x0

    invoke-direct {p1, p3, p4}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    iput-object p1, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->t:Landroidx/compose/runtime/collection/b;

    new-instance p1, Landroidx/compose/runtime/collection/b;

    new-array p2, p2, [Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    invoke-direct {p1, p2, p4}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    iput-object p1, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->u:Landroidx/compose/runtime/collection/b;

    sget-object p1, Lo0/t;->b:Lo0/t$a;

    invoke-virtual {p1}, Lo0/t$a;->a()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->w:J

    return-void
.end method

.method public static final synthetic D1(Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;)J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->w:J

    return-wide v0
.end method

.method public static final synthetic E1(Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;)Landroidx/compose/ui/input/pointer/o;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->s:Landroidx/compose/ui/input/pointer/o;

    return-object p0
.end method

.method public static final synthetic F1(Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;)Landroidx/compose/runtime/collection/b;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->t:Landroidx/compose/runtime/collection/b;

    return-object p0
.end method

.method private final G1(Landroidx/compose/ui/input/pointer/o;Landroidx/compose/ui/input/pointer/PointerEventPass;)V
    .locals 4

    iget-object v0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->t:Landroidx/compose/runtime/collection/b;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->u:Landroidx/compose/runtime/collection/b;

    iget-object v2, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->t:Landroidx/compose/runtime/collection/b;

    invoke-virtual {v1}, Landroidx/compose/runtime/collection/b;->n()I

    move-result v3

    invoke-virtual {v1, v3, v2}, Landroidx/compose/runtime/collection/b;->c(ILandroidx/compose/runtime/collection/b;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    :try_start_1
    sget-object v0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->u:Landroidx/compose/runtime/collection/b;

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->n()I

    move-result v2

    if-lez v2, :cond_4

    sub-int/2addr v2, v1

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->m()[Ljava/lang/Object;

    move-result-object v0

    :cond_1
    aget-object v1, v0, v2

    check-cast v1, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    invoke-virtual {v1, p1, p2}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;->C(Landroidx/compose/ui/input/pointer/o;Landroidx/compose/ui/input/pointer/PointerEventPass;)V

    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->u:Landroidx/compose/runtime/collection/b;

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->n()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->m()[Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    :cond_3
    aget-object v3, v0, v2

    check-cast v3, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    invoke-virtual {v3, p1, p2}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;->C(Landroidx/compose/ui/input/pointer/o;Landroidx/compose/ui/input/pointer/PointerEventPass;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v2, 0x1

    if-lt v2, v1, :cond_3

    :cond_4
    :goto_0
    iget-object p1, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->u:Landroidx/compose/runtime/collection/b;

    invoke-virtual {p1}, Landroidx/compose/runtime/collection/b;->h()V

    return-void

    :goto_1
    iget-object p2, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->u:Landroidx/compose/runtime/collection/b;

    invoke-virtual {p2}, Landroidx/compose/runtime/collection/b;->h()V

    throw p1

    :catchall_1
    move-exception p1

    monitor-exit v0

    throw p1
.end method


# virtual methods
.method public C0()F
    .locals 1

    invoke-static {p0}, Landroidx/compose/ui/node/g;->m(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->H()Lo0/e;

    move-result-object v0

    invoke-interface {v0}, Lo0/n;->C0()F

    move-result v0

    return v0
.end method

.method public synthetic E0(F)F
    .locals 0

    invoke-static {p0, p1}, Lo0/d;->e(Lo0/e;F)F

    move-result p1

    return p1
.end method

.method public synthetic H(F)J
    .locals 2

    invoke-static {p0, p1}, Lo0/m;->b(Lo0/n;F)J

    move-result-wide v0

    return-wide v0
.end method

.method public H1()Lkotlin/jvm/functions/Function2;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->q:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public final I1(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->n:Ljava/lang/Object;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-object p1, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->n:Ljava/lang/Object;

    iget-object p1, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->o:Ljava/lang/Object;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    move v0, v1

    :cond_0
    iput-object p2, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->o:Ljava/lang/Object;

    iget-object p1, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->p:[Ljava/lang/Object;

    if-eqz p1, :cond_1

    if-nez p3, :cond_1

    move v0, v1

    :cond_1
    if-nez p1, :cond_2

    if-eqz p3, :cond_2

    move v0, v1

    :cond_2
    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    invoke-static {p3, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v1, v0

    :goto_0
    iput-object p3, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->p:[Ljava/lang/Object;

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->j0()V

    :cond_4
    iput-object p4, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->q:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public synthetic J(J)F
    .locals 0

    invoke-static {p0, p1, p2}, Lo0/m;->a(Lo0/n;J)F

    move-result p1

    return p1
.end method

.method public K(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->c(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    new-instance v1, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    invoke-direct {v1, p0, v0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;-><init>(Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {p0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->F1(Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;)Landroidx/compose/runtime/collection/b;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->F1(Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;)Landroidx/compose/runtime/collection/b;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    invoke-static {p1, v1, v1}, Lkotlin/coroutines/ContinuationKt;->a(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    new-instance p1, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$awaitPointerEventScope$2$2;

    invoke-direct {p1, v1}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$awaitPointerEventScope$2$2;-><init>(Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;)V

    invoke-interface {v0, p1}, Lkotlinx/coroutines/n;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->c(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v2

    throw p1
.end method

.method public M(Landroidx/compose/ui/input/pointer/o;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V
    .locals 6

    iput-wide p3, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->w:J

    sget-object p3, Landroidx/compose/ui/input/pointer/PointerEventPass;->Initial:Landroidx/compose/ui/input/pointer/PointerEventPass;

    if-ne p2, p3, :cond_0

    iput-object p1, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->s:Landroidx/compose/ui/input/pointer/o;

    :cond_0
    iget-object p3, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->r:Lkotlinx/coroutines/t1;

    const/4 p4, 0x0

    if-nez p3, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->d1()Lkotlinx/coroutines/n0;

    move-result-object v0

    sget-object v2, Lkotlinx/coroutines/CoroutineStart;->UNDISPATCHED:Lkotlinx/coroutines/CoroutineStart;

    new-instance v3, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$onPointerEvent$1;

    invoke-direct {v3, p0, p4}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$onPointerEvent$1;-><init>(Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    move-result-object p3

    iput-object p3, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->r:Lkotlinx/coroutines/t1;

    :cond_1
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->G1(Landroidx/compose/ui/input/pointer/o;Landroidx/compose/ui/input/pointer/PointerEventPass;)V

    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/o;->b()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_3

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/input/pointer/w;

    invoke-static {v2}, Landroidx/compose/ui/input/pointer/p;->d(Landroidx/compose/ui/input/pointer/w;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    move-object p1, p4

    :goto_2
    iput-object p1, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->v:Landroidx/compose/ui/input/pointer/o;

    return-void
.end method

.method public synthetic P0()Z
    .locals 1

    invoke-static {p0}, Landroidx/compose/ui/node/d1;->d(Landroidx/compose/ui/node/e1;)Z

    move-result v0

    return v0
.end method

.method public synthetic Q(F)J
    .locals 2

    invoke-static {p0, p1}, Lo0/d;->g(Lo0/e;F)J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic Q0(J)J
    .locals 0

    invoke-static {p0, p1, p2}, Lo0/d;->f(Lo0/e;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public synthetic R()Z
    .locals 1

    invoke-static {p0}, Landroidx/compose/ui/node/d1;->a(Landroidx/compose/ui/node/e1;)Z

    move-result v0

    return v0
.end method

.method public T0()V
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->j0()V

    return-void
.end method

.method public X()J
    .locals 7

    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->getViewConfiguration()Landroidx/compose/ui/platform/o2;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/platform/o2;->d()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->Q0(J)J

    move-result-wide v0

    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->k()J

    move-result-wide v2

    invoke-static {v0, v1}, Ly/m;->i(J)F

    move-result v4

    invoke-static {v2, v3}, Lo0/t;->g(J)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    invoke-static {v0, v1}, Ly/m;->g(J)F

    move-result v0

    invoke-static {v2, v3}, Lo0/t;->f(J)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    div-float/2addr v0, v6

    invoke-static {v4, v0}, Ly/n;->a(FF)J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic c0(F)I
    .locals 0

    invoke-static {p0, p1}, Lo0/d;->a(Lo0/e;F)I

    move-result p1

    return p1
.end method

.method public getDensity()F
    .locals 1

    invoke-static {p0}, Landroidx/compose/ui/node/g;->m(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->H()Lo0/e;

    move-result-object v0

    invoke-interface {v0}, Lo0/e;->getDensity()F

    move-result v0

    return v0
.end method

.method public getViewConfiguration()Landroidx/compose/ui/platform/o2;
    .locals 1

    invoke-static {p0}, Landroidx/compose/ui/node/g;->m(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->l0()Landroidx/compose/ui/platform/o2;

    move-result-object v0

    return-object v0
.end method

.method public synthetic h0(J)F
    .locals 0

    invoke-static {p0, p1, p2}, Lo0/d;->d(Lo0/e;J)F

    move-result p1

    return p1
.end method

.method public j0()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->r:Lkotlinx/coroutines/t1;

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/compose/ui/input/pointer/PointerInputResetException;

    invoke-direct {v1}, Landroidx/compose/ui/input/pointer/PointerInputResetException;-><init>()V

    invoke-interface {v0, v1}, Lkotlinx/coroutines/t1;->cancel(Ljava/util/concurrent/CancellationException;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->r:Lkotlinx/coroutines/t1;

    :cond_0
    return-void
.end method

.method public k()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->w:J

    return-wide v0
.end method

.method public o1()V
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->j0()V

    invoke-super {p0}, Landroidx/compose/ui/f$c;->o1()V

    return-void
.end method

.method public t0()V
    .locals 26

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->v:Landroidx/compose/ui/input/pointer/o;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/o;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_3

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/input/pointer/w;

    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/w;->i()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/o;->b()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    :goto_1
    if-ge v4, v3, :cond_1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/input/pointer/w;

    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/w;->f()J

    move-result-wide v7

    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/w;->h()J

    move-result-wide v11

    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/w;->o()J

    move-result-wide v9

    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/w;->j()F

    move-result v14

    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/w;->h()J

    move-result-wide v17

    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/w;->o()J

    move-result-wide v15

    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/w;->i()Z

    move-result v19

    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/w;->i()Z

    move-result v20

    new-instance v5, Landroidx/compose/ui/input/pointer/w;

    move-object v6, v5

    const/16 v24, 0x600

    const/16 v25, 0x0

    const/4 v13, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    invoke-direct/range {v6 .. v25}, Landroidx/compose/ui/input/pointer/w;-><init>(JJJZFJJZZIJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    new-instance v1, Landroidx/compose/ui/input/pointer/o;

    invoke-direct {v1, v2}, Landroidx/compose/ui/input/pointer/o;-><init>(Ljava/util/List;)V

    iput-object v1, v0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->s:Landroidx/compose/ui/input/pointer/o;

    sget-object v2, Landroidx/compose/ui/input/pointer/PointerEventPass;->Initial:Landroidx/compose/ui/input/pointer/PointerEventPass;

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->G1(Landroidx/compose/ui/input/pointer/o;Landroidx/compose/ui/input/pointer/PointerEventPass;)V

    sget-object v2, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->G1(Landroidx/compose/ui/input/pointer/o;Landroidx/compose/ui/input/pointer/PointerEventPass;)V

    sget-object v2, Landroidx/compose/ui/input/pointer/PointerEventPass;->Final:Landroidx/compose/ui/input/pointer/PointerEventPass;

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->G1(Landroidx/compose/ui/input/pointer/o;Landroidx/compose/ui/input/pointer/PointerEventPass;)V

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->v:Landroidx/compose/ui/input/pointer/o;

    return-void

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public synthetic x0(I)F
    .locals 0

    invoke-static {p0, p1}, Lo0/d;->c(Lo0/e;I)F

    move-result p1

    return p1
.end method

.method public synthetic y0(F)F
    .locals 0

    invoke-static {p0, p1}, Lo0/d;->b(Lo0/e;F)F

    move-result p1

    return p1
.end method

.method public z0()V
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->j0()V

    return-void
.end method
