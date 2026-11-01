.class public final Lcom/cloud/hisavana/sdk/z1$a;
.super Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/z1;->q(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lcom/cloud/hisavana/sdk/z1;

.field final synthetic d:Z

.field final synthetic e:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;


# direct methods
.method constructor <init>(ILcom/cloud/hisavana/sdk/z1;ZLcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/z1$a;->b:I

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/z1$a;->c:Lcom/cloud/hisavana/sdk/z1;

    iput-boolean p3, p0, Lcom/cloud/hisavana/sdk/z1$a;->d:Z

    iput-object p4, p0, Lcom/cloud/hisavana/sdk/z1$a;->e:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 4

    const-string v0, "adError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/z1$a;->c:Lcom/cloud/hisavana/sdk/z1;

    invoke-static {v1}, Lcom/cloud/hisavana/sdk/z1;->g(Lcom/cloud/hisavana/sdk/z1;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downloadImg error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/z1$a;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/z1$a;->e:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->S(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/z1$a;->c:Lcom/cloud/hisavana/sdk/z1;

    invoke-static {v0, p1}, Lcom/cloud/hisavana/sdk/z1;->i(Lcom/cloud/hisavana/sdk/z1;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return-void
.end method

.method public g(ILcom/cloud/hisavana/sdk/common/bean/AdImage;)V
    .locals 2

    iget v0, p0, Lcom/cloud/hisavana/sdk/z1$a;->b:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/z1$a;->c:Lcom/cloud/hisavana/sdk/z1;

    invoke-static {v0, p1}, Lcom/cloud/hisavana/sdk/z1;->v(Lcom/cloud/hisavana/sdk/z1;I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/z1$a;->c:Lcom/cloud/hisavana/sdk/z1;

    invoke-static {v0, p1}, Lcom/cloud/hisavana/sdk/z1;->h(Lcom/cloud/hisavana/sdk/z1;I)V

    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/cloud/hisavana/sdk/z1$a;->d:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/z1$a;->e:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->S(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/z1$a;->c:Lcom/cloud/hisavana/sdk/z1;

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/z1$a;->e:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {p1, v0, p2}, Lcom/cloud/hisavana/sdk/z1;->k(Lcom/cloud/hisavana/sdk/z1;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/AdImage;)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/z1$a;->c:Lcom/cloud/hisavana/sdk/z1;

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/z1$a;->e:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {p1, p2}, Lcom/cloud/hisavana/sdk/z1;->j(Lcom/cloud/hisavana/sdk/z1;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    return-void
.end method
