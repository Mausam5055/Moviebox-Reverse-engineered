.class public final Landroidx/compose/foundation/gestures/DefaultFlingBehavior;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/foundation/gestures/g;


# instance fields
.field private a:Landroidx/compose/animation/core/w;

.field private final b:Landroidx/compose/ui/j;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/animation/core/w;Landroidx/compose/ui/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/gestures/DefaultFlingBehavior;->a:Landroidx/compose/animation/core/w;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/DefaultFlingBehavior;->b:Landroidx/compose/ui/j;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/animation/core/w;Landroidx/compose/ui/j;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    invoke-static {}, Landroidx/compose/foundation/gestures/ScrollableKt;->e()Landroidx/compose/ui/j;

    move-result-object p2

    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/gestures/DefaultFlingBehavior;-><init>(Landroidx/compose/animation/core/w;Landroidx/compose/ui/j;)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/compose/foundation/gestures/k;FLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/foundation/gestures/DefaultFlingBehavior;->c:I

    iget-object v0, p0, Landroidx/compose/foundation/gestures/DefaultFlingBehavior;->b:Landroidx/compose/ui/j;

    new-instance v1, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$2;

    const/4 v2, 0x0

    invoke-direct {v1, p2, p0, p1, v2}, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$2;-><init>(FLandroidx/compose/foundation/gestures/DefaultFlingBehavior;Landroidx/compose/foundation/gestures/k;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b()Landroidx/compose/animation/core/w;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/gestures/DefaultFlingBehavior;->a:Landroidx/compose/animation/core/w;

    return-object v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/gestures/DefaultFlingBehavior;->c:I

    return v0
.end method

.method public final d(Landroidx/compose/animation/core/w;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/gestures/DefaultFlingBehavior;->a:Landroidx/compose/animation/core/w;

    return-void
.end method

.method public final e(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/gestures/DefaultFlingBehavior;->c:I

    return-void
.end method
