.class Lcom/cloud/hisavana/sdk/o$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/hisavana/sdk/s4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/o;->j(Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;

.field final synthetic b:Lcom/cloud/hisavana/sdk/o;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/o;Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/o$b;->b:Lcom/cloud/hisavana/sdk/o;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/o$b;->a:Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/o$b;->b:Lcom/cloud/hisavana/sdk/o;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/o;->b(Lcom/cloud/hisavana/sdk/o;)Lcom/cloud/hisavana/sdk/p3;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/o$b;->b:Lcom/cloud/hisavana/sdk/o;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/o;->b(Lcom/cloud/hisavana/sdk/o;)Lcom/cloud/hisavana/sdk/p3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/p3;->P()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "s_err_code"

    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "error_url"

    invoke-virtual {v0, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/o$b;->b:Lcom/cloud/hisavana/sdk/o;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/o;->b(Lcom/cloud/hisavana/sdk/o;)Lcom/cloud/hisavana/sdk/p3;

    move-result-object p1

    sget-object p2, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_ADM_LOAD_MATERIAL_ERROR:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {p1, p2, v0}, Lcom/cloud/hisavana/sdk/p3;->K(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public b(FFFFZ)I
    .locals 0

    iget-object p5, p0, Lcom/cloud/hisavana/sdk/o$b;->b:Lcom/cloud/hisavana/sdk/o;

    invoke-static {p5, p1}, Lcom/cloud/hisavana/sdk/o;->a(Lcom/cloud/hisavana/sdk/o;F)F

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/o$b;->b:Lcom/cloud/hisavana/sdk/o;

    invoke-static {p1, p2}, Lcom/cloud/hisavana/sdk/o;->p(Lcom/cloud/hisavana/sdk/o;F)F

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/o$b;->b:Lcom/cloud/hisavana/sdk/o;

    invoke-static {p1, p3}, Lcom/cloud/hisavana/sdk/o;->w(Lcom/cloud/hisavana/sdk/o;F)F

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/o$b;->b:Lcom/cloud/hisavana/sdk/o;

    invoke-static {p1, p4}, Lcom/cloud/hisavana/sdk/o;->z(Lcom/cloud/hisavana/sdk/o;F)F

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/o$b;->b:Lcom/cloud/hisavana/sdk/o;

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/o$b;->a:Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;

    invoke-static {p1, p2}, Lcom/cloud/hisavana/sdk/o;->r(Lcom/cloud/hisavana/sdk/o;Landroid/view/View;)I

    move-result p1

    return p1
.end method
