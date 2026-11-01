.class public final Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/integration/audio/recording/RecorderContract$Recorder;
.implements Lcom/cloud/tmc/integration/audio/recording/RecorderTimer$TimerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/integration/audio/recording/AudioRecorder$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u0000 $2\u00020\u00012\u00020\u0002:\u0001$B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0008\u0010\u0017\u001a\u00020\u0014H\u0016J\u0008\u0010\u0018\u001a\u00020\u0014H\u0016J\u0012\u0010\u0019\u001a\u00020\u00142\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u000eH\u0016J0\u0010\u001b\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u001f2\u0006\u0010\"\u001a\u00020\u001fH\u0016J\u0008\u0010#\u001a\u00020\u0014H\u0016R\u0014\u0010\u0004\u001a\u00020\u00058VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u00058VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0006R\u0014\u0010\u0008\u001a\u00020\u00058VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\u0006R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;",
        "Lcom/cloud/tmc/integration/audio/recording/RecorderContract$Recorder;",
        "Lcom/cloud/tmc/integration/audio/recording/RecorderTimer$TimerListener;",
        "()V",
        "isPaused",
        "",
        "()Z",
        "isRecording",
        "isStopped",
        "recordFile",
        "Ljava/io/File;",
        "recorder",
        "Landroid/media/MediaRecorder;",
        "recorderCallback",
        "Lcom/cloud/tmc/integration/audio/recording/RecorderContract$RecorderCallback;",
        "recorderState",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "timer",
        "Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;",
        "onTick",
        "",
        "elapsedTime",
        "",
        "pauseRecording",
        "resumeRecording",
        "setRecorderCallback",
        "callback",
        "startRecording",
        "outputFile",
        "",
        "audioSource",
        "",
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


# static fields
.field public static final Companion:Lcom/cloud/tmc/integration/audio/recording/AudioRecorder$Companion;

.field private static final ERROR_MSG_1:Ljava/lang/String; = "recorder init failed"

.field private static final STATE_PAUSED:I = 0x2

.field private static final STATE_RECORDING:I = 0x1

.field private static final STATE_STOPPED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AudioRecorder"


# instance fields
.field private recordFile:Ljava/io/File;

.field private recorder:Landroid/media/MediaRecorder;

.field private recorderCallback:Lcom/cloud/tmc/integration/audio/recording/RecorderContract$RecorderCallback;

.field private final recorderState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final timer:Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->Companion:Lcom/cloud/tmc/integration/audio/recording/AudioRecorder$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;

    invoke-direct {v0}, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;-><init>()V

    invoke-virtual {v0, p0}, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->setTimerListener(Lcom/cloud/tmc/integration/audio/recording/RecorderTimer$TimerListener;)V

    iput-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->timer:Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recorderState:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public isPaused()Z
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recorderState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRecording()Z
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recorderState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isStopped()Z
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recorderState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onTick(J)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recorderCallback:Lcom/cloud/tmc/integration/audio/recording/RecorderContract$RecorderCallback;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recorder:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->getMaxAmplitude()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Lcom/cloud/tmc/integration/audio/recording/RecorderContract$RecorderCallback;->onRecordProgress(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string p2, "AudioRecorder"

    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public pauseRecording()V
    .locals 3

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->isRecording()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pauseRecording isRecording: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioRecorder"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/cloud/tmc/integration/audio/recording/b;->a(Landroid/media/MediaRecorder;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->timer:Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->pause()V

    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recorderCallback:Lcom/cloud/tmc/integration/audio/recording/RecorderContract$RecorderCallback;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/cloud/tmc/integration/audio/recording/RecorderContract$RecorderCallback;->onPauseRecord()V

    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recorderState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    const-string v2, "pauseRecording() failed"

    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recorderCallback:Lcom/cloud/tmc/integration/audio/recording/RecorderContract$RecorderCallback;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    const-string v2, "recorder init failed"

    invoke-interface {v0, v1, v2}, Lcom/cloud/tmc/integration/audio/recording/RecorderContract$RecorderCallback;->onError(ILjava/lang/String;)V

    :cond_2
    :goto_2
    return-void
.end method

.method public resumeRecording()V
    .locals 3

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->isPaused()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumeRecording isPaused: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioRecorder"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/cloud/tmc/integration/audio/recording/a;->a(Landroid/media/MediaRecorder;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->timer:Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->resume()V

    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recorderCallback:Lcom/cloud/tmc/integration/audio/recording/RecorderContract$RecorderCallback;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/cloud/tmc/integration/audio/recording/RecorderContract$RecorderCallback;->onResumeRecord()V

    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recorderState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    const-string v2, "unpauseRecording() failed"

    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recorderCallback:Lcom/cloud/tmc/integration/audio/recording/RecorderContract$RecorderCallback;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    const-string v2, "recorder init failed"

    invoke-interface {v0, v1, v2}, Lcom/cloud/tmc/integration/audio/recording/RecorderContract$RecorderCallback;->onError(ILjava/lang/String;)V

    :cond_2
    :goto_2
    return-void
.end method

.method public setRecorderCallback(Lcom/cloud/tmc/integration/audio/recording/RecorderContract$RecorderCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recorderCallback:Lcom/cloud/tmc/integration/audio/recording/RecorderContract$RecorderCallback;

    return-void
.end method

.method public startRecording(Ljava/lang/String;IIII)V
    .locals 3

    const-string v0, "outputFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recordFile:Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startRecording file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AudioRecorder"

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recordFile:Ljava/io/File;

    const/4 v1, 0x2

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_9

    iget-object p1, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recordFile:Ljava/io/File;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p1

    if-ne p1, v2, :cond_9

    new-instance p1, Landroid/media/MediaRecorder;

    invoke-direct {p1}, Landroid/media/MediaRecorder;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {p1, p2}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recorder:Landroid/media/MediaRecorder;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    :cond_0
    iget-object p1, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recorder:Landroid/media/MediaRecorder;

    const/4 p2, 0x3

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    :cond_1
    iget-object p1, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recorder:Landroid/media/MediaRecorder;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p3}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    :cond_2
    iget-object p1, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recorder:Landroid/media/MediaRecorder;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p4}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    :cond_3
    iget-object p1, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recorder:Landroid/media/MediaRecorder;

    if-eqz p1, :cond_4

    invoke-virtual {p1, p5}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    :cond_4
    iget-object p1, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recorder:Landroid/media/MediaRecorder;

    if-eqz p1, :cond_5

    const/4 p3, -0x1

    invoke-virtual {p1, p3}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    :cond_5
    iget-object p1, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recorder:Landroid/media/MediaRecorder;

    if-eqz p1, :cond_6

    iget-object p3, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recordFile:Ljava/io/File;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    :cond_6
    :try_start_0
    iget-object p1, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recorder:Landroid/media/MediaRecorder;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/media/MediaRecorder;->prepare()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_7
    :goto_0
    iget-object p1, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recorder:Landroid/media/MediaRecorder;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/media/MediaRecorder;->start()V

    :cond_8
    iget-object p1, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->timer:Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->start()V

    iget-object p1, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recorderState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recorderCallback:Lcom/cloud/tmc/integration/audio/recording/RecorderContract$RecorderCallback;

    if-eqz p1, :cond_a

    iget-object p3, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recordFile:Ljava/io/File;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {p1, p3}, Lcom/cloud/tmc/integration/audio/recording/RecorderContract$RecorderCallback;->onStartRecord(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    const-string p3, "prepare() failed"

    invoke-static {v0, p3, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recorderCallback:Lcom/cloud/tmc/integration/audio/recording/RecorderContract$RecorderCallback;

    if-eqz p1, :cond_a

    const-string p3, "recorder init failed"

    invoke-interface {p1, p2, p3}, Lcom/cloud/tmc/integration/audio/recording/RecorderContract$RecorderCallback;->onError(ILjava/lang/String;)V

    goto :goto_2

    :cond_9
    iget-object p1, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recorderCallback:Lcom/cloud/tmc/integration/audio/recording/RecorderContract$RecorderCallback;

    if-eqz p1, :cond_a

    const-string p2, "invalid output file"

    invoke-interface {p1, v1, p2}, Lcom/cloud/tmc/integration/audio/recording/RecorderContract$RecorderCallback;->onError(ILjava/lang/String;)V

    :cond_a
    :goto_2
    return-void
.end method

.method public stopRecording()V
    .locals 4

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->isStopped()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopRecording isStopped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioRecorder"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->isStopped()Z

    move-result v0

    if-nez v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    const-string v2, "stopRecording() problems"

    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recorderCallback:Lcom/cloud/tmc/integration/audio/recording/RecorderContract$RecorderCallback;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recordFile:Ljava/io/File;

    iget-object v2, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->timer:Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->getElapsedTime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/cloud/tmc/integration/audio/recording/RecorderContract$RecorderCallback;->onStopRecord(Ljava/io/File;J)V

    :cond_2
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->timer:Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->reset()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recordFile:Ljava/io/File;

    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recorderState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iput-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recorder:Landroid/media/MediaRecorder;

    goto :goto_3

    :cond_3
    const-string v0, "Recording has already stopped or hasn\'t started"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method
