.class public Lcom/cloud/tmc/integration/permission/TmcNativePermissionRequestManager;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/integration/permission/TmcNativePermissionRequestProxy;


# instance fields
.field private callbackArray:Landroidx/collection/y0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/y0;"
        }
    .end annotation
.end field

.field private lastRequestCode:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/collection/y0;

    invoke-direct {v0}, Landroidx/collection/y0;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/integration/permission/TmcNativePermissionRequestManager;->callbackArray:Landroidx/collection/y0;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/permission/TmcNativePermissionRequestManager;->lastRequestCode:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public addPermRequestCallback(ILcom/cloud/tmc/integration/permission/IPermissionRequestCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/permission/TmcNativePermissionRequestManager;->callbackArray:Landroidx/collection/y0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroidx/collection/y0;->l(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public getRequestCode()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/permission/TmcNativePermissionRequestManager;->lastRequestCode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/permission/TmcNativePermissionRequestManager;->lastRequestCode:Ljava/lang/Integer;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onRequestPermissionResult(I[Ljava/lang/String;[I)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/permission/TmcNativePermissionRequestManager;->callbackArray:Landroidx/collection/y0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/collection/y0;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/permission/IPermissionRequestCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/cloud/tmc/integration/permission/IPermissionRequestCallback;->onRequestPermissionResult(I[Ljava/lang/String;[I)V

    iget-object p2, p0, Lcom/cloud/tmc/integration/permission/TmcNativePermissionRequestManager;->callbackArray:Landroidx/collection/y0;

    invoke-virtual {p2, p1}, Landroidx/collection/y0;->m(I)V

    :cond_0
    return-void
.end method
