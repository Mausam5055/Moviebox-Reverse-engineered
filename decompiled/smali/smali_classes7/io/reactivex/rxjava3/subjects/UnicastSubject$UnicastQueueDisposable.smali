.class final Lio/reactivex/rxjava3/subjects/UnicastSubject$UnicastQueueDisposable;
.super Lio/reactivex/rxjava3/internal/observers/BasicIntQueueDisposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/subjects/UnicastSubject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "UnicastQueueDisposable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/rxjava3/internal/observers/BasicIntQueueDisposable<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6e022e8b5b1c1e37L


# instance fields
.field final synthetic this$0:Lio/reactivex/rxjava3/subjects/UnicastSubject;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/subjects/UnicastSubject;)V
    .locals 0

    iput-object p1, p0, Lio/reactivex/rxjava3/subjects/UnicastSubject$UnicastQueueDisposable;->this$0:Lio/reactivex/rxjava3/subjects/UnicastSubject;

    invoke-direct {p0}, Lio/reactivex/rxjava3/internal/observers/BasicIntQueueDisposable;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/UnicastSubject$UnicastQueueDisposable;->this$0:Lio/reactivex/rxjava3/subjects/UnicastSubject;

    iget-object v0, v0, Lio/reactivex/rxjava3/subjects/UnicastSubject;->a:Lio/reactivex/rxjava3/operators/h;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/operators/h;->clear()V

    return-void
.end method

.method public dispose()V
    .locals 2

    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/UnicastSubject$UnicastQueueDisposable;->this$0:Lio/reactivex/rxjava3/subjects/UnicastSubject;

    iget-boolean v0, v0, Lio/reactivex/rxjava3/subjects/UnicastSubject;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/UnicastSubject$UnicastQueueDisposable;->this$0:Lio/reactivex/rxjava3/subjects/UnicastSubject;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lio/reactivex/rxjava3/subjects/UnicastSubject;->e:Z

    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/UnicastSubject$UnicastQueueDisposable;->this$0:Lio/reactivex/rxjava3/subjects/UnicastSubject;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/subjects/UnicastSubject;->K()V

    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/UnicastSubject$UnicastQueueDisposable;->this$0:Lio/reactivex/rxjava3/subjects/UnicastSubject;

    iget-object v0, v0, Lio/reactivex/rxjava3/subjects/UnicastSubject;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/UnicastSubject$UnicastQueueDisposable;->this$0:Lio/reactivex/rxjava3/subjects/UnicastSubject;

    iget-object v0, v0, Lio/reactivex/rxjava3/subjects/UnicastSubject;->i:Lio/reactivex/rxjava3/internal/observers/BasicIntQueueDisposable;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/UnicastSubject$UnicastQueueDisposable;->this$0:Lio/reactivex/rxjava3/subjects/UnicastSubject;

    iget-object v0, v0, Lio/reactivex/rxjava3/subjects/UnicastSubject;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/UnicastSubject$UnicastQueueDisposable;->this$0:Lio/reactivex/rxjava3/subjects/UnicastSubject;

    iget-boolean v1, v0, Lio/reactivex/rxjava3/subjects/UnicastSubject;->j:Z

    if-nez v1, :cond_0

    iget-object v0, v0, Lio/reactivex/rxjava3/subjects/UnicastSubject;->a:Lio/reactivex/rxjava3/operators/h;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/operators/h;->clear()V

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/UnicastSubject$UnicastQueueDisposable;->this$0:Lio/reactivex/rxjava3/subjects/UnicastSubject;

    iget-boolean v0, v0, Lio/reactivex/rxjava3/subjects/UnicastSubject;->e:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/UnicastSubject$UnicastQueueDisposable;->this$0:Lio/reactivex/rxjava3/subjects/UnicastSubject;

    iget-object v0, v0, Lio/reactivex/rxjava3/subjects/UnicastSubject;->a:Lio/reactivex/rxjava3/operators/h;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/operators/h;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/UnicastSubject$UnicastQueueDisposable;->this$0:Lio/reactivex/rxjava3/subjects/UnicastSubject;

    iget-object v0, v0, Lio/reactivex/rxjava3/subjects/UnicastSubject;->a:Lio/reactivex/rxjava3/operators/h;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/operators/h;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public requestFusion(I)I
    .locals 2

    const/4 v0, 0x2

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lio/reactivex/rxjava3/subjects/UnicastSubject$UnicastQueueDisposable;->this$0:Lio/reactivex/rxjava3/subjects/UnicastSubject;

    const/4 v1, 0x1

    iput-boolean v1, p1, Lio/reactivex/rxjava3/subjects/UnicastSubject;->j:Z

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
