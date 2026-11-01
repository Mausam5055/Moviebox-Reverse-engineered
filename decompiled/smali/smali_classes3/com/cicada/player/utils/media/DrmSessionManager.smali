.class public Lcom/cicada/player/utils/media/DrmSessionManager;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/cicada/player/utils/NativeUsed;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;,
        Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;
    }
.end annotation


# static fields
.field public static ERROR_CODE_DENIED_BY_SERVER:I = 0x0

.field public static ERROR_CODE_KEY_RESPONSE_NULL:I = 0x0

.field public static ERROR_CODE_NONE:I = 0x0

.field public static ERROR_CODE_PROVISION_FAIL:I = 0x0

.field public static ERROR_CODE_PROVISION_RESPONSE_NULL:I = 0x0

.field public static ERROR_CODE_RELEASED:I = 0x0

.field public static ERROR_CODE_RESOURCE_BUSY:I = 0x0

.field public static ERROR_CODE_UNSUPPORT_SCHEME:I = 0x0

.field public static SESSION_STATE_ERROR:I = 0x0

.field public static SESSION_STATE_IDLE:I = 0x0

.field public static SESSION_STATE_OPENED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DrmSessionManager"

.field private static final WIDEVINE_FORMAT:Ljava/lang/String; = "urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed"

.field public static final WIDEVINE_UUID:Ljava/util/UUID;


# instance fields
.field private drmSession:Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;

.field private mNativeInstance:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/util/UUID;

    const-wide v1, -0x121074568629b532L    # -3.563403477674908E221

    const-wide v3, -0x5c37d8232ae2de13L

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/cicada/player/utils/media/DrmSessionManager;->WIDEVINE_UUID:Ljava/util/UUID;

    const/4 v0, -0x1

    sput v0, Lcom/cicada/player/utils/media/DrmSessionManager;->SESSION_STATE_ERROR:I

    const/4 v0, -0x2

    sput v0, Lcom/cicada/player/utils/media/DrmSessionManager;->SESSION_STATE_IDLE:I

    const/4 v0, 0x0

    sput v0, Lcom/cicada/player/utils/media/DrmSessionManager;->SESSION_STATE_OPENED:I

    sput v0, Lcom/cicada/player/utils/media/DrmSessionManager;->ERROR_CODE_NONE:I

    const/4 v0, 0x1

    sput v0, Lcom/cicada/player/utils/media/DrmSessionManager;->ERROR_CODE_UNSUPPORT_SCHEME:I

    const/4 v0, 0x2

    sput v0, Lcom/cicada/player/utils/media/DrmSessionManager;->ERROR_CODE_RESOURCE_BUSY:I

    const/4 v0, 0x3

    sput v0, Lcom/cicada/player/utils/media/DrmSessionManager;->ERROR_CODE_KEY_RESPONSE_NULL:I

    const/4 v0, 0x4

    sput v0, Lcom/cicada/player/utils/media/DrmSessionManager;->ERROR_CODE_PROVISION_RESPONSE_NULL:I

    const/4 v0, 0x5

    sput v0, Lcom/cicada/player/utils/media/DrmSessionManager;->ERROR_CODE_DENIED_BY_SERVER:I

    const/4 v0, 0x6

    sput v0, Lcom/cicada/player/utils/media/DrmSessionManager;->ERROR_CODE_RELEASED:I

    const/4 v0, 0x7

    sput v0, Lcom/cicada/player/utils/media/DrmSessionManager;->ERROR_CODE_PROVISION_FAIL:I

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager;->drmSession:Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;

    iput-wide p1, p0, Lcom/cicada/player/utils/media/DrmSessionManager;->mNativeInstance:J

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/cicada/player/utils/media/DrmSessionManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/cicada/player/utils/media/DrmSessionManager;)J
    .locals 2

    iget-wide v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager;->mNativeInstance:J

    return-wide v0
.end method

.method private requireSessionInner(Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager;->drmSession:Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;

    if-nez v0, :cond_0

    new-instance v0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;

    invoke-direct {v0, p0, p1}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;-><init>(Lcom/cicada/player/utils/media/DrmSessionManager;Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;)V

    iput-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager;->drmSession:Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->prepare(Z)Z

    :cond_0
    return-void
.end method

.method public static supportDrm(Ljava/lang/String;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ObsoleteSdkInt"
        }
    .end annotation

    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    const-string v0, "urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/cicada/player/utils/media/DrmSessionManager;->WIDEVINE_UUID:Ljava/util/UUID;

    invoke-static {p0}, Landroid/media/MediaDrm;->isCryptoSchemeSupported(Ljava/util/UUID;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public isForceInsecureDecoder()Z
    .locals 1
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    iget-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager;->drmSession:Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->isForceInsecureDecoder()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected native native_changeState(JII)V
.end method

.method protected native native_requestKey(JLjava/lang/String;[B)[B
.end method

.method protected native native_requestProvision(JLjava/lang/String;[B)[B
.end method

.method protected native native_updateSessionId(J[B)V
.end method

.method public declared-synchronized releaseSession()V
    .locals 2
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/cicada/player/utils/media/DrmSessionManager;->TAG:Ljava/lang/String;

    const-string v1, "releaseSession"

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager;->drmSession:Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->release()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager;->drmSession:Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized requireSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/cicada/player/utils/media/DrmSessionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requireSessionInner info = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;-><init>(Lcom/cicada/player/utils/media/DrmSessionManager$1;)V

    iput-object p4, v0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;->licenseUrl:Ljava/lang/String;

    iput-object p2, v0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;->keyFormat:Ljava/lang/String;

    iput-object p1, v0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;->keyUrl:Ljava/lang/String;

    iput-object p3, v0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;->mime:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/cicada/player/utils/media/DrmSessionManager;->requireSessionInner(Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
