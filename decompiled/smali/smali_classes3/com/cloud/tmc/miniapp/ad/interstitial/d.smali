.class public final synthetic Lcom/cloud/tmc/miniapp/ad/interstitial/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/d;->a:Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/d;->a:Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;

    invoke-static {v0, p1, p2}, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooO00o(Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
