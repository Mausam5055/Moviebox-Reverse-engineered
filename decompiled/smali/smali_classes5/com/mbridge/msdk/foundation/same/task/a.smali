.class public abstract Lcom/mbridge/msdk/foundation/same/task/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/foundation/same/task/a$b;,
        Lcom/mbridge/msdk/foundation/same/task/a$a;
    }
.end annotation


# static fields
.field public static id:J


# instance fields
.field public mListener:Lcom/mbridge/msdk/foundation/same/task/a$a;

.field public mState:Lcom/mbridge/msdk/foundation/same/task/a$b;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/mbridge/msdk/foundation/same/task/a$b;->a:Lcom/mbridge/msdk/foundation/same/task/a$b;

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/task/a;->mState:Lcom/mbridge/msdk/foundation/same/task/a$b;

    sget-wide v0, Lcom/mbridge/msdk/foundation/same/task/a;->id:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lcom/mbridge/msdk/foundation/same/task/a;->id:J

    return-void
.end method

.method private setState(Lcom/mbridge/msdk/foundation/same/task/a$b;)V
    .locals 1

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/same/task/a;->mState:Lcom/mbridge/msdk/foundation/same/task/a$b;

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/task/a;->mListener:Lcom/mbridge/msdk/foundation/same/task/a$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/mbridge/msdk/foundation/same/task/a$a;->a(Lcom/mbridge/msdk/foundation/same/task/a$b;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/task/a;->mState:Lcom/mbridge/msdk/foundation/same/task/a$b;

    sget-object v1, Lcom/mbridge/msdk/foundation/same/task/a$b;->d:Lcom/mbridge/msdk/foundation/same/task/a$b;

    if-eq v0, v1, :cond_0

    invoke-direct {p0, v1}, Lcom/mbridge/msdk/foundation/same/task/a;->setState(Lcom/mbridge/msdk/foundation/same/task/a$b;)V

    invoke-virtual {p0}, Lcom/mbridge/msdk/foundation/same/task/a;->cancelTask()V

    :cond_0
    return-void
.end method

.method public abstract cancelTask()V
.end method

.method public final getId()J
    .locals 2

    sget-wide v0, Lcom/mbridge/msdk/foundation/same/task/a;->id:J

    return-wide v0
.end method

.method public getState()Lcom/mbridge/msdk/foundation/same/task/a$b;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/task/a;->mState:Lcom/mbridge/msdk/foundation/same/task/a$b;

    return-object v0
.end method

.method public abstract pauseTask(Z)V
.end method

.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/task/a;->mState:Lcom/mbridge/msdk/foundation/same/task/a$b;

    sget-object v1, Lcom/mbridge/msdk/foundation/same/task/a$b;->a:Lcom/mbridge/msdk/foundation/same/task/a$b;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/mbridge/msdk/foundation/same/task/a$b;->b:Lcom/mbridge/msdk/foundation/same/task/a$b;

    invoke-direct {p0, v0}, Lcom/mbridge/msdk/foundation/same/task/a;->setState(Lcom/mbridge/msdk/foundation/same/task/a$b;)V

    invoke-virtual {p0}, Lcom/mbridge/msdk/foundation/same/task/a;->runTask()V

    sget-object v0, Lcom/mbridge/msdk/foundation/same/task/a$b;->e:Lcom/mbridge/msdk/foundation/same/task/a$b;

    invoke-direct {p0, v0}, Lcom/mbridge/msdk/foundation/same/task/a;->setState(Lcom/mbridge/msdk/foundation/same/task/a$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public abstract runTask()V
.end method

.method public setOnStateChangeListener(Lcom/mbridge/msdk/foundation/same/task/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/same/task/a;->mListener:Lcom/mbridge/msdk/foundation/same/task/a$a;

    return-void
.end method

.method public final setPause(Z)V
    .locals 3

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/task/a;->mState:Lcom/mbridge/msdk/foundation/same/task/a$b;

    sget-object v1, Lcom/mbridge/msdk/foundation/same/task/a$b;->c:Lcom/mbridge/msdk/foundation/same/task/a$b;

    if-eq v0, v1, :cond_2

    sget-object v2, Lcom/mbridge/msdk/foundation/same/task/a$b;->d:Lcom/mbridge/msdk/foundation/same/task/a$b;

    if-eq v0, v2, :cond_2

    sget-object v2, Lcom/mbridge/msdk/foundation/same/task/a$b;->e:Lcom/mbridge/msdk/foundation/same/task/a$b;

    if-ne v0, v2, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    invoke-direct {p0, v1}, Lcom/mbridge/msdk/foundation/same/task/a;->setState(Lcom/mbridge/msdk/foundation/same/task/a$b;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/mbridge/msdk/foundation/same/task/a$b;->b:Lcom/mbridge/msdk/foundation/same/task/a$b;

    invoke-direct {p0, v0}, Lcom/mbridge/msdk/foundation/same/task/a;->setState(Lcom/mbridge/msdk/foundation/same/task/a$b;)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/foundation/same/task/a;->pauseTask(Z)V

    :cond_2
    :goto_1
    return-void
.end method
