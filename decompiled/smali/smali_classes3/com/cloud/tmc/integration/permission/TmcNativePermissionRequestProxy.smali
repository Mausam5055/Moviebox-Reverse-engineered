.class public interface abstract Lcom/cloud/tmc/integration/permission/TmcNativePermissionRequestProxy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/Proxiable;


# virtual methods
.method public abstract addPermRequestCallback(ILcom/cloud/tmc/integration/permission/IPermissionRequestCallback;)V
.end method

.method public abstract getRequestCode()I
.end method

.method public abstract onRequestPermissionResult(I[Ljava/lang/String;[I)V
.end method
