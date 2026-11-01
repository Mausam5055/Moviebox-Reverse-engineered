.class public final synthetic Lcom/cloud/hisavana/sdk/common/activity/a0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

.field public final synthetic b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/a0;->a:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/activity/a0;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/a0;->a:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/a0;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->p(Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    return-void
.end method
