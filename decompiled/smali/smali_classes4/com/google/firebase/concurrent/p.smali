.class Lcom/google/firebase/concurrent/p;
.super Landroidx/concurrent/futures/AbstractResolvableFuture;

# interfaces
.implements Ljava/util/concurrent/ScheduledFuture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/concurrent/p$c;,
        Lcom/google/firebase/concurrent/p$b;
    }
.end annotation


# instance fields
.field private final h:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method constructor <init>(Lcom/google/firebase/concurrent/p$c;)V
    .locals 1

    invoke-direct {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;-><init>()V

    new-instance v0, Lcom/google/firebase/concurrent/p$a;

    invoke-direct {v0, p0}, Lcom/google/firebase/concurrent/p$a;-><init>(Lcom/google/firebase/concurrent/p;)V

    invoke-interface {p1, v0}, Lcom/google/firebase/concurrent/p$c;->a(Lcom/google/firebase/concurrent/p$b;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/concurrent/p;->h:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method static synthetic y(Lcom/google/firebase/concurrent/p;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/concurrent/futures/AbstractResolvableFuture;->u(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic z(Lcom/google/firebase/concurrent/p;Ljava/lang/Throwable;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/concurrent/futures/AbstractResolvableFuture;->v(Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public A(Ljava/util/concurrent/Delayed;)I
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/concurrent/p;->h:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/util/concurrent/Delayed;

    invoke-virtual {p0, p1}, Lcom/google/firebase/concurrent/p;->A(Ljava/util/concurrent/Delayed;)I

    move-result p1

    return p1
.end method

.method protected d()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/concurrent/p;->h:Ljava/util/concurrent/ScheduledFuture;

    invoke-virtual {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->x()Z

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    return-void
.end method

.method public getDelay(Ljava/util/concurrent/TimeUnit;)J
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/concurrent/p;->h:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Delayed;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method
