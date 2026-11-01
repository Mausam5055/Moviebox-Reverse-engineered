.class Lcom/cloud/hisavana/sdk/N0$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/N0;->e(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/api/listener/d;)Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field final synthetic b:Lcom/cloud/hisavana/sdk/api/listener/d;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/api/listener/d;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/N0$c;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/N0$c;->b:Lcom/cloud/hisavana/sdk/api/listener/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/N0$c;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {p1, v0}, Lcom/cloud/hisavana/sdk/N0;->k(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/N0$c;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isOfflineAd()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/N0$c;->b:Lcom/cloud/hisavana/sdk/api/listener/d;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/api/listener/d;->onAdClicked()V

    :cond_0
    return-void
.end method
