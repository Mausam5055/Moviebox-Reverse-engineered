.class public interface abstract Lcom/cloud/tmc/kernel/service/EnvironmentService;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/Proxiable;


# annotations
.annotation runtime Lcom/cloud/tmc/kernel/annotation/DefaultImpl;
    value = "com.cloud.tmc.miniapp.defaultimpl.EnvironmentServiceImpl"
.end annotation


# virtual methods
.method public abstract defaultPlatform()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getAppLanguage()Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getAppName()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getApplicationContext()Landroid/app/Application;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getLpid()I
.end method

.method public abstract getProductVersion()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getResources()Landroid/content/res/Resources;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getTopActivity()Ljava/lang/ref/WeakReference;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end method
