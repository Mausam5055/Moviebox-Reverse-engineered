.class public interface abstract Lcom/cloud/tmc/integration/permission/proxy/AuthenticationProxy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/Proxiable;


# annotations
.annotation runtime Lcom/cloud/tmc/kernel/annotation/DefaultImpl;
    value = ""
.end annotation


# virtual methods
.method public abstract checkEventPermission(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/structure/Page;)Z
.end method

.method public abstract checkJSApi(Lcom/cloud/tmc/kernel/security/Permission;Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;Lcom/cloud/tmc/integration/structure/App;)Lcom/cloud/tmc/integration/permission/ApiPermissionCheckResult;
.end method

.method public abstract checkSPJSApi(Lcom/cloud/tmc/kernel/security/Permission;Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;Lcom/cloud/tmc/integration/structure/App;)Z
.end method

.method public abstract checkShowPermissionDialog(Lcom/cloud/tmc/kernel/security/Permission;Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;Lcom/cloud/tmc/integration/structure/Page;)Z
.end method

.method public abstract clearPermissionModel(Ljava/lang/String;)V
.end method

.method public abstract getAllPermissions(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/model/AppModel;)Ljava/util/Map;
    .param p3    # Lcom/cloud/tmc/integration/model/AppModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/integration/model/AppModel;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPermissionModel(Ljava/lang/String;)Lcom/cloud/tmc/kernel/model/permission/PermissionModel;
.end method

.method public abstract getPermissions(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/kernel/security/Permission;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/structure/Page;)Z
.end method

.method public abstract hasPermissionModel(Ljava/lang/String;Lcom/cloud/tmc/integration/structure/Page;)Z
.end method

.method public abstract setPermissionModel(Ljava/lang/String;Lcom/cloud/tmc/kernel/model/permission/PermissionModel;)V
.end method

.method public abstract setPermissionState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end method
