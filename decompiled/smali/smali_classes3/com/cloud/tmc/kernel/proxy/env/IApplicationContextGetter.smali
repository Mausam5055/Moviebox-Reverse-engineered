.class public interface abstract Lcom/cloud/tmc/kernel/proxy/env/IApplicationContextGetter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/Proxiable;


# annotations
.annotation runtime Lcom/cloud/tmc/kernel/annotation/DefaultImpl;
    value = "com.cloud.tmc.miniapp.defaultimpl.TmcApplicationContextGetter"
.end annotation


# virtual methods
.method public abstract getApplication()Landroid/app/Application;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getApplicationContext()Landroid/content/Context;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
