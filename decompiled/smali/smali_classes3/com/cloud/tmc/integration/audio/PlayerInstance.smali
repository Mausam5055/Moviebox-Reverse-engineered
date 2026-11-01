.class public Lcom/cloud/tmc/integration/audio/PlayerInstance;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/integration/audio/PlayerInstance$IPlayerCallback;,
        Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;
    }
.end annotation


# static fields
.field private static final KEY_AUDIO_PLAYER_ID:Ljava/lang/String; = "audioPlayerID"

.field private static final TAG:Ljava/lang/String; = "PlayerInstance"


# instance fields
.field private volatile autoPlay:Z

.field private bufferedProgress:I

.field public isAppPause:Z

.field private isCompleted:Z

.field private loop:Z

.field public final mApp:Lcom/cloud/tmc/integration/structure/App;

.field private mPlayCallback:Lcom/cloud/tmc/integration/audio/PlayerInstance$IPlayerCallback;

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private paused:Z

.field public pausedBack:Z

.field private playerId:Ljava/lang/String;

.field private shouldIgnoreWhenPlayAgain:Z

.field private src:Ljava/lang/String;

.field private startTime:I

.field private volume:F


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Lcom/cloud/tmc/integration/audio/PlayerInstance$IPlayerCallback;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->pausedBack:Z

    iput-boolean v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->paused:Z

    iput-boolean v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->isCompleted:Z

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->volume:F

    iput v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->bufferedProgress:I

    iput-boolean v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->isAppPause:Z

    iput-object p1, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->mApp:Lcom/cloud/tmc/integration/structure/App;

    iput-object p2, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->playerId:Ljava/lang/String;

    iput-object p3, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->mPlayCallback:Lcom/cloud/tmc/integration/audio/PlayerInstance$IPlayerCallback;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->shouldIgnoreWhenPlayAgain:Z

    new-instance p1, Landroid/media/MediaPlayer;

    invoke-direct {p1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    return-void
.end method

.method private broadcastEvent(Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->mPlayCallback:Lcom/cloud/tmc/integration/audio/PlayerInstance$IPlayerCallback;

    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->playerId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1}, Lcom/cloud/tmc/integration/audio/PlayerInstance$IPlayerCallback;->onDispatchEvent(Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "PlayerInstance"

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private getLocalPathIfNecessary(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->mApp:Lcom/cloud/tmc/integration/structure/App;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {v0, p1}, Lcom/cloud/tmc/integration/utils/FileUtil;->getFileFromAllProcessors(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    return-object v0

    :cond_2
    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    return-object v1

    :cond_4
    :goto_0
    return-object p1

    :cond_5
    :goto_1
    return-object v1

    :cond_6
    :goto_2
    return-object p1
.end method

.method public static notifyInvalidParam(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "success"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "errMsg"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    invoke-interface {p0, v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendJSONResponse(Lcom/google/gson/JsonObject;)V

    :cond_0
    return-void
.end method

.method private notifySuccess(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 3

    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "success"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "audioPlayerID"

    iget-object v2, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->playerId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendJSONResponse(Lcom/google/gson/JsonObject;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addMonitors()V
    .locals 2

    const-string v0, "PlayerInstance"

    const-string v1, "addMonitors"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    return-void
.end method

.method public getAutoPlay()Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAutoPlay:### id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->playerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayerInstance"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->autoPlay:Z

    return v0
.end method

.method public getBufferedProgress()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->bufferedProgress:I

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDuration()I
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getLoop()Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLoop:### id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->playerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayerInstance"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->loop:Z

    return v0
.end method

.method public getPlayerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->playerId:Ljava/lang/String;

    return-object v0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSrc:### id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->playerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayerInstance"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->src:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()F
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getStartTime:### id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->playerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayerInstance"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->startTime:I

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getVolume()F
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVolume:### id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->playerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayerInstance"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->volume:F

    return v0
.end method

.method public isPause()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->paused:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->w(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onBufferingUpdate i="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PlayerInstance"

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput p2, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->bufferedProgress:I

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->isCompleted:Z

    sget-object p1, Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;->ON_ENDED:Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;

    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->broadcastEvent(Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;)V

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    const-string p1, "UNKNOWN_ERROR"

    goto :goto_0

    :cond_0
    const-string p1, "SERVER_DIED"

    :goto_0
    const/16 v0, -0x3f2

    if-eq p3, v0, :cond_4

    const/16 v0, -0x3ef

    if-eq p3, v0, :cond_3

    const/16 v0, -0x3ec

    if-eq p3, v0, :cond_2

    const/16 v0, -0x6e

    if-eq p3, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error code , what is : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "   extra is :"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_1
    const-string p2, "TIMED_OUT_ERROR"

    goto :goto_1

    :cond_2
    const-string p2, "IO_ERROR"

    goto :goto_1

    :cond_3
    const-string p2, "ERROR_MALFORMED"

    goto :goto_1

    :cond_4
    const-string p2, "ERROR_UNSUPPORTED"

    :goto_1
    iget-object p3, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->mPlayCallback:Lcom/cloud/tmc/integration/audio/PlayerInstance$IPlayerCallback;

    sget-object v0, Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;->ON_ERROR:Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\t"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->playerId:Ljava/lang/String;

    invoke-interface {p3, v0, p1, p2}, Lcom/cloud/tmc/integration/audio/PlayerInstance$IPlayerCallback;->onDispatchEvent(Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    sget-object v0, Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;->ON_CAN_PLAY:Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;

    invoke-direct {p0, v0}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->broadcastEvent(Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;)V

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;->ON_PLAY:Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;

    invoke-direct {p0, v0}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->broadcastEvent(Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;)V

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->isAppPause:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->paused:Z

    iput-boolean p1, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->pausedBack:Z

    sget-object p1, Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;->ON_PAUSE:Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;

    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->broadcastEvent(Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->paused:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 0

    sget-object p1, Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;->ON_SEEKED:Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;

    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->broadcastEvent(Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;)V

    return-void
.end method

.method public pause()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->isPlaying()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    iput-boolean v2, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->paused:Z

    iput-boolean v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->isCompleted:Z

    sget-object v1, Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;->ON_PAUSE:Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;

    invoke-direct {p0, v1}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->broadcastEvent(Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    move v0, v2

    goto :goto_2

    :goto_1
    const-string v2, "PlayerInstance"

    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return v0
.end method

.method public play()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->isPlaying()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->shouldIgnoreWhenPlayAgain:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    iput-boolean v2, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->paused:Z

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_4

    iget-boolean v3, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->paused:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->isCompleted:Z

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    iput-boolean v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->isCompleted:Z

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V

    sget-object v1, Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;->ON_WAITING:Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;

    invoke-direct {p0, v1}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->broadcastEvent(Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;)V

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    sget-object v1, Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;->ON_PLAY:Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;

    invoke-direct {p0, v1}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->broadcastEvent(Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;)V

    :goto_2
    iput-boolean v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->paused:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    move v0, v2

    goto :goto_4

    :goto_3
    const-string v2, "PlayerInstance"

    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    return v0
.end method

.method public releaseMediaPlayer()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->paused:Z

    iput-boolean v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->pausedBack:Z

    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    :cond_0
    return-void
.end method

.method public removeMonitors()V
    .locals 2

    const-string v0, "PlayerInstance"

    const-string v1, "removeMonitors"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    return-void
.end method

.method public seek(F)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    const/4 v0, 0x1

    sget-object p1, Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;->ON_SEEKING:Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;

    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->broadcastEvent(Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->w(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0
.end method

.method public setAutoPlay(Z)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAutoPlay:### id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->playerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "### autoPlay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayerInstance"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->autoPlay:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->src:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->play()Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public setLoop(Z)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLoop:### id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->playerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", loop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayerInstance"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->loop:Z

    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public setSrc(Ljava/lang/String;)Z
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSrc:### id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->playerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayerInstance"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->src:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "must not set mutli src ### src="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->getLocalPathIfNecessary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSrc Error:### id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->playerId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSrc: param is invaild ### src="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1
    iput-object p1, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->src:Ljava/lang/String;

    :try_start_1
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->autoPlay:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnAutoPlay true,call play when setSrc = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V

    sget-object p1, Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;->ON_WAITING:Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;

    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->broadcastEvent(Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p1, 0x1

    return p1

    :goto_2
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->w(Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;->ON_ERROR:Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;

    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->broadcastEvent(Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;)V

    return v2
.end method

.method public setStartTime(I)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setStartTime:### id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->playerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayerInstance"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    mul-int/lit16 p1, p1, 0x3e8

    iput p1, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->startTime:I

    const/4 p1, 0x1

    return p1
.end method

.method public setVolume(F)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVolume:### id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->playerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", volume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayerInstance"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    iput p1, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->volume:F

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const-string p1, "setVolume invalid param."

    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public stop()Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    iput-boolean v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->paused:Z

    iput-boolean v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->pausedBack:Z

    iput-boolean v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->isCompleted:Z

    const/4 v0, 0x1

    sget-object v1, Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;->ON_STOP:Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;

    invoke-direct {p0, v1}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->broadcastEvent(Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->w(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0
.end method
