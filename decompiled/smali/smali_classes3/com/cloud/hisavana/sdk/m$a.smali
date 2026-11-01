.class Lcom/cloud/hisavana/sdk/m$a;
.super Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/m;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field final synthetic c:Lcom/cloud/hisavana/sdk/m;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/m;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/m$a;->c:Lcom/cloud/hisavana/sdk/m;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/m$a;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 1

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/m$a;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setACReady(Ljava/lang/Boolean;)V

    return-void
.end method

.method public g(ILcom/cloud/hisavana/sdk/common/bean/AdImage;)V
    .locals 0

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/m$a;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setACReady(Ljava/lang/Boolean;)V

    return-void
.end method
