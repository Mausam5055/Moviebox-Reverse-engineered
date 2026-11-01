.class public Lcom/cloud/tmc/integration/invoke/extension/BridgeAccessExtension;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/point/BridgeAccessPoint;
.implements Lcom/cloud/tmc/kernel/node/NodeAware;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/cloud/tmc/kernel/point/BridgeAccessPoint;",
        "Lcom/cloud/tmc/kernel/node/NodeAware<",
        "Lcom/cloud/tmc/integration/structure/Page;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = ":Permission"


# instance fields
.field private pageReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/cloud/tmc/integration/structure/Page;",
            ">;"
        }
    .end annotation
.end field

.field private permissionManager:Lcom/cloud/tmc/integration/permission/PermissionManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/cloud/tmc/integration/permission/model/TmcGroupInit;->init()V

    return-void
.end method


# virtual methods
.method public asyncCheckPermission(Lcom/cloud/tmc/kernel/security/Permission;Lcom/cloud/tmc/kernel/security/Accessor;Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;)Z
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/invoke/extension/BridgeAccessExtension;->permissionManager:Lcom/cloud/tmc/integration/permission/PermissionManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/cloud/tmc/integration/permission/PermissionManager;->asyncCheckPermission(Lcom/cloud/tmc/kernel/security/Permission;Lcom/cloud/tmc/kernel/security/Accessor;Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;)Z

    move-result p4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "|"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/security/Permission;->authority()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "|accessor"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "#async check permission result="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, ":Permission"

    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p4
.end method

.method public bizCheckPermission(Lcom/cloud/tmc/kernel/security/Permission;Lcom/cloud/tmc/kernel/security/Accessor;Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;)Z
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/invoke/extension/BridgeAccessExtension;->permissionManager:Lcom/cloud/tmc/integration/permission/PermissionManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/cloud/tmc/integration/permission/PermissionManager;->bizCheckPermission(Lcom/cloud/tmc/kernel/security/Permission;Lcom/cloud/tmc/kernel/security/Accessor;Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;)Z

    move-result p4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "____"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/security/Permission;->authority()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "accessor"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "#biz check permission result="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, ":Permission"

    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p4
.end method

.method public checkPermission(Lcom/cloud/tmc/kernel/security/Permission;Lcom/cloud/tmc/kernel/security/Accessor;Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;)Z
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/invoke/extension/BridgeAccessExtension;->permissionManager:Lcom/cloud/tmc/integration/permission/PermissionManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/cloud/tmc/integration/permission/PermissionManager;->checkPermission(Lcom/cloud/tmc/kernel/security/Permission;Lcom/cloud/tmc/kernel/security/Accessor;Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;)Z

    move-result p4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "____"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/security/Permission;->authority()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "accessor"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "check permission result="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, ":Permission"

    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p4
.end method

.method public getNodeType()Ljava/lang/Class;
    .locals 1

    const-class v0, Lcom/cloud/tmc/integration/structure/Page;

    return-object v0
.end method

.method public manageAccessorGroup(Lcom/cloud/tmc/kernel/security/Accessor;)Lcom/cloud/tmc/kernel/security/Group;
    .locals 3

    invoke-static {}, Lcom/cloud/tmc/integration/permission/model/TmcGroupInit;->init()V

    iget-object v0, p0, Lcom/cloud/tmc/integration/invoke/extension/BridgeAccessExtension;->permissionManager:Lcom/cloud/tmc/integration/permission/PermissionManager;

    invoke-interface {v0, p1}, Lcom/cloud/tmc/integration/permission/PermissionManager;->manageAccessorGroup(Lcom/cloud/tmc/kernel/security/Accessor;)Lcom/cloud/tmc/kernel/security/Group;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accessor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " group="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/security/Group;->groupName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, ":Permission"

    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public manageAccessorPermissions(Lcom/cloud/tmc/kernel/security/Accessor;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/kernel/security/Accessor;",
            ")",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/kernel/security/Permission;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/integration/invoke/extension/BridgeAccessExtension;->permissionManager:Lcom/cloud/tmc/integration/permission/PermissionManager;

    invoke-interface {v0, p1}, Lcom/cloud/tmc/integration/permission/PermissionManager;->manageAccessorPermissions(Lcom/cloud/tmc/kernel/security/Accessor;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accessor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " permission list size="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    const-string p1, "0"

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, ":Permission"

    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public needPermissionCheck(Lcom/cloud/tmc/kernel/security/Accessor;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/kernel/security/Accessor;",
            "Ljava/util/List<",
            "+",
            "Lcom/cloud/tmc/kernel/security/Guard;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/integration/invoke/extension/BridgeAccessExtension;->permissionManager:Lcom/cloud/tmc/integration/permission/PermissionManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/cloud/tmc/integration/permission/AppPermissionManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/tmc/integration/permission/AppPermissionManager;-><init>(Lcom/cloud/tmc/integration/permission/BizPermissionManager;)V

    iput-object v0, p0, Lcom/cloud/tmc/integration/invoke/extension/BridgeAccessExtension;->permissionManager:Lcom/cloud/tmc/integration/permission/PermissionManager;

    invoke-interface {v0, p1}, Lcom/cloud/tmc/integration/permission/PermissionManager;->init(Lcom/cloud/tmc/kernel/security/Accessor;)V

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/security/Guard;

    invoke-interface {v1}, Lcom/cloud/tmc/kernel/security/Guard;->permit()Lcom/cloud/tmc/kernel/security/Permission;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lcom/cloud/tmc/kernel/security/Guard;->permit()Lcom/cloud/tmc/kernel/security/Permission;

    move-result-object v1

    invoke-interface {v1}, Lcom/cloud/tmc/kernel/security/Permission;->authority()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cloud/tmc/integration/permission/whitelist/BridgeWhiteList;->isInWhiteList(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_2
    iget-object p2, p0, Lcom/cloud/tmc/integration/invoke/extension/BridgeAccessExtension;->pageReference:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/cloud/tmc/integration/invoke/extension/BridgeAccessExtension;->pageReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cloud/tmc/integration/structure/Page;

    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object p2

    if-eqz p2, :cond_3

    const-class p2, Lcom/cloud/tmc/integration/permission/proxy/AuthenticationProxy;

    invoke-static {p2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cloud/tmc/integration/permission/proxy/AuthenticationProxy;

    iget-object v1, p0, Lcom/cloud/tmc/integration/invoke/extension/BridgeAccessExtension;->pageReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/integration/structure/Page;

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v1

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cloud/tmc/integration/invoke/extension/BridgeAccessExtension;->pageReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/integration/structure/Page;

    invoke-interface {p2, v1, v2}, Lcom/cloud/tmc/integration/permission/proxy/AuthenticationProxy;->hasPermissionModel(Ljava/lang/String;Lcom/cloud/tmc/integration/structure/Page;)Z

    move-result p2

    if-nez p2, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "accessor"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " dont have permission model"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, ":Permission"

    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public onFinalized()V
    .locals 0

    return-void
.end method

.method public onInitialized()V
    .locals 0

    return-void
.end method

.method public setNode(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/cloud/tmc/integration/structure/Page;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/integration/invoke/extension/BridgeAccessExtension;->pageReference:Ljava/lang/ref/WeakReference;

    return-void
.end method
