.class final Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$a;
.super Lio/reactivex/rxjava3/internal/schedulers/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field c:J


# direct methods
.method constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 2

    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/schedulers/e;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$a;->c:J

    return-void
.end method


# virtual methods
.method public e()J
    .locals 2

    iget-wide v0, p0, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$a;->c:J

    return-wide v0
.end method

.method public f(J)V
    .locals 0

    iput-wide p1, p0, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$a;->c:J

    return-void
.end method
