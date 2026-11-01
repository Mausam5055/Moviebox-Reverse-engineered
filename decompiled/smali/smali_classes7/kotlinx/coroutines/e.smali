.class final Lkotlinx/coroutines/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/e$a;,
        Lkotlinx/coroutines/e$b;
    }
.end annotation


# static fields
.field private static final synthetic b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private final a:[Lkotlinx/coroutines/r0;

.field private volatile synthetic notCompletedCount$volatile:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lkotlinx/coroutines/e;

    const-string v1, "notCompletedCount$volatile"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/e;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>([Lkotlinx/coroutines/r0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/e;->a:[Lkotlinx/coroutines/r0;

    array-length p1, p1

    iput p1, p0, Lkotlinx/coroutines/e;->notCompletedCount$volatile:I

    return-void
.end method

.method public static final synthetic a(Lkotlinx/coroutines/e;)[Lkotlinx/coroutines/r0;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/e;->a:[Lkotlinx/coroutines/r0;

    return-object p0
.end method

.method public static final synthetic b()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .locals 1

    invoke-static {}, Lkotlinx/coroutines/e;->d()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    return-object v0
.end method

.method private static final synthetic d()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/e;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-object v0
.end method


# virtual methods
.method public final c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->c(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    invoke-static {p0}, Lkotlinx/coroutines/e;->a(Lkotlinx/coroutines/e;)[Lkotlinx/coroutines/r0;

    move-result-object v1

    array-length v1, v1

    new-array v3, v1, [Lkotlinx/coroutines/e$a;

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v1, :cond_0

    invoke-static {p0}, Lkotlinx/coroutines/e;->a(Lkotlinx/coroutines/e;)[Lkotlinx/coroutines/r0;

    move-result-object v6

    aget-object v6, v6, v5

    invoke-interface {v6}, Lkotlinx/coroutines/t1;->start()Z

    new-instance v7, Lkotlinx/coroutines/e$a;

    invoke-direct {v7, p0, v0}, Lkotlinx/coroutines/e$a;-><init>(Lkotlinx/coroutines/e;Lkotlinx/coroutines/n;)V

    const/4 v8, 0x0

    invoke-static {v6, v4, v7, v2, v8}, Lkotlinx/coroutines/v1;->m(Lkotlinx/coroutines/t1;ZLkotlinx/coroutines/w1;ILjava/lang/Object;)Lkotlinx/coroutines/a1;

    move-result-object v6

    invoke-virtual {v7, v6}, Lkotlinx/coroutines/e$a;->B(Lkotlinx/coroutines/a1;)V

    sget-object v6, Lkotlin/Unit;->a:Lkotlin/Unit;

    aput-object v7, v3, v5

    add-int/2addr v5, v2

    goto :goto_0

    :cond_0
    new-instance v5, Lkotlinx/coroutines/e$b;

    invoke-direct {v5, p0, v3}, Lkotlinx/coroutines/e$b;-><init>(Lkotlinx/coroutines/e;[Lkotlinx/coroutines/e$a;)V

    :goto_1
    if-ge v4, v1, :cond_1

    aget-object v6, v3, v4

    invoke-virtual {v6, v5}, Lkotlinx/coroutines/e$a;->A(Lkotlinx/coroutines/e$b;)V

    add-int/2addr v4, v2

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lkotlinx/coroutines/n;->isCompleted()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v5}, Lkotlinx/coroutines/e$b;->b()V

    goto :goto_2

    :cond_2
    invoke-static {v0, v5}, Lkotlinx/coroutines/q;->c(Lkotlinx/coroutines/n;Lkotlinx/coroutines/m;)V

    :goto_2
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_3

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->c(Lkotlin/coroutines/Continuation;)V

    :cond_3
    return-object v0
.end method
