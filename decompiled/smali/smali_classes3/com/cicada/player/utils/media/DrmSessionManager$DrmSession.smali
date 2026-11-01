.class Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cicada/player/utils/media/DrmSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrmSession"
.end annotation


# instance fields
.field public drmInfo:Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;

.field private hasProvideProvision:Z

.field public mediaDrm:Landroid/media/MediaDrm;

.field public requestHandler:Landroid/os/Handler;

.field private requestHandlerThread:Landroid/os/HandlerThread;

.field public sessionId:[B

.field public state:I

.field final synthetic this$0:Lcom/cicada/player/utils/media/DrmSessionManager;


# direct methods
.method public constructor <init>(Lcom/cicada/player/utils/media/DrmSessionManager;Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;)V
    .locals 2

    iput-object p1, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->this$0:Lcom/cicada/player/utils/media/DrmSessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->drmInfo:Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;

    iput-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->mediaDrm:Landroid/media/MediaDrm;

    iput-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->sessionId:[B

    sget v1, Lcom/cicada/player/utils/media/DrmSessionManager;->SESSION_STATE_IDLE:I

    iput v1, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->state:I

    iput-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->requestHandlerThread:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->requestHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->hasProvideProvision:Z

    iput-object p2, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->drmInfo:Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;

    new-instance p2, Landroid/os/HandlerThread;

    const-string v0, "DrmRequestHanderThread"

    invoke-direct {p2, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->requestHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    new-instance p2, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession$1;

    iget-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->requestHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, p0, v0, p1}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession$1;-><init>(Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;Landroid/os/Looper;Lcom/cicada/player/utils/media/DrmSessionManager;)V

    iput-object p2, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->requestHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;)V
    .locals 0

    invoke-direct {p0}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->requestProvision()V

    return-void
.end method

.method static synthetic access$100(Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->requestKey()V

    return-void
.end method

.method static synthetic access$300(Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;I[B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->sendRequest(I[B)V

    return-void
.end method

.method private changeState(II)V
    .locals 3

    iput p1, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->state:I

    invoke-static {}, Lcom/cicada/player/utils/media/DrmSessionManager;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->this$0:Lcom/cicada/player/utils/media/DrmSessionManager;

    invoke-static {v0}, Lcom/cicada/player/utils/media/DrmSessionManager;->access$400(Lcom/cicada/player/utils/media/DrmSessionManager;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/cicada/player/utils/media/DrmSessionManager;->native_changeState(JII)V

    return-void
.end method

.method private requestKey()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;
        }
    .end annotation

    invoke-static {}, Lcom/cicada/player/utils/media/DrmSessionManager;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestKey state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->state:I

    sget v1, Lcom/cicada/player/utils/media/DrmSessionManager;->SESSION_STATE_ERROR:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->drmInfo:Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;

    iget-object v0, v0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;->keyUrl:Ljava/lang/String;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    iget-object v2, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->mediaDrm:Landroid/media/MediaDrm;

    iget-object v3, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->sessionId:[B

    iget-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->drmInfo:Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;

    iget-object v5, v0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;->mime:Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaDrm;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->this$0:Lcom/cicada/player/utils/media/DrmSessionManager;

    invoke-static {v1}, Lcom/cicada/player/utils/media/DrmSessionManager;->access$400(Lcom/cicada/player/utils/media/DrmSessionManager;)J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/media/MediaDrm$KeyRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/media/MediaDrm$KeyRequest;->getData()[B

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/cicada/player/utils/media/DrmSessionManager;->native_requestKey(JLjava/lang/String;[B)[B

    move-result-object v1

    invoke-static {}, Lcom/cicada/player/utils/media/DrmSessionManager;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestKey result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_1

    invoke-static {}, Lcom/cicada/player/utils/media/DrmSessionManager;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestKey fail: data = null , url : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/media/MediaDrm$KeyRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cicada/player/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/cicada/player/utils/media/DrmSessionManager;->SESSION_STATE_ERROR:I

    sget v1, Lcom/cicada/player/utils/media/DrmSessionManager;->ERROR_CODE_KEY_RESPONSE_NULL:I

    invoke-direct {p0, v0, v1}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->changeState(II)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->mediaDrm:Landroid/media/MediaDrm;

    iget-object v2, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->sessionId:[B

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaDrm;->provideKeyResponse([B[B)[B

    sget v0, Lcom/cicada/player/utils/media/DrmSessionManager;->SESSION_STATE_OPENED:I

    sget v1, Lcom/cicada/player/utils/media/DrmSessionManager;->ERROR_CODE_NONE:I

    invoke-direct {p0, v0, v1}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->changeState(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-static {}, Lcom/cicada/player/utils/media/DrmSessionManager;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestKey fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cicada/player/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/cicada/player/utils/media/DrmSessionManager;->SESSION_STATE_ERROR:I

    sget v1, Lcom/cicada/player/utils/media/DrmSessionManager;->ERROR_CODE_DENIED_BY_SERVER:I

    invoke-direct {p0, v0, v1}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->changeState(II)V

    :goto_1
    return-void
.end method

.method private requestProvision()V
    .locals 6

    invoke-static {}, Lcom/cicada/player/utils/media/DrmSessionManager;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestProvision  state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->hasProvideProvision:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->getProvisionRequest()Landroid/media/MediaDrm$ProvisionRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->this$0:Lcom/cicada/player/utils/media/DrmSessionManager;

    invoke-static {v1}, Lcom/cicada/player/utils/media/DrmSessionManager;->access$400(Lcom/cicada/player/utils/media/DrmSessionManager;)J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/media/MediaDrm$ProvisionRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/media/MediaDrm$ProvisionRequest;->getData()[B

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/cicada/player/utils/media/DrmSessionManager;->native_requestProvision(JLjava/lang/String;[B)[B

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/cicada/player/utils/media/DrmSessionManager;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestProvision fail: data = null , url : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/media/MediaDrm$ProvisionRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cicada/player/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/cicada/player/utils/media/DrmSessionManager;->SESSION_STATE_ERROR:I

    sget v1, Lcom/cicada/player/utils/media/DrmSessionManager;->ERROR_CODE_PROVISION_RESPONSE_NULL:I

    invoke-direct {p0, v0, v1}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->changeState(II)V

    return-void

    :cond_1
    invoke-static {}, Lcom/cicada/player/utils/media/DrmSessionManager;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestProvision : data =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cicada/player/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, v1}, Landroid/media/MediaDrm;->provideProvisionResponse([B)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->hasProvideProvision:Z

    iget v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->state:I

    sget v1, Lcom/cicada/player/utils/media/DrmSessionManager;->SESSION_STATE_IDLE:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->prepare(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/cicada/player/utils/media/DrmSessionManager;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestProvision fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cicada/player/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/cicada/player/utils/media/DrmSessionManager;->SESSION_STATE_ERROR:I

    sget v1, Lcom/cicada/player/utils/media/DrmSessionManager;->ERROR_CODE_PROVISION_FAIL:I

    invoke-direct {p0, v0, v1}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->changeState(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method private sendRequest(I[B)V
    .locals 1

    iget-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->requestHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->requestHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public isForceInsecureDecoder()Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public prepare(Z)Z
    .locals 7

    iget-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->mediaDrm:Landroid/media/MediaDrm;

    const-string v1, " prepare fail : "

    const/4 v2, 0x0

    if-nez v0, :cond_1

    :try_start_0
    const-string v0, "urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed"

    iget-object v3, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->drmInfo:Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;

    iget-object v3, v3, Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;->keyFormat:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/media/MediaDrm;

    sget-object v3, Lcom/cicada/player/utils/media/DrmSessionManager;->WIDEVINE_UUID:Ljava/util/UUID;

    invoke-direct {v0, v3}, Landroid/media/MediaDrm;-><init>(Ljava/util/UUID;)V

    iput-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->mediaDrm:Landroid/media/MediaDrm;
    :try_end_0
    .catch Landroid/media/UnsupportedSchemeException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v3, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession$2;

    invoke-direct {v3, p0}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession$2;-><init>(Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;)V

    invoke-virtual {v0, v3}, Landroid/media/MediaDrm;->setOnEventListener(Landroid/media/MediaDrm$OnEventListener;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/cicada/player/utils/media/DrmSessionManager;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " prepare fail : not support format :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->drmInfo:Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;

    iget-object v3, v3, Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;->keyFormat:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cicada/player/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/cicada/player/utils/media/DrmSessionManager;->SESSION_STATE_ERROR:I

    sget v0, Lcom/cicada/player/utils/media/DrmSessionManager;->ERROR_CODE_UNSUPPORT_SCHEME:I

    invoke-direct {p0, p1, v0}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->changeState(II)V
    :try_end_1
    .catch Landroid/media/UnsupportedSchemeException; {:try_start_1 .. :try_end_1} :catch_0

    return v2

    :goto_0
    invoke-static {}, Lcom/cicada/player/utils/media/DrmSessionManager;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/cicada/player/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/cicada/player/utils/media/DrmSessionManager;->SESSION_STATE_ERROR:I

    sget v0, Lcom/cicada/player/utils/media/DrmSessionManager;->ERROR_CODE_UNSUPPORT_SCHEME:I

    invoke-direct {p0, p1, v0}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->changeState(II)V

    return v2

    :cond_1
    :goto_1
    const/4 v0, 0x1

    :try_start_2
    iget-object v3, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v3}, Landroid/media/MediaDrm;->openSession()[B

    move-result-object v3

    iput-object v3, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->sessionId:[B

    iget-object v3, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->this$0:Lcom/cicada/player/utils/media/DrmSessionManager;

    invoke-static {v3}, Lcom/cicada/player/utils/media/DrmSessionManager;->access$400(Lcom/cicada/player/utils/media/DrmSessionManager;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->sessionId:[B

    invoke-virtual {v3, v4, v5, v6}, Lcom/cicada/player/utils/media/DrmSessionManager;->native_updateSessionId(J[B)V

    sget v3, Lcom/cicada/player/utils/media/DrmSessionManager;->SESSION_STATE_IDLE:I

    sget v4, Lcom/cicada/player/utils/media/DrmSessionManager;->ERROR_CODE_NONE:I

    invoke-direct {p0, v3, v4}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->changeState(II)V

    iget-object v3, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->sessionId:[B

    const/4 v4, 0x2

    invoke-direct {p0, v4, v3}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->sendRequest(I[B)V
    :try_end_2
    .catch Landroid/media/NotProvisionedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return v0

    :catch_1
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_3

    :goto_2
    invoke-static {}, Lcom/cicada/player/utils/media/DrmSessionManager;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/cicada/player/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/cicada/player/utils/media/DrmSessionManager;->SESSION_STATE_ERROR:I

    sget v0, Lcom/cicada/player/utils/media/DrmSessionManager;->ERROR_CODE_RESOURCE_BUSY:I

    invoke-direct {p0, p1, v0}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->changeState(II)V

    return v2

    :goto_3
    invoke-static {}, Lcom/cicada/player/utils/media/DrmSessionManager;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " prepare NotProvisionedException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/cicada/player/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->sendRequest(I[B)V

    goto :goto_4

    :cond_2
    sget p1, Lcom/cicada/player/utils/media/DrmSessionManager;->SESSION_STATE_ERROR:I

    sget v0, Lcom/cicada/player/utils/media/DrmSessionManager;->ERROR_CODE_PROVISION_FAIL:I

    invoke-direct {p0, p1, v0}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->changeState(II)V

    :goto_4
    return v2
.end method

.method public release()Z
    .locals 4

    sget v0, Lcom/cicada/player/utils/media/DrmSessionManager;->SESSION_STATE_ERROR:I

    sget v1, Lcom/cicada/player/utils/media/DrmSessionManager;->ERROR_CODE_RELEASED:I

    invoke-direct {p0, v0, v1}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->changeState(II)V

    iget-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->requestHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iget-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->mediaDrm:Landroid/media/MediaDrm;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->sessionId:[B

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/media/MediaDrm;->closeSession([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/cicada/player/utils/media/DrmSessionManager;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " closeSession fail : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cicada/player/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/cicada/player/utils/media/DrmSessionManager;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " release fail : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cicada/player/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->mediaDrm:Landroid/media/MediaDrm;

    :cond_1
    const/4 v0, 0x1

    return v0
.end method
