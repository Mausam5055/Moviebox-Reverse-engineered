.class Lcom/cloud/hisavana/sdk/b$c$e;
.super Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/b$c;->r()Z
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

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/b$c$e;->b:Lcom/cloud/hisavana/sdk/b$c;

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 0

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/b$c$e;->b:Lcom/cloud/hisavana/sdk/b$c;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/b$c;->q(Lcom/cloud/hisavana/sdk/b$c;)V

    return-void
.end method

.method public g(ILcom/cloud/hisavana/sdk/common/bean/AdImage;)V
    .locals 0

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/b$c$e;->b:Lcom/cloud/hisavana/sdk/b$c;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/b$c;->n(Lcom/cloud/hisavana/sdk/b$c;)Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getStore()Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->setCached(Z)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/b$c$e;->b:Lcom/cloud/hisavana/sdk/b$c;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/b$c;->q(Lcom/cloud/hisavana/sdk/b$c;)V

    return-void
.end method
