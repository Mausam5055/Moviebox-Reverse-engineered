.class public final Lcom/hisavana/vungle/check/ExistsCheck;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hisavana/common/interfacz/IBaseAdSummary;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hisavana/vungle/check/ExistsCheck$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001a\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016J,\u0010\n\u001a\u0006\u0012\u0002\u0008\u00030\u000b2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016J\u0018\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\rH\u0016J \u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u000fH\u0016J\u0008\u0010\u0016\u001a\u00020\u0017H\u0016J\u0018\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\rH\u0016J\"\u0010\u001a\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u001b2\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016J\n\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/hisavana/vungle/check/ExistsCheck;",
        "Lcom/hisavana/common/interfacz/IBaseAdSummary;",
        "<init>",
        "()V",
        "init",
        "",
        "context",
        "Landroid/content/Context;",
        "config",
        "Lcom/hisavana/common/bean/AdSourceConfig;",
        "getBanner",
        "Lcom/hisavana/common/base/BaseBanner;",
        "network",
        "Lcom/hisavana/common/bean/Network;",
        "bannerSize",
        "",
        "bannerType",
        "getInterstitial",
        "Lcom/hisavana/common/base/BaseInterstitial;",
        "getNative",
        "Lcom/hisavana/common/base/BaseNative;",
        "adType",
        "getNativeViewHolder",
        "Lcom/hisavana/common/base/BaseNativeViewHolder;",
        "getVideo",
        "Lcom/hisavana/common/base/BaseVideo;",
        "getSplash",
        "Lcom/hisavana/common/base/BaseSplash;",
        "getQueryPrice",
        "Lcom/hisavana/common/base/BaseQueryPrice;",
        "Companion",
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
.field public static final Companion:Lcom/hisavana/vungle/check/ExistsCheck$Companion;

.field public static final TAG:Ljava/lang/String; = "Vungle_Log"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/hisavana/vungle/check/ExistsCheck$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hisavana/vungle/check/ExistsCheck$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/hisavana/vungle/check/ExistsCheck;->Companion:Lcom/hisavana/vungle/check/ExistsCheck$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBanner(Landroid/content/Context;Lcom/hisavana/common/bean/Network;II)Lcom/hisavana/common/base/BaseBanner;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/hisavana/common/bean/Network;",
            "II)",
            "Lcom/hisavana/common/base/BaseBanner<",
            "*>;"
        }
    .end annotation

    const-string p4, "context"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "network"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p4, Lcom/hisavana/vungle/excuter/VungleInline;

    invoke-direct {p4, p1, p2, p3}, Lcom/hisavana/vungle/excuter/VungleInline;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;I)V

    return-object p4
.end method

.method public getInterstitial(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)Lcom/hisavana/common/base/BaseInterstitial;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "network"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/hisavana/vungle/excuter/VungleInterstitial;

    invoke-direct {v0, p1, p2}, Lcom/hisavana/vungle/excuter/VungleInterstitial;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V

    return-object v0
.end method

.method public synthetic getInterstitialRewarded(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)Lcom/hisavana/common/base/BaseVideo;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/hisavana/common/interfacz/a;->a(Lcom/hisavana/common/interfacz/IBaseAdSummary;Landroid/content/Context;Lcom/hisavana/common/bean/Network;)Lcom/hisavana/common/base/BaseVideo;

    move-result-object p1

    return-object p1
.end method

.method public getNative(Landroid/content/Context;Lcom/hisavana/common/bean/Network;I)Lcom/hisavana/common/base/BaseNative;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "network"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/hisavana/vungle/excuter/VungleNative;

    invoke-direct {v0, p1, p2, p3}, Lcom/hisavana/vungle/excuter/VungleNative;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;I)V

    return-object v0
.end method

.method public getNativeViewHolder()Lcom/hisavana/common/base/BaseNativeViewHolder;
    .locals 1

    new-instance v0, Lcom/hisavana/vungle/holder/NativeAdViewHolder;

    invoke-direct {v0}, Lcom/hisavana/vungle/holder/NativeAdViewHolder;-><init>()V

    return-object v0
.end method

.method public getQueryPrice()Lcom/hisavana/common/base/BaseQueryPrice;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSplash(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)Lcom/hisavana/common/base/BaseSplash;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/hisavana/common/bean/Network;",
            ")",
            "Lcom/hisavana/common/base/BaseSplash<",
            "*>;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getVideo(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)Lcom/hisavana/common/base/BaseVideo;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "network"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/hisavana/vungle/excuter/VungleRewarded;

    invoke-direct {v0, p1, p2}, Lcom/hisavana/vungle/excuter/VungleRewarded;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V

    return-object v0
.end method

.method public init(Landroid/content/Context;Lcom/hisavana/common/bean/AdSourceConfig;)V
    .locals 0

    const-string p2, "context"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
