.class public final synthetic Lcom/cloud/tmc/miniapp/ad/interstitial/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/a;->a:Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/a;->a:Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;

    invoke-static {v0}, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;->OooO00o(Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;)V

    return-void
.end method
