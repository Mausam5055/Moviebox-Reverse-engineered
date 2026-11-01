.class public Lcom/cloud/hisavana/net/utils/CommonWorkThread;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/net/utils/CommonWorkThread$WorkThreadHolder;
    }
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "common_work_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/cloud/hisavana/net/utils/CommonWorkThread;->a:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/cloud/hisavana/net/utils/CommonWorkThread$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/hisavana/net/utils/CommonWorkThread;-><init>()V

    return-void
.end method
