.class Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mbridge/msdk/video/dynview/listener/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;->createView(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;Landroid/view/ViewGroup;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView$b;->b:Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;

    iput-object p2, p0, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView$b;->a:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mbridge/msdk/video/dynview/a;)V
    .locals 3

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView$b;->b:Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;

    invoke-static {v0}, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;->b(Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;)Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mbridge/msdk/video/dynview/a;->b()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView$b;->b:Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;

    invoke-virtual {p1}, Lcom/mbridge/msdk/video/dynview/a;->c()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;->a(Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;Z)Z

    iget-object p1, p0, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView$b;->a:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p1, p0, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView$b;->a:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView$b;->b:Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;

    invoke-static {v0}, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;->b(Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;)Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView$b;->b:Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;

    invoke-static {v0}, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;->c(Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView$b;->b:Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;

    invoke-static {v1}, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;->c(Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/mbridge/msdk/video/bt/module/orglistener/f;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView$b;->b:Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;

    invoke-virtual {p1}, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;->setViewStatus()V

    iget-object p1, p0, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView$b;->b:Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;

    invoke-static {p1}, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;->d(Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;)Lcom/mbridge/msdk/video/dynview/listener/b;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView$b;->b:Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;

    invoke-static {p1}, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;->d(Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;)Lcom/mbridge/msdk/video/dynview/listener/b;

    move-result-object p1

    invoke-interface {p1}, Lcom/mbridge/msdk/video/dynview/listener/b;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MBridgeBaseView"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public a(Lcom/mbridge/msdk/video/dynview/error/a;)V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView$b;->b:Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;

    invoke-static {v1}, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;->c(Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView$b;->b:Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;

    invoke-static {v2}, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;->c(Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mbridge/msdk/video/dynview/error/a;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, v2, p1}, Lcom/mbridge/msdk/video/bt/module/orglistener/f;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView$b;->b:Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;

    invoke-static {p1}, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;->d(Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;)Lcom/mbridge/msdk/video/dynview/listener/b;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView$b;->b:Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;

    invoke-static {p1}, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;->d(Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;)Lcom/mbridge/msdk/video/dynview/listener/b;

    move-result-object p1

    invoke-interface {p1}, Lcom/mbridge/msdk/video/dynview/listener/b;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MBridgeBaseView"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
