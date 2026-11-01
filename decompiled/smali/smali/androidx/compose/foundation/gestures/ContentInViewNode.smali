.class public final Landroidx/compose/foundation/gestures/ContentInViewNode;
.super Landroidx/compose/ui/f$c;

# interfaces
.implements Landroidx/compose/foundation/relocation/d;
.implements Landroidx/compose/ui/node/w;
.implements Landroidx/compose/ui/node/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/gestures/ContentInViewNode$a;,
        Landroidx/compose/foundation/gestures/ContentInViewNode$b;
    }
.end annotation


# instance fields
.field private n:Landroidx/compose/foundation/gestures/Orientation;

.field private final o:Landroidx/compose/foundation/gestures/ScrollingLogic;

.field private p:Z

.field private q:Landroidx/compose/foundation/gestures/d;

.field private final r:Z

.field private final s:Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;

.field private t:Landroidx/compose/ui/layout/l;

.field private u:Ly/i;

.field private v:Z

.field private w:J

.field private x:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/gestures/ScrollingLogic;ZLandroidx/compose/foundation/gestures/d;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/f$c;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->n:Landroidx/compose/foundation/gestures/Orientation;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->o:Landroidx/compose/foundation/gestures/ScrollingLogic;

    iput-boolean p3, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->p:Z

    iput-object p4, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->q:Landroidx/compose/foundation/gestures/d;

    new-instance p1, Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;

    invoke-direct {p1}, Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->s:Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;

    sget-object p1, Lo0/t;->b:Lo0/t$a;

    invoke-virtual {p1}, Lo0/t$a;->a()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->w:J

    return-void
.end method

.method public static final synthetic D1(Landroidx/compose/foundation/gestures/ContentInViewNode;Landroidx/compose/foundation/gestures/d;)F
    .locals 0

    invoke-direct {p0, p1}, Landroidx/compose/foundation/gestures/ContentInViewNode;->N1(Landroidx/compose/foundation/gestures/d;)F

    move-result p0

    return p0
.end method

.method public static final synthetic E1(Landroidx/compose/foundation/gestures/ContentInViewNode;)Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->s:Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;

    return-object p0
.end method

.method public static final synthetic F1(Landroidx/compose/foundation/gestures/ContentInViewNode;)Ly/i;
    .locals 0

    invoke-direct {p0}, Landroidx/compose/foundation/gestures/ContentInViewNode;->S1()Ly/i;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic G1(Landroidx/compose/foundation/gestures/ContentInViewNode;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->p:Z

    return p0
.end method

.method public static final synthetic H1(Landroidx/compose/foundation/gestures/ContentInViewNode;)Landroidx/compose/foundation/gestures/ScrollingLogic;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->o:Landroidx/compose/foundation/gestures/ScrollingLogic;

    return-object p0
.end method

.method public static final synthetic I1(Landroidx/compose/foundation/gestures/ContentInViewNode;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->v:Z

    return p0
.end method

.method public static final synthetic J1(Landroidx/compose/foundation/gestures/ContentInViewNode;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->x:Z

    return p0
.end method

.method public static final synthetic K1(Landroidx/compose/foundation/gestures/ContentInViewNode;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/foundation/gestures/ContentInViewNode;->W1()V

    return-void
.end method

.method public static final synthetic L1(Landroidx/compose/foundation/gestures/ContentInViewNode;Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->x:Z

    return-void
.end method

.method public static final synthetic M1(Landroidx/compose/foundation/gestures/ContentInViewNode;Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->v:Z

    return-void
.end method

.method private final N1(Landroidx/compose/foundation/gestures/d;)F
    .locals 5

    iget-wide v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->w:J

    sget-object v2, Lo0/t;->b:Lo0/t$a;

    invoke-virtual {v2}, Lo0/t$a;->a()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lo0/t;->e(JJ)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/ContentInViewNode;->R1()Ly/i;

    move-result-object v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->v:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroidx/compose/foundation/gestures/ContentInViewNode;->S1()Ly/i;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-wide v1, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->w:J

    invoke-static {v1, v2}, Lo0/u;->d(J)J

    move-result-wide v1

    iget-object v3, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->n:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v4, Landroidx/compose/foundation/gestures/ContentInViewNode$b;->a:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v4, v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    invoke-virtual {v0}, Ly/i;->f()F

    move-result v3

    invoke-virtual {v0}, Ly/i;->g()F

    move-result v4

    invoke-virtual {v0}, Ly/i;->f()F

    move-result v0

    sub-float/2addr v4, v0

    invoke-static {v1, v2}, Ly/m;->i(J)F

    move-result v0

    invoke-interface {p1, v3, v4, v0}, Landroidx/compose/foundation/gestures/d;->a(FFF)F

    move-result p1

    goto :goto_1

    :cond_3
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_4
    invoke-virtual {v0}, Ly/i;->i()F

    move-result v3

    invoke-virtual {v0}, Ly/i;->c()F

    move-result v4

    invoke-virtual {v0}, Ly/i;->i()F

    move-result v0

    sub-float/2addr v4, v0

    invoke-static {v1, v2}, Ly/m;->g(J)F

    move-result v0

    invoke-interface {p1, v3, v4, v0}, Landroidx/compose/foundation/gestures/d;->a(FFF)F

    move-result p1

    :goto_1
    return p1
.end method

.method private final O1(JJ)I
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->n:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v1, Landroidx/compose/foundation/gestures/ContentInViewNode$b;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {p1, p2}, Lo0/t;->g(J)I

    move-result p1

    invoke-static {p3, p4}, Lo0/t;->g(J)I

    move-result p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->j(II)I

    move-result p1

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_1
    invoke-static {p1, p2}, Lo0/t;->f(J)I

    move-result p1

    invoke-static {p3, p4}, Lo0/t;->f(J)I

    move-result p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->j(II)I

    move-result p1

    :goto_0
    return p1
.end method

.method private final P1(JJ)I
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->n:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v1, Landroidx/compose/foundation/gestures/ContentInViewNode$b;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {p1, p2}, Ly/m;->i(J)F

    move-result p1

    invoke-static {p3, p4}, Ly/m;->i(J)F

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_1
    invoke-static {p1, p2}, Ly/m;->g(J)F

    move-result p1

    invoke-static {p3, p4}, Ly/m;->g(J)F

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    :goto_0
    return p1
.end method

.method private final Q1(Ly/i;J)Ly/i;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/gestures/ContentInViewNode;->Y1(Ly/i;J)J

    move-result-wide p2

    invoke-static {p2, p3}, Ly/g;->u(J)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ly/i;->q(J)Ly/i;

    move-result-object p1

    return-object p1
.end method

.method private final R1()Ly/i;
    .locals 8

    iget-object v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->s:Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;

    invoke-static {v0}, Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;->a(Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;)Landroidx/compose/runtime/collection/b;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->n()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_4

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->m()[Ljava/lang/Object;

    move-result-object v0

    :cond_0
    aget-object v3, v0, v1

    check-cast v3, Landroidx/compose/foundation/gestures/ContentInViewNode$a;

    invoke-virtual {v3}, Landroidx/compose/foundation/gestures/ContentInViewNode$a;->b()Lkotlin/jvm/functions/Function0;

    move-result-object v3

    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ly/i;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ly/i;->h()J

    move-result-wide v4

    iget-wide v6, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->w:J

    invoke-static {v6, v7}, Lo0/u;->d(J)J

    move-result-wide v6

    invoke-direct {p0, v4, v5, v6, v7}, Landroidx/compose/foundation/gestures/ContentInViewNode;->P1(JJ)I

    move-result v4

    if-gtz v4, :cond_1

    move-object v2, v3

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    move-object v2, v3

    :cond_2
    return-object v2

    :cond_3
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_0

    :cond_4
    return-object v2
.end method

.method private final S1()Ly/i;
    .locals 4

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->k1()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {p0}, Landroidx/compose/ui/node/g;->k(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/layout/l;

    move-result-object v0

    iget-object v2, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->t:Landroidx/compose/ui/layout/l;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroidx/compose/ui/layout/l;->F()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Landroidx/compose/ui/layout/l;->O(Landroidx/compose/ui/layout/l;Z)Ly/i;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_1
    return-object v1
.end method

.method private final U1(Ly/i;J)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/gestures/ContentInViewNode;->Y1(Ly/i;J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ly/g;->m(J)F

    move-result p3

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float p3, p3, v0

    if-gtz p3, :cond_0

    invoke-static {p1, p2}, Ly/g;->n(J)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic V1(Landroidx/compose/foundation/gestures/ContentInViewNode;Ly/i;JILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    iget-wide p2, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->w:J

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/gestures/ContentInViewNode;->U1(Ly/i;J)Z

    move-result p0

    return p0
.end method

.method private final W1()V
    .locals 9

    invoke-direct {p0}, Landroidx/compose/foundation/gestures/ContentInViewNode;->Z1()Landroidx/compose/foundation/gestures/d;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->x:Z

    if-nez v1, :cond_0

    new-instance v1, Landroidx/compose/foundation/gestures/UpdatableAnimationState;

    invoke-interface {v0}, Landroidx/compose/foundation/gestures/d;->b()Landroidx/compose/animation/core/g;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/compose/foundation/gestures/UpdatableAnimationState;-><init>(Landroidx/compose/animation/core/g;)V

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->d1()Lkotlinx/coroutines/n0;

    move-result-object v3

    sget-object v5, Lkotlinx/coroutines/CoroutineStart;->UNDISPATCHED:Lkotlinx/coroutines/CoroutineStart;

    new-instance v6, Landroidx/compose/foundation/gestures/ContentInViewNode$launchAnimation$2;

    const/4 v2, 0x0

    invoke-direct {v6, p0, v1, v0, v2}, Landroidx/compose/foundation/gestures/ContentInViewNode$launchAnimation$2;-><init>(Landroidx/compose/foundation/gestures/ContentInViewNode;Landroidx/compose/foundation/gestures/UpdatableAnimationState;Landroidx/compose/foundation/gestures/d;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v4, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "launchAnimation called when previous animation was running"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final Y1(Ly/i;J)J
    .locals 4

    invoke-static {p2, p3}, Lo0/u;->d(J)J

    move-result-wide p2

    iget-object v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->n:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v1, Landroidx/compose/foundation/gestures/ContentInViewNode$b;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Landroidx/compose/foundation/gestures/ContentInViewNode;->Z1()Landroidx/compose/foundation/gestures/d;

    move-result-object v0

    invoke-virtual {p1}, Ly/i;->f()F

    move-result v1

    invoke-virtual {p1}, Ly/i;->g()F

    move-result v3

    invoke-virtual {p1}, Ly/i;->f()F

    move-result p1

    sub-float/2addr v3, p1

    invoke-static {p2, p3}, Ly/m;->i(J)F

    move-result p1

    invoke-interface {v0, v1, v3, p1}, Landroidx/compose/foundation/gestures/d;->a(FFF)F

    move-result p1

    invoke-static {p1, v2}, Ly/h;->a(FF)J

    move-result-wide p1

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_1
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/ContentInViewNode;->Z1()Landroidx/compose/foundation/gestures/d;

    move-result-object v0

    invoke-virtual {p1}, Ly/i;->i()F

    move-result v1

    invoke-virtual {p1}, Ly/i;->c()F

    move-result v3

    invoke-virtual {p1}, Ly/i;->i()F

    move-result p1

    sub-float/2addr v3, p1

    invoke-static {p2, p3}, Ly/m;->g(J)F

    move-result p1

    invoke-interface {v0, v1, v3, p1}, Landroidx/compose/foundation/gestures/d;->a(FFF)F

    move-result p1

    invoke-static {v2, p1}, Ly/h;->a(FF)J

    move-result-wide p1

    :goto_0
    return-wide p1
.end method

.method private final Z1()Landroidx/compose/foundation/gestures/d;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->q:Landroidx/compose/foundation/gestures/d;

    if-nez v0, :cond_0

    invoke-static {}, Landroidx/compose/foundation/gestures/BringIntoViewSpec_androidKt;->a()Landroidx/compose/runtime/s1;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/compose/ui/node/e;->a(Landroidx/compose/ui/node/d;Landroidx/compose/runtime/q;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/gestures/d;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public F(J)V
    .locals 5

    iget-wide v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->w:J

    iput-wide p1, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->w:J

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/compose/foundation/gestures/ContentInViewNode;->O1(JJ)I

    move-result v2

    if-ltz v2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/ContentInViewNode;->S1()Ly/i;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v3, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->u:Ly/i;

    if-nez v3, :cond_1

    move-object v3, v2

    :cond_1
    iget-boolean v4, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->x:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->v:Z

    if-nez v4, :cond_2

    invoke-direct {p0, v3, v0, v1}, Landroidx/compose/foundation/gestures/ContentInViewNode;->U1(Ly/i;J)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v2, p1, p2}, Landroidx/compose/foundation/gestures/ContentInViewNode;->U1(Ly/i;J)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->v:Z

    invoke-direct {p0}, Landroidx/compose/foundation/gestures/ContentInViewNode;->W1()V

    :cond_2
    iput-object v2, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->u:Ly/i;

    :cond_3
    return-void
.end method

.method public F0(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ly/i;

    if-eqz v2, :cond_3

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-wide/16 v3, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Landroidx/compose/foundation/gestures/ContentInViewNode;->V1(Landroidx/compose/foundation/gestures/ContentInViewNode;Ly/i;JILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->c(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    new-instance v1, Landroidx/compose/foundation/gestures/ContentInViewNode$a;

    invoke-direct {v1, p1, v0}, Landroidx/compose/foundation/gestures/ContentInViewNode$a;-><init>(Lkotlin/jvm/functions/Function0;Lkotlinx/coroutines/n;)V

    invoke-static {p0}, Landroidx/compose/foundation/gestures/ContentInViewNode;->E1(Landroidx/compose/foundation/gestures/ContentInViewNode;)Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;->c(Landroidx/compose/foundation/gestures/ContentInViewNode$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Landroidx/compose/foundation/gestures/ContentInViewNode;->J1(Landroidx/compose/foundation/gestures/ContentInViewNode;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p0}, Landroidx/compose/foundation/gestures/ContentInViewNode;->K1(Landroidx/compose/foundation/gestures/ContentInViewNode;)V

    :cond_0
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_1

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->c(Lkotlin/coroutines/Continuation;)V

    :cond_1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_2

    return-object p1

    :cond_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public synthetic I(Landroidx/compose/ui/layout/l;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/ui/node/v;->a(Landroidx/compose/ui/node/w;Landroidx/compose/ui/layout/l;)V

    return-void
.end method

.method public final T1()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->w:J

    return-wide v0
.end method

.method public final X1(Landroidx/compose/ui/layout/l;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->t:Landroidx/compose/ui/layout/l;

    return-void
.end method

.method public Y(Ly/i;)Ly/i;
    .locals 4

    iget-wide v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->w:J

    sget-object v2, Lo0/t;->b:Lo0/t$a;

    invoke-virtual {v2}, Lo0/t$a;->a()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lo0/t;->e(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->w:J

    invoke-direct {p0, p1, v0, v1}, Landroidx/compose/foundation/gestures/ContentInViewNode;->Q1(Ly/i;J)Ly/i;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Expected BringIntoViewRequester to not be used before parents are placed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a2(Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/gestures/d;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->n:Landroidx/compose/foundation/gestures/Orientation;

    iput-boolean p2, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->p:Z

    iput-object p3, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->q:Landroidx/compose/foundation/gestures/d;

    return-void
.end method

.method public i1()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->r:Z

    return v0
.end method
