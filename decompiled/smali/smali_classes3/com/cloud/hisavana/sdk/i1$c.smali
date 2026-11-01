.class Lcom/cloud/hisavana/sdk/i1$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/i1;->d0(Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/i1;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/i1;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/i1$c;->a:Lcom/cloud/hisavana/sdk/i1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1$c;->a:Lcom/cloud/hisavana/sdk/i1;

    iget-object v0, v0, Lcom/cloud/hisavana/sdk/i1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {p1, v0}, Lcom/cloud/hisavana/sdk/N0;->k(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/i1$c;->a:Lcom/cloud/hisavana/sdk/i1;

    iget-object p1, p1, Lcom/cloud/hisavana/sdk/i1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/i1$c;->a:Lcom/cloud/hisavana/sdk/i1;

    iget-object p1, p1, Lcom/cloud/hisavana/sdk/i1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isOfflineAd()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/i1$c;->a:Lcom/cloud/hisavana/sdk/i1;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/i1;->i0(Lcom/cloud/hisavana/sdk/i1;)Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/i1$c;->a:Lcom/cloud/hisavana/sdk/i1;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/i1;->q0(Lcom/cloud/hisavana/sdk/i1;)Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->m()V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/i1$c;->a:Lcom/cloud/hisavana/sdk/i1;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/i1;->r0(Lcom/cloud/hisavana/sdk/i1;)Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    move-result-object p1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1$c;->a:Lcom/cloud/hisavana/sdk/i1;

    iget-object v0, v0, Lcom/cloud/hisavana/sdk/i1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->k(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    :cond_0
    return-void
.end method
