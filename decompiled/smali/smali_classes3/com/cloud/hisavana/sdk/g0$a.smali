.class Lcom/cloud/hisavana/sdk/g0$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/hisavana/sdk/c0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/g0;->a(Lcom/cloud/hisavana/sdk/q3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/g0;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/g0;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/g0$a;->a:Lcom/cloud/hisavana/sdk/g0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/g0$a;->a:Lcom/cloud/hisavana/sdk/g0;

    invoke-static {v2}, Lcom/cloud/hisavana/sdk/g0;->f(Lcom/cloud/hisavana/sdk/g0;)Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setImpBeanRequest(Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/g0$a;->a:Lcom/cloud/hisavana/sdk/g0;

    invoke-static {v0, p1, p2}, Lcom/cloud/hisavana/sdk/g0;->i(Lcom/cloud/hisavana/sdk/g0;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/g0$a;->a:Lcom/cloud/hisavana/sdk/g0;

    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_AD_OFFLINE_DATA_IS_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-static {p1, v0, p2}, Lcom/cloud/hisavana/sdk/g0;->h(Lcom/cloud/hisavana/sdk/g0;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Ljava/lang/String;)V

    :goto_2
    return-void
.end method
