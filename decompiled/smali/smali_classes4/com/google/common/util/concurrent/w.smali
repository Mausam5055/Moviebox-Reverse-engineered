.class abstract Lcom/google/common/util/concurrent/w;
.super Ljava/lang/Object;


# direct methods
.method static a(Ljava/lang/Throwable;Ljava/lang/Class;)Z
    .locals 0

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static b(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of p0, p0, Ljava/lang/InterruptedException;

    if-eqz p0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-void
.end method
