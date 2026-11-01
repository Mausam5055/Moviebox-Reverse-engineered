.class public final Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigManager;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0014\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0005H\u0007J\n\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0007J\n\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0007J\u0014\u0010\u0010\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0005H\u0002J\u0008\u0010\u0011\u001a\u00020\u0012H\u0007J\u0008\u0010\u0013\u001a\u00020\u0012H\u0007J\u0008\u0010\u0014\u001a\u00020\u0012H\u0007J\u0012\u0010\u0015\u001a\u00020\u00122\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0007J!\u0010\u0018\u001a\u00020\u00122\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0006H\u0007\u00a2\u0006\u0002\u0010\u001aR\u001d\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigManager;",
        "",
        "()V",
        "enableUseDefaultABDataMap",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "",
        "",
        "getEnableUseDefaultABDataMap",
        "()Ljava/util/concurrent/ConcurrentHashMap;",
        "getABTestData",
        "Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/ABTest;",
        "abName",
        "getCommonConfigData",
        "Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CommonConfigDTO;",
        "getCustomTabData",
        "Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabConfigDTO;",
        "getDefaultAbTestData",
        "parseABTestData",
        "",
        "parseCommonConfigData",
        "parseCustomTabData",
        "saveCustomConfigs",
        "customConfigs",
        "Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigs;",
        "setUseABTestDefaultData",
        "defaultValue",
        "(Ljava/lang/String;Ljava/lang/Boolean;)V",
        "api_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigManager;

.field private static final enableUseDefaultABDataMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigManager;

    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigManager;-><init>()V

    sput-object v0, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigManager;->INSTANCE:Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigManager;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigManager;->enableUseDefaultABDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getABTestData(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/ABTest;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/ClientABTestUtil;->getCurrentABTest(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/ABTest;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigManager;->INSTANCE:Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigManager;

    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigManager;->getDefaultAbTestData(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/ABTest;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final getCommonConfigData()Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CommonConfigDTO;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabUtil;->getCommonConfig()Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CommonConfigDTO;

    move-result-object v0

    return-object v0
.end method

.method public static final getCustomTabData()Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabConfigDTO;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabUtil;->getCCTConfig()Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabConfigDTO;

    move-result-object v0

    return-object v0
.end method

.method private final getDefaultAbTestData(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/ABTest;
    .locals 5

    const-string v0, "AbTestData"

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigManager;->enableUseDefaultABDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    if-nez v2, :cond_1

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v2

    const-string v3, "getDefaultAbTestData disableDefaultABDataMap"

    invoke-virtual {v2, v0, v3}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    :cond_1
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x5e41a639

    const-class v4, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/ABTest;

    if-eq v2, v3, :cond_6

    const v3, -0x2724fefc

    if-eq v2, v3, :cond_4

    const v3, 0x5a88cb99

    if-eq v2, v3, :cond_2

    goto :goto_1

    :cond_2
    const-string v2, "mediation_ew_strategy"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    :try_start_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    const-string v2, "getDefaultAbTestData MEDIATION_EW_STRATEGY"

    invoke-virtual {p1, v0, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "{\"ab_name\":\"mediation_ew_strategy\",\"layer_id\":539,\"req_interval\":259200,\"switch\":\"OPEN\",\"trackEvent\":[\"ad_request\",\"ad_return\"]}"

    invoke-static {p1, v4}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/ABTest;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, p1

    :catchall_1
    return-object v1

    :cond_4
    const-string v2, "client_ab_network"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    :try_start_2
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    const-string v2, "getDefaultAbTestData AB_NETWORK"

    invoke-virtual {p1, v0, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "{\"ab_name\":\"client_ab_network\",\"layer_id\":523,\"req_interval\":259200,\"switch\":\"OPEN\",\"trackEvent\":[\"ad_ssp_request\",\"ad_ssp_return\"]}"

    invoke-static {p1, v4}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/ABTest;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v1, p1

    :catchall_2
    return-object v1

    :cond_6
    const-string v2, "custom_tab"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_1

    :cond_7
    :try_start_3
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    const-string v2, "getDefaultAbTestData AB_CUSTOM_TAB"

    invoke-virtual {p1, v0, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "{\"ab_name\":\"custom_tab\",\"layer_id\":503,\"req_interval\":259200,\"switch\":\"OPEN\",\"trackEvent\":[\"ssp_landing_page_tracking\",\"ssp_chrome_landing_page\",\"ssp_chrome_stay_landing_page\",\"ssp_cliclk_link_tracking\"]}"

    invoke-static {p1, v4}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/ABTest;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object v1, p1

    :catchall_3
    :cond_8
    :goto_1
    return-object v1
.end method

.method public static final parseABTestData()V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object v0

    const-string v1, "abTest"

    invoke-virtual {v0, v1}, Lj7/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/ClientABTestUtil;->convertABJsonToMap(Ljava/lang/String;)V

    return-void
.end method

.method public static final parseCommonConfigData()V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object v0

    const-string v1, "commonConfig"

    invoke-virtual {v0, v1}, Lj7/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabUtil;->formatCommonConfig(Ljava/lang/String;)V

    return-void
.end method

.method public static final parseCustomTabData()V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object v0

    const-string v1, "customTab"

    invoke-virtual {v0, v1}, Lj7/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabUtil;->formatCCTConfig(Ljava/lang/String;)V

    return-void
.end method

.method public static final saveCustomConfigs(Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigs;)V
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigs;->getAbTest()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigs;->getCustomTab()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigs;->getCommonConfig()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigs;->getDcdnUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/ClientABTestUtil;->convertABJsonToMap(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabUtil;->formatCCTConfig(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabUtil;->formatCommonConfig(Ljava/lang/String;)V

    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object v3

    const-string v4, "abTest"

    invoke-virtual {v3, v4, v0}, Lj7/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object v0

    const-string v3, "customTab"

    invoke-virtual {v0, v3, v1}, Lj7/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object v0

    const-string v1, "commonConfig"

    invoke-virtual {v0, v1, v2}, Lj7/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object v0

    const-string v1, "dcdnUrl"

    invoke-virtual {v0, v1, p0}, Lj7/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static final setUseABTestDefaultData(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p0, :cond_2

    :try_start_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigManager;->enableUseDefaultABDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final getEnableUseDefaultABDataMap()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigManager;->enableUseDefaultABDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method
