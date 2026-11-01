.class public Lbe/o;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbe/o$a;
    }
.end annotation


# static fields
.field public static final b:[I

.field public static final c:Landroid/util/SparseArray;


# instance fields
.field public final a:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/16 v0, 0x10

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x4

    const/4 v7, 0x5

    const/16 v8, 0xc

    const/16 v9, 0x8

    const/16 v10, 0xb

    const/4 v11, 0x6

    const/16 v12, 0x9

    const/16 v13, 0xe

    const/16 v14, 0xf

    new-array v15, v14, [I

    fill-array-data v15, :array_0

    sput-object v15, Lbe/o;->b:[I

    new-instance v15, Landroid/util/SparseArray;

    invoke-direct {v15}, Landroid/util/SparseArray;-><init>()V

    sput-object v15, Lbe/o;->c:Landroid/util/SparseArray;

    const-string v1, "com.hisavana.adxlibrary.check.ExistsCheck"

    invoke-virtual {v15, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v1, "com.hisavana.admoblibrary.check.ExistsCheck"

    invoke-virtual {v15, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v1, "com.hisavana.fblibrary.excuter.check.ExistsCheck"

    invoke-virtual {v15, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v1, "com.hisavana.applovin.check.ExistsCheck"

    invoke-virtual {v15, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v1, "com.hisavana.unity.check.ExistsCheck"

    invoke-virtual {v15, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v1, "com.hisavana.ironsource.check.ExistsCheck"

    invoke-virtual {v15, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v1, "com.hisavana.inmobi.check.ExistsCheck"

    invoke-virtual {v15, v9, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v1, "com.hisavana.vungle.check.ExistsCheck"

    invoke-virtual {v15, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v1, "com.hisavana.adcolony.check.ExistsCheck"

    invoke-virtual {v15, v10, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v1, "com.hisavana.mintegral.check.ExistsCheck"

    invoke-virtual {v15, v12, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v1, "com.hisavana.max.check.ExistsCheck"

    invoke-virtual {v15, v13, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v1, "com.hisavana.yandex.check.ExistsCheck"

    invoke-virtual {v15, v14, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v1, "com.hisavana.bigo.check.ExistsCheck"

    invoke-virtual {v15, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v0, "com.hisavana.pangle.check.ExistsCheck"

    invoke-virtual {v15, v11, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v0, "com.hisavana.topon.check.ExistsCheck"

    const/16 v1, 0x11

    invoke-virtual {v15, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0xc
        0x8
        0xb
        0x6
        0x9
        0xe
        0xf
        0x10
        0x11
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lbe/o;->a:Landroid/util/SparseArray;

    return-void
.end method

.method public static a()Lbe/o;
    .locals 1

    invoke-static {}, Lbe/o$a;->a()Lbe/o;

    move-result-object v0

    return-object v0
.end method

.method public static e(Lcom/hisavana/common/interfacz/Iad;)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Lcom/hisavana/common/interfacz/ICacheAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    move-result-object p0

    invoke-static {p0}, Lcom/hisavana/common/utils/AdUtil;->isBiddingNetwork(Lcom/hisavana/common/bean/Network;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final b(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lbe/o;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final c(Landroid/content/Context;ILcom/hisavana/mediation/config/TAdManager$AdConfig;)V
    .locals 7

    invoke-virtual {p0, p2}, Lbe/o;->b(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hisavana/common/interfacz/IBaseAdSummary;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    goto :goto_0

    :catchall_0
    const/4 v3, 0x0

    move-object v2, v1

    :goto_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "platform classname = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " exist = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "sdk_init"

    invoke-virtual {v4, v5, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_0

    :try_start_1
    new-instance v0, Lcom/hisavana/common/bean/AdSourceConfig;

    invoke-direct {v0}, Lcom/hisavana/common/bean/AdSourceConfig;-><init>()V

    invoke-virtual {p3}, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->isDebug()Z

    move-result v3

    iput-boolean v3, v0, Lcom/hisavana/common/bean/AdSourceConfig;->isDebug:Z

    invoke-virtual {p3}, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->getPkgEvn()Z

    move-result v3

    iput-boolean v3, v0, Lcom/hisavana/common/bean/AdSourceConfig;->pkgEvn:Z

    invoke-virtual {p3}, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->getAppId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/hisavana/common/bean/AdSourceConfig;->appId:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->isTestDevice()Z

    move-result v3

    iput-boolean v3, v0, Lcom/hisavana/common/bean/AdSourceConfig;->testDevice:Z

    invoke-virtual {p3}, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->isLite()Z

    move-result v3

    iput-boolean v3, v0, Lcom/hisavana/common/bean/AdSourceConfig;->isLite:Z

    invoke-virtual {p3}, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->getAppId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/hisavana/common/bean/AdSourceConfig;->vidAppId:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->getAppIconId()I

    move-result v3

    iput v3, v0, Lcom/hisavana/common/bean/AdSourceConfig;->appIconId:I

    invoke-virtual {p3}, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->isInitAdmob()Z

    move-result v3

    iput-boolean v3, v0, Lcom/hisavana/common/bean/AdSourceConfig;->isInitAdMob:Z

    invoke-virtual {p3}, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->isInitAlliance()Z

    move-result v3

    iput-boolean v3, v0, Lcom/hisavana/common/bean/AdSourceConfig;->isInitAlliance:Z

    invoke-virtual {p3}, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->getDefaultVersion()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/hisavana/common/bean/AdSourceConfig;->defaultVersion:J

    invoke-virtual {p3}, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->getDefaultMaterialMaxSize()I

    move-result v3

    iput v3, v0, Lcom/hisavana/common/bean/AdSourceConfig;->defaultMaterialMaxSize:I

    invoke-virtual {p3}, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->getShouldOptimizeImageLoading()Z

    move-result v3

    iput-boolean v3, v0, Lcom/hisavana/common/bean/AdSourceConfig;->shouldOptimizeImageLoading:Z

    invoke-virtual {p3}, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->checkEnableRewardedToast()Z

    move-result v3

    iput-boolean v3, v0, Lcom/hisavana/common/bean/AdSourceConfig;->isEnableRewardedToast:Z

    invoke-virtual {p3}, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->checkEnableWebRecommendFeature()Z

    move-result v3

    iput-boolean v3, v0, Lcom/hisavana/common/bean/AdSourceConfig;->isEnableWebRecommendFeature:Z

    invoke-virtual {p3}, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->checkEnableVideoAd()Z

    move-result v3

    iput-boolean v3, v0, Lcom/hisavana/common/bean/AdSourceConfig;->isEnableVideoAd:Z

    invoke-virtual {p3}, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->getPangleAppId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/hisavana/common/bean/AdSourceConfig;->pangleAppId:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->isClosePangleWebFileLock()Z

    move-result p3

    iput-boolean p3, v0, Lcom/hisavana/common/bean/AdSourceConfig;->isClosePangleWebFileLock:Z

    invoke-interface {v2, p1, v0}, Lcom/hisavana/common/interfacz/IBaseAdSummary;->init(Landroid/content/Context;Lcom/hisavana/common/bean/AdSourceConfig;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ad source init error source:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " error:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v5, p1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    if-eqz v1, :cond_0

    iget-object p1, p0, Lbe/o;->a:Landroid/util/SparseArray;

    invoke-virtual {p1, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public d(Landroid/content/Context;Lcom/hisavana/mediation/config/TAdManager$AdConfig;)V
    .locals 4

    sget-object v0, Lbe/o;->b:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    invoke-virtual {p0, p1, v3, p2}, Lbe/o;->c(Landroid/content/Context;ILcom/hisavana/mediation/config/TAdManager$AdConfig;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public f(I)Lcom/hisavana/common/interfacz/IBaseAdSummary;
    .locals 1

    iget-object v0, p0, Lbe/o;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hisavana/common/interfacz/IBaseAdSummary;

    return-object p1
.end method
