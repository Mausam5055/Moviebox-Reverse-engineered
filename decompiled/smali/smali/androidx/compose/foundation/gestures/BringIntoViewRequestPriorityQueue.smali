.class public final Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;
.super Ljava/lang/Object;


# static fields
.field public static final b:I


# instance fields
.field private final a:Landroidx/compose/runtime/collection/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Landroidx/compose/runtime/collection/b;->d:I

    sput v0, Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/compose/runtime/collection/b;

    const/16 v1, 0x10

    new-array v1, v1, [Landroidx/compose/foundation/gestures/ContentInViewNode$a;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    iput-object v0, p0, Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;->a:Landroidx/compose/runtime/collection/b;

    return-void
.end method

.method public static final synthetic a(Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;)Landroidx/compose/runtime/collection/b;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;->a:Landroidx/compose/runtime/collection/b;

    return-object p0
.end method


# virtual methods
.method public final b(Ljava/lang/Throwable;)V
    .locals 6

    iget-object v0, p0, Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;->a:Landroidx/compose/runtime/collection/b;

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->n()I

    move-result v1

    new-array v2, v1, [Lkotlinx/coroutines/n;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_0

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->m()[Ljava/lang/Object;

    move-result-object v5

    aget-object v5, v5, v4

    check-cast v5, Landroidx/compose/foundation/gestures/ContentInViewNode$a;

    invoke-virtual {v5}, Landroidx/compose/foundation/gestures/ContentInViewNode$a;->a()Lkotlinx/coroutines/n;

    move-result-object v5

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v0, v2, v3

    invoke-interface {v0, p1}, Lkotlinx/coroutines/n;->cancel(Ljava/lang/Throwable;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;->a:Landroidx/compose/runtime/collection/b;

    invoke-virtual {p1}, Landroidx/compose/runtime/collection/b;->p()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "uncancelled requests present"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(Landroidx/compose/foundation/gestures/ContentInViewNode$a;)Z
    .locals 8

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroidx/compose/foundation/gestures/ContentInViewNode$a;->b()Lkotlin/jvm/functions/Function0;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly/i;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroidx/compose/foundation/gestures/ContentInViewNode$a;->a()Lkotlinx/coroutines/n;

    move-result-object p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return v2

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/foundation/gestures/ContentInViewNode$a;->a()Lkotlinx/coroutines/n;

    move-result-object v3

    new-instance v4, Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue$enqueue$1;

    invoke-direct {v4, p0, p1}, Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue$enqueue$1;-><init>(Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;Landroidx/compose/foundation/gestures/ContentInViewNode$a;)V

    invoke-interface {v3, v4}, Lkotlinx/coroutines/n;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    iget-object v3, p0, Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;->a:Landroidx/compose/runtime/collection/b;

    new-instance v4, Lkotlin/ranges/IntRange;

    invoke-virtual {v3}, Landroidx/compose/runtime/collection/b;->n()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v4, v2, v3}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-virtual {v4}, Lkotlin/ranges/IntProgression;->f()I

    move-result v3

    invoke-virtual {v4}, Lkotlin/ranges/IntProgression;->h()I

    move-result v4

    if-gt v3, v4, :cond_4

    :goto_0
    iget-object v5, p0, Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;->a:Landroidx/compose/runtime/collection/b;

    invoke-virtual {v5}, Landroidx/compose/runtime/collection/b;->m()[Ljava/lang/Object;

    move-result-object v5

    aget-object v5, v5, v4

    check-cast v5, Landroidx/compose/foundation/gestures/ContentInViewNode$a;

    invoke-virtual {v5}, Landroidx/compose/foundation/gestures/ContentInViewNode$a;->b()Lkotlin/jvm/functions/Function0;

    move-result-object v5

    invoke-interface {v5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ly/i;

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v1, v5}, Ly/i;->m(Ly/i;)Ly/i;

    move-result-object v6

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v1, p0, Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;->a:Landroidx/compose/runtime/collection/b;

    add-int/2addr v4, v0

    invoke-virtual {v1, v4, p1}, Landroidx/compose/runtime/collection/b;->a(ILjava/lang/Object;)V

    return v0

    :cond_2
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    new-instance v5, Ljava/util/concurrent/CancellationException;

    const-string v6, "bringIntoView call interrupted by a newer, non-overlapping call"

    invoke-direct {v5, v6}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;->a:Landroidx/compose/runtime/collection/b;

    invoke-virtual {v6}, Landroidx/compose/runtime/collection/b;->n()I

    move-result v6

    sub-int/2addr v6, v0

    if-gt v6, v4, :cond_3

    :goto_1
    iget-object v7, p0, Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;->a:Landroidx/compose/runtime/collection/b;

    invoke-virtual {v7}, Landroidx/compose/runtime/collection/b;->m()[Ljava/lang/Object;

    move-result-object v7

    aget-object v7, v7, v4

    check-cast v7, Landroidx/compose/foundation/gestures/ContentInViewNode$a;

    invoke-virtual {v7}, Landroidx/compose/foundation/gestures/ContentInViewNode$a;->a()Lkotlinx/coroutines/n;

    move-result-object v7

    invoke-interface {v7, v5}, Lkotlinx/coroutines/n;->cancel(Ljava/lang/Throwable;)Z

    if-eq v6, v4, :cond_3

    add-int/2addr v6, v0

    goto :goto_1

    :cond_3
    :goto_2
    if-eq v4, v3, :cond_4

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;->a:Landroidx/compose/runtime/collection/b;

    invoke-virtual {v1, v2, p1}, Landroidx/compose/runtime/collection/b;->a(ILjava/lang/Object;)V

    return v0
.end method

.method public final d()V
    .locals 4

    iget-object v0, p0, Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;->a:Landroidx/compose/runtime/collection/b;

    new-instance v1, Lkotlin/ranges/IntRange;

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->n()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->f()I

    move-result v0

    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->h()I

    move-result v1

    if-gt v0, v1, :cond_0

    :goto_0
    iget-object v2, p0, Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;->a:Landroidx/compose/runtime/collection/b;

    invoke-virtual {v2}, Landroidx/compose/runtime/collection/b;->m()[Ljava/lang/Object;

    move-result-object v2

    aget-object v2, v2, v0

    check-cast v2, Landroidx/compose/foundation/gestures/ContentInViewNode$a;

    invoke-virtual {v2}, Landroidx/compose/foundation/gestures/ContentInViewNode$a;->a()Lkotlinx/coroutines/n;

    move-result-object v2

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    if-eq v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;->a:Landroidx/compose/runtime/collection/b;

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->h()V

    return-void
.end method
