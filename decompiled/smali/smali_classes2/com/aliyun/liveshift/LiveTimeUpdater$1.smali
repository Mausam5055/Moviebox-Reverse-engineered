.class Lcom/aliyun/liveshift/LiveTimeUpdater$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/liveshift/LiveTimeUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/liveshift/LiveTimeUpdater;


# direct methods
.method constructor <init>(Lcom/aliyun/liveshift/LiveTimeUpdater;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/liveshift/LiveTimeUpdater$1;->this$0:Lcom/aliyun/liveshift/LiveTimeUpdater;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/aliyun/liveshift/LiveTimeUpdater;->access$000()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lcom/aliyun/liveshift/LiveTimeUpdater$1;->this$0:Lcom/aliyun/liveshift/LiveTimeUpdater;

    invoke-static {p1}, Lcom/aliyun/liveshift/LiveTimeUpdater;->access$100(Lcom/aliyun/liveshift/LiveTimeUpdater;)V

    iget-object p1, p0, Lcom/aliyun/liveshift/LiveTimeUpdater$1;->this$0:Lcom/aliyun/liveshift/LiveTimeUpdater;

    const/16 v0, 0x3c

    invoke-static {p1, v0}, Lcom/aliyun/liveshift/LiveTimeUpdater;->access$200(Lcom/aliyun/liveshift/LiveTimeUpdater;I)V

    goto :goto_1

    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/aliyun/liveshift/LiveTimeUpdater;->access$300()I

    move-result v0

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/aliyun/liveshift/LiveTimeUpdater$1;->this$0:Lcom/aliyun/liveshift/LiveTimeUpdater;

    invoke-static {p1}, Lcom/aliyun/liveshift/LiveTimeUpdater;->access$400(Lcom/aliyun/liveshift/LiveTimeUpdater;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/aliyun/liveshift/LiveTimeUpdater$1;->this$0:Lcom/aliyun/liveshift/LiveTimeUpdater;

    invoke-static {p1}, Lcom/aliyun/liveshift/LiveTimeUpdater;->access$508(Lcom/aliyun/liveshift/LiveTimeUpdater;)J

    :goto_0
    iget-object p1, p0, Lcom/aliyun/liveshift/LiveTimeUpdater$1;->this$0:Lcom/aliyun/liveshift/LiveTimeUpdater;

    invoke-static {p1}, Lcom/aliyun/liveshift/LiveTimeUpdater;->access$608(Lcom/aliyun/liveshift/LiveTimeUpdater;)J

    iget-object p1, p0, Lcom/aliyun/liveshift/LiveTimeUpdater$1;->this$0:Lcom/aliyun/liveshift/LiveTimeUpdater;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/aliyun/liveshift/LiveTimeUpdater;->access$700(Lcom/aliyun/liveshift/LiveTimeUpdater;I)V

    :cond_2
    :goto_1
    return-void
.end method
