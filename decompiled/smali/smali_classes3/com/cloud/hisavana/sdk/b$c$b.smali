.class Lcom/cloud/hisavana/sdk/b$c$b;
.super Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/b$c;->g(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field final synthetic c:Lcom/cloud/hisavana/sdk/b$c;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/b$c;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/b$c$b;->c:Lcom/cloud/hisavana/sdk/b$c;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/b$c$b;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 1

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/b$c$b;->c:Lcom/cloud/hisavana/sdk/b$c;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/b$c;->q(Lcom/cloud/hisavana/sdk/b$c;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/b$c$b;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->S(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    return-void
.end method

.method public g(ILcom/cloud/hisavana/sdk/common/bean/AdImage;)V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/b$c$b;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->S(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    const/16 v0, 0xfa

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/b$c$b;->c:Lcom/cloud/hisavana/sdk/b$c;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/b$c;->l(Lcom/cloud/hisavana/sdk/b$c;)Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$c;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/b$c$b;->c:Lcom/cloud/hisavana/sdk/b$c;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/b$c;->l(Lcom/cloud/hisavana/sdk/b$c;)Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$c;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$c;->a(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/b$c$b;->c:Lcom/cloud/hisavana/sdk/b$c;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/b$c;->l(Lcom/cloud/hisavana/sdk/b$c;)Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$c;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/b$c$b;->c:Lcom/cloud/hisavana/sdk/b$c;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/b$c;->l(Lcom/cloud/hisavana/sdk/b$c;)Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$c;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$c;->a(Z)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/b$c$b;->c:Lcom/cloud/hisavana/sdk/b$c;

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/b$c$b;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {p1, v0, p2}, Lcom/cloud/hisavana/sdk/b$c;->e(Lcom/cloud/hisavana/sdk/b$c;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/AdImage;)V

    return-void
.end method
