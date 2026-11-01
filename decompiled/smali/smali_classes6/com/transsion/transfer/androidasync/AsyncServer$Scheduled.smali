.class Lcom/transsion/transfer/androidasync/AsyncServer$Scheduled;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/transfer/androidasync/future/a;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/transfer/androidasync/AsyncServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Scheduled"
.end annotation


# instance fields
.field cancelled:Z

.field public runnable:Ljava/lang/Runnable;

.field public server:Lcom/transsion/transfer/androidasync/AsyncServer;

.field public time:J


# direct methods
.method public constructor <init>(Lcom/transsion/transfer/androidasync/AsyncServer;Ljava/lang/Runnable;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncServer$Scheduled;->server:Lcom/transsion/transfer/androidasync/AsyncServer;

    iput-object p2, p0, Lcom/transsion/transfer/androidasync/AsyncServer$Scheduled;->runnable:Ljava/lang/Runnable;

    iput-wide p3, p0, Lcom/transsion/transfer/androidasync/AsyncServer$Scheduled;->time:J

    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncServer$Scheduled;->server:Lcom/transsion/transfer/androidasync/AsyncServer;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/AsyncServer$Scheduled;->server:Lcom/transsion/transfer/androidasync/AsyncServer;

    iget-object v1, v1, Lcom/transsion/transfer/androidasync/AsyncServer;->e:Ljava/util/PriorityQueue;

    invoke-virtual {v1, p0}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/transfer/androidasync/AsyncServer$Scheduled;->cancelled:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isCancelled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/transfer/androidasync/AsyncServer$Scheduled;->cancelled:Z

    return v0
.end method

.method public isDone()Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncServer$Scheduled;->server:Lcom/transsion/transfer/androidasync/AsyncServer;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/transsion/transfer/androidasync/AsyncServer$Scheduled;->cancelled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/transsion/transfer/androidasync/AsyncServer$Scheduled;->server:Lcom/transsion/transfer/androidasync/AsyncServer;

    iget-object v1, v1, Lcom/transsion/transfer/androidasync/AsyncServer;->e:Ljava/util/PriorityQueue;

    invoke-virtual {v1, p0}, Ljava/util/PriorityQueue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncServer$Scheduled;->runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
