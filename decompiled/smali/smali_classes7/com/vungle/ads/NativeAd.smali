.class public final Lcom/vungle/ads/NativeAd;
.super Lcom/vungle/ads/BaseAd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/NativeAd$a;
    }
.end annotation


# static fields
.field public static final BOTTOM_LEFT:I = 0x2

.field public static final BOTTOM_RIGHT:I = 0x3

.field public static final Companion:Lcom/vungle/ads/NativeAd$a;

.field private static final TAG:Ljava/lang/String; = "NativeAd"

.field public static final TOP_LEFT:I = 0x0

.field public static final TOP_RIGHT:I = 0x1


# instance fields
.field private adContentView:Lcom/vungle/ads/internal/ui/view/MediaView;

.field private adIconView:Landroid/widget/ImageView;

.field private adOptionsPosition:I

.field private adOptionsView:Lcom/vungle/ads/NativeAdOptionsView;

.field private final adPlayCallback:Lcom/vungle/ads/NativeAd$adPlayCallback$1;

.field private adRootView:Landroid/widget/FrameLayout;

.field private aspectRatio:F

.field private clickableViews:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "+",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final executors$delegate:Lkotlin/Lazy;

.field private final imageLoader$delegate:Lkotlin/Lazy;

.field private final impressionTracker$delegate:Lkotlin/Lazy;

.field private final isInvisibleLogged:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private nativeAdAssetMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private presenter:Lcom/vungle/ads/internal/presenter/NativeAdPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vungle/ads/NativeAd$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vungle/ads/NativeAd$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vungle/ads/NativeAd;->Companion:Lcom/vungle/ads/NativeAd$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placementId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/vungle/ads/b;

    invoke-direct {v0}, Lcom/vungle/ads/b;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/vungle/ads/NativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/b;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/b;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/ads/BaseAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/b;)V

    new-instance p2, Lcom/vungle/ads/NativeAd$imageLoader$2;

    invoke-direct {p2, p0}, Lcom/vungle/ads/NativeAd$imageLoader$2;-><init>(Lcom/vungle/ads/NativeAd;)V

    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/vungle/ads/NativeAd;->imageLoader$delegate:Lkotlin/Lazy;

    sget-object p2, Lcom/vungle/ads/ServiceLocator;->Companion:Lcom/vungle/ads/ServiceLocator$Companion;

    sget-object p2, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance p3, Lcom/vungle/ads/NativeAd$special$$inlined$inject$1;

    invoke-direct {p3, p1}, Lcom/vungle/ads/NativeAd$special$$inlined$inject$1;-><init>(Landroid/content/Context;)V

    invoke-static {p2, p3}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/vungle/ads/NativeAd;->executors$delegate:Lkotlin/Lazy;

    new-instance p2, Lcom/vungle/ads/NativeAd$impressionTracker$2;

    invoke-direct {p2, p1}, Lcom/vungle/ads/NativeAd$impressionTracker$2;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/vungle/ads/NativeAd;->impressionTracker$delegate:Lkotlin/Lazy;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/vungle/ads/NativeAd;->isInvisibleLogged:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    iput p2, p0, Lcom/vungle/ads/NativeAd;->adOptionsPosition:I

    new-instance p2, Lcom/vungle/ads/NativeAdOptionsView;

    invoke-direct {p2, p1}, Lcom/vungle/ads/NativeAdOptionsView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/vungle/ads/NativeAd;->adOptionsView:Lcom/vungle/ads/NativeAdOptionsView;

    new-instance p1, Lcom/vungle/ads/NativeAd$adPlayCallback$1;

    invoke-direct {p1, p0}, Lcom/vungle/ads/NativeAd$adPlayCallback$1;-><init>(Lcom/vungle/ads/NativeAd;)V

    iput-object p1, p0, Lcom/vungle/ads/NativeAd;->adPlayCallback:Lcom/vungle/ads/NativeAd$adPlayCallback$1;

    return-void
.end method

.method public static synthetic a(Lcom/vungle/ads/NativeAd;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/vungle/ads/NativeAd;->registerViewForInteraction$lambda-4$lambda-3(Lcom/vungle/ads/NativeAd;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$getExecutors(Lcom/vungle/ads/NativeAd;)Lcom/vungle/ads/internal/executor/a;
    .locals 0

    invoke-direct {p0}, Lcom/vungle/ads/NativeAd;->getExecutors()Lcom/vungle/ads/internal/executor/a;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getPresenter$p(Lcom/vungle/ads/NativeAd;)Lcom/vungle/ads/internal/presenter/NativeAdPresenter;
    .locals 0

    iget-object p0, p0, Lcom/vungle/ads/NativeAd;->presenter:Lcom/vungle/ads/internal/presenter/NativeAdPresenter;

    return-object p0
.end method

.method public static final synthetic access$isInvisibleLogged$p(Lcom/vungle/ads/NativeAd;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/vungle/ads/NativeAd;->isInvisibleLogged:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static final synthetic access$logViewVisibleOnPlay(Lcom/vungle/ads/NativeAd;)V
    .locals 0

    invoke-direct {p0}, Lcom/vungle/ads/NativeAd;->logViewVisibleOnPlay()V

    return-void
.end method

.method public static final synthetic access$setAspectRatio$p(Lcom/vungle/ads/NativeAd;F)V
    .locals 0

    iput p1, p0, Lcom/vungle/ads/NativeAd;->aspectRatio:F

    return-void
.end method

.method public static synthetic b(Lcom/vungle/ads/NativeAd;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/vungle/ads/NativeAd;->registerViewForInteraction$lambda-2(Lcom/vungle/ads/NativeAd;Landroid/view/View;)V

    return-void
.end method

.method private final createMediaAspectRatio()V
    .locals 3

    invoke-direct {p0}, Lcom/vungle/ads/NativeAd;->getImageLoader()Lcom/vungle/ads/internal/util/k;

    move-result-object v0

    invoke-direct {p0}, Lcom/vungle/ads/NativeAd;->getMainImagePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/vungle/ads/NativeAd$createMediaAspectRatio$1;

    invoke-direct {v2, p0}, Lcom/vungle/ads/NativeAd$createMediaAspectRatio$1;-><init>(Lcom/vungle/ads/NativeAd;)V

    invoke-virtual {v0, v1, v2}, Lcom/vungle/ads/internal/util/k;->getImageSize(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method private final displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 2

    invoke-direct {p0}, Lcom/vungle/ads/NativeAd;->getImageLoader()Lcom/vungle/ads/internal/util/k;

    move-result-object v0

    new-instance v1, Lcom/vungle/ads/NativeAd$displayImage$1;

    invoke-direct {v1, p2}, Lcom/vungle/ads/NativeAd$displayImage$1;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {v0, p1, v1}, Lcom/vungle/ads/internal/util/k;->displayImage(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static synthetic getAdOptionsPosition$annotations()V
    .locals 0

    return-void
.end method

.method private final getExecutors()Lcom/vungle/ads/internal/executor/a;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/NativeAd;->executors$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/ads/internal/executor/a;

    return-object v0
.end method

.method private final getImageLoader()Lcom/vungle/ads/internal/util/k;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/NativeAd;->imageLoader$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/ads/internal/util/k;

    return-object v0
.end method

.method private final getImpressionTracker()Lcom/vungle/ads/internal/ImpressionTracker;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/NativeAd;->impressionTracker$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/ads/internal/ImpressionTracker;

    return-object v0
.end method

.method private final getMainImagePath()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/vungle/ads/NativeAd;->nativeAdAssetMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    const-string v1, "MAIN_IMAGE"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method private final logViewVisibleOnPlay()V
    .locals 4

    iget-object v0, p0, Lcom/vungle/ads/NativeAd;->isInvisibleLogged:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "3"

    goto :goto_0

    :cond_0
    const-string v0, "2"

    :goto_0
    sget-object v1, Lcom/vungle/ads/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/AnalyticsClient;

    new-instance v2, Lcom/vungle/ads/w;

    sget-object v3, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->AD_VISIBILITY:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    invoke-direct {v2, v3}, Lcom/vungle/ads/w;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/n;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/ads/AnalyticsClient;->logMetric$vungle_ads_release(Lcom/vungle/ads/w;Lcom/vungle/ads/internal/util/n;Ljava/lang/String;)V

    sget-object v1, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Log metric AD_VISIBILITY: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NativeAd"

    invoke-virtual {v1, v2, v0}, Lcom/vungle/ads/internal/util/o$a;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static final registerViewForInteraction$lambda-1(Lkotlin/Lazy;)Lcom/vungle/ads/internal/platform/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Lazy<",
            "+",
            "Lcom/vungle/ads/internal/platform/d;",
            ">;)",
            "Lcom/vungle/ads/internal/platform/d;"
        }
    .end annotation

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vungle/ads/internal/platform/d;

    return-object p0
.end method

.method private static final registerViewForInteraction$lambda-2(Lcom/vungle/ads/NativeAd;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/vungle/ads/NativeAd;->presenter:Lcom/vungle/ads/internal/presenter/NativeAdPresenter;

    if-eqz p1, :cond_0

    const-string v0, "openPrivacy"

    invoke-virtual {p0}, Lcom/vungle/ads/NativeAd;->getPrivacyUrl$vungle_ads_release()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->processCommand(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static final registerViewForInteraction$lambda-4$lambda-3(Lcom/vungle/ads/NativeAd;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/vungle/ads/NativeAd;->presenter:Lcom/vungle/ads/internal/presenter/NativeAdPresenter;

    if-eqz p1, :cond_0

    const-string v0, "download"

    invoke-virtual {p0}, Lcom/vungle/ads/NativeAd;->getCtaUrl$vungle_ads_release()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->processCommand(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic constructAdInternal$vungle_ads_release(Landroid/content/Context;)Lcom/vungle/ads/internal/AdInternal;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/vungle/ads/NativeAd;->constructAdInternal$vungle_ads_release(Landroid/content/Context;)Lcom/vungle/ads/internal/f;

    move-result-object p1

    return-object p1
.end method

.method public constructAdInternal$vungle_ads_release(Landroid/content/Context;)Lcom/vungle/ads/internal/f;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/vungle/ads/internal/f;

    invoke-direct {v0, p1}, Lcom/vungle/ads/internal/f;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final getAdBodyText()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/vungle/ads/NativeAd;->nativeAdAssetMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    const-string v1, "APP_DESCRIPTION"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method public final getAdCallToActionText()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/vungle/ads/NativeAd;->nativeAdAssetMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    const-string v1, "CTA_BUTTON_TEXT"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method public final getAdOptionsPosition()I
    .locals 1

    iget v0, p0, Lcom/vungle/ads/NativeAd;->adOptionsPosition:I

    return v0
.end method

.method public final getAdSponsoredText()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/vungle/ads/NativeAd;->nativeAdAssetMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    const-string v1, "SPONSORED_BY"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method public final getAdStarRating()Ljava/lang/Double;
    .locals 3

    iget-object v0, p0, Lcom/vungle/ads/NativeAd;->nativeAdAssetMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    const-string v1, "APP_RATING_VALUE"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    :try_start_0
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-object v2
.end method

.method public final getAdTitle()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/vungle/ads/NativeAd;->nativeAdAssetMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    const-string v1, "APP_NAME"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method public final getAppIcon()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/vungle/ads/NativeAd;->nativeAdAssetMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    const-string v1, "APP_ICON"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method public final getCtaUrl$vungle_ads_release()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/vungle/ads/NativeAd;->nativeAdAssetMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    const-string v1, "CTA_BUTTON_URL"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method public final getMediaAspectRatio()F
    .locals 1

    iget v0, p0, Lcom/vungle/ads/NativeAd;->aspectRatio:F

    return v0
.end method

.method public final getPrivacyIconUrl$vungle_ads_release()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/vungle/ads/NativeAd;->nativeAdAssetMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    const-string v1, "VUNGLE_PRIVACY_ICON_URL"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method public final getPrivacyUrl$vungle_ads_release()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/vungle/ads/NativeAd;->nativeAdAssetMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    const-string v1, "VUNGLE_PRIVACY_URL"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method public final hasCallToAction()Z
    .locals 1

    invoke-virtual {p0}, Lcom/vungle/ads/NativeAd;->getCtaUrl$vungle_ads_release()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAdLoaded$vungle_ads_release(Lcom/vungle/ads/internal/model/AdPayload;)V
    .locals 1

    const-string v0, "advertisement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/vungle/ads/BaseAd;->onAdLoaded$vungle_ads_release(Lcom/vungle/ads/internal/model/AdPayload;)V

    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/AdPayload;->getMRAIDArgsInMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/vungle/ads/NativeAd;->nativeAdAssetMap:Ljava/util/Map;

    invoke-direct {p0}, Lcom/vungle/ads/NativeAd;->createMediaAspectRatio()V

    return-void
.end method

.method public final performCTA()V
    .locals 3

    iget-object v0, p0, Lcom/vungle/ads/NativeAd;->presenter:Lcom/vungle/ads/internal/presenter/NativeAdPresenter;

    if-eqz v0, :cond_0

    const-string v1, "download"

    invoke-virtual {p0}, Lcom/vungle/ads/NativeAd;->getCtaUrl$vungle_ads_release()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->processCommand(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final registerViewForInteraction(Landroid/widget/FrameLayout;Lcom/vungle/ads/internal/ui/view/MediaView;Landroid/widget/ImageView;Ljava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/FrameLayout;",
            "Lcom/vungle/ads/internal/ui/view/MediaView;",
            "Landroid/widget/ImageView;",
            "Ljava/util/Collection<",
            "+",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const-string v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vungle/ads/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/AnalyticsClient;

    new-instance v2, Lcom/vungle/ads/w;

    sget-object v1, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->PLAY_AD_API:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    invoke-direct {v2, v1}, Lcom/vungle/ads/w;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/n;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lcom/vungle/ads/AnalyticsClient;->logMetric$vungle_ads_release$default(Lcom/vungle/ads/AnalyticsClient;Lcom/vungle/ads/w;Lcom/vungle/ads/internal/util/n;Ljava/lang/String;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getResponseToShowMetric$vungle_ads_release()Lcom/vungle/ads/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vungle/ads/x;->markEnd()V

    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getResponseToShowMetric$vungle_ads_release()Lcom/vungle/ads/x;

    move-result-object v2

    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/n;

    move-result-object v3

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lcom/vungle/ads/AnalyticsClient;->logMetric$vungle_ads_release$default(Lcom/vungle/ads/AnalyticsClient;Lcom/vungle/ads/x;Lcom/vungle/ads/internal/util/n;Ljava/lang/String;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/AdInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/AdInternal;->getShowToValidationMetric$vungle_ads_release()Lcom/vungle/ads/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/ads/x;->markStart()V

    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getShowToFailMetric$vungle_ads_release()Lcom/vungle/ads/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/ads/x;->markStart()V

    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getShowToCloseMetric$vungle_ads_release()Lcom/vungle/ads/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/ads/x;->markStart()V

    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/AdInternal;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/AdInternal;->canPlayAd(Z)Lcom/vungle/ads/VungleError;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/AdInternal;

    move-result-object p1

    invoke-virtual {v0}, Lcom/vungle/ads/VungleError;->getCode()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/vungle/ads/internal/AdInternal;->isErrorTerminal$vungle_ads_release(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/AdInternal;

    move-result-object p1

    sget-object p2, Lcom/vungle/ads/internal/AdInternal$AdState;->ERROR:Lcom/vungle/ads/internal/AdInternal$AdState;

    invoke-virtual {p1, p2}, Lcom/vungle/ads/internal/AdInternal;->setAdState(Lcom/vungle/ads/internal/AdInternal$AdState;)V

    iget-object p1, p0, Lcom/vungle/ads/NativeAd;->nativeAdAssetMap:Ljava/util/Map;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    :cond_0
    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getAdListener()Lcom/vungle/ads/h;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1, p0, v0}, Lcom/vungle/ads/h;->onAdFailedToPlay(Lcom/vungle/ads/BaseAd;Lcom/vungle/ads/VungleError;)V

    :cond_1
    return-void

    :cond_2
    iput-object p1, p0, Lcom/vungle/ads/NativeAd;->adRootView:Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/vungle/ads/NativeAd;->adContentView:Lcom/vungle/ads/internal/ui/view/MediaView;

    iput-object p3, p0, Lcom/vungle/ads/NativeAd;->adIconView:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/vungle/ads/NativeAd;->clickableViews:Ljava/util/Collection;

    sget-object v0, Lcom/vungle/ads/ServiceLocator;->Companion:Lcom/vungle/ads/ServiceLocator$Companion;

    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lcom/vungle/ads/NativeAd$registerViewForInteraction$$inlined$inject$1;

    invoke-direct {v2, v0}, Lcom/vungle/ads/NativeAd$registerViewForInteraction$$inlined$inject$1;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    new-instance v1, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;

    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/AdInternal;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type com.vungle.ads.internal.presenter.NativePresenterDelegate"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/vungle/ads/internal/presenter/k;

    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/AdInternal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vungle/ads/internal/AdInternal;->getAdvertisement()Lcom/vungle/ads/internal/model/AdPayload;

    move-result-object v4

    invoke-static {v0}, Lcom/vungle/ads/NativeAd;->registerViewForInteraction$lambda-1(Lkotlin/Lazy;)Lcom/vungle/ads/internal/platform/d;

    move-result-object v0

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;-><init>(Landroid/content/Context;Lcom/vungle/ads/internal/presenter/k;Lcom/vungle/ads/internal/model/AdPayload;Lcom/vungle/ads/internal/platform/d;)V

    iput-object v1, p0, Lcom/vungle/ads/NativeAd;->presenter:Lcom/vungle/ads/internal/presenter/NativeAdPresenter;

    iget-object v0, p0, Lcom/vungle/ads/NativeAd;->nativeAdAssetMap:Ljava/util/Map;

    if-eqz v0, :cond_3

    const-string v1, "OM_SDK_DATA"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_4

    :cond_3
    const-string v0, ""

    :cond_4
    iget-object v1, p0, Lcom/vungle/ads/NativeAd;->presenter:Lcom/vungle/ads/internal/presenter/NativeAdPresenter;

    if-eqz v1, :cond_5

    invoke-virtual {v1, v0}, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->initOMTracker(Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/vungle/ads/NativeAd;->presenter:Lcom/vungle/ads/internal/presenter/NativeAdPresenter;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->startTracking(Landroid/view/View;)V

    :cond_6
    iget-object v0, p0, Lcom/vungle/ads/NativeAd;->presenter:Lcom/vungle/ads/internal/presenter/NativeAdPresenter;

    if-eqz v0, :cond_7

    new-instance v1, Lcom/vungle/ads/internal/presenter/a;

    iget-object v2, p0, Lcom/vungle/ads/NativeAd;->adPlayCallback:Lcom/vungle/ads/NativeAd$adPlayCallback$1;

    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/AdInternal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vungle/ads/internal/AdInternal;->getPlacement()Lcom/vungle/ads/internal/model/g;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/vungle/ads/internal/presenter/a;-><init>(Lcom/vungle/ads/internal/presenter/b;Lcom/vungle/ads/internal/model/g;)V

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->setEventListener(Lcom/vungle/ads/internal/presenter/a;)V

    :cond_7
    iget-object v0, p0, Lcom/vungle/ads/NativeAd;->adOptionsView:Lcom/vungle/ads/NativeAdOptionsView;

    if-eqz v0, :cond_8

    new-instance v1, Lcom/vungle/ads/q;

    invoke-direct {v1, p0}, Lcom/vungle/ads/q;-><init>(Lcom/vungle/ads/NativeAd;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    if-nez p4, :cond_9

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p4

    check-cast p4, Ljava/util/Collection;

    :cond_9
    check-cast p4, Ljava/lang/Iterable;

    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/vungle/ads/r;

    invoke-direct {v1, p0}, Lcom/vungle/ads/r;-><init>(Lcom/vungle/ads/NativeAd;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_a
    iget-object p4, p0, Lcom/vungle/ads/NativeAd;->adOptionsView:Lcom/vungle/ads/NativeAdOptionsView;

    if-eqz p4, :cond_b

    iget v0, p0, Lcom/vungle/ads/NativeAd;->adOptionsPosition:I

    invoke-virtual {p4, p1, v0}, Lcom/vungle/ads/NativeAdOptionsView;->renderTo(Landroid/widget/FrameLayout;I)V

    :cond_b
    invoke-direct {p0}, Lcom/vungle/ads/NativeAd;->getImpressionTracker()Lcom/vungle/ads/internal/ImpressionTracker;

    move-result-object p4

    new-instance v0, Lcom/vungle/ads/NativeAd$b;

    invoke-direct {v0, p0}, Lcom/vungle/ads/NativeAd$b;-><init>(Lcom/vungle/ads/NativeAd;)V

    invoke-virtual {p4, p1, v0}, Lcom/vungle/ads/internal/ImpressionTracker;->addView(Landroid/view/View;Lcom/vungle/ads/internal/ImpressionTracker$b;)V

    invoke-direct {p0}, Lcom/vungle/ads/NativeAd;->getMainImagePath()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Lcom/vungle/ads/internal/ui/view/MediaView;->getMainImage$vungle_ads_release()Landroid/widget/ImageView;

    move-result-object p2

    invoke-direct {p0, p4, p2}, Lcom/vungle/ads/NativeAd;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    invoke-virtual {p0}, Lcom/vungle/ads/NativeAd;->getAppIcon()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p3}, Lcom/vungle/ads/NativeAd;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    invoke-virtual {p0}, Lcom/vungle/ads/NativeAd;->getPrivacyIconUrl$vungle_ads_release()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/vungle/ads/NativeAd;->adOptionsView:Lcom/vungle/ads/NativeAdOptionsView;

    if-eqz p3, :cond_c

    invoke-virtual {p3}, Lcom/vungle/ads/NativeAdOptionsView;->getPrivacyIcon$vungle_ads_release()Landroid/widget/ImageView;

    move-result-object p3

    goto :goto_1

    :cond_c
    const/4 p3, 0x0

    :goto_1
    invoke-direct {p0, p2, p3}, Lcom/vungle/ads/NativeAd;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getAdConfig()Lcom/vungle/ads/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/vungle/ads/b;->getWatermark$vungle_ads_release()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_d

    new-instance p3, Lcom/vungle/ads/internal/ui/WatermarkView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    const-string v0, "rootView.context"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p3, p4, p2}, Lcom/vungle/ads/internal/ui/WatermarkView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p3}, Landroid/view/View;->bringToFront()V

    :cond_d
    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/AdInternal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/ads/internal/AdInternal;->getShowToValidationMetric$vungle_ads_release()Lcom/vungle/ads/x;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/ads/x;->markEnd()V

    sget-object v0, Lcom/vungle/ads/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/AnalyticsClient;

    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/AdInternal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/ads/internal/AdInternal;->getShowToValidationMetric$vungle_ads_release()Lcom/vungle/ads/x;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/n;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/vungle/ads/AnalyticsClient;->logMetric$vungle_ads_release$default(Lcom/vungle/ads/AnalyticsClient;Lcom/vungle/ads/x;Lcom/vungle/ads/internal/util/n;Ljava/lang/String;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/AdInternal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/ads/internal/AdInternal;->getValidationToPresentMetric$vungle_ads_release()Lcom/vungle/ads/x;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/ads/x;->markStart()V

    iget-object p1, p0, Lcom/vungle/ads/NativeAd;->presenter:Lcom/vungle/ads/internal/presenter/NativeAdPresenter;

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->prepare()V

    :cond_e
    return-void
.end method

.method public final setAdOptionsPosition(I)V
    .locals 0

    iput p1, p0, Lcom/vungle/ads/NativeAd;->adOptionsPosition:I

    return-void
.end method

.method public final unregisterView()V
    .locals 5

    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/AdInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/AdInternal;->getAdState()Lcom/vungle/ads/internal/AdInternal$AdState;

    move-result-object v0

    sget-object v1, Lcom/vungle/ads/internal/AdInternal$AdState;->FINISHED:Lcom/vungle/ads/internal/AdInternal$AdState;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/vungle/ads/NativeAd;->clickableViews:Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lcom/vungle/ads/NativeAd;->clickableViews:Ljava/util/Collection;

    iget-object v0, p0, Lcom/vungle/ads/NativeAd;->nativeAdAssetMap:Ljava/util/Map;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_2
    invoke-direct {p0}, Lcom/vungle/ads/NativeAd;->getImpressionTracker()Lcom/vungle/ads/internal/ImpressionTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/ImpressionTracker;->destroy()V

    iget-object v0, p0, Lcom/vungle/ads/NativeAd;->adContentView:Lcom/vungle/ads/internal/ui/view/MediaView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/vungle/ads/internal/ui/view/MediaView;->destroy()V

    :cond_3
    iput-object v1, p0, Lcom/vungle/ads/NativeAd;->adContentView:Lcom/vungle/ads/internal/ui/view/MediaView;

    iget-object v0, p0, Lcom/vungle/ads/NativeAd;->adOptionsView:Lcom/vungle/ads/NativeAdOptionsView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/vungle/ads/NativeAdOptionsView;->destroy()V

    :cond_4
    iput-object v1, p0, Lcom/vungle/ads/NativeAd;->adOptionsView:Lcom/vungle/ads/NativeAdOptionsView;

    :try_start_0
    iget-object v0, p0, Lcom/vungle/ads/NativeAd;->adIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_5
    move-object v0, v1

    :goto_1
    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_6

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    sget-object v2, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "NativeAd"

    invoke-virtual {v2, v3, v0}, Lcom/vungle/ads/internal/util/o$a;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/vungle/ads/NativeAd;->adIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    iput-object v1, p0, Lcom/vungle/ads/NativeAd;->adIconView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/vungle/ads/NativeAd;->presenter:Lcom/vungle/ads/internal/presenter/NativeAdPresenter;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->detach()V

    :cond_8
    return-void
.end method
