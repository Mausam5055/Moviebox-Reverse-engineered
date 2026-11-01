.class Lcom/mbridge/msdk/timer/a$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/timer/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/timer/a;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/timer/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/timer/a$a;->a:Lcom/mbridge/msdk/timer/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p0, Lcom/mbridge/msdk/timer/a$a;->a:Lcom/mbridge/msdk/timer/a;

    monitor-enter v0

    :try_start_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/mbridge/msdk/timer/a$a;->a:Lcom/mbridge/msdk/timer/a;

    invoke-static {p1}, Lcom/mbridge/msdk/timer/a;->c(Lcom/mbridge/msdk/timer/a;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/mbridge/msdk/timer/a$a;->a:Lcom/mbridge/msdk/timer/a;

    invoke-static {p1}, Lcom/mbridge/msdk/timer/a;->a(Lcom/mbridge/msdk/timer/a;)Z

    move-result p1

    if-eqz p1, :cond_2

    monitor-exit v0

    return-void

    :cond_2
    iget-object p1, p0, Lcom/mbridge/msdk/timer/a$a;->a:Lcom/mbridge/msdk/timer/a;

    invoke-static {p1}, Lcom/mbridge/msdk/timer/a;->b(Lcom/mbridge/msdk/timer/a;)J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lcom/mbridge/msdk/timer/a;->a(Lcom/mbridge/msdk/timer/a;J)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iget-object v1, p0, Lcom/mbridge/msdk/timer/a$a;->a:Lcom/mbridge/msdk/timer/a;

    invoke-static {v1}, Lcom/mbridge/msdk/timer/a;->b(Lcom/mbridge/msdk/timer/a;)J

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
