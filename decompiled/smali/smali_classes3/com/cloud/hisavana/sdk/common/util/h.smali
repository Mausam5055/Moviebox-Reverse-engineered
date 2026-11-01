.class public final Lcom/cloud/hisavana/sdk/common/util/h;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/cloud/hisavana/sdk/common/util/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/common/util/h;

    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/common/util/h;-><init>()V

    sput-object v0, Lcom/cloud/hisavana/sdk/common/util/h;->a:Lcom/cloud/hisavana/sdk/common/util/h;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;
    .locals 2

    const-string v0, "defaultConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, La7/c;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->setApplicationId(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->setAdSeatType(Ljava/lang/String;)V

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->setOfflineAdCacheCount(Ljava/lang/Integer;)V

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->setOfflineAdRequestCount(Ljava/lang/Integer;)V

    const/16 v0, 0x1e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->setOfflineAdRequestTimeInterval(Ljava/lang/Integer;)V

    const/16 v0, 0x18

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->setOfflineAdRequestTimeIntervalNoAd(Ljava/lang/Integer;)V

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->setAdShowCountLimit(Ljava/lang/Integer;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->setCarouselTime(Ljava/lang/Integer;)V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->setCarouselCount(Ljava/lang/Integer;)V

    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->setShowInterval(Ljava/lang/Integer;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->setLastOfflineAdEnable(Ljava/lang/Boolean;)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->setDefaultConfig(Ljava/lang/Boolean;)V

    return-object p1
.end method
