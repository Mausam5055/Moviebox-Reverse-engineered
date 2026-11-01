.class public final Lcom/vungle/ads/internal/presenter/MRAIDPresenter$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/presenter/MRAIDPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter$a;-><init>()V

    return-void
.end method

.method public static synthetic getACTION_WITH_VALUE$vungle_ads_release$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getCLOSE$vungle_ads_release$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getCONSENT_ACTION$vungle_ads_release$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getCREATIVE_HEARTBEAT$vungle_ads_release$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getERROR$vungle_ads_release$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getEventMap$vungle_ads_release$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getGET_AVAILABLE_DISK_SPACE$vungle_ads_release$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getOPEN$vungle_ads_release$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getOPEN_PRIVACY$vungle_ads_release$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getPING_URL$vungle_ads_release$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getSET_ORIENTATION_PROPERTIES$vungle_ads_release$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getSUCCESSFUL_VIEW$vungle_ads_release$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getTPAT$vungle_ads_release$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getUPDATE_SIGNALS$vungle_ads_release$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getVIDEO_LENGTH$vungle_ads_release$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getVIDEO_VIEWED$vungle_ads_release$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final getEventMap$vungle_ads_release()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->access$getEventMap$cp()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
