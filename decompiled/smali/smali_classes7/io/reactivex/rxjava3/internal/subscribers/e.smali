.class abstract Lio/reactivex/rxjava3/internal/subscribers/e;
.super Lio/reactivex/rxjava3/internal/subscribers/d;


# instance fields
.field final requested:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lio/reactivex/rxjava3/internal/subscribers/d;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/subscribers/e;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method
