.class Lcom/cloud/hisavana/sdk/q2$a;
.super Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/q2;->l(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/cloud/hisavana/sdk/q2;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/q2;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/q2$a;->b:Lcom/cloud/hisavana/sdk/q2;

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 1

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/q2$a;->b:Lcom/cloud/hisavana/sdk/q2;

    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_STORE_MATERIAL_TAKE_FAILED:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-static {p1, v0}, Lcom/cloud/hisavana/sdk/q2;->i(Lcom/cloud/hisavana/sdk/q2;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return-void
.end method

.method public g(ILcom/cloud/hisavana/sdk/common/bean/AdImage;)V
    .locals 0

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/q2$a;->b:Lcom/cloud/hisavana/sdk/q2;

    invoke-static {p2, p1}, Lcom/cloud/hisavana/sdk/q2;->h(Lcom/cloud/hisavana/sdk/q2;I)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/q2$a;->b:Lcom/cloud/hisavana/sdk/q2;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/q2;->g(Lcom/cloud/hisavana/sdk/q2;)V

    return-void
.end method
