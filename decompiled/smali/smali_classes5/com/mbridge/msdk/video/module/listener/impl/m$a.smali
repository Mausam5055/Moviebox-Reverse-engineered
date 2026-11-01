.class Lcom/mbridge/msdk/video/module/listener/impl/m$a;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/video/module/listener/impl/m;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/video/module/listener/impl/m;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/video/module/listener/impl/m;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/video/module/listener/impl/m$a;->a:Lcom/mbridge/msdk/video/module/listener/impl/m;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/listener/impl/m$a;->a:Lcom/mbridge/msdk/video/module/listener/impl/m;

    invoke-static {v0}, Lcom/mbridge/msdk/video/module/listener/impl/m;->c(Lcom/mbridge/msdk/video/module/listener/impl/m;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mbridge/msdk/video/module/listener/impl/m$a$a;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/video/module/listener/impl/m$a$a;-><init>(Lcom/mbridge/msdk/video/module/listener/impl/m$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-boolean v1, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
