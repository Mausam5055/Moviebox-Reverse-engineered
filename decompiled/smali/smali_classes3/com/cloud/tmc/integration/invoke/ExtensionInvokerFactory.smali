.class public interface abstract Lcom/cloud/tmc/integration/invoke/ExtensionInvokerFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/Proxiable;


# annotations
.annotation runtime Lcom/cloud/tmc/kernel/annotation/DefaultImpl;
    value = ""
.end annotation


# virtual methods
.method public abstract createPermissionExtensionInvoker(Lcom/cloud/tmc/kernel/security/AccessController;Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;)Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;
.end method

.method public abstract createScheduleExtensionInvoker(Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;)Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;
.end method
