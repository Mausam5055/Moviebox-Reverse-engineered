.class public final Lcom/cloud/tmc/integration/utils/AbilitiesUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/integration/utils/AbilitiesUtils$Ability;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001 B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0011\u001a\u0012\u0012\u0004\u0012\u00020\u00130\u0012j\u0008\u0012\u0004\u0012\u00020\u0013`\u0014J\u0016\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u0005J\u0006\u0010\u0019\u001a\u00020\u0016J\u0008\u0010\u001a\u001a\u00020\u0008H\u0002J\u000e\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0005J\u0010\u0010\u001e\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0005H\u0002J\u0008\u0010\u001f\u001a\u00020\u001cH\u0002R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u00020\u000b8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u0014\u0010\u000e\u001a\u00020\u0005X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006!"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/utils/AbilitiesUtils;",
        "",
        "()V",
        "DEFAULT_LATEST_BLACK_LIST",
        "",
        "",
        "KEY_ABILITY_APPID",
        "REQUEST_TIME_INTERVAL",
        "",
        "TAG",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "defaultConfig",
        "getDefaultConfig",
        "()Ljava/lang/String;",
        "getAbilitiesConfig",
        "Ljava/util/ArrayList;",
        "Lcom/cloud/tmc/integration/model/AbilityConfig;",
        "Lkotlin/collections/ArrayList;",
        "getAbilityEnableStatus",
        "",
        "appId",
        "ability",
        "isAllowRequest",
        "lastRequestTime",
        "saveAbilitiesConfig",
        "",
        "data",
        "updateMMKVConfig",
        "updateRequestTime",
        "Ability",
        "com.cloud.tmc.integration"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field private static final DEFAULT_LATEST_BLACK_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSTANCE:Lcom/cloud/tmc/integration/utils/AbilitiesUtils;

.field private static final KEY_ABILITY_APPID:Ljava/lang/String; = "miniSdkAbilities"

.field private static final REQUEST_TIME_INTERVAL:J = 0x240c8400L

.field private static final TAG:Ljava/lang/String; = "AbilitiesUtils"

.field private static final defaultConfig:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/tmc/integration/utils/AbilitiesUtils;

    invoke-direct {v0}, Lcom/cloud/tmc/integration/utils/AbilitiesUtils;-><init>()V

    sput-object v0, Lcom/cloud/tmc/integration/utils/AbilitiesUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AbilitiesUtils;

    const-string v0, "1000391591855976448"

    const-string v1, "1000550440273772544"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/cloud/tmc/integration/utils/AbilitiesUtils;->DEFAULT_LATEST_BLACK_LIST:Ljava/util/List;

    const-string v0, "[{\n\t\"miniappId\": \"1000886706715795456\",\n\t\"miniappName\": \"\u5c0f\u7a0b\u5e8f\u4e2d\u5fc3\",\n\t\"abilities\": [{\n\t\t\"ability\": \"title_bar_add_favorites\",\n\t\t\"enable\": false\n\t}, {\n\t\t\"ability\": \"title_bar_add_home\",\n\t\t\"enable\": false\n\t}, {\n\t\t\"ability\": \"add_favorites\",\n\t\t\"enable\": false\n\t}, {\n\t\t\"ability\": \"add_home\",\n\t\t\"enable\": true\n\t}, {\n\t\t\"ability\": \"latest_use\",\n\t\t\"enable\": true\n\t}, {\n\t\t\"ability\": \"title_bar_share\",\n\t\t\"enable\": false\n\t}, {\n\t\t\"ability\": \"shareGroup\",\n\t\t\"enable\": false\n\t}]\n}, {\n\t\"miniappId\": \"1000083312531542016\",\n\t\"miniappName\": \"\u8bb0\u4e8b\u672c\",\n\t\"abilities\": [{\n\t\t\"ability\": \"title_bar_add_favorites\",\n\t\t\"enable\": false\n\t}, {\n\t\t\"ability\": \"title_bar_add_home\",\n\t\t\"enable\": false\n\t}, {\n\t\t\"ability\": \"add_favorites\",\n\t\t\"enable\": false\n\t}, {\n\t\t\"ability\": \"add_home\",\n\t\t\"enable\": false\n\t}, {\n\t\t\"ability\": \"latest_use\",\n\t\t\"enable\": false\n\t}]\n}, {\n\t\"miniappId\": \"1000391591855976448\",\n\t\"miniappName\": \"MiniApp Setting\",\n\t\"abilities\": [{\n\t\t\"ability\": \"title_bar_add_favorites\",\n\t\t\"enable\": false\n\t}, {\n\t\t\"ability\": \"title_bar_add_home\",\n\t\t\"enable\": false\n\t}, {\n\t\t\"ability\": \"add_favorites\",\n\t\t\"enable\": false\n\t}, {\n\t\t\"ability\": \"add_home\",\n\t\t\"enable\": false\n\t}, {\n\t\t\"ability\": \"latest_use\",\n\t\t\"enable\": false\n\t}, {\n\t\t\"ability\": \"feedback\",\n\t\t\"enable\": false\n\t}, {\n\t\t\"ability\": \"permission\",\n\t\t\"enable\": false\n\t}, {\n\t\t\"ability\": \"share_url\",\n\t\t\"enable\": false\n\t}, {\n\t\t\"ability\": \"share_friends\",\n\t\t\"enable\": false\n\t}, {\n\t\t\"ability\": \"title_bar_share\",\n\t\t\"enable\": false\n\t}, {\n\t\t\"ability\": \"shareGroup\",\n\t\t\"enable\": false\n\t}, {\n\t\t\"ability\": \"message\",\n\t\t\"enable\": false\n\t}]\n}, {\n\t\"miniappId\": \"1000497027976413184\",\n\t\"miniappName\": \"SharpNews\",\n\t\"abilities\": [{\n\t\t\"ability\": \"refresh\",\n\t\t\"enable\": false\n\t}]\n},{\n\t\"miniappId\": \"1000550440273772544\",\n\t\"miniappName\": \"\u53cd\u9988\u5c0f\u7a0b\u5e8f\",\n\t\"abilities\": [{\n\t\t\"ability\": \"title_bar_add_favorites\",\n\t\t\"enable\": false\n\t}, {\n\t\t\"ability\": \"title_bar_add_home\",\n\t\t\"enable\": false\n\t}, {\n\t\t\"ability\": \"add_favorites\",\n\t\t\"enable\": false\n\t}, {\n\t\t\"ability\": \"add_home\",\n\t\t\"enable\": false\n\t}, {\n\t\t\"ability\": \"latest_use\",\n\t\t\"enable\": false\n\t}, {\n\t\t\"ability\": \"feedback\",\n\t\t\"enable\": false\n\t}, {\n\t\t\"ability\": \"permission\",\n\t\t\"enable\": false\n\t}, {\n\t\t\"ability\": \"share_url\",\n\t\t\"enable\": false\n\t}, {\n\t\t\"ability\": \"share_friends\",\n\t\t\"enable\": false\n\t}, {\n\t\t\"ability\": \"title_bar_share\",\n\t\t\"enable\": false\n\t}, {\n\t\t\"ability\": \"shareGroup\",\n\t\t\"enable\": false\n\t}, {\n\t\t\"ability\": \"message\",\n\t\t\"enable\": false\n\t}]\n}]"

    sput-object v0, Lcom/cloud/tmc/integration/utils/AbilitiesUtils;->defaultConfig:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getContext()Landroid/content/Context;
    .locals 2

    const-class v0, Lcom/cloud/tmc/kernel/proxy/env/IApplicationContextGetter;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/env/IApplicationContextGetter;

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/proxy/env/IApplicationContextGetter;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "get(IApplicationContextG\u2026.java).applicationContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final lastRequestTime()J
    .locals 4

    const-class v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    invoke-direct {p0}, Lcom/cloud/tmc/integration/utils/AbilitiesUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "miniSdkAbilities"

    const-string v3, "ability_config_update_date_v3"

    invoke-interface {v0, v1, v2, v3}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private final updateMMKVConfig(Ljava/lang/String;)V
    .locals 7

    :try_start_0
    new-instance v0, Lcom/cloud/tmc/integration/utils/AbilitiesUtils$updateMMKVConfig$abilitiesConfigList$1;

    invoke-direct {v0}, Lcom/cloud/tmc/integration/utils/AbilitiesUtils$updateMMKVConfig$abilitiesConfigList$1;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "fromJson(data, object : \u2026bilityConfig>>() {}.type)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/integration/model/AbilityConfig;

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/AbilityConfig;->getAbilities()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cloud/tmc/integration/model/AbilityConfig$Ability;

    invoke-virtual {v4}, Lcom/cloud/tmc/integration/model/AbilityConfig$Ability;->getAbility()Ljava/lang/String;

    move-result-object v5

    const-string v6, "add_favorites"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/cloud/tmc/integration/model/AbilityConfig$Ability;->getEnable()Ljava/lang/Boolean;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/AbilityConfig;->getMiniappId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Lcom/cloud/tmc/integration/model/AbilityConfig$Ability;->getAbility()Ljava/lang/String;

    move-result-object v5

    const-string v6, "latest_use"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/cloud/tmc/integration/model/AbilityConfig$Ability;->getEnable()Ljava/lang/Boolean;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/AbilityConfig;->getMiniappId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-static {v1}, Lcom/cloud/tmc/integration/utils/LatestUseUtils;->removeList(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    const-string v0, "updateMMKVConfig failed!"

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private final updateRequestTime()V
    .locals 7

    const-class v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    invoke-direct {p0}, Lcom/cloud/tmc/integration/utils/AbilitiesUtils;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "ability_config_update_date_v3"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-string v3, "miniSdkAbilities"

    invoke-interface/range {v1 .. v6}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public final getAbilitiesConfig()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/cloud/tmc/integration/model/AbilityConfig;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    invoke-direct {p0}, Lcom/cloud/tmc/integration/utils/AbilitiesUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "miniSdkAbilities"

    const-string v3, "ability_config"

    invoke-interface {v0, v1, v2, v3}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/cloud/tmc/integration/utils/AbilitiesUtils;->defaultConfig:Ljava/lang/String;

    :cond_0
    const-string v1, "TmcProxy.get(KVStoragePr\u2026         ?: defaultConfig"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Lcom/cloud/tmc/integration/utils/AbilitiesUtils$getAbilitiesConfig$1;

    invoke-direct {v1}, Lcom/cloud/tmc/integration/utils/AbilitiesUtils$getAbilitiesConfig$1;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "{\n            GsonUtils.\u2026e\n            )\n        }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to parse menu config"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0
.end method

.method public final getAbilityEnableStatus(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const-string v0, "appId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ability"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/utils/AbilitiesUtils;->getAbilitiesConfig()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const-string v1, "latest_use"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p2, Lcom/cloud/tmc/integration/utils/AbilitiesUtils;->DEFAULT_LATEST_BLACK_LIST:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v2

    return p1

    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/cloud/tmc/integration/model/AbilityConfig;

    invoke-virtual {v4}, Lcom/cloud/tmc/integration/model/AbilityConfig;->getMiniappId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_2
    move-object v1, v3

    :goto_0
    check-cast v1, Lcom/cloud/tmc/integration/model/AbilityConfig;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/AbilityConfig;->getAbilities()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/cloud/tmc/integration/model/AbilityConfig$Ability;

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/AbilityConfig$Ability;->getAbility()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v3, v0

    :cond_4
    check-cast v3, Lcom/cloud/tmc/integration/model/AbilityConfig$Ability;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/cloud/tmc/integration/model/AbilityConfig$Ability;->getEnable()Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :cond_5
    return v2
.end method

.method public final getDefaultConfig()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/integration/utils/AbilitiesUtils;->defaultConfig:Ljava/lang/String;

    return-object v0
.end method

.method public final isAllowRequest()Z
    .locals 6

    invoke-direct {p0}, Lcom/cloud/tmc/integration/utils/AbilitiesUtils;->lastRequestTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    invoke-static {}, Lcom/cloud/tmc/kernel/utils/AppDynamicBuildConfig;->isAppDebugAble()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x1d4c0

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x240c8400

    :goto_0
    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    if-nez v0, :cond_3

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/TimeUtils;->getNowMills()J

    move-result-wide v4

    sub-long v1, v4, v2

    const/4 v3, 0x5

    invoke-static {v4, v5, v1, v2, v3}, Lcom/cloud/tmc/miniutils/util/TimeUtils;->getFitTimeSpan(JJI)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "It has only been "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " since the last update or check, which does not meet the 7 days update policy"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AbilitiesUtils"

    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return v0
.end method

.method public final saveAbilitiesConfig(Ljava/lang/String;)V
    .locals 4

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    invoke-direct {p0}, Lcom/cloud/tmc/integration/utils/AbilitiesUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "miniSdkAbilities"

    const-string v3, "ability_config"

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cloud/tmc/integration/utils/AbilitiesUtils;->updateRequestTime()V

    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/utils/AbilitiesUtils;->updateMMKVConfig(Ljava/lang/String;)V

    return-void
.end method
