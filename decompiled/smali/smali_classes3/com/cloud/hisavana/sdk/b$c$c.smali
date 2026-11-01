.class Lcom/cloud/hisavana/sdk/b$c$c;
.super Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/b$c;->o()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/cloud/hisavana/sdk/b$c;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/b$c;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/b$c$c;->b:Lcom/cloud/hisavana/sdk/b$c;

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 0

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/b$c$c;->b:Lcom/cloud/hisavana/sdk/b$c;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/b$c;->q(Lcom/cloud/hisavana/sdk/b$c;)V

    return-void
.end method

.method public g(ILcom/cloud/hisavana/sdk/common/bean/AdImage;)V
    .locals 2

    const/16 v0, 0xfa

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/b$c$c;->b:Lcom/cloud/hisavana/sdk/b$c;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/b$c;->l(Lcom/cloud/hisavana/sdk/b$c;)Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$c;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/b$c$c;->b:Lcom/cloud/hisavana/sdk/b$c;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/b$c;->l(Lcom/cloud/hisavana/sdk/b$c;)Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$c;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$c;->a(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/b$c$c;->b:Lcom/cloud/hisavana/sdk/b$c;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/b$c;->l(Lcom/cloud/hisavana/sdk/b$c;)Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$c;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/b$c$c;->b:Lcom/cloud/hisavana/sdk/b$c;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/b$c;->l(Lcom/cloud/hisavana/sdk/b$c;)Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$c;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$c;->a(Z)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/b$c$c;->b:Lcom/cloud/hisavana/sdk/b$c;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/b$c;->n(Lcom/cloud/hisavana/sdk/b$c;)Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getIconImage()Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->setCached(Z)V

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/l;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->getFilePath()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_4
    const-string p2, ""

    :goto_2
    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->setFilePath(Ljava/lang/String;)V

    :goto_3
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/b$c$c;->b:Lcom/cloud/hisavana/sdk/b$c;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/b$c;->q(Lcom/cloud/hisavana/sdk/b$c;)V

    return-void
.end method
