.class Lcom/cloud/hisavana/sdk/o$e;
.super Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/cloud/hisavana/sdk/o;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/o;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/o$e;->b:Lcom/cloud/hisavana/sdk/o;

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/o$e;->b:Lcom/cloud/hisavana/sdk/o;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/o;->b(Lcom/cloud/hisavana/sdk/o;)Lcom/cloud/hisavana/sdk/p3;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    move-result v0

    const/16 v1, 0xbbf

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    move-result v0

    const/16 v1, 0xbc8

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/o$e;->b:Lcom/cloud/hisavana/sdk/o;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/o;->b(Lcom/cloud/hisavana/sdk/o;)Lcom/cloud/hisavana/sdk/p3;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, p1, v1}, Lcom/cloud/hisavana/sdk/p3;->K(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/o$e;->b:Lcom/cloud/hisavana/sdk/o;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/o;->b(Lcom/cloud/hisavana/sdk/o;)Lcom/cloud/hisavana/sdk/p3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/p3;->J(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method public g(ILcom/cloud/hisavana/sdk/common/bean/AdImage;)V
    .locals 0

    return-void
.end method
