.class Lcom/cloud/hisavana/sdk/n4$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/hisavana/sdk/common/util/q0$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/n4;->v()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field final synthetic b:Lcom/cloud/hisavana/sdk/n4;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/n4;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/n4$a;->b:Lcom/cloud/hisavana/sdk/n4;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/n4$a;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/n4$a;->b:Lcom/cloud/hisavana/sdk/n4;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/n4$a;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/cloud/hisavana/sdk/n4;->n(Lcom/cloud/hisavana/sdk/n4;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/n4$a;->b:Lcom/cloud/hisavana/sdk/n4;

    invoke-static {v0, p1}, Lcom/cloud/hisavana/sdk/n4;->l(Lcom/cloud/hisavana/sdk/n4;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return-void
.end method

.method public b(I)V
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/n4$a;->b:Lcom/cloud/hisavana/sdk/n4;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/n4$a;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/cloud/hisavana/sdk/n4;->n(Lcom/cloud/hisavana/sdk/n4;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/n4$a;->b:Lcom/cloud/hisavana/sdk/n4;

    invoke-static {v0, p1}, Lcom/cloud/hisavana/sdk/n4;->k(Lcom/cloud/hisavana/sdk/n4;I)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/n4$a;->b:Lcom/cloud/hisavana/sdk/n4;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/n4;->j(Lcom/cloud/hisavana/sdk/n4;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/n4$a;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/N0;->M(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    return-void
.end method
