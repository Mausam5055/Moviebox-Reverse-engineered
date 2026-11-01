.class Lcom/mbridge/msdk/splash/view/BaseSplashPopView$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mbridge/msdk/click/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/splash/view/BaseSplashPopView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/splash/view/BaseSplashPopView;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/splash/view/BaseSplashPopView;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$a;->a:Lcom/mbridge/msdk/splash/view/BaseSplashPopView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishRedirection(Lcom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$a;->a:Lcom/mbridge/msdk/splash/view/BaseSplashPopView;

    invoke-static {p1, p2}, Lcom/mbridge/msdk/foundation/tools/s0;->a(Lcom/mbridge/msdk/out/Campaign;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public onRedirectionFailed(Lcom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$a;->a:Lcom/mbridge/msdk/splash/view/BaseSplashPopView;

    invoke-static {p1, p2}, Lcom/mbridge/msdk/foundation/tools/s0;->a(Lcom/mbridge/msdk/out/Campaign;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public onStartRedirection(Lcom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V
    .locals 3

    iget-object p2, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$a;->a:Lcom/mbridge/msdk/splash/view/BaseSplashPopView;

    invoke-static {p2}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->a(Lcom/mbridge/msdk/splash/view/BaseSplashPopView;)I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$a;->a:Lcom/mbridge/msdk/splash/view/BaseSplashPopView;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$a;->a:Lcom/mbridge/msdk/splash/view/BaseSplashPopView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    div-int/lit8 v0, p2, 0x4

    const/16 v1, 0x46

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$a;->a:Lcom/mbridge/msdk/splash/view/BaseSplashPopView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42700000    # 60.0f

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v0

    sub-int/2addr v0, p2

    div-int/lit8 v0, v0, 0x2

    iget-object p2, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$a;->a:Lcom/mbridge/msdk/splash/view/BaseSplashPopView;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v1, 0x41b80000    # 23.0f

    invoke-static {p2, v1}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result p2

    add-int/2addr p2, v0

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$a;->a:Lcom/mbridge/msdk/splash/view/BaseSplashPopView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v1

    add-int/2addr v1, v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    move v1, p2

    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$a;->a:Lcom/mbridge/msdk/splash/view/BaseSplashPopView;

    invoke-static {p1, v0, p2, v1}, Lcom/mbridge/msdk/foundation/tools/s0;->a(Lcom/mbridge/msdk/out/Campaign;Landroid/view/ViewGroup;II)V

    return-void
.end method
