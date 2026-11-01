.class public final Lcom/cloud/tmc/worker/WorkerManager$MyWorkCall;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/worker/WorkerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/worker/WorkerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MyWorkCall"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/cloud/tmc/worker/WorkerManager$MyWorkCall;",
        "Lcom/cloud/tmc/kernel/worker/WorkerCallback;",
        "(Lcom/cloud/tmc/worker/WorkerManager;)V",
        "onCallBack",
        "",
        "resultObj",
        "Lcom/google/gson/JsonObject;",
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
.field final synthetic this$0:Lcom/cloud/tmc/worker/WorkerManager;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/worker/WorkerManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/worker/WorkerManager$MyWorkCall;->this$0:Lcom/cloud/tmc/worker/WorkerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/google/gson/JsonObject;Lcom/cloud/tmc/worker/WorkerManager;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/worker/WorkerManager$MyWorkCall;->onCallBack$lambda$0(Lcom/google/gson/JsonObject;Lcom/cloud/tmc/worker/WorkerManager;)V

    return-void
.end method

.method private static final onCallBack$lambda$0(Lcom/google/gson/JsonObject;Lcom/cloud/tmc/worker/WorkerManager;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    :try_start_0
    const-string v0, "abilityName"

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "callback"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "callbackId"

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/cloud/tmc/worker/WorkerManager;->access$getCallbackMap$p(Lcom/cloud/tmc/worker/WorkerManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;

    if-eqz v1, :cond_1

    invoke-interface {v1, p0}, Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;->onCallBack(Lcom/google/gson/JsonObject;)V

    :cond_1
    invoke-static {p1}, Lcom/cloud/tmc/worker/WorkerManager;->access$getCallbackMap$p(Lcom/cloud/tmc/worker/WorkerManager;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    const-class v0, Lcom/cloud/tmc/kernel/bridge/IMsgDispatcher;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/bridge/IMsgDispatcher;

    invoke-interface {v0, p1, p0}, Lcom/cloud/tmc/kernel/bridge/IMsgDispatcher;->handleMsgFromWorker(Lcom/cloud/tmc/kernel/worker/JSI;Lcom/google/gson/JsonObject;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Worker send message to Native/Render fail: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " ; "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TmcWorker"

    invoke-static {p1, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public onCallBack(Lcom/google/gson/JsonObject;)V
    .locals 4

    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v1, p0, Lcom/cloud/tmc/worker/WorkerManager$MyWorkCall;->this$0:Lcom/cloud/tmc/worker/WorkerManager;

    invoke-static {v1}, Lcom/cloud/tmc/worker/WorkerManager;->access$getAppId$p(Lcom/cloud/tmc/worker/WorkerManager;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->SEND_TO_NATIVE:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, p1}, Lcom/google/gson/Gson;->toJson(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/worker/WorkerManager$MyWorkCall;->this$0:Lcom/cloud/tmc/worker/WorkerManager;

    invoke-static {v0}, Lcom/cloud/tmc/worker/WorkerManager;->access$getMainHandler$p(Lcom/cloud/tmc/worker/WorkerManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/tmc/worker/WorkerManager$MyWorkCall;->this$0:Lcom/cloud/tmc/worker/WorkerManager;

    new-instance v2, Lcom/cloud/tmc/worker/b;

    invoke-direct {v2, p1, v1}, Lcom/cloud/tmc/worker/b;-><init>(Lcom/google/gson/JsonObject;Lcom/cloud/tmc/worker/WorkerManager;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
