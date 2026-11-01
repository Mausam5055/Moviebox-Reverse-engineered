.class abstract Lio/reactivex/rxjava3/internal/subscribers/g;
.super Lio/reactivex/rxjava3/internal/subscribers/c;


# instance fields
.field final wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lio/reactivex/rxjava3/internal/subscribers/c;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/subscribers/g;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method
