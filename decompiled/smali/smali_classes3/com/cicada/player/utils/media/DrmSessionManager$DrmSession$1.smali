.class Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;-><init>(Lcom/cicada/player/utils/media/DrmSessionManager;Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;

.field final synthetic val$this$0:Lcom/cicada/player/utils/media/DrmSessionManager;


# direct methods
.method constructor <init>(Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;Landroid/os/Looper;Lcom/cicada/player/utils/media/DrmSessionManager;)V
    .locals 0

    iput-object p1, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession$1;->this$1:Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;

    iput-object p3, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession$1;->val$this$0:Lcom/cicada/player/utils/media/DrmSessionManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession$1;->this$1:Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;

    invoke-static {v0}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->access$000(Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession$1;->this$1:Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;

    invoke-static {v0}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->access$100(Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;)V
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession$1;->this$1:Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;

    invoke-static {v0}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->access$000(Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;)V

    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
