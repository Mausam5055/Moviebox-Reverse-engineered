.class public final synthetic Lcom/cloud/tmc/integration/bridge/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/integration/bridge/ImageSelectBridge;

.field public final synthetic b:Lcom/cloud/tmc/integration/structure/App;

.field public final synthetic c:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/integration/bridge/ImageSelectBridge;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/integration/bridge/g;->a:Lcom/cloud/tmc/integration/bridge/ImageSelectBridge;

    iput-object p2, p0, Lcom/cloud/tmc/integration/bridge/g;->b:Lcom/cloud/tmc/integration/structure/App;

    iput-object p3, p0, Lcom/cloud/tmc/integration/bridge/g;->c:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    iput-object p4, p0, Lcom/cloud/tmc/integration/bridge/g;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/g;->a:Lcom/cloud/tmc/integration/bridge/ImageSelectBridge;

    iget-object v1, p0, Lcom/cloud/tmc/integration/bridge/g;->b:Lcom/cloud/tmc/integration/structure/App;

    iget-object v2, p0, Lcom/cloud/tmc/integration/bridge/g;->c:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    iget-object v3, p0, Lcom/cloud/tmc/integration/bridge/g;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/cloud/tmc/integration/bridge/ImageSelectBridge;->a(Lcom/cloud/tmc/integration/bridge/ImageSelectBridge;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;)V

    return-void
.end method
