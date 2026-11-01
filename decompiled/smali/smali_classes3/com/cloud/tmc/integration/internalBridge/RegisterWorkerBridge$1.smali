.class Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge;->registerWorker(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Lcom/cloud/tmc/integration/structure/Page;Lcom/cloud/tmc/integration/structure/App;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge;

.field final synthetic val$app:Lcom/cloud/tmc/integration/structure/App;

.field final synthetic val$data:Lcom/google/gson/JsonObject;

.field final synthetic val$eventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

.field final synthetic val$finalWorker:Lcom/cloud/tmc/kernel/worker/JSI;

.field final synthetic val$finalWorker1:Lcom/cloud/tmc/kernel/worker/JSI;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge;Lcom/cloud/tmc/kernel/worker/JSI;Lcom/cloud/tmc/integration/structure/App;Lcom/google/gson/JsonObject;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;Lcom/cloud/tmc/kernel/worker/JSI;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$1;->this$0:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge;

    iput-object p2, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$1;->val$finalWorker1:Lcom/cloud/tmc/kernel/worker/JSI;

    iput-object p3, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$1;->val$app:Lcom/cloud/tmc/integration/structure/App;

    iput-object p4, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$1;->val$data:Lcom/google/gson/JsonObject;

    iput-object p5, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$1;->val$eventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    iput-object p6, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$1;->val$finalWorker:Lcom/cloud/tmc/kernel/worker/JSI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)Z
    .locals 4

    iget-object p1, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$1;->val$finalWorker1:Lcom/cloud/tmc/kernel/worker/JSI;

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/worker/JSI;->workerOnMessageReady()V

    sget-object p1, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppPrepareUtils;

    iget-object v0, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$1;->val$app:Lcom/cloud/tmc/integration/structure/App;

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/integration/utils/BaseAppPrepareUtils;->isShellType(Lcom/cloud/tmc/integration/model/AppModel;)Z

    move-result p1

    const/4 v0, 0x1

    const-string v1, "workerOnMessageReady"

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$1;->val$app:Lcom/cloud/tmc/integration/structure/App;

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getDevMode()I

    move-result p1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    const-class p1, Lcom/cloud/tmc/integration/point/IIDEDispatcherPoint;

    invoke-static {p1}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->as(Ljava/lang/Class;)Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;

    move-result-object p1

    iget-object v2, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$1;->val$app:Lcom/cloud/tmc/integration/structure/App;

    invoke-virtual {p1, v2}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->node(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->create()Lcom/cloud/tmc/kernel/extension/Extension;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/point/IIDEDispatcherPoint;

    if-eqz p1, :cond_0

    const-string v2, "miniapp.workerInit"

    iget-object v3, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$1;->val$data:Lcom/google/gson/JsonObject;

    invoke-interface {p1, v2, v3}, Lcom/cloud/tmc/integration/point/IIDEDispatcherPoint;->sendMsg(Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    :cond_0
    iget-object p1, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$1;->val$eventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    invoke-interface {p1, v1, p0}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->unregister(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    return v0

    :cond_1
    iget-object p1, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$1;->val$finalWorker:Lcom/cloud/tmc/kernel/worker/JSI;

    const-string v2, "workerInit"

    iget-object v3, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$1;->val$data:Lcom/google/gson/JsonObject;

    invoke-static {p1, v2, v3}, Lcom/cloud/tmc/integration/event/EventHelper;->dispatchEventToWorker(Lcom/cloud/tmc/kernel/worker/JSI;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$1;->val$eventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    invoke-interface {p1, v1, p0}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->unregister(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    return v0
.end method
