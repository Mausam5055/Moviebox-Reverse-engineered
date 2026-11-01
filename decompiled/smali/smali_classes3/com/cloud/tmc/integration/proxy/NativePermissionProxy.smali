.class public interface abstract Lcom/cloud/tmc/integration/proxy/NativePermissionProxy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/Proxiable;


# virtual methods
.method public abstract requestStoragePermission(Landroid/content/Context;Lcom/cloud/tmc/integration/callback/NativePermissionCallback;)V
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/cloud/tmc/integration/callback/NativePermissionCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
