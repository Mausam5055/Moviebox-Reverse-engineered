.class Lcom/cloud/hisavana/sdk/t2$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/t2;->g(Landroid/content/Context;Lcom/cloud/hisavana/sdk/api/view/AdCloseView;Ljava/lang/Object;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field final synthetic c:Z

.field final synthetic d:Landroid/content/Context;

.field final synthetic e:Lcom/cloud/hisavana/sdk/api/view/AdCloseView;

.field final synthetic f:Lcom/cloud/hisavana/sdk/t2;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/t2;Ljava/lang/Object;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ZLandroid/content/Context;Lcom/cloud/hisavana/sdk/api/view/AdCloseView;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/t2$a;->f:Lcom/cloud/hisavana/sdk/t2;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/t2$a;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcom/cloud/hisavana/sdk/t2$a;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iput-boolean p4, p0, Lcom/cloud/hisavana/sdk/t2$a;->c:Z

    iput-object p5, p0, Lcom/cloud/hisavana/sdk/t2$a;->d:Landroid/content/Context;

    iput-object p6, p0, Lcom/cloud/hisavana/sdk/t2$a;->e:Lcom/cloud/hisavana/sdk/api/view/AdCloseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerCloseAd ---- >  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/t2$a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ssp"

    invoke-virtual {p1, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/t2$a;->f:Lcom/cloud/hisavana/sdk/t2;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/t2;->b(Lcom/cloud/hisavana/sdk/t2;)J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide/16 v6, 0x7d0

    cmp-long p1, v4, v6

    if-ltz p1, :cond_3

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/t2$a;->f:Lcom/cloud/hisavana/sdk/t2;

    invoke-static {p1, v2, v3}, Lcom/cloud/hisavana/sdk/t2;->c(Lcom/cloud/hisavana/sdk/t2;J)J

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/t2$a;->a:Ljava/lang/Object;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/t2$a;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    iget-boolean p1, p0, Lcom/cloud/hisavana/sdk/t2$a;->c:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/t2$a;->f:Lcom/cloud/hisavana/sdk/t2;

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/t2$a;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/t2$a;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/t2$a;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/t2$a;->e:Lcom/cloud/hisavana/sdk/api/view/AdCloseView;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/cloud/hisavana/sdk/t2;->o(Landroid/content/Context;Ljava/lang/Object;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/api/view/AdCloseView;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/t2$a;->f:Lcom/cloud/hisavana/sdk/t2;

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/t2$a;->a:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/t2;->q(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/t2$a;->a:Ljava/lang/Object;

    instance-of p1, p1, Lcom/cloud/hisavana/sdk/i1;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/t2$a;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getDisplayRule()Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    move-result-object p1

    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;->RU:Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    if-eq p1, v0, :cond_4

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/t2$a;->a:Ljava/lang/Object;

    check-cast p1, Lcom/cloud/hisavana/sdk/i1;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/i1;->O()V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/t2$a;->f:Lcom/cloud/hisavana/sdk/t2;

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/t2$a;->a:Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/cloud/hisavana/sdk/t2;->k(Lcom/cloud/hisavana/sdk/t2;Ljava/lang/Object;)V

    return-void

    :cond_3
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    const-string v0, "registerCloseAd ---- > interval time not reached"

    invoke-virtual {p1, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method
