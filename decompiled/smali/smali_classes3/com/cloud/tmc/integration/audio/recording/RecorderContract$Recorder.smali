.class public interface abstract Lcom/cloud/tmc/integration/audio/recording/RecorderContract$Recorder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/integration/audio/recording/RecorderContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Recorder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0007\u001a\u00020\u0008H&J\u0008\u0010\t\u001a\u00020\u0008H&J\u0012\u0010\n\u001a\u00020\u00082\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH&J0\u0010\r\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0011H&J\u0008\u0010\u0015\u001a\u00020\u0008H&R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0002\u0010\u0004R\u0012\u0010\u0005\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0004R\u0012\u0010\u0006\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0004\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/audio/recording/RecorderContract$Recorder;",
        "",
        "isPaused",
        "",
        "()Z",
        "isRecording",
        "isStopped",
        "pauseRecording",
        "",
        "resumeRecording",
        "setRecorderCallback",
        "callback",
        "Lcom/cloud/tmc/integration/audio/recording/RecorderContract$RecorderCallback;",
        "startRecording",
        "outputFile",
        "",
        "audioSource",
        "",
        "channelCount",
        "sampleRate",
        "bitrate",
        "stopRecording",
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


# virtual methods
.method public abstract isPaused()Z
.end method

.method public abstract isRecording()Z
.end method

.method public abstract isStopped()Z
.end method

.method public abstract pauseRecording()V
.end method

.method public abstract resumeRecording()V
.end method

.method public abstract setRecorderCallback(Lcom/cloud/tmc/integration/audio/recording/RecorderContract$RecorderCallback;)V
.end method

.method public abstract startRecording(Ljava/lang/String;IIII)V
.end method

.method public abstract stopRecording()V
.end method
