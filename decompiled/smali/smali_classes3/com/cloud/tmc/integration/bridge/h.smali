.class public final synthetic Lcom/cloud/tmc/integration/bridge/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/integration/bridge/ImageSelectBridge$1;

.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Lcom/cloud/tmc/integration/structure/App;

.field public final synthetic d:Lcom/cloud/tmc/kernel/resource/IImageResourceManager;

.field public final synthetic e:Ljava/util/List;

.field public final synthetic f:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/integration/bridge/ImageSelectBridge$1;Ljava/util/ArrayList;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/resource/IImageResourceManager;Ljava/util/List;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/integration/bridge/h;->a:Lcom/cloud/tmc/integration/bridge/ImageSelectBridge$1;

    iput-object p2, p0, Lcom/cloud/tmc/integration/bridge/h;->b:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/cloud/tmc/integration/bridge/h;->c:Lcom/cloud/tmc/integration/structure/App;

    iput-object p4, p0, Lcom/cloud/tmc/integration/bridge/h;->d:Lcom/cloud/tmc/kernel/resource/IImageResourceManager;

    iput-object p5, p0, Lcom/cloud/tmc/integration/bridge/h;->e:Ljava/util/List;

    iput-object p6, p0, Lcom/cloud/tmc/integration/bridge/h;->f:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/h;->a:Lcom/cloud/tmc/integration/bridge/ImageSelectBridge$1;

    iget-object v1, p0, Lcom/cloud/tmc/integration/bridge/h;->b:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/cloud/tmc/integration/bridge/h;->c:Lcom/cloud/tmc/integration/structure/App;

    iget-object v3, p0, Lcom/cloud/tmc/integration/bridge/h;->d:Lcom/cloud/tmc/kernel/resource/IImageResourceManager;

    iget-object v4, p0, Lcom/cloud/tmc/integration/bridge/h;->e:Ljava/util/List;

    iget-object v5, p0, Lcom/cloud/tmc/integration/bridge/h;->f:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/ImageSelectBridge$1;->a(Lcom/cloud/tmc/integration/bridge/ImageSelectBridge$1;Ljava/util/ArrayList;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/resource/IImageResourceManager;Ljava/util/List;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    return-void
.end method
