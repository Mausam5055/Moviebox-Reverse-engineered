.class public final Lcom/hisavana/vungle/holder/NativeAdViewHolder;
.super Lcom/hisavana/common/base/BaseNativeViewHolder;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J-\u0010\r\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\n\u001a\u0004\u0018\u00010\t2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0014\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0003R\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/hisavana/vungle/holder/NativeAdViewHolder;",
        "Lcom/hisavana/common/base/BaseNativeViewHolder;",
        "<init>",
        "()V",
        "Landroid/content/Context;",
        "ctx",
        "Landroid/view/View;",
        "createIconView",
        "(Landroid/content/Context;)Landroid/view/View;",
        "Lcom/hisavana/common/bean/TAdNativeInfo;",
        "nativeInfo",
        "Landroid/view/ViewGroup;",
        "viewGroup",
        "createMediaView",
        "(Landroid/content/Context;Lcom/hisavana/common/bean/TAdNativeInfo;Landroid/view/ViewGroup;)Landroid/view/View;",
        "",
        "destroy",
        "Lcom/vungle/ads/internal/ui/view/MediaView;",
        "b",
        "Lcom/vungle/ads/internal/ui/view/MediaView;",
        "vungleMediaView",
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


# instance fields
.field private b:Lcom/vungle/ads/internal/ui/view/MediaView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hisavana/common/base/BaseNativeViewHolder;-><init>()V

    return-void
.end method


# virtual methods
.method protected createIconView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const-string p1, "vungle_icon_view"

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v0
.end method

.method protected createMediaView(Landroid/content/Context;Lcom/hisavana/common/bean/TAdNativeInfo;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    new-instance p2, Lcom/vungle/ads/internal/ui/view/MediaView;

    if-nez p1, :cond_0

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object p1

    :cond_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {p2, p1}, Lcom/vungle/ads/internal/ui/view/MediaView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/hisavana/vungle/holder/NativeAdViewHolder;->b:Lcom/vungle/ads/internal/ui/view/MediaView;

    const-string p1, "vungle_media_view"

    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hisavana/vungle/holder/NativeAdViewHolder;->b:Lcom/vungle/ads/internal/ui/view/MediaView;

    const-string p2, "null cannot be cast to non-null type com.vungle.ads.internal.ui.view.MediaView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public destroy()V
    .locals 3

    invoke-super {p0}, Lcom/hisavana/common/base/BaseNativeViewHolder;->destroy()V

    iget-object v0, p0, Lcom/hisavana/vungle/holder/NativeAdViewHolder;->b:Lcom/vungle/ads/internal/ui/view/MediaView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/ui/view/MediaView;->destroy()V

    :cond_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v1, "Vungle_Log"

    const-string v2, "Vungle Native holder destroy"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
