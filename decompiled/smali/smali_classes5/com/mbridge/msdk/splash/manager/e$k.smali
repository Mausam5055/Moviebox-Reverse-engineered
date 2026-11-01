.class Lcom/mbridge/msdk/splash/manager/e$k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mbridge/msdk/splash/inter/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/splash/manager/e;->f(Lcom/mbridge/msdk/foundation/entity/CampaignEx;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

.field final synthetic b:I

.field final synthetic c:Lcom/mbridge/msdk/splash/manager/e;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/splash/manager/e;Lcom/mbridge/msdk/foundation/entity/CampaignEx;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mbridge/msdk/splash/manager/e$k;->c:Lcom/mbridge/msdk/splash/manager/e;

    iput-object p2, p0, Lcom/mbridge/msdk/splash/manager/e$k;->a:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iput p3, p0, Lcom/mbridge/msdk/splash/manager/e$k;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/e$k;->c:Lcom/mbridge/msdk/splash/manager/e;

    invoke-static {v0}, Lcom/mbridge/msdk/splash/manager/e;->c(Lcom/mbridge/msdk/splash/manager/e;)Lcom/mbridge/msdk/splash/view/MBSplashView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/e$k;->c:Lcom/mbridge/msdk/splash/manager/e;

    invoke-static {v0}, Lcom/mbridge/msdk/splash/manager/e;->c(Lcom/mbridge/msdk/splash/manager/e;)Lcom/mbridge/msdk/splash/view/MBSplashView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/splash/view/MBSplashView;->setDynamicView(Z)V

    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/e$k;->c:Lcom/mbridge/msdk/splash/manager/e;

    invoke-static {v0}, Lcom/mbridge/msdk/splash/manager/e;->c(Lcom/mbridge/msdk/splash/manager/e;)Lcom/mbridge/msdk/splash/view/MBSplashView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/splash/view/MBSplashView;->setSplashNativeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/mbridge/msdk/splash/manager/e$k;->c:Lcom/mbridge/msdk/splash/manager/e;

    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/e$k;->a:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iget v1, p0, Lcom/mbridge/msdk/splash/manager/e$k;->b:I

    invoke-static {p1, v0, v1}, Lcom/mbridge/msdk/splash/manager/e;->c(Lcom/mbridge/msdk/splash/manager/e;Lcom/mbridge/msdk/foundation/entity/CampaignEx;I)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/mbridge/msdk/foundation/error/b;

    const v1, 0xd6da2

    invoke-direct {v0, v1}, Lcom/mbridge/msdk/foundation/error/b;-><init>(I)V

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/error/b;->c(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mbridge/msdk/splash/manager/e$k;->c:Lcom/mbridge/msdk/splash/manager/e;

    invoke-static {p1}, Lcom/mbridge/msdk/splash/manager/e;->a(Lcom/mbridge/msdk/splash/manager/e;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/mbridge/msdk/splash/manager/e$k;->b:I

    iget-object v3, p0, Lcom/mbridge/msdk/splash/manager/e$k;->a:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/mbridge/msdk/splash/manager/e;->a(Lcom/mbridge/msdk/splash/manager/e;Lcom/mbridge/msdk/foundation/error/b;Ljava/lang/String;ILcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    return-void
.end method
