.class public final Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder$CheckMaterial;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/ad/interface/ActionJsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CheckMaterial"
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder$CheckMaterial;->OooO00o:Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadMaterialError(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder$CheckMaterial;->OooO00o:Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooOOOo:Z

    iget-object v0, p1, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooO0oo:Lcom/cloud/tmc/ad/interface/AdEventListener;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooO0oO:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/cloud/tmc/ad/interface/AdEventListener;->fillingResult(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
