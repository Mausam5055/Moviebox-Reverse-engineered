.class public final Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;
.super Landroidx/compose/ui/f$c;

# interfaces
.implements Landroidx/compose/ui/node/m1;
.implements Landroidx/compose/ui/input/nestedscroll/b;


# instance fields
.field private n:Landroidx/compose/ui/input/nestedscroll/b;

.field private o:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

.field private final p:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/input/nestedscroll/b;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/f$c;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->n:Landroidx/compose/ui/input/nestedscroll/b;

    if-nez p2, :cond_0

    new-instance p2, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    invoke-direct {p2}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;-><init>()V

    :cond_0
    iput-object p2, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->o:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    const-string p1, "androidx.compose.ui.input.nestedscroll.NestedScrollNode"

    iput-object p1, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->p:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic D1(Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;)Lkotlinx/coroutines/n0;
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->E1()Lkotlinx/coroutines/n0;

    move-result-object p0

    return-object p0
.end method

.method private final E1()Lkotlinx/coroutines/n0;
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->G1()Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {v0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->E1()Lkotlinx/coroutines/n0;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->o:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    invoke-virtual {v0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;->h()Lkotlinx/coroutines/n0;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_1
    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "in order to access nested coroutine scope you need to attach dispatcher to the `Modifier.nestedScroll` first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final F1()Landroidx/compose/ui/input/nestedscroll/b;
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->k1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->G1()Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private final H1()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->o:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    invoke-virtual {v0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;->f()Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;

    move-result-object v0

    if-ne v0, p0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->o:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;->j(Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;)V

    :cond_0
    return-void
.end method

.method private final I1(Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;)V
    .locals 1

    invoke-direct {p0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->H1()V

    if-nez p1, :cond_0

    new-instance p1, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    invoke-direct {p1}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->o:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->o:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->o:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->k1()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->J1()V

    :cond_2
    return-void
.end method

.method private final J1()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->o:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    invoke-virtual {v0, p0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;->j(Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;)V

    iget-object v0, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->o:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    new-instance v1, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$updateDispatcherFields$1;

    invoke-direct {v1, p0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$updateDispatcherFields$1;-><init>(Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;)V

    invoke-virtual {v0, v1}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;->i(Lkotlin/jvm/functions/Function0;)V

    iget-object v0, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->o:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->d1()Lkotlinx/coroutines/n0;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;->k(Lkotlinx/coroutines/n0;)V

    return-void
.end method


# virtual methods
.method public B0(JI)J
    .locals 3

    invoke-direct {p0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->F1()Landroidx/compose/ui/input/nestedscroll/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Landroidx/compose/ui/input/nestedscroll/b;->B0(JI)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    sget-object v0, Ly/g;->b:Ly/g$a;

    invoke-virtual {v0}, Ly/g$a;->c()J

    move-result-wide v0

    :goto_0
    iget-object v2, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->n:Landroidx/compose/ui/input/nestedscroll/b;

    invoke-static {p1, p2, v0, v1}, Ly/g;->q(JJ)J

    move-result-wide p1

    invoke-interface {v2, p1, p2, p3}, Landroidx/compose/ui/input/nestedscroll/b;->B0(JI)J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ly/g;->r(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public D()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->p:Ljava/lang/Object;

    return-object v0
.end method

.method public G(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p5

    instance-of v2, v1, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPostFling$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPostFling$1;

    iget v3, v2, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPostFling$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPostFling$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPostFling$1;

    invoke-direct {v2, p0, v1}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPostFling$1;-><init>(Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPostFling$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v9

    iget v3, v2, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPostFling$1;->label:I

    const/4 v10, 0x2

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    if-eq v3, v4, :cond_2

    if-ne v3, v10, :cond_1

    iget-wide v2, v2, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPostFling$1;->J$0:J

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-wide v3, v2, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPostFling$1;->J$1:J

    iget-wide v5, v2, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPostFling$1;->J$0:J

    iget-object v7, v2, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPostFling$1;->L$0:Ljava/lang/Object;

    check-cast v7, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-wide v13, v3

    move-wide v11, v5

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v3, v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->n:Landroidx/compose/ui/input/nestedscroll/b;

    iput-object v0, v2, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPostFling$1;->L$0:Ljava/lang/Object;

    move-wide/from16 v11, p1

    iput-wide v11, v2, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPostFling$1;->J$0:J

    move-wide/from16 v13, p3

    iput-wide v13, v2, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPostFling$1;->J$1:J

    iput v4, v2, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPostFling$1;->label:I

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-object v8, v2

    invoke-interface/range {v3 .. v8}, Landroidx/compose/ui/input/nestedscroll/b;->G(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v9, :cond_4

    return-object v9

    :cond_4
    move-object v7, v0

    :goto_1
    check-cast v1, Lo0/z;

    invoke-virtual {v1}, Lo0/z;->n()J

    move-result-wide v4

    invoke-direct {v7}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->F1()Landroidx/compose/ui/input/nestedscroll/b;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-static {v11, v12, v4, v5}, Lo0/z;->l(JJ)J

    move-result-wide v6

    invoke-static {v13, v14, v4, v5}, Lo0/z;->k(JJ)J

    move-result-wide v11

    const/4 v1, 0x0

    iput-object v1, v2, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPostFling$1;->L$0:Ljava/lang/Object;

    iput-wide v4, v2, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPostFling$1;->J$0:J

    iput v10, v2, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPostFling$1;->label:I

    move-wide v13, v4

    move-wide v4, v6

    move-wide v6, v11

    move-object v8, v2

    invoke-interface/range {v3 .. v8}, Landroidx/compose/ui/input/nestedscroll/b;->G(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v9, :cond_5

    return-object v9

    :cond_5
    move-wide v2, v13

    :goto_2
    check-cast v1, Lo0/z;

    invoke-virtual {v1}, Lo0/z;->n()J

    move-result-wide v4

    move-wide v13, v2

    goto :goto_3

    :cond_6
    move-wide v13, v4

    sget-object v1, Lo0/z;->b:Lo0/z$a;

    invoke-virtual {v1}, Lo0/z$a;->a()J

    move-result-wide v4

    :goto_3
    invoke-static {v13, v14, v4, v5}, Lo0/z;->l(JJ)J

    move-result-wide v1

    invoke-static {v1, v2}, Lo0/z;->b(J)Lo0/z;

    move-result-object v1

    return-object v1
.end method

.method public final G1()Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->k1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroidx/compose/ui/node/n1;->b(Landroidx/compose/ui/node/m1;)Landroidx/compose/ui/node/m1;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public I0(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p3, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPreFling$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPreFling$1;

    iget v1, v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPreFling$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPreFling$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPreFling$1;

    invoke-direct {v0, p0, p3}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPreFling$1;-><init>(Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPreFling$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPreFling$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-wide p1, v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPreFling$1;->J$0:J

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-wide p1, v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPreFling$1;->J$0:J

    iget-object v2, v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPreFling$1;->L$0:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-direct {p0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->F1()Landroidx/compose/ui/input/nestedscroll/b;

    move-result-object p3

    if-eqz p3, :cond_5

    iput-object p0, v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPreFling$1;->L$0:Ljava/lang/Object;

    iput-wide p1, v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPreFling$1;->J$0:J

    iput v4, v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPreFling$1;->label:I

    invoke-interface {p3, p1, p2, v0}, Landroidx/compose/ui/input/nestedscroll/b;->I0(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    :goto_1
    check-cast p3, Lo0/z;

    invoke-virtual {p3}, Lo0/z;->n()J

    move-result-wide v4

    :goto_2
    move-wide v6, p1

    move-wide p1, v4

    move-wide v4, v6

    goto :goto_3

    :cond_5
    sget-object p3, Lo0/z;->b:Lo0/z$a;

    invoke-virtual {p3}, Lo0/z$a;->a()J

    move-result-wide v4

    move-object v2, p0

    goto :goto_2

    :goto_3
    iget-object p3, v2, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->n:Landroidx/compose/ui/input/nestedscroll/b;

    invoke-static {v4, v5, p1, p2}, Lo0/z;->k(JJ)J

    move-result-wide v4

    const/4 v2, 0x0

    iput-object v2, v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPreFling$1;->L$0:Ljava/lang/Object;

    iput-wide p1, v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPreFling$1;->J$0:J

    iput v3, v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPreFling$1;->label:I

    invoke-interface {p3, v4, v5, v0}, Landroidx/compose/ui/input/nestedscroll/b;->I0(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_6

    return-object v1

    :cond_6
    :goto_4
    check-cast p3, Lo0/z;

    invoke-virtual {p3}, Lo0/z;->n()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lo0/z;->l(JJ)J

    move-result-wide p1

    invoke-static {p1, p2}, Lo0/z;->b(J)Lo0/z;

    move-result-object p1

    return-object p1
.end method

.method public final K1(Landroidx/compose/ui/input/nestedscroll/b;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->n:Landroidx/compose/ui/input/nestedscroll/b;

    invoke-direct {p0, p2}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->I1(Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;)V

    return-void
.end method

.method public g0(JJI)J
    .locals 8

    iget-object v0, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->n:Landroidx/compose/ui/input/nestedscroll/b;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroidx/compose/ui/input/nestedscroll/b;->g0(JJI)J

    move-result-wide v0

    invoke-direct {p0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->F1()Landroidx/compose/ui/input/nestedscroll/b;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {p1, p2, v0, v1}, Ly/g;->r(JJ)J

    move-result-wide v3

    invoke-static {p3, p4, v0, v1}, Ly/g;->q(JJ)J

    move-result-wide v5

    move v7, p5

    invoke-interface/range {v2 .. v7}, Landroidx/compose/ui/input/nestedscroll/b;->g0(JJI)J

    move-result-wide p1

    goto :goto_0

    :cond_0
    sget-object p1, Ly/g;->b:Ly/g$a;

    invoke-virtual {p1}, Ly/g$a;->c()J

    move-result-wide p1

    :goto_0
    invoke-static {v0, v1, p1, p2}, Ly/g;->r(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public n1()V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->J1()V

    return-void
.end method

.method public o1()V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->H1()V

    return-void
.end method
