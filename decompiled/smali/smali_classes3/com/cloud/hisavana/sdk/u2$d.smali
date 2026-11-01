.class Lcom/cloud/hisavana/sdk/u2$d;
.super Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/u2;->i(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/cloud/hisavana/sdk/u2;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/u2;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/u2$d;->b:Lcom/cloud/hisavana/sdk/u2;

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/u2$d;->b:Lcom/cloud/hisavana/sdk/u2;

    invoke-static {v0, p1}, Lcom/cloud/hisavana/sdk/u2;->f(Lcom/cloud/hisavana/sdk/u2;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return-void
.end method

.method public g(ILcom/cloud/hisavana/sdk/common/bean/AdImage;)V
    .locals 0

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/u2$d;->b:Lcom/cloud/hisavana/sdk/u2;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/u2;->p(Lcom/cloud/hisavana/sdk/u2;)Lcom/cloud/hisavana/sdk/i1;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/u2$d;->b:Lcom/cloud/hisavana/sdk/u2;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/u2;->p(Lcom/cloud/hisavana/sdk/u2;)Lcom/cloud/hisavana/sdk/i1;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/i1;->m0(Z)V

    :cond_0
    return-void
.end method
