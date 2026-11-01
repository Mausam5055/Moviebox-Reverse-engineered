.class public Lcom/cloud/tmc/integration/permission/AppPermissionManager;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/integration/permission/PermissionManager;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static WHITE_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private appId:Ljava/lang/String;

.field private mApiBizPermissionManager:Lcom/cloud/tmc/integration/permission/BizPermissionManager;

.field private rvPermissionServiceProxy:Lcom/cloud/tmc/integration/permission/proxy/AuthenticationProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tmcintegration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/cloud/tmc/integration/permission/AppPermissionManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cloud/tmc/integration/permission/AppPermissionManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/cloud/tmc/integration/permission/AppPermissionManager;->WHITE_LIST:Ljava/util/List;

    const-string v1, "registerWorker"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/cloud/tmc/integration/permission/AppPermissionManager;->WHITE_LIST:Ljava/util/List;

    const-string v1, "getPackageFile"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lcom/cloud/tmc/integration/permission/BizPermissionManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/integration/permission/AppPermissionManager;->mApiBizPermissionManager:Lcom/cloud/tmc/integration/permission/BizPermissionManager;

    return-void
.end method


# virtual methods
.method public asyncCheckPermission(Lcom/cloud/tmc/kernel/security/Permission;Lcom/cloud/tmc/kernel/security/Accessor;Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;)Z
    .locals 1

    instance-of v0, p2, Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/cloud/tmc/integration/structure/Page;

    iget-object v0, p0, Lcom/cloud/tmc/integration/permission/AppPermissionManager;->rvPermissionServiceProxy:Lcom/cloud/tmc/integration/permission/proxy/AuthenticationProxy;

    invoke-interface {v0, p1, p3, p4, p2}, Lcom/cloud/tmc/integration/permission/proxy/AuthenticationProxy;->checkShowPermissionDialog(Lcom/cloud/tmc/kernel/security/Permission;Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;Lcom/cloud/tmc/integration/structure/Page;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bizCheckPermission(Lcom/cloud/tmc/kernel/security/Permission;Lcom/cloud/tmc/kernel/security/Accessor;Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;)Z
    .locals 3

    iget-object p2, p0, Lcom/cloud/tmc/integration/permission/AppPermissionManager;->mApiBizPermissionManager:Lcom/cloud/tmc/integration/permission/BizPermissionManager;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/security/Permission;->authority()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cloud/tmc/integration/permission/AppPermissionManager;->appId:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->getParams()Lcom/google/gson/JsonObject;

    move-result-object p3

    invoke-interface {p2, v1, v2, p3}, Lcom/cloud/tmc/integration/permission/BizPermissionManager;->checkBizParamPermission(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;)Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p2, Lcom/cloud/tmc/integration/permission/AppPermissionManager;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/security/Permission;->authority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not supported by param!"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/security/Permission;->authority()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p4, p2, p1}, Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;->sendError(ILjava/lang/String;)V

    :cond_0
    return v0
.end method

.method public checkPermission(Lcom/cloud/tmc/kernel/security/Permission;Lcom/cloud/tmc/kernel/security/Accessor;Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;)Z
    .locals 4

    sget-object v0, Lcom/cloud/tmc/integration/permission/AppPermissionManager;->WHITE_LIST:Ljava/util/List;

    invoke-virtual {p3}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object p1, Lcom/cloud/tmc/integration/permission/AppPermissionManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "checkPermission skip white list! "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    instance-of v0, p2, Lcom/cloud/tmc/integration/structure/Page;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    instance-of v3, p2, Lcom/cloud/tmc/integration/structure/App;

    if-nez v3, :cond_1

    return v2

    :cond_1
    instance-of v3, p2, Lcom/cloud/tmc/integration/structure/App;

    if-eqz v3, :cond_2

    move-object v3, p2

    check-cast v3, Lcom/cloud/tmc/integration/structure/App;

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-eqz v0, :cond_3

    check-cast p2, Lcom/cloud/tmc/integration/structure/Page;

    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v3

    :cond_3
    iget-object p2, p0, Lcom/cloud/tmc/integration/permission/AppPermissionManager;->rvPermissionServiceProxy:Lcom/cloud/tmc/integration/permission/proxy/AuthenticationProxy;

    invoke-interface {p2, p1, p3, p4, v3}, Lcom/cloud/tmc/integration/permission/proxy/AuthenticationProxy;->checkJSApi(Lcom/cloud/tmc/kernel/security/Permission;Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;Lcom/cloud/tmc/integration/structure/App;)Lcom/cloud/tmc/integration/permission/ApiPermissionCheckResult;

    move-result-object p2

    sget-object v0, Lcom/cloud/tmc/integration/permission/ApiPermissionCheckResult;->ALLOW:Lcom/cloud/tmc/integration/permission/ApiPermissionCheckResult;

    if-ne v0, p2, :cond_4

    sget-object p2, Lcom/cloud/tmc/integration/permission/AppPermissionManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkPermission allowed:\t "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cloud/tmc/integration/permission/AppPermissionManager;->rvPermissionServiceProxy:Lcom/cloud/tmc/integration/permission/proxy/AuthenticationProxy;

    invoke-interface {p2, p1, p3, p4, v3}, Lcom/cloud/tmc/integration/permission/proxy/AuthenticationProxy;->checkSPJSApi(Lcom/cloud/tmc/kernel/security/Permission;Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;Lcom/cloud/tmc/integration/structure/App;)Z

    move-result p1

    return p1

    :cond_4
    sget-object p1, Lcom/cloud/tmc/integration/permission/ApiPermissionCheckResult;->IGNORE:Lcom/cloud/tmc/integration/permission/ApiPermissionCheckResult;

    if-ne p1, p2, :cond_5

    sget-object p1, Lcom/cloud/tmc/integration/permission/AppPermissionManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "checkPermission ignored:\t "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_5
    return v2
.end method

.method public init(Lcom/cloud/tmc/kernel/security/Accessor;)V
    .locals 0

    invoke-static {p1}, Lcom/cloud/tmc/integration/permission/AppPermissionUtils;->getPermissionAppId(Lcom/cloud/tmc/kernel/security/Accessor;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/integration/permission/AppPermissionManager;->appId:Ljava/lang/String;

    const-class p1, Lcom/cloud/tmc/integration/permission/proxy/AuthenticationProxy;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/permission/proxy/AuthenticationProxy;

    iput-object p1, p0, Lcom/cloud/tmc/integration/permission/AppPermissionManager;->rvPermissionServiceProxy:Lcom/cloud/tmc/integration/permission/proxy/AuthenticationProxy;

    return-void
.end method

.method public manageAccessorGroup(Lcom/cloud/tmc/kernel/security/Accessor;)Lcom/cloud/tmc/kernel/security/Group;
    .locals 0

    sget-object p1, Lcom/cloud/tmc/integration/permission/api/TmcGroup;->LEVEL_APP_DEFAULT:Lcom/cloud/tmc/integration/permission/api/TmcGroup;

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

    iget-object p1, p0, Lcom/cloud/tmc/integration/permission/AppPermissionManager;->rvPermissionServiceProxy:Lcom/cloud/tmc/integration/permission/proxy/AuthenticationProxy;

    iget-object v0, p0, Lcom/cloud/tmc/integration/permission/AppPermissionManager;->appId:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/cloud/tmc/integration/permission/proxy/AuthenticationProxy;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
