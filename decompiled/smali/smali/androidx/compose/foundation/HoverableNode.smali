.class final Landroidx/compose/foundation/HoverableNode;
.super Landroidx/compose/ui/f$c;

# interfaces
.implements Landroidx/compose/ui/node/e1;


# instance fields
.field private n:Lp/i;

.field private o:Lp/d;


# direct methods
.method public constructor <init>(Lp/i;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/f$c;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/HoverableNode;->n:Lp/i;

    return-void
.end method

.method public static final synthetic D1(Landroidx/compose/foundation/HoverableNode;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Landroidx/compose/foundation/HoverableNode;->F1(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic E1(Landroidx/compose/foundation/HoverableNode;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Landroidx/compose/foundation/HoverableNode;->G1(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final F1(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Landroidx/compose/foundation/HoverableNode$emitEnter$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/HoverableNode$emitEnter$1;

    iget v1, v0, Landroidx/compose/foundation/HoverableNode$emitEnter$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/compose/foundation/HoverableNode$emitEnter$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/HoverableNode$emitEnter$1;

    invoke-direct {v0, p0, p1}, Landroidx/compose/foundation/HoverableNode$emitEnter$1;-><init>(Landroidx/compose/foundation/HoverableNode;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Landroidx/compose/foundation/HoverableNode$emitEnter$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Landroidx/compose/foundation/HoverableNode$emitEnter$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v1, v0, Landroidx/compose/foundation/HoverableNode$emitEnter$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lp/d;

    iget-object v0, v0, Landroidx/compose/foundation/HoverableNode$emitEnter$1;->L$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/foundation/HoverableNode;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/compose/foundation/HoverableNode;->o:Lp/d;

    if-nez p1, :cond_4

    new-instance p1, Lp/d;

    invoke-direct {p1}, Lp/d;-><init>()V

    iget-object v2, p0, Landroidx/compose/foundation/HoverableNode;->n:Lp/i;

    iput-object p0, v0, Landroidx/compose/foundation/HoverableNode$emitEnter$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Landroidx/compose/foundation/HoverableNode$emitEnter$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Landroidx/compose/foundation/HoverableNode$emitEnter$1;->label:I

    invoke-interface {v2, p1, v0}, Lp/i;->c(Lp/f;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    move-object v1, p1

    :goto_1
    iput-object v1, v0, Landroidx/compose/foundation/HoverableNode;->o:Lp/d;

    :cond_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method private final G1(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Landroidx/compose/foundation/HoverableNode$emitExit$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/HoverableNode$emitExit$1;

    iget v1, v0, Landroidx/compose/foundation/HoverableNode$emitExit$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/compose/foundation/HoverableNode$emitExit$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/HoverableNode$emitExit$1;

    invoke-direct {v0, p0, p1}, Landroidx/compose/foundation/HoverableNode$emitExit$1;-><init>(Landroidx/compose/foundation/HoverableNode;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Landroidx/compose/foundation/HoverableNode$emitExit$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Landroidx/compose/foundation/HoverableNode$emitExit$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Landroidx/compose/foundation/HoverableNode$emitExit$1;->L$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/foundation/HoverableNode;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/compose/foundation/HoverableNode;->o:Lp/d;

    if-eqz p1, :cond_4

    new-instance v2, Lp/e;

    invoke-direct {v2, p1}, Lp/e;-><init>(Lp/d;)V

    iget-object p1, p0, Landroidx/compose/foundation/HoverableNode;->n:Lp/i;

    iput-object p0, v0, Landroidx/compose/foundation/HoverableNode$emitExit$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Landroidx/compose/foundation/HoverableNode$emitExit$1;->label:I

    invoke-interface {p1, v2, v0}, Lp/i;->c(Lp/f;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    :goto_1
    const/4 p1, 0x0

    iput-object p1, v0, Landroidx/compose/foundation/HoverableNode;->o:Lp/d;

    :cond_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method private final H1()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/HoverableNode;->o:Lp/d;

    if-eqz v0, :cond_0

    new-instance v1, Lp/e;

    invoke-direct {v1, v0}, Lp/e;-><init>(Lp/d;)V

    iget-object v0, p0, Landroidx/compose/foundation/HoverableNode;->n:Lp/i;

    invoke-interface {v0, v1}, Lp/i;->a(Lp/f;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/foundation/HoverableNode;->o:Lp/d;

    :cond_0
    return-void
.end method


# virtual methods
.method public final I1(Lp/i;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/HoverableNode;->n:Lp/i;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroidx/compose/foundation/HoverableNode;->H1()V

    iput-object p1, p0, Landroidx/compose/foundation/HoverableNode;->n:Lp/i;

    :cond_0
    return-void
.end method

.method public M(Landroidx/compose/ui/input/pointer/o;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V
    .locals 6

    sget-object p3, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    if-ne p2, p3, :cond_1

    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/o;->e()I

    move-result p1

    sget-object p2, Landroidx/compose/ui/input/pointer/q;->a:Landroidx/compose/ui/input/pointer/q$a;

    invoke-virtual {p2}, Landroidx/compose/ui/input/pointer/q$a;->a()I

    move-result p3

    invoke-static {p1, p3}, Landroidx/compose/ui/input/pointer/q;->i(II)Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->d1()Lkotlinx/coroutines/n0;

    move-result-object v0

    new-instance v3, Landroidx/compose/foundation/HoverableNode$onPointerEvent$1;

    invoke-direct {v3, p0, p4}, Landroidx/compose/foundation/HoverableNode$onPointerEvent$1;-><init>(Landroidx/compose/foundation/HoverableNode;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroidx/compose/ui/input/pointer/q$a;->b()I

    move-result p2

    invoke-static {p1, p2}, Landroidx/compose/ui/input/pointer/q;->i(II)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->d1()Lkotlinx/coroutines/n0;

    move-result-object v0

    new-instance v3, Landroidx/compose/foundation/HoverableNode$onPointerEvent$2;

    invoke-direct {v3, p0, p4}, Landroidx/compose/foundation/HoverableNode$onPointerEvent$2;-><init>(Landroidx/compose/foundation/HoverableNode;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic P0()Z
    .locals 1

    invoke-static {p0}, Landroidx/compose/ui/node/d1;->d(Landroidx/compose/ui/node/e1;)Z

    move-result v0

    return v0
.end method

.method public synthetic R()Z
    .locals 1

    invoke-static {p0}, Landroidx/compose/ui/node/d1;->a(Landroidx/compose/ui/node/e1;)Z

    move-result v0

    return v0
.end method

.method public synthetic T0()V
    .locals 0

    invoke-static {p0}, Landroidx/compose/ui/node/d1;->c(Landroidx/compose/ui/node/e1;)V

    return-void
.end method

.method public o1()V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/foundation/HoverableNode;->H1()V

    return-void
.end method

.method public t0()V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/foundation/HoverableNode;->H1()V

    return-void
.end method

.method public synthetic z0()V
    .locals 0

    invoke-static {p0}, Landroidx/compose/ui/node/d1;->b(Landroidx/compose/ui/node/e1;)V

    return-void
.end method
