.class public interface abstract Lcom/cloud/tmc/kernel/intf/IPackageConfig;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/Proxiable;


# annotations
.annotation runtime Lcom/cloud/tmc/kernel/annotation/DefaultImpl;
    value = "com.cloud.tmc.miniapp.GlobalPackageConfig"
.end annotation


# virtual methods
.method public abstract getAppId()Ljava/lang/String;
.end method

.method public abstract getDevSDKVersion()Ljava/lang/String;
.end method

.method public abstract getFrameworkVersion()Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getOpenMutipleTask()Z
.end method

.method public abstract getSDKVersion()Ljava/lang/String;
.end method

.method public abstract setAppId(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setFrameworkVersion(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setOpenMutipleTask(Z)V
.end method
