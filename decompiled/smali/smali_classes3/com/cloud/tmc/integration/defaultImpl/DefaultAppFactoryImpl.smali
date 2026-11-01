.class public Lcom/cloud/tmc/integration/defaultImpl/DefaultAppFactoryImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/integration/proxy/AppFactory;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createApp()Lcom/cloud/tmc/integration/structure/node/AppNode;
    .locals 2

    new-instance v0, Lcom/cloud/tmc/integration/structure/node/AppNode;

    const-class v1, Lcom/cloud/tmc/integration/structure/AppManager;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/integration/structure/AppManager;

    invoke-direct {v0, v1}, Lcom/cloud/tmc/integration/structure/node/AppNode;-><init>(Lcom/cloud/tmc/integration/structure/AppManager;)V

    return-object v0
.end method

.method public createVirtualApp()Lcom/cloud/tmc/integration/structure/node/AppNode;
    .locals 2

    new-instance v0, Lcom/cloud/tmc/integration/structure/node/AppNode;

    const-class v1, Lcom/cloud/tmc/integration/structure/VirtualAppManager;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/integration/structure/AppManager;

    invoke-direct {v0, v1}, Lcom/cloud/tmc/integration/structure/node/AppNode;-><init>(Lcom/cloud/tmc/integration/structure/AppManager;)V

    return-object v0
.end method
