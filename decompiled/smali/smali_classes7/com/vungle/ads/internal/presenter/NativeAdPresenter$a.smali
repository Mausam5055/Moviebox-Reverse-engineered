.class public final Lcom/vungle/ads/internal/presenter/NativeAdPresenter$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/presenter/NativeAdPresenter;
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

    invoke-direct {p0}, Lcom/vungle/ads/internal/presenter/NativeAdPresenter$a;-><init>()V

    return-void
.end method

.method public static synthetic getEventMap$vungle_ads_release$annotations()V
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

    invoke-static {}, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->access$getEventMap$cp()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
