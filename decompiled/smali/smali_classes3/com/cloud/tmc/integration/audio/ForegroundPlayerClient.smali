.class public Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient$PlayCallback;
    }
.end annotation


# static fields
.field private static final ATTR_AUTO_PLAY:Ljava/lang/String; = "autoPlay"

.field private static final ATTR_BUFFERED:Ljava/lang/String; = "buffered"

.field private static final ATTR_CURRENT_TIME:Ljava/lang/String; = "currentTime"

.field private static final ATTR_DURATION:Ljava/lang/String; = "duration"

.field private static final ATTR_LOOP:Ljava/lang/String; = "loop"

.field private static final ATTR_PAUSED:Ljava/lang/String; = "paused"

.field private static final ATTR_SRC:Ljava/lang/String; = "src"

.field private static final ATTR_START_TIME:Ljava/lang/String; = "startTime"

.field private static final ATTR_VOLUME:Ljava/lang/String; = "volume"

.field private static final KEY_AUDIO_PLAYER_ID:Ljava/lang/String; = "audioPlayerID"

.field private static final KEY_OPTION_ENTRY:Ljava/lang/String; = "option"

.field private static final ON_F_CAN_PLAY:Ljava/lang/String; = "onForegroundAudioCanPlay"

.field private static final ON_F_ENDED:Ljava/lang/String; = "onForegroundAudioEnded"

.field private static final ON_F_ERROR:Ljava/lang/String; = "onForegroundAudioError"

.field private static final ON_F_PAUSE:Ljava/lang/String; = "onForegroundAudioPause"

.field private static final ON_F_PLAY:Ljava/lang/String; = "onForegroundAudioPlay"

.field private static final ON_F_SEEKED:Ljava/lang/String; = "onForegroundAudioSeeked"

.field private static final ON_F_SEEKING:Ljava/lang/String; = "onForegroundAudioSeeking"

.field private static final ON_F_STOP:Ljava/lang/String; = "onForegroundAudioStop"

.field private static final ON_F_TIME_UPDATE:Ljava/lang/String; = "onForegroundAudioTimeUpdate"

.field private static final ON_F_WAITING:Ljava/lang/String; = "onForegroundAudioWaiting"

.field private static final TAG:Ljava/lang/String; = "ForegroundPlayerClient"


# instance fields
.field enableMultiAudio:Z

.field private foregroundPlayer:Lcom/cloud/tmc/integration/audio/PlayerInstance;

.field private isAPPPause:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mApp:Lcom/cloud/tmc/integration/structure/App;

.field private final mAppId:Ljava/lang/String;

.field private final mPlayerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/integration/audio/PlayerInstance;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/integration/structure/App;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->mPlayerMap:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->foregroundPlayer:Lcom/cloud/tmc/integration/audio/PlayerInstance;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->enableMultiAudio:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->isAPPPause:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->mApp:Lcom/cloud/tmc/integration/structure/App;

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->mAppId:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic a(Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;)Lcom/cloud/tmc/integration/structure/App;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->mApp:Lcom/cloud/tmc/integration/structure/App;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->mPlayerMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;Lcom/cloud/tmc/integration/audio/PlayerInstance;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->foregroundPlayer:Lcom/cloud/tmc/integration/audio/PlayerInstance;

    return-void
.end method

.method private notifyAttr(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Lcom/google/gson/JsonObject;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "success"

    invoke-virtual {p2, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v0, "audioPlayerID"

    invoke-virtual {p2, v0, p3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendJSONResponse(Lcom/google/gson/JsonObject;)V

    :cond_0
    return-void
.end method

.method private declared-synchronized onGetOption(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;Lcom/cloud/tmc/integration/audio/PlayerInstance;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "ForegroundPlayerClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetOption:### "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "src"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p2, "src"

    invoke-virtual {p3}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->getPlayerId()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->notifyAttr(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Lcom/google/gson/JsonObject;Ljava/lang/String;)V

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_1

    :cond_1
    const-string v1, "autoPlay"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p2, "autoPlay"

    invoke-virtual {p3}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->getAutoPlay()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p3}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->getPlayerId()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->notifyAttr(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Lcom/google/gson/JsonObject;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    const-string v1, "loop"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p2, "loop"

    invoke-virtual {p3}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->getLoop()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p3}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->getPlayerId()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->notifyAttr(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Lcom/google/gson/JsonObject;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string v1, "startTime"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string p2, "startTime"

    invoke-virtual {p3}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->getStartTime()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    invoke-virtual {p3}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->getPlayerId()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->notifyAttr(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Lcom/google/gson/JsonObject;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const-string v1, "volume"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string p2, "volume"

    invoke-virtual {p3}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->getVolume()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    invoke-virtual {p3}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->getPlayerId()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->notifyAttr(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Lcom/google/gson/JsonObject;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v1, "duration"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/high16 v2, 0x447a0000    # 1000.0f

    if-eqz v1, :cond_6

    const-string p2, "duration"

    invoke-virtual {p3}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->getDuration()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    invoke-virtual {p3}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->getPlayerId()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->notifyAttr(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Lcom/google/gson/JsonObject;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string v1, "currentTime"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string p2, "currentTime"

    invoke-virtual {p3}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->getCurrentPosition()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    invoke-virtual {p3}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->getPlayerId()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->notifyAttr(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Lcom/google/gson/JsonObject;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string v1, "buffered"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string p2, "buffered"

    invoke-virtual {p3}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->getBufferedProgress()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    invoke-virtual {p3}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->getPlayerId()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->notifyAttr(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Lcom/google/gson/JsonObject;Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    const-string v1, "paused"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p3}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->isPlaying()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    const-string v1, "paused"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p3}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->getPlayerId()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->notifyAttr(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Lcom/google/gson/JsonObject;Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    const-string p3, "ForegroundPlayerClient"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InvalidParam : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "error option = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->notifyInvalidParam(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;)V

    goto :goto_0

    :cond_a
    const-string p3, "ForegroundPlayerClient"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InvalidParam : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "error option = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->notifyInvalidParam(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private declared-synchronized onSetOption(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Lcom/google/gson/JsonObject;Lcom/cloud/tmc/integration/audio/PlayerInstance;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string v0, "ForegroundPlayerClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetOption:### "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    :cond_0
    :goto_0
    const-string p1, "ForegroundPlayerClient"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "InvalidParam : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->isAPPPause:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    const-string v1, "autoPlay"

    invoke-virtual {p2, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "autoPlay"

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, v1, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object p3, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->foregroundPlayer:Lcom/cloud/tmc/integration/audio/PlayerInstance;

    iput-boolean v2, p3, Lcom/cloud/tmc/integration/audio/PlayerInstance;->pausedBack:Z

    goto :goto_1

    :catch_0
    move-exception p2

    goto/16 :goto_5

    :cond_2
    :goto_1
    invoke-virtual {p2}, Lcom/google/gson/JsonObject;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    move v3, v2

    :cond_3
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "src"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v3, :cond_4

    const-string v3, "src"

    invoke-virtual {p2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->setSrc(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    :goto_4
    move v3, v0

    goto :goto_3

    :cond_5
    const-string v5, "loop"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    if-eqz v3, :cond_4

    const-string v3, "loop"

    invoke-virtual {p2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v3

    invoke-virtual {p3, v3}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->setLoop(Z)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_6
    const-string v5, "startTime"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    if-eqz v3, :cond_4

    const-string v3, "startTime"

    invoke-virtual {p2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v3

    invoke-virtual {p3, v3}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->setStartTime(I)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_7
    const-string v5, "volume"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    if-eqz v3, :cond_4

    const-string v3, "volume"

    invoke-virtual {p2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v3

    invoke-virtual {p3, v3}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->setVolume(F)Z

    move-result v3

    if-eqz v3, :cond_4

    goto/16 :goto_2

    :cond_8
    const-string v5, "autoPlay"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    if-eqz v3, :cond_4

    const-string v3, "autoPlay"

    invoke-virtual {p2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v3

    invoke-virtual {p3, v3}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->setAutoPlay(Z)Z

    move-result v3

    if-eqz v3, :cond_4

    goto/16 :goto_2

    :cond_9
    const-string v3, "PlayerInstance"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InvalidParam : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_4

    :cond_a
    move v0, v3

    goto :goto_6

    :goto_5
    :try_start_2
    const-string p3, "ForegroundPlayerClient"

    invoke-static {p3, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6
    invoke-direct {p0, v0, p1}, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->sendResponse(ZLcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_7
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method private sendResponse(ZLcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized addMonitor(Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->isAPPPause:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->mPlayerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/audio/PlayerInstance;

    if-nez v0, :cond_1

    new-instance v0, Lcom/cloud/tmc/integration/audio/PlayerInstance;

    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->mApp:Lcom/cloud/tmc/integration/structure/App;

    new-instance v2, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient$PlayCallback;

    invoke-direct {v2, p0, p1}, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient$PlayCallback;-><init>(Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;Ljava/lang/String;)V

    invoke-direct {v0, v1, p1, v2}, Lcom/cloud/tmc/integration/audio/PlayerInstance;-><init>(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Lcom/cloud/tmc/integration/audio/PlayerInstance$IPlayerCallback;)V

    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->mPlayerMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->addMonitors()V

    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized destroy(Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->mPlayerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/audio/PlayerInstance;

    if-nez p1, :cond_0

    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->releaseMediaPlayer()V

    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized getAudioOption(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->mPlayerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/audio/PlayerInstance;

    if-nez v0, :cond_0

    new-instance v0, Lcom/cloud/tmc/integration/audio/PlayerInstance;

    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->mApp:Lcom/cloud/tmc/integration/structure/App;

    new-instance v2, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient$PlayCallback;

    invoke-direct {v2, p0, p1}, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient$PlayCallback;-><init>(Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;Ljava/lang/String;)V

    invoke-direct {v0, v1, p1, v2}, Lcom/cloud/tmc/integration/audio/PlayerInstance;-><init>(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Lcom/cloud/tmc/integration/audio/PlayerInstance$IPlayerCallback;)V

    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->mPlayerMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0, p3, p2, v0}, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->onGetOption(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;Lcom/cloud/tmc/integration/audio/PlayerInstance;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized pause(Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->mPlayerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/audio/PlayerInstance;

    if-nez v0, :cond_0

    new-instance v0, Lcom/cloud/tmc/integration/audio/PlayerInstance;

    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->mApp:Lcom/cloud/tmc/integration/structure/App;

    new-instance v2, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient$PlayCallback;

    invoke-direct {v2, p0, p1}, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient$PlayCallback;-><init>(Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;Ljava/lang/String;)V

    invoke-direct {v0, v1, p1, v2}, Lcom/cloud/tmc/integration/audio/PlayerInstance;-><init>(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Lcom/cloud/tmc/integration/audio/PlayerInstance$IPlayerCallback;)V

    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->mPlayerMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->addMonitors()V

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->pause()Z

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->sendResponse(ZLcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized pauseAppAudio()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "ForegroundPlayerClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pauseAppAudio - appId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->mAppId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->setAppPause(Z)V

    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->foregroundPlayer:Lcom/cloud/tmc/integration/audio/PlayerInstance;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->foregroundPlayer:Lcom/cloud/tmc/integration/audio/PlayerInstance;

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->pause()Z

    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->foregroundPlayer:Lcom/cloud/tmc/integration/audio/PlayerInstance;

    iput-boolean v0, v1, Lcom/cloud/tmc/integration/audio/PlayerInstance;->pausedBack:Z
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

.method public declared-synchronized play(Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->isAPPPause:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->mPlayerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/audio/PlayerInstance;

    if-nez v0, :cond_1

    new-instance v0, Lcom/cloud/tmc/integration/audio/PlayerInstance;

    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->mApp:Lcom/cloud/tmc/integration/structure/App;

    new-instance v2, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient$PlayCallback;

    invoke-direct {v2, p0, p1}, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient$PlayCallback;-><init>(Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;Ljava/lang/String;)V

    invoke-direct {v0, v1, p1, v2}, Lcom/cloud/tmc/integration/audio/PlayerInstance;-><init>(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Lcom/cloud/tmc/integration/audio/PlayerInstance$IPlayerCallback;)V

    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->mPlayerMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-boolean v1, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->enableMultiAudio:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->mPlayerMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/integration/audio/PlayerInstance;

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->pause()Z

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->addMonitors()V

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->play()Z

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->sendResponse(ZLcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized releaseAppAudio()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "ForegroundPlayerClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App releaseAppAudio appId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->mAppId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->mPlayerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/integration/audio/PlayerInstance;

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->releaseMediaPlayer()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->mPlayerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->setAppPause(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    :try_start_1
    const-string v1, "ForegroundPlayerClient"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    monitor-exit p0

    return-void

    :goto_3
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public declared-synchronized removeMonitor(Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->isAPPPause:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->mPlayerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/audio/PlayerInstance;

    if-nez v0, :cond_1

    new-instance v0, Lcom/cloud/tmc/integration/audio/PlayerInstance;

    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->mApp:Lcom/cloud/tmc/integration/structure/App;

    new-instance v2, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient$PlayCallback;

    invoke-direct {v2, p0, p1}, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient$PlayCallback;-><init>(Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;Ljava/lang/String;)V

    invoke-direct {v0, v1, p1, v2}, Lcom/cloud/tmc/integration/audio/PlayerInstance;-><init>(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Lcom/cloud/tmc/integration/audio/PlayerInstance$IPlayerCallback;)V

    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->mPlayerMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->removeMonitors()V

    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized restoreAppAudio()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "ForegroundPlayerClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreAppAudio - appId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->mAppId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->setAppPause(Z)V

    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->foregroundPlayer:Lcom/cloud/tmc/integration/audio/PlayerInstance;

    if-eqz v1, :cond_0

    iget-boolean v2, v1, Lcom/cloud/tmc/integration/audio/PlayerInstance;->pausedBack:Z

    if-eqz v2, :cond_0

    iput-boolean v0, v1, Lcom/cloud/tmc/integration/audio/PlayerInstance;->pausedBack:Z

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->play()Z
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

.method public declared-synchronized seek(Ljava/lang/String;FLcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->isAPPPause:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->mPlayerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/audio/PlayerInstance;

    if-nez v0, :cond_1

    new-instance v0, Lcom/cloud/tmc/integration/audio/PlayerInstance;

    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->mApp:Lcom/cloud/tmc/integration/structure/App;

    new-instance v2, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient$PlayCallback;

    invoke-direct {v2, p0, p1}, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient$PlayCallback;-><init>(Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;Ljava/lang/String;)V

    invoke-direct {v0, v1, p1, v2}, Lcom/cloud/tmc/integration/audio/PlayerInstance;-><init>(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Lcom/cloud/tmc/integration/audio/PlayerInstance$IPlayerCallback;)V

    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->mPlayerMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->addMonitors()V

    invoke-virtual {v0, p2}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->seek(F)Z

    move-result p1

    invoke-direct {p0, p1, p3}, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->sendResponse(ZLcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized setAppPause(Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->isAPPPause:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->mPlayerMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/audio/PlayerInstance;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->isAppPause:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setAudioOption(Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->mPlayerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/audio/PlayerInstance;

    if-nez v0, :cond_0

    new-instance v0, Lcom/cloud/tmc/integration/audio/PlayerInstance;

    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->mApp:Lcom/cloud/tmc/integration/structure/App;

    new-instance v2, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient$PlayCallback;

    invoke-direct {v2, p0, p1}, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient$PlayCallback;-><init>(Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;Ljava/lang/String;)V

    invoke-direct {v0, v1, p1, v2}, Lcom/cloud/tmc/integration/audio/PlayerInstance;-><init>(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Lcom/cloud/tmc/integration/audio/PlayerInstance$IPlayerCallback;)V

    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->mPlayerMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->addMonitors()V

    invoke-direct {p0, p3, p2, v0}, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->onSetOption(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Lcom/google/gson/JsonObject;Lcom/cloud/tmc/integration/audio/PlayerInstance;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized stop(Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->mPlayerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/audio/PlayerInstance;

    if-nez v0, :cond_0

    new-instance v0, Lcom/cloud/tmc/integration/audio/PlayerInstance;

    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->mApp:Lcom/cloud/tmc/integration/structure/App;

    new-instance v2, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient$PlayCallback;

    invoke-direct {v2, p0, p1}, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient$PlayCallback;-><init>(Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;Ljava/lang/String;)V

    invoke-direct {v0, v1, p1, v2}, Lcom/cloud/tmc/integration/audio/PlayerInstance;-><init>(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Lcom/cloud/tmc/integration/audio/PlayerInstance$IPlayerCallback;)V

    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->mPlayerMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->addMonitors()V

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->stop()Z

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->sendResponse(ZLcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
