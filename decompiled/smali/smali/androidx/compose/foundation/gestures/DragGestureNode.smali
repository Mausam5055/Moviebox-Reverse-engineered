.class public abstract Landroidx/compose/foundation/gestures/DragGestureNode;
.super Landroidx/compose/ui/node/i;

# interfaces
.implements Landroidx/compose/ui/node/e1;
.implements Landroidx/compose/ui/node/d;


# instance fields
.field private p:Landroidx/compose/foundation/gestures/Orientation;

.field private q:Lkotlin/jvm/functions/Function1;

.field private r:Z

.field private s:Lp/i;

.field private final t:Lkotlin/jvm/functions/Function1;

.field private u:Lkotlinx/coroutines/channels/d;

.field private v:Lp/a$b;

.field private w:Z

.field private x:Landroidx/compose/ui/input/pointer/n0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;ZLp/i;Landroidx/compose/foundation/gestures/Orientation;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/node/i;-><init>()V

    iput-object p4, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->p:Landroidx/compose/foundation/gestures/Orientation;

    iput-object p1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->q:Lkotlin/jvm/functions/Function1;

    iput-boolean p2, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->r:Z

    iput-object p3, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->s:Lp/i;

    new-instance p1, Landroidx/compose/foundation/gestures/DragGestureNode$_canDrag$1;

    invoke-direct {p1, p0}, Landroidx/compose/foundation/gestures/DragGestureNode$_canDrag$1;-><init>(Landroidx/compose/foundation/gestures/DragGestureNode;)V

    iput-object p1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->t:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static final synthetic J1(Landroidx/compose/foundation/gestures/DragGestureNode;)Lkotlinx/coroutines/channels/d;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->u:Lkotlinx/coroutines/channels/d;

    return-object p0
.end method

.method public static final synthetic K1(Landroidx/compose/foundation/gestures/DragGestureNode;)Landroidx/compose/foundation/gestures/Orientation;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->p:Landroidx/compose/foundation/gestures/Orientation;

    return-object p0
.end method

.method public static final synthetic L1(Landroidx/compose/foundation/gestures/DragGestureNode;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->w:Z

    return p0
.end method

.method public static final synthetic M1(Landroidx/compose/foundation/gestures/DragGestureNode;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Landroidx/compose/foundation/gestures/DragGestureNode;->Y1(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic N1(Landroidx/compose/foundation/gestures/DragGestureNode;Landroidx/compose/foundation/gestures/e$c;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/gestures/DragGestureNode;->Z1(Landroidx/compose/foundation/gestures/e$c;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic O1(Landroidx/compose/foundation/gestures/DragGestureNode;Landroidx/compose/foundation/gestures/e$d;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/gestures/DragGestureNode;->a2(Landroidx/compose/foundation/gestures/e$d;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic P1(Landroidx/compose/foundation/gestures/DragGestureNode;Lkotlinx/coroutines/channels/d;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->u:Lkotlinx/coroutines/channels/d;

    return-void
.end method

.method public static final synthetic Q1(Landroidx/compose/foundation/gestures/DragGestureNode;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->c2()V

    return-void
.end method

.method private final V1()Landroidx/compose/ui/input/pointer/n0;
    .locals 2

    new-instance v0, Landroidx/compose/foundation/gestures/DragGestureNode$initializePointerInputNode$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/compose/foundation/gestures/DragGestureNode$initializePointerInputNode$1;-><init>(Landroidx/compose/foundation/gestures/DragGestureNode;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Landroidx/compose/ui/input/pointer/l0;->a(Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/input/pointer/n0;

    move-result-object v0

    return-object v0
.end method

.method private final Y1(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;

    iget v1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;

    invoke-direct {v0, p0, p1}, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;-><init>(Landroidx/compose/foundation/gestures/DragGestureNode;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;->L$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/foundation/gestures/DragGestureNode;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->v:Lp/a$b;

    if-eqz p1, :cond_4

    iget-object v2, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->s:Lp/i;

    if-eqz v2, :cond_3

    new-instance v4, Lp/a$a;

    invoke-direct {v4, p1}, Lp/a$a;-><init>(Lp/a$b;)V

    iput-object p0, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;->label:I

    invoke-interface {v2, v4, v0}, Lp/i;->c(Lp/f;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    :goto_1
    const/4 p1, 0x0

    iput-object p1, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->v:Lp/a$b;

    goto :goto_2

    :cond_4
    move-object v0, p0

    :goto_2
    sget-object p1, Lo0/z;->b:Lo0/z$a;

    invoke-virtual {p1}, Lo0/z$a;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/compose/foundation/gestures/DragGestureNode;->X1(J)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method private final Z1(Landroidx/compose/foundation/gestures/e$c;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;

    iget v1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;

    invoke-direct {v0, p0, p2}, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;-><init>(Landroidx/compose/foundation/gestures/DragGestureNode;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lp/a$b;

    iget-object v1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->L$1:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/foundation/gestures/e$c;

    iget-object v0, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->L$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/foundation/gestures/DragGestureNode;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->L$1:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/foundation/gestures/e$c;

    iget-object v2, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->L$0:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/foundation/gestures/DragGestureNode;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->v:Lp/a$b;

    if-eqz p2, :cond_4

    iget-object v2, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->s:Lp/i;

    if-eqz v2, :cond_4

    new-instance v5, Lp/a$a;

    invoke-direct {v5, p2}, Lp/a$a;-><init>(Lp/a$b;)V

    iput-object p0, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->label:I

    invoke-interface {v2, v5, v0}, Lp/i;->c(Lp/f;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    :goto_1
    new-instance p2, Lp/a$b;

    invoke-direct {p2}, Lp/a$b;-><init>()V

    iget-object v4, v2, Landroidx/compose/foundation/gestures/DragGestureNode;->s:Lp/i;

    if-eqz v4, :cond_6

    iput-object v2, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->label:I

    invoke-interface {v4, p2, v0}, Lp/i;->c(Lp/f;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_5

    return-object v1

    :cond_5
    move-object v1, p1

    move-object p1, p2

    move-object v0, v2

    :goto_2
    move-object p2, p1

    move-object v2, v0

    move-object p1, v1

    :cond_6
    iput-object p2, v2, Landroidx/compose/foundation/gestures/DragGestureNode;->v:Lp/a$b;

    invoke-virtual {p1}, Landroidx/compose/foundation/gestures/e$c;->a()J

    move-result-wide p1

    invoke-virtual {v2, p1, p2}, Landroidx/compose/foundation/gestures/DragGestureNode;->W1(J)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method private final a2(Landroidx/compose/foundation/gestures/e$d;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;

    iget v1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;

    invoke-direct {v0, p0, p2}, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;-><init>(Landroidx/compose/foundation/gestures/DragGestureNode;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;->L$1:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/foundation/gestures/e$d;

    iget-object v0, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;->L$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/foundation/gestures/DragGestureNode;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->v:Lp/a$b;

    if-eqz p2, :cond_4

    iget-object v2, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->s:Lp/i;

    if-eqz v2, :cond_3

    new-instance v4, Lp/a$c;

    invoke-direct {v4, p2}, Lp/a$c;-><init>(Lp/a$b;)V

    iput-object p0, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;->label:I

    invoke-interface {v2, v4, v0}, Lp/i;->c(Lp/f;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    :goto_1
    const/4 p2, 0x0

    iput-object p2, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->v:Lp/a$b;

    goto :goto_2

    :cond_4
    move-object v0, p0

    :goto_2
    invoke-virtual {p1}, Landroidx/compose/foundation/gestures/e$d;->a()J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Landroidx/compose/foundation/gestures/DragGestureNode;->X1(J)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method private final c2()V
    .locals 7

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->w:Z

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->d1()Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Landroidx/compose/foundation/gestures/DragGestureNode$startListeningForEvents$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Landroidx/compose/foundation/gestures/DragGestureNode$startListeningForEvents$1;-><init>(Landroidx/compose/foundation/gestures/DragGestureNode;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method


# virtual methods
.method public M(Landroidx/compose/ui/input/pointer/o;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->r:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->x:Landroidx/compose/ui/input/pointer/n0;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->V1()Landroidx/compose/ui/input/pointer/n0;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/i;->D1(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/f;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/input/pointer/n0;

    iput-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->x:Landroidx/compose/ui/input/pointer/n0;

    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->x:Landroidx/compose/ui/input/pointer/n0;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/compose/ui/node/e1;->M(Landroidx/compose/ui/input/pointer/o;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V

    :cond_1
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

.method public final R1()V
    .locals 3

    iget-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->v:Lp/a$b;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->s:Lp/i;

    if-eqz v1, :cond_0

    new-instance v2, Lp/a$a;

    invoke-direct {v2, v0}, Lp/a$a;-><init>(Lp/a$b;)V

    invoke-interface {v1, v2}, Lp/i;->a(Lp/f;)Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->v:Lp/a$b;

    :cond_1
    return-void
.end method

.method public abstract S1(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method

.method public synthetic T0()V
    .locals 0

    invoke-static {p0}, Landroidx/compose/ui/node/d1;->c(Landroidx/compose/ui/node/e1;)V

    return-void
.end method

.method protected final T1()Lkotlin/jvm/functions/Function1;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->q:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method protected final U1()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->r:Z

    return v0
.end method

.method public abstract W1(J)V
.end method

.method public abstract X1(J)V
.end method

.method public abstract b2()Z
.end method

.method public final d2(Lkotlin/jvm/functions/Function1;ZLp/i;Landroidx/compose/foundation/gestures/Orientation;Z)V
    .locals 1

    iput-object p1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->q:Lkotlin/jvm/functions/Function1;

    iget-boolean p1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->r:Z

    const/4 v0, 0x1

    if-eq p1, p2, :cond_2

    iput-boolean p2, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->r:Z

    if-nez p2, :cond_1

    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->R1()V

    iget-object p1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->x:Landroidx/compose/ui/input/pointer/n0;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/i;->G1(Landroidx/compose/ui/node/f;)V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->x:Landroidx/compose/ui/input/pointer/n0;

    :cond_1
    move p5, v0

    :cond_2
    iget-object p1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->s:Lp/i;

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->R1()V

    iput-object p3, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->s:Lp/i;

    :cond_3
    iget-object p1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->p:Landroidx/compose/foundation/gestures/Orientation;

    if-eq p1, p4, :cond_4

    iput-object p4, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->p:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_0

    :cond_4
    move v0, p5

    :goto_0
    if-eqz v0, :cond_5

    iget-object p1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->x:Landroidx/compose/ui/input/pointer/n0;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Landroidx/compose/ui/input/pointer/n0;->j0()V

    :cond_5
    return-void
.end method

.method public o1()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->w:Z

    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->R1()V

    return-void
.end method

.method public t0()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->x:Landroidx/compose/ui/input/pointer/n0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/compose/ui/node/e1;->t0()V

    :cond_0
    return-void
.end method

.method public synthetic z0()V
    .locals 0

    invoke-static {p0}, Landroidx/compose/ui/node/d1;->b(Landroidx/compose/ui/node/e1;)V

    return-void
.end method
