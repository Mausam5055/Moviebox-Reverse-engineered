.class public interface abstract Lcom/cloud/tmc/kernel/intf/ISDKConfig;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/Proxiable;


# annotations
.annotation runtime Lcom/cloud/tmc/kernel/annotation/DefaultImpl;
    value = "com.cloud.tmc.kernel.deftimpl.DefaultSDKConfig"
.end annotation


# virtual methods
.method public abstract getAppVersion()Ljava/lang/String;
.end method

.method public abstract openShareTarget()Z
.end method
