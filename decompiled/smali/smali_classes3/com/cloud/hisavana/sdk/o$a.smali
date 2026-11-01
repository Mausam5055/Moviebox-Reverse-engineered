.class Lcom/cloud/hisavana/sdk/o$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/o;->i(Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field final synthetic b:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

.field final synthetic c:Lcom/cloud/hisavana/sdk/o;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/o;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/o$a;->c:Lcom/cloud/hisavana/sdk/o;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/o$a;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iput-object p3, p0, Lcom/cloud/hisavana/sdk/o$a;->b:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/o$a;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {v0, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->y(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/o$a;->c:Lcom/cloud/hisavana/sdk/o;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/o$a;->b:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/o;->h(Lcom/cloud/hisavana/sdk/o;Landroid/view/View;)V

    return-void
.end method

.method public c()V
    .locals 3

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v1, "BannerGemini"

    const-string v2, "timeoutShutdown"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
