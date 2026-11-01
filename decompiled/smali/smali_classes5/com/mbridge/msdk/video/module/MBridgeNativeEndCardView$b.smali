.class Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$b;->a:Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$b;->a:Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    invoke-static {v0}, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->e(Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$b;->a:Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    iget-object v0, v0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isDynamicView()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$b;->a:Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    iget-object v0, v0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdSpaceT()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$b;->a:Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    invoke-static {v0}, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->e(Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v2, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$b;->a:Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    invoke-static {v2}, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->f(Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)I

    move-result v2

    iget-object v3, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$b;->a:Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    invoke-static {v3}, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->g(Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)I

    move-result v3

    iget-object v4, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$b;->a:Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    invoke-static {v4}, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->h(Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)I

    move-result v4

    iget-object v5, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$b;->a:Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    invoke-static {v5}, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->i(Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$b;->a:Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    invoke-static {v0}, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->e(Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v2, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$b;->a:Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    invoke-static {v2}, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->j(Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)Landroid/view/animation/AlphaAnimation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$b;->a:Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    invoke-static {v0}, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->e(Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$b;->a:Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    invoke-static {v0}, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->b(Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$b;->a:Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    invoke-static {v0}, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->b(Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$b;->a:Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    invoke-static {v0}, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->a(Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$b;->a:Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    invoke-static {v0}, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->b(Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$b;->a:Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    invoke-static {v0}, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->k(Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)V

    return-void
.end method
