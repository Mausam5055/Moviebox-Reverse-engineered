.class public interface abstract Lcom/cloud/tmc/integration/proxy/AppFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/Proxiable;


# annotations
.annotation runtime Lcom/cloud/tmc/kernel/annotation/DefaultImpl;
    value = "com.cloud.tmc.integration.defaultImpl.DefaultAppFactoryImpl"
.end annotation


# virtual methods
.method public abstract createApp()Lcom/cloud/tmc/integration/structure/node/AppNode;
.end method

.method public abstract createVirtualApp()Lcom/cloud/tmc/integration/structure/node/AppNode;
.end method
