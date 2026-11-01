.class final enum Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum$16;
.super Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum$1;)V

    return-void
.end method


# virtual methods
.method public bindView()Landroid/view/View;
    .locals 3

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/cloud/hisavana/sdk/R$layout;->native_template_fb04:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/cloud/hisavana/sdk/R$id;->hisavana_native_ad_body:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    sget v1, Lcom/cloud/hisavana/sdk/R$id;->hisavana_native_ad_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    sget v2, Lcom/cloud/hisavana/sdk/R$id;->hisavana_native_ad_icon:I

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->l:I

    return-object v0
.end method

.method public renderRadius(Lcom/cloud/hisavana/sdk/api/view/MediaView;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum;->radius:F

    invoke-virtual {p1, v0, v0, v0, v0}, Lcom/cloud/hisavana/sdk/api/view/MediaView;->setRadius(FFFF)V

    return-void
.end method

.method public scaleWidthOrTextSize(Landroid/view/View;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum;->scaleWidthOrTextSizeImpl(Landroid/view/View;)V

    return-void
.end method
