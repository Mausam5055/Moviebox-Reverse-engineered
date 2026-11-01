.class Lcom/cloud/tmc/kernel/utils/EngineUtils$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/kernel/utils/EngineUtils;->sendToRender(Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/kernel/worker/JSI;Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/cloud/tmc/kernel/bridge/SendToRenderCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/cloud/tmc/kernel/bridge/SendToRenderCallback;

.field final synthetic val$finalUseWorkerCallback:Z


# direct methods
.method constructor <init>(Lcom/cloud/tmc/kernel/bridge/SendToRenderCallback;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/kernel/utils/EngineUtils$1;->val$callback:Lcom/cloud/tmc/kernel/bridge/SendToRenderCallback;

    iput-boolean p2, p0, Lcom/cloud/tmc/kernel/utils/EngineUtils$1;->val$finalUseWorkerCallback:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(Lcom/google/gson/JsonObject;)V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/kernel/utils/EngineUtils$1;->val$callback:Lcom/cloud/tmc/kernel/bridge/SendToRenderCallback;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/cloud/tmc/kernel/utils/EngineUtils$1;->val$finalUseWorkerCallback:Z

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Lcom/cloud/tmc/kernel/bridge/SendToRenderCallback;->onCallBack(Lcom/google/gson/JsonObject;)V

    :cond_0
    return-void
.end method
