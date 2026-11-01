.class public final Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog$OooO00o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOo00;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;

.field public final synthetic OooO0O0:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog$OooO00o;->OooO0O0:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Lcom/cloud/tmc/miniapp/dialog/OooO0O0;)V
    .locals 2

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog$OooO00o;->OooO0O0:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v1, v0, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/Lifecycle;->d(Landroidx/lifecycle/t;)V

    :cond_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;

    iget-object v0, p1, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;->OooO0Oo:Landroid/os/Handler;

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;->OooO0o:Ljava/lang/Runnable;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;->OooO00o(Z)V

    return-void
.end method
