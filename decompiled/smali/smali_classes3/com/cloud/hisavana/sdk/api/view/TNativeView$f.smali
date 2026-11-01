.class Lcom/cloud/hisavana/sdk/api/view/TNativeView$f;
.super Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/api/view/TNativeView;->setImgMedia(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

.field final synthetic c:Landroid/widget/ImageView$ScaleType;

.field final synthetic d:Lcom/cloud/hisavana/sdk/api/view/TNativeView;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/api/view/TNativeView;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;Landroid/widget/ImageView$ScaleType;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView$f;->d:Lcom/cloud/hisavana/sdk/api/view/TNativeView;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView$f;->b:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    iput-object p3, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView$f;->c:Landroid/widget/ImageView$ScaleType;

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 2

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    const-string v0, "ssp"

    const-string v1, "download Image failed."

    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public g(ILcom/cloud/hisavana/sdk/common/bean/AdImage;)V
    .locals 2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    const-string v0, "ssp"

    const-string v1, "download Image Success."

    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView$f;->b:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getImage()Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView$f;->b:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->setImage(Lcom/cloud/hisavana/sdk/common/bean/AdImage;)V

    :goto_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView$f;->d:Lcom/cloud/hisavana/sdk/api/view/TNativeView;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->c(Lcom/cloud/hisavana/sdk/api/view/TNativeView;)Lcom/cloud/hisavana/sdk/api/view/MediaView;

    move-result-object p1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView$f;->c:Landroid/widget/ImageView$ScaleType;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView$f;->b:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->isMaterialStyleValid()Z

    move-result v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/cloud/hisavana/sdk/api/view/MediaView;->setMediaView(Lcom/cloud/hisavana/sdk/common/bean/AdImage;Landroid/widget/ImageView$ScaleType;Z)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView$f;->b:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->isMaterialStyleValid()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView$f;->b:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getMaterialStyle()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum;->findStrategyByCode(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView$f;->d:Lcom/cloud/hisavana/sdk/api/view/TNativeView;

    invoke-static {p2}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->c(Lcom/cloud/hisavana/sdk/api/view/TNativeView;)Lcom/cloud/hisavana/sdk/api/view/MediaView;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum;->renderRadius(Lcom/cloud/hisavana/sdk/api/view/MediaView;)V

    :cond_1
    return-void
.end method
