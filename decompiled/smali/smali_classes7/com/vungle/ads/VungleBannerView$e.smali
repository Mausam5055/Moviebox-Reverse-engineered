.class public final Lcom/vungle/ads/VungleBannerView$e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/VungleBannerView;->willPresentAdView(Lcom/vungle/ads/internal/model/AdPayload;Lcom/vungle/ads/internal/model/g;Lcom/vungle/ads/y;)V
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

    iput-object p1, p0, Lcom/vungle/ads/VungleBannerView$e;->this$0:Lcom/vungle/ads/VungleBannerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView$e;->this$0:Lcom/vungle/ads/VungleBannerView;

    invoke-static {v0}, Lcom/vungle/ads/VungleBannerView;->access$getPresenter$p(Lcom/vungle/ads/VungleBannerView;)Lcom/vungle/ads/internal/presenter/MRAIDPresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->onViewTouched(Landroid/view/MotionEvent;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
