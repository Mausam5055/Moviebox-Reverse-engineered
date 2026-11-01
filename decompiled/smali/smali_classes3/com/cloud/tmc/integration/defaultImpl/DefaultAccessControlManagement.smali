.class public Lcom/cloud/tmc/integration/defaultImpl/DefaultAccessControlManagement;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/security/AccessControlManagement;


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field private bridgeAccessPoint:Lcom/cloud/tmc/kernel/point/BridgeAccessPoint;

.field private bridgeContext:Lcom/cloud/tmc/kernel/bridge/NativeCallContext;

.field private helper:Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TmcKernel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/cloud/tmc/integration/defaultImpl/DefaultAccessControlManagement;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cloud/tmc/integration/defaultImpl/DefaultAccessControlManagement;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;Lcom/cloud/tmc/kernel/extension/ExtensionManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/integration/defaultImpl/DefaultAccessControlManagement;->bridgeContext:Lcom/cloud/tmc/kernel/bridge/NativeCallContext;

    iput-object p2, p0, Lcom/cloud/tmc/integration/defaultImpl/DefaultAccessControlManagement;->helper:Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;

    const-class p2, Lcom/cloud/tmc/kernel/point/BridgeAccessPoint;

    invoke-static {p2}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->as(Ljava/lang/Class;)Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->extensionManager(Lcom/cloud/tmc/kernel/extension/ExtensionManager;)Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;

    move-result-object p2

    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->getNode()Lcom/cloud/tmc/kernel/node/Node;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->node(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->create()Lcom/cloud/tmc/kernel/extension/Extension;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/point/BridgeAccessPoint;

    iput-object p1, p0, Lcom/cloud/tmc/integration/defaultImpl/DefaultAccessControlManagement;->bridgeAccessPoint:Lcom/cloud/tmc/kernel/point/BridgeAccessPoint;

    return-void
.end method


# virtual methods
.method public asyncPermissionCheck(Lcom/cloud/tmc/kernel/security/Permission;Lcom/cloud/tmc/kernel/security/Accessor;)Z
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/DefaultAccessControlManagement;->bridgeAccessPoint:Lcom/cloud/tmc/kernel/point/BridgeAccessPoint;

    iget-object v1, p0, Lcom/cloud/tmc/integration/defaultImpl/DefaultAccessControlManagement;->bridgeContext:Lcom/cloud/tmc/kernel/bridge/NativeCallContext;

    iget-object v2, p0, Lcom/cloud/tmc/integration/defaultImpl/DefaultAccessControlManagement;->helper:Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/cloud/tmc/kernel/point/BridgeAccessPoint;->asyncCheckPermission(Lcom/cloud/tmc/kernel/security/Permission;Lcom/cloud/tmc/kernel/security/Accessor;Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;)Z

    move-result p1

    return p1
.end method

.method public bizPermissionCheck(Lcom/cloud/tmc/kernel/security/Permission;Lcom/cloud/tmc/kernel/security/Accessor;)Z
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/DefaultAccessControlManagement;->bridgeAccessPoint:Lcom/cloud/tmc/kernel/point/BridgeAccessPoint;

    iget-object v1, p0, Lcom/cloud/tmc/integration/defaultImpl/DefaultAccessControlManagement;->bridgeContext:Lcom/cloud/tmc/kernel/bridge/NativeCallContext;

    iget-object v2, p0, Lcom/cloud/tmc/integration/defaultImpl/DefaultAccessControlManagement;->helper:Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/cloud/tmc/kernel/point/BridgeAccessPoint;->bizCheckPermission(Lcom/cloud/tmc/kernel/security/Permission;Lcom/cloud/tmc/kernel/security/Accessor;Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;)Z

    move-result p1

    return p1
.end method

.method public manageAccessorGroup(Lcom/cloud/tmc/kernel/security/Accessor;)Lcom/cloud/tmc/kernel/security/Group;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/DefaultAccessControlManagement;->bridgeAccessPoint:Lcom/cloud/tmc/kernel/point/BridgeAccessPoint;

    invoke-interface {v0, p1}, Lcom/cloud/tmc/kernel/point/BridgeAccessPoint;->manageAccessorGroup(Lcom/cloud/tmc/kernel/security/Accessor;)Lcom/cloud/tmc/kernel/security/Group;

    move-result-object p1

    return-object p1
.end method

.method public manageAccessorPermissions(Lcom/cloud/tmc/kernel/security/Accessor;)Ljava/util/List;
    .locals 1
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

    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/DefaultAccessControlManagement;->bridgeAccessPoint:Lcom/cloud/tmc/kernel/point/BridgeAccessPoint;

    invoke-interface {v0, p1}, Lcom/cloud/tmc/kernel/point/BridgeAccessPoint;->manageAccessorPermissions(Lcom/cloud/tmc/kernel/security/Accessor;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public needPermissionCheck(Lcom/cloud/tmc/kernel/security/Accessor;Ljava/util/List;)Z
    .locals 1
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

    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/DefaultAccessControlManagement;->bridgeAccessPoint:Lcom/cloud/tmc/kernel/point/BridgeAccessPoint;

    invoke-interface {v0, p1, p2}, Lcom/cloud/tmc/kernel/point/BridgeAccessPoint;->needPermissionCheck(Lcom/cloud/tmc/kernel/security/Accessor;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public permissionCheck(Lcom/cloud/tmc/kernel/security/Permission;Lcom/cloud/tmc/kernel/security/Accessor;)Z
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/DefaultAccessControlManagement;->bridgeAccessPoint:Lcom/cloud/tmc/kernel/point/BridgeAccessPoint;

    iget-object v1, p0, Lcom/cloud/tmc/integration/defaultImpl/DefaultAccessControlManagement;->bridgeContext:Lcom/cloud/tmc/kernel/bridge/NativeCallContext;

    iget-object v2, p0, Lcom/cloud/tmc/integration/defaultImpl/DefaultAccessControlManagement;->helper:Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/cloud/tmc/kernel/point/BridgeAccessPoint;->checkPermission(Lcom/cloud/tmc/kernel/security/Permission;Lcom/cloud/tmc/kernel/security/Accessor;Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;)Z

    move-result p1

    return p1
.end method
