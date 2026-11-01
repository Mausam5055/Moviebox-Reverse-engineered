.class public final Lcom/cloud/tmc/integration/audio/recording/RecorderClient$recorderCallback$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/integration/audio/recording/RecorderContract$RecorderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/audio/recording/RecorderClient;-><init>(Lcom/cloud/tmc/integration/structure/App;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000/\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u0008\u0010\u0008\u001a\u00020\u0003H\u0016J\u0018\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0005H\u0016J\u0008\u0010\r\u001a\u00020\u0003H\u0016J\u0010\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u001a\u0010\u0011\u001a\u00020\u00032\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0012\u001a\u00020\u000bH\u0016\u00a8\u0006\u0013"
    }
    d2 = {
        "com/cloud/tmc/integration/audio/recording/RecorderClient$recorderCallback$1",
        "Lcom/cloud/tmc/integration/audio/recording/RecorderContract$RecorderCallback;",
        "onError",
        "",
        "errorCode",
        "",
        "errorMsg",
        "",
        "onPauseRecord",
        "onRecordProgress",
        "mills",
        "",
        "amp",
        "onResumeRecord",
        "onStartRecord",
        "output",
        "Ljava/io/File;",
        "onStopRecord",
        "durationMills",
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


# instance fields
.field final synthetic this$0:Lcom/cloud/tmc/integration/audio/recording/RecorderClient;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/integration/audio/recording/RecorderClient;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient$recorderCallback$1;->this$0:Lcom/cloud/tmc/integration/audio/recording/RecorderClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Recorder onError: errorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " errorMsg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecorderClient"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient$recorderCallback$1;->this$0:Lcom/cloud/tmc/integration/audio/recording/RecorderClient;

    invoke-static {v0, p1, p2}, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->access$onRecordingError(Lcom/cloud/tmc/integration/audio/recording/RecorderClient;ILjava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;->INSTANCE:Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;

    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient$recorderCallback$1;->this$0:Lcom/cloud/tmc/integration/audio/recording/RecorderClient;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v2, "errMsg"

    invoke-virtual {v1, v2, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, v0, v1}, Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;->dispatchOnErrorListener(Lcom/cloud/tmc/integration/structure/App;Lcom/google/gson/JsonObject;)V

    return-void
.end method

.method public onPauseRecord()V
    .locals 4

    const-string v0, "RecorderClient"

    const-string v1, "Recorder onPauseRecord"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient$recorderCallback$1;->this$0:Lcom/cloud/tmc/integration/audio/recording/RecorderClient;

    invoke-static {v0}, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->access$onRecordingPaused(Lcom/cloud/tmc/integration/audio/recording/RecorderClient;)V

    sget-object v0, Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;->INSTANCE:Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;

    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient$recorderCallback$1;->this$0:Lcom/cloud/tmc/integration/audio/recording/RecorderClient;

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;->dispatchOnPauseListener$default(Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;Lcom/cloud/tmc/integration/structure/App;Lcom/google/gson/JsonObject;ILjava/lang/Object;)V

    return-void
.end method

.method public onRecordProgress(JI)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Recording onRecordProgress: mills: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " amp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "RecorderClient"

    invoke-static {v0, p3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient$recorderCallback$1;->this$0:Lcom/cloud/tmc/integration/audio/recording/RecorderClient;

    invoke-static {p3}, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->access$getMaxDuration$p(Lcom/cloud/tmc/integration/audio/recording/RecorderClient;)J

    move-result-wide v1

    cmp-long p3, p1, v1

    if-ltz p3, :cond_0

    iget-object p3, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient$recorderCallback$1;->this$0:Lcom/cloud/tmc/integration/audio/recording/RecorderClient;

    invoke-static {p3}, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->access$getMaxDuration$p(Lcom/cloud/tmc/integration/audio/recording/RecorderClient;)J

    move-result-wide v1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recording mills >= maxDuration: mills: "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " maxDuration: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient$recorderCallback$1;->this$0:Lcom/cloud/tmc/integration/audio/recording/RecorderClient;

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->stopRecording()V

    :cond_0
    return-void
.end method

.method public onResumeRecord()V
    .locals 4

    const-string v0, "RecorderClient"

    const-string v1, "Recorder onResumeRecord"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient$recorderCallback$1;->this$0:Lcom/cloud/tmc/integration/audio/recording/RecorderClient;

    invoke-static {v0}, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->access$onRecordingResumed(Lcom/cloud/tmc/integration/audio/recording/RecorderClient;)V

    sget-object v0, Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;->INSTANCE:Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;

    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient$recorderCallback$1;->this$0:Lcom/cloud/tmc/integration/audio/recording/RecorderClient;

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;->dispatchOnResumeListener$default(Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;Lcom/cloud/tmc/integration/structure/App;Lcom/google/gson/JsonObject;ILjava/lang/Object;)V

    return-void
.end method

.method public onStartRecord(Ljava/io/File;)V
    .locals 3

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "RecorderClient"

    const-string v1, "Recorder onStartRecord"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient$recorderCallback$1;->this$0:Lcom/cloud/tmc/integration/audio/recording/RecorderClient;

    invoke-static {v0, p1}, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->access$onRecordingStarted(Lcom/cloud/tmc/integration/audio/recording/RecorderClient;Ljava/io/File;)V

    sget-object p1, Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;->INSTANCE:Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;

    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient$recorderCallback$1;->this$0:Lcom/cloud/tmc/integration/audio/recording/RecorderClient;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v0, v1, v2, v1}, Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;->dispatchOnStartListener$default(Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;Lcom/cloud/tmc/integration/structure/App;Lcom/google/gson/JsonObject;ILjava/lang/Object;)V

    return-void
.end method

.method public onStopRecord(Ljava/io/File;J)V
    .locals 11

    const-string v0, "RecorderClient"

    const-string v1, "Recorder onStopRecord"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient$recorderCallback$1;->this$0:Lcom/cloud/tmc/integration/audio/recording/RecorderClient;

    invoke-static {v0, p1}, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->access$onRecordingStopped(Lcom/cloud/tmc/integration/audio/recording/RecorderClient;Ljava/io/File;)V

    sget-object v0, Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;->INSTANCE:Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;

    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient$recorderCallback$1;->this$0:Lcom/cloud/tmc/integration/audio/recording/RecorderClient;

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v1

    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    iget-object v3, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient$recorderCallback$1;->this$0:Lcom/cloud/tmc/integration/audio/recording/RecorderClient;

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {v3}, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v3

    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v5

    const-string v3, "app.appId"

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v9, 0x8

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v7, p1

    invoke-static/range {v5 .. v10}, Lcom/cloud/tmc/integration/utils/FileUtil;->notifyNewFileGenerateVUrl$default(Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    const-string v5, "tempFilePath"

    invoke-virtual {v2, v5, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "duration"

    invoke-virtual {v2, p3, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/ext/FileExtKt;->getTotalSize(Ljava/io/File;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :cond_1
    const-string p1, "fileSize"

    invoke-virtual {v2, p1, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;->dispatchOnStopListener(Lcom/cloud/tmc/integration/structure/App;Lcom/google/gson/JsonObject;)V

    return-void
.end method
