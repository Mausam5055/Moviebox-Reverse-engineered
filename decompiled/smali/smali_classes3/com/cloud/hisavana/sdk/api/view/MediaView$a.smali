.class Lcom/cloud/hisavana/sdk/api/view/MediaView$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/api/view/MediaView;->f(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field final synthetic b:Lcom/cloud/hisavana/sdk/z3;

.field final synthetic c:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

.field final synthetic d:Lcom/cloud/hisavana/sdk/api/view/MediaView;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/api/view/MediaView;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/z3;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView$a;->d:Lcom/cloud/hisavana/sdk/api/view/MediaView;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView$a;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iput-object p3, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView$a;->b:Lcom/cloud/hisavana/sdk/z3;

    iput-object p4, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView$a;->c:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView$a;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {v0, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->y(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 11

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView$a;->d:Lcom/cloud/hisavana/sdk/api/view/MediaView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/api/view/MediaView;->e(Lcom/cloud/hisavana/sdk/api/view/MediaView;)Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView$a;->b:Lcom/cloud/hisavana/sdk/z3;

    instance-of v1, v0, Lcom/cloud/hisavana/sdk/u3;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/cloud/hisavana/sdk/u3;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView$a;->d:Lcom/cloud/hisavana/sdk/api/view/MediaView;

    invoke-static {v1}, Lcom/cloud/hisavana/sdk/api/view/MediaView;->e(Lcom/cloud/hisavana/sdk/api/view/MediaView;)Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView$a;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    new-instance v10, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView$a;->d:Lcom/cloud/hisavana/sdk/api/view/MediaView;

    invoke-static {v3}, Lcom/cloud/hisavana/sdk/api/view/MediaView;->j(Lcom/cloud/hisavana/sdk/api/view/MediaView;)F

    move-result v4

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView$a;->d:Lcom/cloud/hisavana/sdk/api/view/MediaView;

    invoke-static {v3}, Lcom/cloud/hisavana/sdk/api/view/MediaView;->m(Lcom/cloud/hisavana/sdk/api/view/MediaView;)F

    move-result v5

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView$a;->d:Lcom/cloud/hisavana/sdk/api/view/MediaView;

    invoke-static {v3}, Lcom/cloud/hisavana/sdk/api/view/MediaView;->o(Lcom/cloud/hisavana/sdk/api/view/MediaView;)F

    move-result v6

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView$a;->d:Lcom/cloud/hisavana/sdk/api/view/MediaView;

    invoke-static {v3}, Lcom/cloud/hisavana/sdk/api/view/MediaView;->q(Lcom/cloud/hisavana/sdk/api/view/MediaView;)F

    move-result v7

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView$a;->d:Lcom/cloud/hisavana/sdk/api/view/MediaView;

    invoke-static {v3}, Lcom/cloud/hisavana/sdk/api/view/MediaView;->e(Lcom/cloud/hisavana/sdk/api/view/MediaView;)Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView$a;->d:Lcom/cloud/hisavana/sdk/api/view/MediaView;

    invoke-static {v3}, Lcom/cloud/hisavana/sdk/api/view/MediaView;->e(Lcom/cloud/hisavana/sdk/api/view/MediaView;)Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;-><init>(FFFFII)V

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/G;->p()Lcom/cloud/hisavana/sdk/q3;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/q3;->v()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-static {v1, v2, v10, v3}, Lcom/cloud/hisavana/sdk/N0;->b(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;Z)I

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView$a;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {v1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->W(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/u3;->Z()Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/u3;->Z()Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView$a;->c:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->y(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    :cond_2
    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method
