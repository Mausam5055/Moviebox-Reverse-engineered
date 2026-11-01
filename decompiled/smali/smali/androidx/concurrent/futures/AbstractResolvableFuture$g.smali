.class final Landroidx/concurrent/futures/AbstractResolvableFuture$g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/concurrent/futures/AbstractResolvableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "g"
.end annotation


# static fields
.field static final c:Landroidx/concurrent/futures/AbstractResolvableFuture$g;


# instance fields
.field volatile a:Ljava/lang/Thread;

.field volatile b:Landroidx/concurrent/futures/AbstractResolvableFuture$g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/concurrent/futures/AbstractResolvableFuture$g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$g;-><init>(Z)V

    sput-object v0, Landroidx/concurrent/futures/AbstractResolvableFuture$g;->c:Landroidx/concurrent/futures/AbstractResolvableFuture$g;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroidx/concurrent/futures/AbstractResolvableFuture;->f:Landroidx/concurrent/futures/AbstractResolvableFuture$b;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$b;->e(Landroidx/concurrent/futures/AbstractResolvableFuture$g;Ljava/lang/Thread;)V

    return-void
.end method

.method constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Landroidx/concurrent/futures/AbstractResolvableFuture$g;)V
    .locals 1

    sget-object v0, Landroidx/concurrent/futures/AbstractResolvableFuture;->f:Landroidx/concurrent/futures/AbstractResolvableFuture$b;

    invoke-virtual {v0, p0, p1}, Landroidx/concurrent/futures/AbstractResolvableFuture$b;->d(Landroidx/concurrent/futures/AbstractResolvableFuture$g;Landroidx/concurrent/futures/AbstractResolvableFuture$g;)V

    return-void
.end method

.method b()V
    .locals 2

    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture$g;->a:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/concurrent/futures/AbstractResolvableFuture$g;->a:Ljava/lang/Thread;

    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_0
    return-void
.end method
