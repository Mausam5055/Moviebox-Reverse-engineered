.class public final Landroidx/compose/foundation/gestures/UpdatableAnimationState;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/gestures/UpdatableAnimationState$a;
    }
.end annotation


# static fields
.field private static final f:Landroidx/compose/foundation/gestures/UpdatableAnimationState$a;

.field public static final g:I

.field private static final h:Landroidx/compose/animation/core/k;


# instance fields
.field private final a:Landroidx/compose/animation/core/v0;

.field private b:J

.field private c:Landroidx/compose/animation/core/k;

.field private d:Z

.field private e:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/foundation/gestures/UpdatableAnimationState$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/foundation/gestures/UpdatableAnimationState$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->f:Landroidx/compose/foundation/gestures/UpdatableAnimationState$a;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->g:I

    new-instance v0, Landroidx/compose/animation/core/k;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/animation/core/k;-><init>(F)V

    sput-object v0, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->h:Landroidx/compose/animation/core/k;

    return-void
.end method

.method public constructor <init>(Landroidx/compose/animation/core/g;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lkotlin/jvm/internal/FloatCompanionObject;->a:Lkotlin/jvm/internal/FloatCompanionObject;

    invoke-static {v0}, Landroidx/compose/animation/core/VectorConvertersKt;->b(Lkotlin/jvm/internal/FloatCompanionObject;)Landroidx/compose/animation/core/s0;

    move-result-object v0

    invoke-interface {p1, v0}, Landroidx/compose/animation/core/g;->a(Landroidx/compose/animation/core/s0;)Landroidx/compose/animation/core/v0;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->a:Landroidx/compose/animation/core/v0;

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->b:J

    sget-object p1, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->h:Landroidx/compose/animation/core/k;

    iput-object p1, p0, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->c:Landroidx/compose/animation/core/k;

    return-void
.end method

.method public static final synthetic a()Landroidx/compose/foundation/gestures/UpdatableAnimationState$a;
    .locals 1

    sget-object v0, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->f:Landroidx/compose/foundation/gestures/UpdatableAnimationState$a;

    return-object v0
.end method

.method public static final synthetic b(Landroidx/compose/foundation/gestures/UpdatableAnimationState;)J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->b:J

    return-wide v0
.end method

.method public static final synthetic c(Landroidx/compose/foundation/gestures/UpdatableAnimationState;)Landroidx/compose/animation/core/k;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->c:Landroidx/compose/animation/core/k;

    return-object p0
.end method

.method public static final synthetic d(Landroidx/compose/foundation/gestures/UpdatableAnimationState;)Landroidx/compose/animation/core/v0;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->a:Landroidx/compose/animation/core/v0;

    return-object p0
.end method

.method public static final synthetic e()Landroidx/compose/animation/core/k;
    .locals 1

    sget-object v0, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->h:Landroidx/compose/animation/core/k;

    return-object v0
.end method

.method public static final synthetic f(Landroidx/compose/foundation/gestures/UpdatableAnimationState;J)V
    .locals 0

    iput-wide p1, p0, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->b:J

    return-void
.end method

.method public static final synthetic g(Landroidx/compose/foundation/gestures/UpdatableAnimationState;Landroidx/compose/animation/core/k;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->c:Landroidx/compose/animation/core/k;

    return-void
.end method


# virtual methods
.method public final h(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12

    instance-of v0, p3, Landroidx/compose/foundation/gestures/UpdatableAnimationState$animateToZero$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Landroidx/compose/foundation/gestures/UpdatableAnimationState$animateToZero$1;

    iget v1, v0, Landroidx/compose/foundation/gestures/UpdatableAnimationState$animateToZero$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/compose/foundation/gestures/UpdatableAnimationState$animateToZero$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/UpdatableAnimationState$animateToZero$1;

    invoke-direct {v0, p0, p3}, Landroidx/compose/foundation/gestures/UpdatableAnimationState$animateToZero$1;-><init>(Landroidx/compose/foundation/gestures/UpdatableAnimationState;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Landroidx/compose/foundation/gestures/UpdatableAnimationState$animateToZero$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Landroidx/compose/foundation/gestures/UpdatableAnimationState$animateToZero$1;->label:I

    const/4 v3, 0x0

    const-wide/high16 v4, -0x8000000000000000L

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v8, :cond_2

    if-ne v2, v7, :cond_1

    iget-object p1, v0, Landroidx/compose/foundation/gestures/UpdatableAnimationState$animateToZero$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    iget-object p2, v0, Landroidx/compose/foundation/gestures/UpdatableAnimationState$animateToZero$1;->L$0:Ljava/lang/Object;

    check-cast p2, Landroidx/compose/foundation/gestures/UpdatableAnimationState;

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget p1, v0, Landroidx/compose/foundation/gestures/UpdatableAnimationState$animateToZero$1;->F$0:F

    iget-object p2, v0, Landroidx/compose/foundation/gestures/UpdatableAnimationState$animateToZero$1;->L$2:Ljava/lang/Object;

    check-cast p2, Lkotlin/jvm/functions/Function0;

    iget-object v2, v0, Landroidx/compose/foundation/gestures/UpdatableAnimationState$animateToZero$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    iget-object v9, v0, Landroidx/compose/foundation/gestures/UpdatableAnimationState$animateToZero$1;->L$0:Ljava/lang/Object;

    check-cast v9, Landroidx/compose/foundation/gestures/UpdatableAnimationState;

    :try_start_1
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object p3, v9

    move-object v11, v0

    move-object v0, p2

    move-object p2, v2

    move-object v2, v11

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object p2, v9

    goto/16 :goto_6

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-boolean p3, p0, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->d:Z

    if-nez p3, :cond_a

    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p3

    sget-object v2, Landroidx/compose/ui/j;->a1:Landroidx/compose/ui/j$b;

    invoke-interface {p3, v2}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object p3

    check-cast p3, Landroidx/compose/ui/j;

    if-eqz p3, :cond_4

    invoke-interface {p3}, Landroidx/compose/ui/j;->k()F

    move-result p3

    goto :goto_1

    :cond_4
    const/high16 p3, 0x3f800000    # 1.0f

    :goto_1
    iput-boolean v8, p0, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->d:Z

    move-object v2, v0

    move-object v0, p2

    move-object p2, p1

    move p1, p3

    move-object p3, p0

    :cond_5
    :try_start_2
    sget-object v9, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->f:Landroidx/compose/foundation/gestures/UpdatableAnimationState$a;

    iget v10, p3, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->e:F

    invoke-virtual {v9, v10}, Landroidx/compose/foundation/gestures/UpdatableAnimationState$a;->b(F)Z

    move-result v9

    if-nez v9, :cond_7

    new-instance v9, Landroidx/compose/foundation/gestures/UpdatableAnimationState$animateToZero$4;

    invoke-direct {v9, p3, p1, p2}, Landroidx/compose/foundation/gestures/UpdatableAnimationState$animateToZero$4;-><init>(Landroidx/compose/foundation/gestures/UpdatableAnimationState;FLkotlin/jvm/functions/Function1;)V

    iput-object p3, v2, Landroidx/compose/foundation/gestures/UpdatableAnimationState$animateToZero$1;->L$0:Ljava/lang/Object;

    iput-object p2, v2, Landroidx/compose/foundation/gestures/UpdatableAnimationState$animateToZero$1;->L$1:Ljava/lang/Object;

    iput-object v0, v2, Landroidx/compose/foundation/gestures/UpdatableAnimationState$animateToZero$1;->L$2:Ljava/lang/Object;

    iput p1, v2, Landroidx/compose/foundation/gestures/UpdatableAnimationState$animateToZero$1;->F$0:F

    iput v8, v2, Landroidx/compose/foundation/gestures/UpdatableAnimationState$animateToZero$1;->label:I

    invoke-static {v9, v2}, Landroidx/compose/runtime/v0;->b(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v1, :cond_6

    return-object v1

    :cond_6
    :goto_2
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    cmpg-float v9, p1, v6

    if-nez v9, :cond_5

    :cond_7
    move-object p1, v0

    move-object v11, p3

    move-object p3, p2

    move-object p2, v11

    goto :goto_3

    :catchall_2
    move-exception p1

    move-object p2, p3

    goto :goto_6

    :goto_3
    :try_start_3
    iget v0, p2, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->e:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v6

    if-nez v0, :cond_8

    goto :goto_5

    :cond_8
    new-instance v0, Landroidx/compose/foundation/gestures/UpdatableAnimationState$animateToZero$5;

    invoke-direct {v0, p2, p3}, Landroidx/compose/foundation/gestures/UpdatableAnimationState$animateToZero$5;-><init>(Landroidx/compose/foundation/gestures/UpdatableAnimationState;Lkotlin/jvm/functions/Function1;)V

    iput-object p2, v2, Landroidx/compose/foundation/gestures/UpdatableAnimationState$animateToZero$1;->L$0:Ljava/lang/Object;

    iput-object p1, v2, Landroidx/compose/foundation/gestures/UpdatableAnimationState$animateToZero$1;->L$1:Ljava/lang/Object;

    const/4 p3, 0x0

    iput-object p3, v2, Landroidx/compose/foundation/gestures/UpdatableAnimationState$animateToZero$1;->L$2:Ljava/lang/Object;

    iput v7, v2, Landroidx/compose/foundation/gestures/UpdatableAnimationState$animateToZero$1;->label:I

    invoke-static {v0, v2}, Landroidx/compose/runtime/v0;->b(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_9

    return-object v1

    :cond_9
    :goto_4
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_5
    iput-wide v4, p2, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->b:J

    sget-object p1, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->h:Landroidx/compose/animation/core/k;

    iput-object p1, p2, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->c:Landroidx/compose/animation/core/k;

    iput-boolean v3, p2, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->d:Z

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :goto_6
    iput-wide v4, p2, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->b:J

    sget-object p3, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->h:Landroidx/compose/animation/core/k;

    iput-object p3, p2, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->c:Landroidx/compose/animation/core/k;

    iput-boolean v3, p2, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->d:Z

    throw p1

    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "animateToZero called while previous animation is running"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final i()F
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->e:F

    return v0
.end method

.method public final j(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->e:F

    return-void
.end method
