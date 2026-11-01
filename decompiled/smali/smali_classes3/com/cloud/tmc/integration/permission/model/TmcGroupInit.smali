.class public Lcom/cloud/tmc/integration/permission/model/TmcGroupInit;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static isInited:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tmcintegration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/cloud/tmc/integration/permission/model/TmcGroupInit;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cloud/tmc/integration/permission/model/TmcGroupInit;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/cloud/tmc/integration/permission/model/TmcGroupInit;->isInited:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized init()V
    .locals 3

    const-class v0, Lcom/cloud/tmc/integration/permission/model/TmcGroupInit;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/cloud/tmc/integration/permission/model/TmcGroupInit;->isInited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    :try_start_1
    sput-boolean v1, Lcom/cloud/tmc/integration/permission/model/TmcGroupInit;->isInited:Z

    const-class v1, Lcom/cloud/tmc/integration/permission/model/TmcGroupInit;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {}, Lcom/cloud/tmc/integration/permission/model/TmcGroupInit;->initLegacyGroup()V

    invoke-static {}, Lcom/cloud/tmc/integration/permission/model/TmcGroupInit;->initGroupAppDefault()V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method private static initGroupAppDefault()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/cloud/tmc/kernel/extension/bridge/BridgePermission;

    const-string v2, "forExample"

    invoke-direct {v1, v2, v2}, Lcom/cloud/tmc/kernel/extension/bridge/BridgePermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/cloud/tmc/kernel/security/DefaultGroup;->EXTERNAL:Lcom/cloud/tmc/kernel/security/DefaultGroup;

    invoke-virtual {v1, v0}, Lcom/cloud/tmc/kernel/security/DefaultGroup;->assignPermissions(Ljava/util/List;)V

    sget-object v1, Lcom/cloud/tmc/kernel/security/DefaultGroup;->INTERNAL:Lcom/cloud/tmc/kernel/security/DefaultGroup;

    invoke-virtual {v1, v0}, Lcom/cloud/tmc/kernel/security/DefaultGroup;->assignPermissions(Ljava/util/List;)V

    sget-object v1, Lcom/cloud/tmc/kernel/security/DefaultGroup;->PARTNER:Lcom/cloud/tmc/kernel/security/DefaultGroup;

    invoke-virtual {v1, v0}, Lcom/cloud/tmc/kernel/security/DefaultGroup;->assignPermissions(Ljava/util/List;)V

    return-void
.end method

.method private static initLegacyGroup()V
    .locals 9

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/cloud/tmc/integration/permission/PermissionConfig;->getInstance()Lcom/cloud/tmc/integration/permission/PermissionConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/permission/PermissionConfig;->getGroupPermissionMap()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x3

    new-array v2, v1, [Lcom/cloud/tmc/kernel/security/DefaultGroup;

    sget-object v3, Lcom/cloud/tmc/kernel/security/DefaultGroup;->INTERNAL:Lcom/cloud/tmc/kernel/security/DefaultGroup;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/cloud/tmc/kernel/security/DefaultGroup;->PARTNER:Lcom/cloud/tmc/kernel/security/DefaultGroup;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    sget-object v3, Lcom/cloud/tmc/kernel/security/DefaultGroup;->EXTERNAL:Lcom/cloud/tmc/kernel/security/DefaultGroup;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    move v3, v4

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v6, v2, v3

    invoke-virtual {v6}, Lcom/cloud/tmc/kernel/security/DefaultGroup;->clearPermissions()V

    add-int/2addr v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_1
    if-ge v3, v1, :cond_3

    aget-object v6, v2, v3

    invoke-virtual {v6}, Lcom/cloud/tmc/kernel/security/DefaultGroup;->groupName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    if-eqz v7, :cond_2

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    if-nez v8, :cond_1

    goto :goto_2

    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6, v8}, Lcom/cloud/tmc/kernel/security/DefaultGroup;->assignPermissions(Ljava/util/List;)V

    :cond_2
    :goto_2
    add-int/2addr v3, v5

    goto :goto_1

    :cond_3
    :goto_3
    if-ge v4, v1, :cond_4

    aget-object v0, v2, v4

    sget-object v3, Lcom/cloud/tmc/integration/permission/model/TmcGroupInit;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DefaultGroup  init result  group="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/cloud/tmc/kernel/security/DefaultGroup;->groupName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", permissions="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/cloud/tmc/kernel/security/DefaultGroup;->permissions()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/2addr v4, v5

    goto :goto_3

    :cond_4
    return-void
.end method
