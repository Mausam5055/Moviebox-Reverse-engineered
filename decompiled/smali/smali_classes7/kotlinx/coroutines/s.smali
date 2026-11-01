.class final Lkotlinx/coroutines/s;
.super Lkotlinx/coroutines/w1;


# instance fields
.field public final e:Lkotlinx/coroutines/CancellableContinuationImpl;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CancellableContinuationImpl;)V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/w1;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/s;->e:Lkotlinx/coroutines/CancellableContinuationImpl;

    return-void
.end method


# virtual methods
.method public u()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public v(Ljava/lang/Throwable;)V
    .locals 1

    iget-object p1, p0, Lkotlinx/coroutines/s;->e:Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-virtual {p0}, Lkotlinx/coroutines/w1;->t()Lkotlinx/coroutines/JobSupport;

    move-result-object v0

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getContinuationCancellationCause(Lkotlinx/coroutines/t1;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->parentCancelled$kotlinx_coroutines_core(Ljava/lang/Throwable;)V

    return-void
.end method
