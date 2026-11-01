.class public final Lcom/cloud/tmc/integration/audio/recording/RecorderClient;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/integration/audio/recording/RecorderClient$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0017\u0018\u0000 32\u00020\u0001:\u00013B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000bJ\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015J\u0008\u0010\u0016\u001a\u00020\u0017H\u0002J\u0006\u0010\u0018\u001a\u00020\u0017J\u0006\u0010\u0019\u001a\u00020\u0017J\u0006\u0010\u001a\u001a\u00020\u0017J\u001a\u0010\u001b\u001a\u00020\u00132\u0006\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u000fH\u0002J\u0008\u0010\u001f\u001a\u00020\u0013H\u0002J\u0008\u0010 \u001a\u00020\u0013H\u0002J\u0010\u0010!\u001a\u00020\u00132\u0006\u0010\"\u001a\u00020\u0015H\u0002J\u0012\u0010#\u001a\u00020\u00132\u0008\u0010$\u001a\u0004\u0018\u00010\u0015H\u0002J\u0006\u0010%\u001a\u00020\u0013J\u0006\u0010&\u001a\u00020\u0013J\u0010\u0010\'\u001a\u00020\u00132\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000bJ\u0006\u0010(\u001a\u00020\u0013J\u000e\u0010)\u001a\u00020\u00132\u0006\u0010\u000c\u001a\u00020\rJ\u0010\u0010*\u001a\u00020\u00132\u0008\u0010+\u001a\u0004\u0018\u00010\u0008J.\u0010,\u001a\u00020\u00132\u0006\u0010-\u001a\u00020\u000f2\u0006\u0010.\u001a\u00020\u001d2\u0006\u0010/\u001a\u00020\u001d2\u0006\u00100\u001a\u00020\u001d2\u0006\u00101\u001a\u00020\u001dJ\u0006\u00102\u001a\u00020\u0013R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00064"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/audio/recording/RecorderClient;",
        "",
        "app",
        "Lcom/cloud/tmc/integration/structure/App;",
        "(Lcom/cloud/tmc/integration/structure/App;)V",
        "getApp",
        "()Lcom/cloud/tmc/integration/structure/App;",
        "audioRecorder",
        "Lcom/cloud/tmc/integration/audio/recording/RecorderContract$Recorder;",
        "callbacks",
        "",
        "Lcom/cloud/tmc/integration/audio/recording/RecorderClientCallback;",
        "maxDuration",
        "",
        "recordFilePath",
        "",
        "recorderCallback",
        "Lcom/cloud/tmc/integration/audio/recording/RecorderContract$RecorderCallback;",
        "addRecordingCallback",
        "",
        "getRecordFile",
        "Ljava/io/File;",
        "isGranted",
        "",
        "isPaused",
        "isRecording",
        "isStopped",
        "onRecordingError",
        "errorCode",
        "",
        "errorMsg",
        "onRecordingPaused",
        "onRecordingResumed",
        "onRecordingStarted",
        "output",
        "onRecordingStopped",
        "file",
        "pauseRecording",
        "release",
        "removeRecordingCallback",
        "resumeRecording",
        "setMaxDuration",
        "setRecorder",
        "recorder",
        "startRecording",
        "filePath",
        "audioSource",
        "channelCount",
        "sampleRate",
        "bitrate",
        "stopRecording",
        "Companion",
        "com.cloud.tmc.integration"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/integration/audio/recording/RecorderClient$Companion;

.field private static final TAG:Ljava/lang/String; = "RecorderClient"


# instance fields
.field private final app:Lcom/cloud/tmc/integration/structure/App;

.field private audioRecorder:Lcom/cloud/tmc/integration/audio/recording/RecorderContract$Recorder;

.field private final callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloud/tmc/integration/audio/recording/RecorderClientCallback;",
            ">;"
        }
    .end annotation
.end field

.field private maxDuration:J

.field private recordFilePath:Ljava/lang/String;

.field private recorderCallback:Lcom/cloud/tmc/integration/audio/recording/RecorderContract$RecorderCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/tmc/integration/audio/recording/RecorderClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->Companion:Lcom/cloud/tmc/integration/audio/recording/RecorderClient$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/cloud/tmc/integration/structure/App;)V
    .locals 2

    const-string v0, "app"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->app:Lcom/cloud/tmc/integration/structure/App;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->callbacks:Ljava/util/List;

    const-wide/32 v0, 0x927c0

    iput-wide v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->maxDuration:J

    new-instance p1, Lcom/cloud/tmc/integration/audio/recording/RecorderClient$recorderCallback$1;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/integration/audio/recording/RecorderClient$recorderCallback$1;-><init>(Lcom/cloud/tmc/integration/audio/recording/RecorderClient;)V

    iput-object p1, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->recorderCallback:Lcom/cloud/tmc/integration/audio/recording/RecorderContract$RecorderCallback;

    return-void
.end method

.method public static final synthetic access$getMaxDuration$p(Lcom/cloud/tmc/integration/audio/recording/RecorderClient;)J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->maxDuration:J

    return-wide v0
.end method

.method public static final synthetic access$onRecordingError(Lcom/cloud/tmc/integration/audio/recording/RecorderClient;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->onRecordingError(ILjava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$onRecordingPaused(Lcom/cloud/tmc/integration/audio/recording/RecorderClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->onRecordingPaused()V

    return-void
.end method

.method public static final synthetic access$onRecordingResumed(Lcom/cloud/tmc/integration/audio/recording/RecorderClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->onRecordingResumed()V

    return-void
.end method

.method public static final synthetic access$onRecordingStarted(Lcom/cloud/tmc/integration/audio/recording/RecorderClient;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->onRecordingStarted(Ljava/io/File;)V

    return-void
.end method

.method public static final synthetic access$onRecordingStopped(Lcom/cloud/tmc/integration/audio/recording/RecorderClient;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->onRecordingStopped(Ljava/io/File;)V

    return-void
.end method

.method private final isGranted()Z
    .locals 4

    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->app:Lcom/cloud/tmc/integration/structure/App;

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    sget-object v1, Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;->INSTANCE:Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;

    const-string v2, "android.permission.RECORD_AUDIO"

    invoke-virtual {v1, v0, v2}, Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;->isGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v1, "granted"

    goto :goto_1

    :cond_2
    const-string v1, "denied"

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recording audio permission is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RecorderClient"

    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private final onRecordingError(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->callbacks:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->callbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    :goto_0
    add-int/lit8 v1, v0, -0x1

    iget-object v2, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->callbacks:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/audio/recording/RecorderClientCallback;

    invoke-interface {v0, p1, p2}, Lcom/cloud/tmc/integration/audio/recording/RecorderClientCallback;->onError(ILjava/lang/String;)V

    if-gez v1, :cond_0

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private final onRecordingPaused()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->callbacks:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->callbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    :goto_0
    add-int/lit8 v1, v0, -0x1

    iget-object v2, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->callbacks:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/audio/recording/RecorderClientCallback;

    invoke-interface {v0}, Lcom/cloud/tmc/integration/audio/recording/RecorderClientCallback;->onRecordingPaused()V

    if-gez v1, :cond_0

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private final onRecordingResumed()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->callbacks:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->callbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    :goto_0
    add-int/lit8 v1, v0, -0x1

    iget-object v2, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->callbacks:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/audio/recording/RecorderClientCallback;

    invoke-interface {v0}, Lcom/cloud/tmc/integration/audio/recording/RecorderClientCallback;->onRecordingResumed()V

    if-gez v1, :cond_0

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private final onRecordingStarted(Ljava/io/File;)V
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->callbacks:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->callbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    :goto_0
    add-int/lit8 v1, v0, -0x1

    iget-object v2, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->callbacks:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/audio/recording/RecorderClientCallback;

    invoke-interface {v0, p1}, Lcom/cloud/tmc/integration/audio/recording/RecorderClientCallback;->onRecordingStarted(Ljava/io/File;)V

    if-gez v1, :cond_0

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private final onRecordingStopped(Ljava/io/File;)V
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->callbacks:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->callbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    :goto_0
    add-int/lit8 v1, v0, -0x1

    iget-object v2, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->callbacks:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/audio/recording/RecorderClientCallback;

    invoke-interface {v0, p1}, Lcom/cloud/tmc/integration/audio/recording/RecorderClientCallback;->onRecordingStopped(Ljava/io/File;)V

    if-gez v1, :cond_0

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public final addRecordingCallback(Lcom/cloud/tmc/integration/audio/recording/RecorderClientCallback;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final getApp()Lcom/cloud/tmc/integration/structure/App;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->app:Lcom/cloud/tmc/integration/structure/App;

    return-object v0
.end method

.method public final getRecordFile()Ljava/io/File;
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->recordFilePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public final isPaused()Z
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->audioRecorder:Lcom/cloud/tmc/integration/audio/recording/RecorderContract$Recorder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/integration/audio/recording/RecorderContract$Recorder;->isPaused()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public final isRecording()Z
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->audioRecorder:Lcom/cloud/tmc/integration/audio/recording/RecorderContract$Recorder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/integration/audio/recording/RecorderContract$Recorder;->isRecording()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public final isStopped()Z
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->audioRecorder:Lcom/cloud/tmc/integration/audio/recording/RecorderContract$Recorder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/integration/audio/recording/RecorderContract$Recorder;->isStopped()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public final declared-synchronized pauseRecording()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->isGranted()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "RecorderClient"

    const-string v1, "pauseRecording: permission denied"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->audioRecorder:Lcom/cloud/tmc/integration/audio/recording/RecorderContract$Recorder;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/cloud/tmc/integration/audio/recording/RecorderContract$Recorder;->pauseRecording()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final release()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->audioRecorder:Lcom/cloud/tmc/integration/audio/recording/RecorderContract$Recorder;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/integration/audio/recording/RecorderContract$Recorder;->stopRecording()V

    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->callbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final removeRecordingCallback(Lcom/cloud/tmc/integration/audio/recording/RecorderClientCallback;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final declared-synchronized resumeRecording()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->isGranted()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "RecorderClient"

    const-string v1, "resumeRecording: permission denied"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->audioRecorder:Lcom/cloud/tmc/integration/audio/recording/RecorderContract$Recorder;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/cloud/tmc/integration/audio/recording/RecorderContract$Recorder;->resumeRecording()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final setMaxDuration(J)V
    .locals 0

    iput-wide p1, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->maxDuration:J

    return-void
.end method

.method public final setRecorder(Lcom/cloud/tmc/integration/audio/recording/RecorderContract$Recorder;)V
    .locals 1

    iput-object p1, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->audioRecorder:Lcom/cloud/tmc/integration/audio/recording/RecorderContract$Recorder;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->recorderCallback:Lcom/cloud/tmc/integration/audio/recording/RecorderContract$RecorderCallback;

    invoke-interface {p1, v0}, Lcom/cloud/tmc/integration/audio/recording/RecorderContract$Recorder;->setRecorderCallback(Lcom/cloud/tmc/integration/audio/recording/RecorderContract$RecorderCallback;)V

    :cond_0
    return-void
.end method

.method public final declared-synchronized startRecording(Ljava/lang/String;IIII)V
    .locals 7

    monitor-enter p0

    :try_start_0
    const-string v0, "filePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->isGranted()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "RecorderClient"

    const-string p2, "startRecording: permission denied"

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->recordFilePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->audioRecorder:Lcom/cloud/tmc/integration/audio/recording/RecorderContract$Recorder;

    if-eqz v1, :cond_1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/cloud/tmc/integration/audio/recording/RecorderContract$Recorder;->startRecording(Ljava/lang/String;IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final declared-synchronized stopRecording()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->isGranted()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "RecorderClient"

    const-string v1, "stopRecording: permission denied"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->isStopped()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->audioRecorder:Lcom/cloud/tmc/integration/audio/recording/RecorderContract$Recorder;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/cloud/tmc/integration/audio/recording/RecorderContract$Recorder;->stopRecording()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
