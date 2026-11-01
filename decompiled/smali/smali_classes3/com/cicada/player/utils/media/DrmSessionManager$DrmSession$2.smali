.class Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaDrm$OnEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->prepare(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;


# direct methods
.method constructor <init>(Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;)V
    .locals 0

    iput-object p1, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession$2;->this$1:Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Landroid/media/MediaDrm;[BII[B)V
    .locals 1

    invoke-static {}, Lcom/cicada/player/utils/media/DrmSessionManager;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " drm Event = "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " , extra = "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " , sessionId =  "

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4}, Lcom/cicada/player/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession$2;->this$1:Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;

    invoke-static {p1, p3, p2}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->access$300(Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;I[B)V

    return-void
.end method
