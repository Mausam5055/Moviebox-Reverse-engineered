.class public Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/integration/permission/proxy/AuthenticationProxy;


# static fields
.field public static OooO0o:Ljava/lang/String;


# instance fields
.field public OooO00o:Landroid/content/Context;

.field public OooO0O0:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/integration/permission/model/ApiPermissionInfo;",
            ">;"
        }
    .end annotation
.end field

.field public OooO0OO:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/kernel/model/permission/PermissionModel;",
            ">;"
        }
    .end annotation
.end field

.field public OooO0Oo:Ljava/lang/String;

.field public OooO0o0:Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tmcintegration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "DefaultAuthenticationProxyImpl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO0o:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "tel"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "mailto"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "sms"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "geo"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO0Oo:Ljava/lang/String;

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO00o:Landroid/content/Context;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO0O0:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO0OO:Ljava/util/Map;

    new-instance v0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;

    invoke-direct {v0, p1}, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO0o0:Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;

    return-void
.end method


# virtual methods
.method public final OooO00o(Lcom/cloud/tmc/integration/permission/model/ApiPermissionInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "Valid_SubResMimeList"

    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "JSAPI_SP_Config"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "EVENT_List"

    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "HttpLink_SubResMimeList"

    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Webview_Config"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "validDomain"

    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p3}, Lcom/cloud/tmc/integration/permission/model/ApiPermissionInfo;->getApiLevelList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    invoke-virtual {p1, p3}, Lcom/cloud/tmc/integration/permission/model/ApiPermissionInfo;->getApiLevelList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    :try_start_0
    invoke-static {p3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/regex/Matcher;->find()Z

    move-result p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p3, :cond_2

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p3

    sget-object v0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO0o:Ljava/lang/String;

    const-string v1, "hasPermission Regex Exception"

    invoke-static {v0, v1, p3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public checkEventPermission(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/structure/Page;)Z
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO0O0:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const-string v0, "EVENT_List"

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->hasPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/structure/Page;)Z

    move-result p1

    return p1
.end method

.method public checkJSApi(Lcom/cloud/tmc/kernel/security/Permission;Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;Lcom/cloud/tmc/integration/structure/App;)Lcom/cloud/tmc/integration/permission/ApiPermissionCheckResult;
    .locals 2

    sget-object p3, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO0o:Ljava/lang/String;

    const-string v0, "checkJSApi,page i\u65b0\u65e5\u5fd7##########"

    invoke-static {v0}, Lcom/cloud/tmc/miniapp/OooO00o;->OooO00o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->getSource()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p4, :cond_0

    sget-object p1, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO0o:Ljava/lang/String;

    const-string p2, "checkJSApi,page is null"

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/integration/permission/ApiPermissionCheckResult;->DENY:Lcom/cloud/tmc/integration/permission/ApiPermissionCheckResult;

    return-object p1

    :cond_0
    const-class p2, Lcom/cloud/tmc/integration/extension/IgnorePermissionPoint;

    invoke-static {p2}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->as(Ljava/lang/Class;)Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;

    move-result-object p2

    invoke-virtual {p2, p4}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->node(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;

    move-result-object p2

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->create()Lcom/cloud/tmc/kernel/extension/Extension;

    move-result-object p2

    check-cast p2, Lcom/cloud/tmc/integration/extension/IgnorePermissionPoint;

    if-eqz p2, :cond_1

    invoke-interface {p4}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Lcom/cloud/tmc/integration/extension/IgnorePermissionPoint;->ignoreAppPermission(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p1, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO0o:Ljava/lang/String;

    const-string p2, "checkJSApi,IgnorePermissionPoint ignoreAppPermission"

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/integration/permission/ApiPermissionCheckResult;->IGNORE:Lcom/cloud/tmc/integration/permission/ApiPermissionCheckResult;

    return-object p1

    :cond_1
    invoke-interface {p4}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-interface {p4}, Lcom/cloud/tmc/integration/structure/App;->getStartParams()Landroid/os/Bundle;

    move-result-object p3

    invoke-static {p3}, Lcom/cloud/tmc/integration/model/AppInfoScene;->isDevSource(Landroid/os/Bundle;)Z

    move-result p3

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/AppModel;->getExtendInfos()Lcom/google/gson/JsonObject;

    move-result-object p2

    const-string v0, "checkPermission"

    const-string v1, "YES"

    invoke-static {p2, v0, v1}, Lcom/cloud/tmc/kernel/utils/JSONUtils;->getString(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p3, :cond_2

    const-string p3, "NO"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    sget-object p1, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO0o:Ljava/lang/String;

    const-string p2, "checkJSApi, KEY_CHECK_PERMISSION ignoreAppPermission"

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/integration/permission/ApiPermissionCheckResult;->IGNORE:Lcom/cloud/tmc/integration/permission/ApiPermissionCheckResult;

    return-object p1

    :cond_2
    invoke-interface {p4}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO0OO:Ljava/util/Map;

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/cloud/tmc/kernel/model/permission/PermissionModel;

    if-eqz p1, :cond_4

    sget-object p4, Lcom/cloud/tmc/kernel/security/DefaultPermission;->ALL:Lcom/cloud/tmc/kernel/security/DefaultPermission;

    if-eq p1, p4, :cond_4

    if-nez p3, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p3}, Lcom/cloud/tmc/kernel/model/permission/PermissionModel;->getJsapiList()Ljava/util/List;

    sget-object p2, Lcom/cloud/tmc/miniapp/utils/ScopeUtils;->OooO00o:Lcom/cloud/tmc/miniapp/utils/ScopeUtils;

    invoke-virtual {p2, p1}, Lcom/cloud/tmc/miniapp/utils/ScopeUtils;->OooO00o(Lcom/cloud/tmc/kernel/security/Permission;)Lcom/cloud/tmc/integration/permission/ApiPermissionCheckResult;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_0
    sget-object p1, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO0o:Ljava/lang/String;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    aput-object p2, p3, p4

    const-string p2, "%s not have permission file"

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/integration/permission/ApiPermissionCheckResult;->IGNORE:Lcom/cloud/tmc/integration/permission/ApiPermissionCheckResult;

    return-object p1
.end method

.method public checkSPJSApi(Lcom/cloud/tmc/kernel/security/Permission;Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;Lcom/cloud/tmc/integration/structure/App;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public checkShowPermissionDialog(Lcom/cloud/tmc/kernel/security/Permission;Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;Lcom/cloud/tmc/integration/structure/Page;)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-interface/range {p4 .. p4}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v2

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO0OO:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/kernel/model/permission/PermissionModel;

    if-eqz v1, :cond_b

    sget-object v4, Lcom/cloud/tmc/kernel/security/DefaultPermission;->ALL:Lcom/cloud/tmc/kernel/security/DefaultPermission;

    if-eq v1, v4, :cond_b

    if-nez v2, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v2, v0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO0o0:Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface/range {p4 .. p4}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v4

    if-nez v4, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-interface/range {p4 .. p4}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v4

    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cloud/tmc/integration/model/AppModel;->getPermissions()Lcom/cloud/tmc/kernel/model/permission/PermissionModel;

    move-result-object v7

    invoke-interface/range {p4 .. p4}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v8

    invoke-interface {v8}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v8

    invoke-interface/range {p1 .. p1}, Lcom/cloud/tmc/kernel/security/Permission;->authority()Ljava/lang/String;

    move-result-object v15

    const-class v1, Lcom/cloud/tmc/kernel/service/ConfigService;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/service/ConfigService;

    const-string v9, "ta_permissionDialogSwitch"

    const-string v10, "1"

    invoke-interface {v1, v9, v10}, Lcom/cloud/tmc/kernel/service/ConfigService;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v9, "0"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v14, "Tmcintegration:LocalAuthPermissionManager"

    if-eqz v1, :cond_2

    const-string v1, "checkShowPermissionDialog...dialogSwitch closed"

    invoke-static {v14, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v3, 0x0

    goto/16 :goto_4

    :cond_2
    invoke-virtual {v2, v15}, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;->OooO00o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v9, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;->OooO0Oo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v9, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/cloud/tmc/integration/model/ScopeModel;

    if-nez v9, :cond_3

    goto :goto_2

    :cond_3
    sget-object v12, Lcom/cloud/tmc/miniapp/utils/ScopeUtils;->OooO00o:Lcom/cloud/tmc/miniapp/utils/ScopeUtils;

    move-object/from16 v13, p4

    invoke-virtual {v12, v13}, Lcom/cloud/tmc/miniapp/utils/ScopeUtils;->OooO00o(Lcom/cloud/tmc/integration/structure/Page;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v9}, Lcom/cloud/tmc/integration/model/ScopeModel;->getValidityTime()J

    move-result-wide v16

    invoke-virtual {v9}, Lcom/cloud/tmc/integration/model/ScopeModel;->getUserAuthorization()Z

    move-result v11

    const/16 v18, 0x1

    if-eqz v10, :cond_5

    invoke-virtual {v12, v1, v10}, Lcom/cloud/tmc/miniapp/utils/ScopeUtils;->OooO00o(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/cloud/tmc/kernel/model/permission/ScopesV2Bean;

    move-result-object v10

    if-nez v10, :cond_4

    invoke-virtual {v2, v5, v6, v15, v1}, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;->OooO00o(Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/cloud/tmc/kernel/executor/ExecutorType;->NORMAL:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    new-instance v5, Lcom/cloud/tmc/miniapp/defaultimpl/OooO00o;

    invoke-direct {v5, v2, v1, v8, v4}, Lcom/cloud/tmc/miniapp/defaultimpl/OooO00o;-><init>(Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/model/AppModel;)V

    invoke-static {v3, v5}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->execute(Lcom/cloud/tmc/kernel/executor/ExecutorType;Ljava/lang/Runnable;)V

    :goto_1
    move/from16 v3, v18

    goto/16 :goto_4

    :cond_4
    invoke-virtual {v10}, Lcom/cloud/tmc/kernel/model/permission/ScopesV2Bean;->getUserAuthorization()Z

    move-result v11

    invoke-virtual {v10}, Lcom/cloud/tmc/kernel/model/permission/ScopesV2Bean;->getValidityTime()J

    move-result-wide v3

    invoke-virtual {v9, v11}, Lcom/cloud/tmc/integration/model/ScopeModel;->setUserAuthorization(Z)V

    invoke-virtual {v9, v3, v4}, Lcom/cloud/tmc/integration/model/ScopeModel;->setValidityTime(J)V

    move-wide/from16 v16, v3

    :cond_5
    if-nez v11, :cond_6

    goto :goto_2

    :cond_6
    iget-object v10, v2, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;->OooO00o:Landroid/content/Context;

    move-object v9, v12

    move-object v11, v1

    move-object v3, v12

    move-wide/from16 v12, v16

    move-object v4, v14

    move-object v14, v8

    invoke-virtual/range {v9 .. v14}, Lcom/cloud/tmc/miniapp/utils/ScopeUtils;->OooO00o(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    :goto_2
    goto :goto_0

    :cond_7
    iget-object v9, v2, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;->OooO00o:Landroid/content/Context;

    const-string v10, "context"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "scopeName"

    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "appId"

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "userLogin"

    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {v3, v9, v1, v8}, Lcom/cloud/tmc/miniapp/utils/ScopeUtils;->OooO0O0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x3

    if-lt v10, v11, :cond_9

    invoke-virtual {v3, v9, v1, v8}, Lcom/cloud/tmc/miniapp/utils/ScopeUtils;->OooO0o0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v9

    const-wide/32 v9, 0x5265c00

    cmp-long v9, v11, v9

    if-gtz v9, :cond_9

    invoke-virtual {v2, v5, v6, v15, v1}, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;->OooO00o(Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    :goto_3
    const-string v9, "notifyMessage"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    iget-object v9, v2, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;->OooO00o:Landroid/content/Context;

    invoke-virtual {v3, v9, v8}, Lcom/cloud/tmc/miniapp/utils/ScopeUtils;->OooO00o(Landroid/content/Context;Ljava/lang/String;)Lkotlin/Pair;

    move-result-object v3

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    sub-long/2addr v9, v11

    const-wide/32 v11, 0x240c8400

    cmp-long v9, v9, v11

    if-gez v9, :cond_a

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_a

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "notifyMsg scope not show again"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5, v6, v15, v1}, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;->OooO00o(Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    const/4 v9, 0x0

    move-object v1, v2

    move-object/from16 v2, p4

    move-object v3, v8

    move-object v4, v15

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move v8, v9

    invoke-virtual/range {v1 .. v8}, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;->OooO00o(Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;Lcom/cloud/tmc/kernel/model/permission/PermissionModel;Z)Z

    move-result v3

    :goto_4
    return v3

    :cond_b
    :goto_5
    sget-object v1, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO0o:Ljava/lang/String;

    const-string v2, "checkShowPermissionDialog permsionModel is null"

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1
.end method

.method public clearPermissionModel(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO0O0:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO0O0:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/permission/model/ApiPermissionInfo;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/permission/model/ApiPermissionInfo;->clear()V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO0O0:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public getAllPermissions(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/model/AppModel;)Ljava/util/Map;
    .locals 10
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

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO0o0:Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;

    if-nez p1, :cond_0

    new-instance p1, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO00o:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO0o0:Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;

    :cond_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO0o0:Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v0, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    if-nez p3, :cond_1

    iget-object p3, p1, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;->OooO00o:Landroid/content/Context;

    invoke-static {p2}, Lcom/cloud/tmc/integration/model/AppInfoQuery;->make(Ljava/lang/String;)Lcom/cloud/tmc/integration/model/AppInfoQuery;

    move-result-object v1

    invoke-interface {v0, p3, v1}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;->getAppModel(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppInfoQuery;)Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object p3

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p3, :cond_7

    invoke-virtual {p3}, Lcom/cloud/tmc/integration/model/AppModel;->getPermissions()Lcom/cloud/tmc/kernel/model/permission/PermissionModel;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p3}, Lcom/cloud/tmc/integration/model/AppModel;->getPermissions()Lcom/cloud/tmc/kernel/model/permission/PermissionModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cloud/tmc/kernel/model/permission/PermissionModel;->getNativeApiScopeConfig()Lcom/google/gson/JsonObject;

    move-result-object v1

    if-nez v1, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-virtual {p3}, Lcom/cloud/tmc/integration/model/AppModel;->getPermissions()Lcom/cloud/tmc/kernel/model/permission/PermissionModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cloud/tmc/kernel/model/permission/PermissionModel;->getNativeApiScopeConfig()Lcom/google/gson/JsonObject;

    move-result-object v1

    invoke-static {p3}, Lcom/cloud/tmc/integration/permission/AppPermissionUtils;->getAggregationMainAppId(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1}, Lcom/google/gson/JsonObject;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, p2, v2}, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    invoke-static {v4}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    iget-object v6, p1, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;->OooO00o:Landroid/content/Context;

    invoke-interface {v5, v6, p2, v3}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isThePermissionApplied,key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",value: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Tmcintegration:LocalAuthPermissionManager"

    invoke-static {v7, v6}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {p1, p3, v2}, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    iget-object v8, p1, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;->OooO00o:Landroid/content/Context;

    invoke-interface {v6, v8, p2, v5}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_4
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p1, p2, v2}, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    iget-object v8, p1, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;->OooO00o:Landroid/content/Context;

    invoke-interface {v6, v8, p2, v5}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getPermissionByKey,key: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "1"

    invoke-static {v6, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_1

    :cond_5
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {p1, p3, v2}, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    iget-object v6, p1, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;->OooO00o:Landroid/content/Context;

    invoke-interface {v4, v6, p2, v5}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    :goto_1
    const/4 v3, 0x1

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_7
    :goto_3
    return-object v0
.end method

.method public getPermissionModel(Ljava/lang/String;)Lcom/cloud/tmc/kernel/model/permission/PermissionModel;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO0OO:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/model/permission/PermissionModel;

    return-object p1
.end method

.method public getPermissions(Ljava/lang/String;)Ljava/util/List;
    .locals 3
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

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO0OO:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/model/permission/PermissionModel;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/model/permission/PermissionModel;->getJsapiList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lcom/cloud/tmc/kernel/extension/bridge/BridgePermission;

    invoke-direct {v2, v1, v1}, Lcom/cloud/tmc/kernel/extension/bridge/BridgePermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public hasPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/structure/Page;)Z
    .locals 5

    sget-object v0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO0o:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasPermission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-class v0, Lcom/cloud/tmc/integration/extension/IgnorePermissionPoint;

    invoke-static {v0}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->as(Ljava/lang/Class;)Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;

    move-result-object v0

    invoke-interface {p4}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object p4

    invoke-virtual {v0, p4}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->node(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;

    move-result-object p4

    invoke-virtual {p4}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->create()Lcom/cloud/tmc/kernel/extension/Extension;

    move-result-object p4

    check-cast p4, Lcom/cloud/tmc/integration/extension/IgnorePermissionPoint;

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    invoke-interface {p4, p1}, Lcom/cloud/tmc/integration/extension/IgnorePermissionPoint;->ignoreAppPermission(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_0

    sget-object p2, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO0o:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "ignore hasPermission appid\t "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    :try_start_0
    iget-object p4, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO0Oo:Ljava/lang/String;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    const/4 v1, 0x0

    if-nez p4, :cond_2

    iget-object p4, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO0Oo:Ljava/lang/String;

    invoke-static {p4}, Lcom/cloud/tmc/kernel/utils/JSONUtils;->parseObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p4

    invoke-static {p4, p1, v1}, Lcom/cloud/tmc/kernel/utils/JSONUtils;->getJsonObject(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "yes"

    if-eqz v2, :cond_1

    :try_start_1
    invoke-virtual {v2}, Lcom/google/gson/JsonObject;->size()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v2, p3}, Lcom/cloud/tmc/kernel/utils/JSONUtils;->getString(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v3, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_2

    return v0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    invoke-static {p4, p3}, Lcom/cloud/tmc/kernel/utils/JSONUtils;->getString(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v3, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_2

    return v0

    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_4

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_4

    iget-object p4, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO0O0:Ljava/util/Map;

    if-eqz p4, :cond_4

    invoke-interface {p4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    if-eqz p4, :cond_4

    iget-object p4, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO0O0:Ljava/util/Map;

    invoke-interface {p4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/cloud/tmc/integration/permission/model/ApiPermissionInfo;

    invoke-virtual {p4, p3}, Lcom/cloud/tmc/integration/permission/model/ApiPermissionInfo;->getApiLevelList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p4

    if-eqz p4, :cond_4

    iget-object p4, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO0O0:Ljava/util/Map;

    invoke-interface {p4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/cloud/tmc/integration/permission/model/ApiPermissionInfo;

    invoke-virtual {p4, p3}, Lcom/cloud/tmc/integration/permission/model/ApiPermissionInfo;->getApiLevelList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_3

    goto :goto_0

    :cond_3
    iget-object p4, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO0O0:Ljava/util/Map;

    invoke-interface {p4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/cloud/tmc/integration/permission/model/ApiPermissionInfo;

    :cond_4
    :goto_0
    if-nez v1, :cond_5

    const-string p1, "JSAPI_SP_Config"

    invoke-virtual {p3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_5
    invoke-virtual {p0, v1, p2, p3}, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO00o(Lcom/cloud/tmc/integration/permission/model/ApiPermissionInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return p1

    :goto_1
    sget-object p2, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO0o:Ljava/lang/String;

    const-string p3, "hasPermission Exception!"

    invoke-static {p2, p3, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public hasPermissionModel(Ljava/lang/String;Lcom/cloud/tmc/integration/structure/Page;)Z
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object p1

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO0OO:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public setPermissionModel(Ljava/lang/String;Lcom/cloud/tmc/kernel/model/permission/PermissionModel;)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO0OO:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO0O0:Ljava/util/Map;

    invoke-static {p2}, Lcom/cloud/tmc/integration/permission/AppPermissionUtils;->convert2ApiPermissionInfo(Lcom/cloud/tmc/kernel/model/permission/PermissionModel;)Lcom/cloud/tmc/integration/permission/model/ApiPermissionInfo;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setPermissionState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO0o0:Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;

    if-nez p1, :cond_0

    new-instance p1, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO00o:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO0o0:Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;

    :cond_0
    const-class p1, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO00o:Landroid/content/Context;

    invoke-static {p2}, Lcom/cloud/tmc/integration/model/AppInfoQuery;->make(Ljava/lang/String;)Lcom/cloud/tmc/integration/model/AppInfoQuery;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;->getAppModel(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppInfoQuery;)Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object p1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO0o0:Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;

    invoke-static {p1}, Lcom/cloud/tmc/integration/permission/AppPermissionUtils;->getAggregationMainAppId(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "userLogin"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, p2, p3}, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p1, p3}, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p4, :cond_3

    const-string p3, "1"

    goto :goto_1

    :cond_3
    const-string p3, "0"

    :goto_1
    const-class v1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;->OooO00o:Landroid/content/Context;

    invoke-interface {v1, v0, p2, p1, p3}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "changePermissionState,key: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",opened: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Tmcintegration:LocalAuthPermissionManager"

    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method
