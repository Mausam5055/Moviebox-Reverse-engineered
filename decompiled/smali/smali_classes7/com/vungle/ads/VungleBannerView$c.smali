.class public final Lcom/vungle/ads/VungleBannerView$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vungle/ads/internal/ImpressionTracker$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/VungleBannerView;->renderAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/ads/VungleBannerView;


# direct methods
.method constructor <init>(Lcom/vungle/ads/VungleBannerView;)V
    .locals 0

    iput-object p1, p0, Lcom/vungle/ads/VungleBannerView$c;->this$0:Lcom/vungle/ads/VungleBannerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImpression(Landroid/view/View;)V
    .locals 2

    sget-object p1, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    const-string v0, "VungleBannerView"

    const-string v1, "ImpressionTracker checked the banner view become visible."

    invoke-virtual {p1, v0, v1}, Lcom/vungle/ads/internal/util/o$a;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/vungle/ads/VungleBannerView$c;->this$0:Lcom/vungle/ads/VungleBannerView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/vungle/ads/VungleBannerView;->access$setOnImpressionCalled$p(Lcom/vungle/ads/VungleBannerView;Z)V

    iget-object p1, p0, Lcom/vungle/ads/VungleBannerView$c;->this$0:Lcom/vungle/ads/VungleBannerView;

    invoke-static {p1}, Lcom/vungle/ads/VungleBannerView;->access$logViewVisibleOnPlay(Lcom/vungle/ads/VungleBannerView;)V

    iget-object p1, p0, Lcom/vungle/ads/VungleBannerView$c;->this$0:Lcom/vungle/ads/VungleBannerView;

    invoke-static {p1}, Lcom/vungle/ads/VungleBannerView;->access$checkHardwareAcceleration(Lcom/vungle/ads/VungleBannerView;)V

    iget-object p1, p0, Lcom/vungle/ads/VungleBannerView$c;->this$0:Lcom/vungle/ads/VungleBannerView;

    invoke-static {p1}, Lcom/vungle/ads/VungleBannerView;->access$getPresenter$p(Lcom/vungle/ads/VungleBannerView;)Lcom/vungle/ads/internal/presenter/MRAIDPresenter;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->start()V

    :cond_0
    return-void
.end method

.method public onViewInvisible(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/vungle/ads/VungleBannerView$c;->this$0:Lcom/vungle/ads/VungleBannerView;

    invoke-static {p1}, Lcom/vungle/ads/VungleBannerView;->access$logViewInvisibleOnPlay(Lcom/vungle/ads/VungleBannerView;)V

    return-void
.end method
