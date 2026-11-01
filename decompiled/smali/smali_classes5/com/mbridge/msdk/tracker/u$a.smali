.class Lcom/mbridge/msdk/tracker/u$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/tracker/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/tracker/u;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/tracker/u;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/tracker/u$a;->a:Lcom/mbridge/msdk/tracker/u;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/mbridge/msdk/tracker/u$a;->a:Lcom/mbridge/msdk/tracker/u;

    invoke-virtual {p1}, Lcom/mbridge/msdk/tracker/u;->b()V

    iget-object p1, p0, Lcom/mbridge/msdk/tracker/u$a;->a:Lcom/mbridge/msdk/tracker/u;

    iget-object p1, p1, Lcom/mbridge/msdk/tracker/u;->f:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/mbridge/msdk/tracker/u$a;->a:Lcom/mbridge/msdk/tracker/u;

    invoke-static {p1}, Lcom/mbridge/msdk/tracker/u;->a(Lcom/mbridge/msdk/tracker/u;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
