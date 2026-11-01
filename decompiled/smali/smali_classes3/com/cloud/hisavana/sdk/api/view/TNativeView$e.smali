.class Lcom/cloud/hisavana/sdk/api/view/TNativeView$e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/api/view/TNativeView;->i(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

.field final synthetic b:Lcom/cloud/hisavana/sdk/api/view/TNativeView;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/api/view/TNativeView;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView$e;->b:Lcom/cloud/hisavana/sdk/api/view/TNativeView;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView$e;->a:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView$e;->b:Lcom/cloud/hisavana/sdk/api/view/TNativeView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->c(Lcom/cloud/hisavana/sdk/api/view/TNativeView;)Lcom/cloud/hisavana/sdk/api/view/MediaView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView$e;->b:Lcom/cloud/hisavana/sdk/api/view/TNativeView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->c(Lcom/cloud/hisavana/sdk/api/view/TNativeView;)Lcom/cloud/hisavana/sdk/api/view/MediaView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView$e;->b:Lcom/cloud/hisavana/sdk/api/view/TNativeView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->b(Lcom/cloud/hisavana/sdk/api/view/TNativeView;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView$e;->b:Lcom/cloud/hisavana/sdk/api/view/TNativeView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->f(Lcom/cloud/hisavana/sdk/api/view/TNativeView;)Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView$e;->a:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v1

    invoke-static {v1}, Lcom/cloud/hisavana/sdk/common/util/f0;->e(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView$e;->b:Lcom/cloud/hisavana/sdk/api/view/TNativeView;

    invoke-static {v2}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->c(Lcom/cloud/hisavana/sdk/api/view/TNativeView;)Lcom/cloud/hisavana/sdk/api/view/MediaView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;->updateHeightWith(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
