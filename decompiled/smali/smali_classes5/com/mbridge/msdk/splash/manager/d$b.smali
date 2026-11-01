.class Lcom/mbridge/msdk/splash/manager/d$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mbridge/msdk/foundation/same/image/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/splash/manager/d;->a(Lcom/mbridge/msdk/splash/view/MBSplashView;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/splash/view/nativeview/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/splash/view/nativeview/a;

.field final synthetic b:Lcom/mbridge/msdk/splash/view/MBSplashView;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/splash/view/nativeview/a;Lcom/mbridge/msdk/splash/view/MBSplashView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mbridge/msdk/splash/manager/d$b;->a:Lcom/mbridge/msdk/splash/view/nativeview/a;

    iput-object p2, p0, Lcom/mbridge/msdk/splash/manager/d$b;->b:Lcom/mbridge/msdk/splash/view/MBSplashView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailedLoad(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/mbridge/msdk/splash/manager/d$b;->a:Lcom/mbridge/msdk/splash/view/nativeview/a;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/mbridge/msdk/splash/view/nativeview/a;->b()V

    :cond_0
    iget-object p1, p0, Lcom/mbridge/msdk/splash/manager/d$b;->b:Lcom/mbridge/msdk/splash/view/MBSplashView;

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/mbridge/msdk/splash/view/MBSplashView;->setImageReady(Z)V

    :cond_1
    return-void
.end method

.method public onSuccessLoad(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/mbridge/msdk/splash/manager/d$b;->a:Lcom/mbridge/msdk/splash/view/nativeview/a;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/mbridge/msdk/splash/view/nativeview/a;->a()V

    :cond_0
    iget-object p1, p0, Lcom/mbridge/msdk/splash/manager/d$b;->b:Lcom/mbridge/msdk/splash/view/MBSplashView;

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/mbridge/msdk/splash/view/MBSplashView;->setImageReady(Z)V

    :cond_1
    return-void
.end method
