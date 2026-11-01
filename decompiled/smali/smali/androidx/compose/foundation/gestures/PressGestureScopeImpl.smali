.class public final Landroidx/compose/foundation/gestures/PressGestureScopeImpl;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/foundation/gestures/i;
.implements Lo0/e;


# instance fields
.field private final synthetic a:Lo0/e;

.field private b:Z

.field private c:Z

.field private final d:Lkotlinx/coroutines/sync/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lo0/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;->a:Lo0/e;

    const/4 p1, 0x0

    invoke-static {p1}, Lkotlinx/coroutines/sync/g;->a(Z)Lkotlinx/coroutines/sync/a;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;->d:Lkotlinx/coroutines/sync/a;

    return-void
.end method


# virtual methods
.method public C0()F
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;->a:Lo0/e;

    invoke-interface {v0}, Lo0/n;->C0()F

    move-result v0

    return v0
.end method

.method public E0(F)F
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;->a:Lo0/e;

    invoke-interface {v0, p1}, Lo0/e;->E0(F)F

    move-result p1

    return p1
.end method

.method public H(F)J
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;->a:Lo0/e;

    invoke-interface {v0, p1}, Lo0/n;->H(F)J

    move-result-wide v0

    return-wide v0
.end method

.method public J(J)F
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;->a:Lo0/e;

    invoke-interface {v0, p1, p2}, Lo0/n;->J(J)F

    move-result p1

    return p1
.end method

.method public Q(F)J
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;->a:Lo0/e;

    invoke-interface {v0, p1}, Lo0/e;->Q(F)J

    move-result-wide v0

    return-wide v0
.end method

.method public Q0(J)J
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;->a:Lo0/e;

    invoke-interface {v0, p1, p2}, Lo0/e;->Q0(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public c0(F)I
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;->a:Lo0/e;

    invoke-interface {v0, p1}, Lo0/e;->c0(F)I

    move-result p1

    return p1
.end method

.method public f0(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Landroidx/compose/foundation/gestures/PressGestureScopeImpl$tryAwaitRelease$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl$tryAwaitRelease$1;

    iget v1, v0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl$tryAwaitRelease$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl$tryAwaitRelease$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl$tryAwaitRelease$1;

    invoke-direct {v0, p0, p1}, Landroidx/compose/foundation/gestures/PressGestureScopeImpl$tryAwaitRelease$1;-><init>(Landroidx/compose/foundation/gestures/PressGestureScopeImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl$tryAwaitRelease$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl$tryAwaitRelease$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object v0, v0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl$tryAwaitRelease$1;->L$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-boolean p1, p0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;->b:Z

    if-nez p1, :cond_4

    iget-boolean p1, p0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;->c:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;->d:Lkotlinx/coroutines/sync/a;

    iput-object p0, v0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl$tryAwaitRelease$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl$tryAwaitRelease$1;->label:I

    invoke-static {p1, v3, v0, v4, v3}, Lkotlinx/coroutines/sync/a$a;->a(Lkotlinx/coroutines/sync/a;Ljava/lang/Object;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    :goto_1
    iget-object p1, v0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;->d:Lkotlinx/coroutines/sync/a;

    invoke-static {p1, v3, v4, v3}, Lkotlinx/coroutines/sync/a$a;->c(Lkotlinx/coroutines/sync/a;Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_2

    :cond_4
    move-object v0, p0

    :goto_2
    iget-boolean p1, v0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;->b:Z

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public getDensity()F
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;->a:Lo0/e;

    invoke-interface {v0}, Lo0/e;->getDensity()F

    move-result v0

    return v0
.end method

.method public h0(J)F
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;->a:Lo0/e;

    invoke-interface {v0, p1, p2}, Lo0/e;->h0(J)F

    move-result p1

    return p1
.end method

.method public final n()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;->c:Z

    iget-object v1, p0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;->d:Lkotlinx/coroutines/sync/a;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2}, Lkotlinx/coroutines/sync/a$a;->c(Lkotlinx/coroutines/sync/a;Ljava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public final v()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;->b:Z

    iget-object v1, p0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;->d:Lkotlinx/coroutines/sync/a;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2}, Lkotlinx/coroutines/sync/a$a;->c(Lkotlinx/coroutines/sync/a;Ljava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public x0(I)F
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;->a:Lo0/e;

    invoke-interface {v0, p1}, Lo0/e;->x0(I)F

    move-result p1

    return p1
.end method

.method public y0(F)F
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;->a:Lo0/e;

    invoke-interface {v0, p1}, Lo0/e;->y0(F)F

    move-result p1

    return p1
.end method

.method public final z(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Landroidx/compose/foundation/gestures/PressGestureScopeImpl$reset$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl$reset$1;

    iget v1, v0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl$reset$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl$reset$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl$reset$1;

    invoke-direct {v0, p0, p1}, Landroidx/compose/foundation/gestures/PressGestureScopeImpl$reset$1;-><init>(Landroidx/compose/foundation/gestures/PressGestureScopeImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl$reset$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl$reset$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl$reset$1;->L$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;->d:Lkotlinx/coroutines/sync/a;

    iput-object p0, v0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl$reset$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl$reset$1;->label:I

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v3, v2}, Lkotlinx/coroutines/sync/a$a;->a(Lkotlinx/coroutines/sync/a;Ljava/lang/Object;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    :goto_1
    const/4 p1, 0x0

    iput-boolean p1, v0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;->b:Z

    iput-boolean p1, v0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;->c:Z

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
