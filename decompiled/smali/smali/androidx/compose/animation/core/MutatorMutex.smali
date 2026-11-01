.class public final Landroidx/compose/animation/core/MutatorMutex;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/animation/core/MutatorMutex$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicReference;

.field private final b:Lkotlinx/coroutines/sync/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/compose/animation/core/MutatorMutex;->a:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lkotlinx/coroutines/sync/g;->b(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/a;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/animation/core/MutatorMutex;->b:Lkotlinx/coroutines/sync/a;

    return-void
.end method

.method public static final synthetic a(Landroidx/compose/animation/core/MutatorMutex;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/core/MutatorMutex;->a:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method public static final synthetic b(Landroidx/compose/animation/core/MutatorMutex;)Lkotlinx/coroutines/sync/a;
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/core/MutatorMutex;->b:Lkotlinx/coroutines/sync/a;

    return-object p0
.end method

.method public static final synthetic c(Landroidx/compose/animation/core/MutatorMutex;Landroidx/compose/animation/core/MutatorMutex$a;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/compose/animation/core/MutatorMutex;->f(Landroidx/compose/animation/core/MutatorMutex$a;)V

    return-void
.end method

.method public static synthetic e(Landroidx/compose/animation/core/MutatorMutex;Landroidx/compose/animation/core/MutatePriority;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    sget-object p1, Landroidx/compose/animation/core/MutatePriority;->Default:Landroidx/compose/animation/core/MutatePriority;

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/animation/core/MutatorMutex;->d(Landroidx/compose/animation/core/MutatePriority;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final f(Landroidx/compose/animation/core/MutatorMutex$a;)V
    .locals 2

    :cond_0
    iget-object v0, p0, Landroidx/compose/animation/core/MutatorMutex;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/animation/core/MutatorMutex$a;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Landroidx/compose/animation/core/MutatorMutex$a;->a(Landroidx/compose/animation/core/MutatorMutex$a;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/util/concurrent/CancellationException;

    const-string v0, "Current mutation had a higher priority"

    invoke-direct {p1, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    iget-object v1, p0, Landroidx/compose/animation/core/MutatorMutex;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1, v0, p1}, Landroidx/compose/animation/core/j0;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/compose/animation/core/MutatorMutex$a;->b()V

    :cond_3
    return-void
.end method


# virtual methods
.method public final d(Landroidx/compose/animation/core/MutatePriority;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Landroidx/compose/animation/core/MutatorMutex$mutate$2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, p2, v1}, Landroidx/compose/animation/core/MutatorMutex$mutate$2;-><init>(Landroidx/compose/animation/core/MutatePriority;Landroidx/compose/animation/core/MutatorMutex;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, p3}, Lkotlinx/coroutines/o0;->e(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
