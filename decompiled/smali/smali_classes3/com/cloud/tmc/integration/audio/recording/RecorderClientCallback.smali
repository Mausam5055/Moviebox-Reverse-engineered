.class public interface abstract Lcom/cloud/tmc/integration/audio/recording/RecorderClientCallback;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H&J\u0008\u0010\u0008\u001a\u00020\u0003H&J\u0008\u0010\t\u001a\u00020\u0003H&J\u0012\u0010\n\u001a\u00020\u00032\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH&J\u0012\u0010\r\u001a\u00020\u00032\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH&\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/audio/recording/RecorderClientCallback;",
        "",
        "onError",
        "",
        "errorCode",
        "",
        "errorMsg",
        "",
        "onRecordingPaused",
        "onRecordingResumed",
        "onRecordingStarted",
        "file",
        "Ljava/io/File;",
        "onRecordingStopped",
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
.method public abstract onError(ILjava/lang/String;)V
.end method

.method public abstract onRecordingPaused()V
.end method

.method public abstract onRecordingResumed()V
.end method

.method public abstract onRecordingStarted(Ljava/io/File;)V
.end method

.method public abstract onRecordingStopped(Ljava/io/File;)V
.end method
