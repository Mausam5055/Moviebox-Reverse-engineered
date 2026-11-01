.class abstract Lio/reactivex/rxjava3/internal/observers/h;
.super Lio/reactivex/rxjava3/internal/observers/f;


# instance fields
.field final wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lio/reactivex/rxjava3/internal/observers/f;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/observers/h;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method
