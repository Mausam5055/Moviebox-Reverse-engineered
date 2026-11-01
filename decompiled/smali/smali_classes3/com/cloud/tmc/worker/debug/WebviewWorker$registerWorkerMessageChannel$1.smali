.class public final Lcom/cloud/tmc/worker/debug/WebviewWorker$registerWorkerMessageChannel$1;
.super Landroid/webkit/WebMessagePort$WebMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/worker/debug/WebviewWorker;->registerWorkerMessageChannel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/cloud/tmc/worker/debug/WebviewWorker$registerWorkerMessageChannel$1",
        "Landroid/webkit/WebMessagePort$WebMessageCallback;",
        "onMessage",
        "",
        "port",
        "Landroid/webkit/WebMessagePort;",
        "message",
        "Landroid/webkit/WebMessage;",
        "com.cloud.tmc.worker"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cloud/tmc/worker/debug/WebviewWorker;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/worker/debug/WebviewWorker;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker$registerWorkerMessageChannel$1;->this$0:Lcom/cloud/tmc/worker/debug/WebviewWorker;

    invoke-direct {p0}, Landroid/webkit/WebMessagePort$WebMessageCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessage(Landroid/webkit/WebMessagePort;Landroid/webkit/WebMessage;)V
    .locals 1

    const-string v0, "port"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "message"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/webkit/WebMessage;->getData()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "workerSendToNative MessageChannel = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "miniapp"

    invoke-static {v0, p2}, Lcom/cloud/tmc/kernel/utils/TraceLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    const-string p2, "abilityName"

    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "debugRefresh"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/cloud/tmc/kernel/debug/a;->b()V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker$registerWorkerMessageChannel$1;->this$0:Lcom/cloud/tmc/worker/debug/WebviewWorker;

    invoke-static {p2}, Lcom/cloud/tmc/worker/debug/WebviewWorker;->access$getWorkerCallback$p(Lcom/cloud/tmc/worker/debug/WebviewWorker;)Lcom/cloud/tmc/kernel/worker/WorkerCallback;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-interface {p2, p1}, Lcom/cloud/tmc/kernel/worker/WorkerCallback;->onCallBack(Lcom/google/gson/JsonObject;)V

    :cond_1
    :goto_0
    return-void
.end method
