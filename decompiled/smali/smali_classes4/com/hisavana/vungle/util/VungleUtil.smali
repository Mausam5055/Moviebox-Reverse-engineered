.class public final Lcom/hisavana/vungle/util/VungleUtil;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J*\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000fR\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/hisavana/vungle/util/VungleUtil;",
        "",
        "<init>",
        "()V",
        "TAG_MEDIA_VIEW",
        "",
        "TAG_ICON_VIEW",
        "getNativeInfo",
        "Lcom/hisavana/common/bean/TAdNativeInfo;",
        "ad",
        "Lcom/vungle/ads/NativeAd;",
        "adt",
        "",
        "ttl",
        "vungleNative",
        "Lcom/hisavana/vungle/excuter/VungleNative;",
        "liftoff_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/hisavana/vungle/util/VungleUtil;

.field public static final TAG_ICON_VIEW:Ljava/lang/String; = "vungle_icon_view"

.field public static final TAG_MEDIA_VIEW:Ljava/lang/String; = "vungle_media_view"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hisavana/vungle/util/VungleUtil;

    invoke-direct {v0}, Lcom/hisavana/vungle/util/VungleUtil;-><init>()V

    sput-object v0, Lcom/hisavana/vungle/util/VungleUtil;->INSTANCE:Lcom/hisavana/vungle/util/VungleUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getNativeInfo(Lcom/vungle/ads/NativeAd;IILcom/hisavana/vungle/excuter/VungleNative;)Lcom/hisavana/common/bean/TAdNativeInfo;
    .locals 3

    const-string v0, "vungleNative"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    new-instance v0, Lcom/hisavana/common/bean/AdNativeInfo;

    invoke-direct {v0}, Lcom/hisavana/common/bean/AdNativeInfo;-><init>()V

    invoke-virtual {p4}, Lcom/hisavana/common/base/BaseNative;->getTriggerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hisavana/common/bean/AdNativeInfo;->setTriggerId(Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hisavana/common/bean/AdNativeInfo;->setAdId(Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/hisavana/common/base/BaseAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/hisavana/common/bean/Network;->getPrice()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/hisavana/common/bean/AdNativeInfo;->setEcpmPrice(D)V

    invoke-virtual {v0, p2}, Lcom/hisavana/common/bean/AdNativeInfo;->setAdType(I)V

    invoke-virtual {v0, p3}, Lcom/hisavana/common/bean/AdNativeInfo;->setTtl(I)V

    invoke-virtual {p4}, Lcom/hisavana/common/base/BaseAd;->getAdSource()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/hisavana/common/bean/AdNativeInfo;->setAdSource(I)V

    invoke-virtual {p1}, Lcom/vungle/ads/BaseAd;->getCreativeId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/hisavana/common/bean/AdNativeInfo;->setAdCreateId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/vungle/ads/NativeAd;->getAdTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/hisavana/common/bean/AdNativeInfo;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/vungle/ads/NativeAd;->getAdBodyText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/hisavana/common/bean/AdNativeInfo;->setDescription(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/vungle/ads/NativeAd;->getAdCallToActionText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/hisavana/common/bean/AdNativeInfo;->setAdCallToAction(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/vungle/ads/NativeAd;->getAdStarRating()Ljava/lang/Double;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/hisavana/common/bean/AdNativeInfo;->setRating(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/vungle/ads/NativeAd;->getAppIcon()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-lez p2, :cond_2

    new-instance p2, Lcom/hisavana/common/bean/AdNativeInfo$Image;

    invoke-direct {p2}, Lcom/hisavana/common/bean/AdNativeInfo$Image;-><init>()V

    invoke-virtual {p1}, Lcom/vungle/ads/NativeAd;->getAppIcon()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/hisavana/common/bean/AdNativeInfo$Image;->setUrl(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/hisavana/common/bean/AdNativeInfo;->setIcon(Lcom/hisavana/common/bean/AdNativeInfo$Image;)V

    :cond_2
    new-instance p2, Lcom/hisavana/vungle/util/VungleUtil$getNativeInfo$1$2;

    invoke-direct {p2, p1, p4, v0}, Lcom/hisavana/vungle/util/VungleUtil$getNativeInfo$1$2;-><init>(Lcom/vungle/ads/NativeAd;Lcom/hisavana/vungle/excuter/VungleNative;Lcom/hisavana/common/bean/AdNativeInfo;)V

    invoke-virtual {v0, p2}, Lcom/hisavana/common/bean/AdNativeInfo;->setNativeAdWrapper(Lcom/hisavana/common/bean/NativeAdWrapper;)V

    return-object v0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method
