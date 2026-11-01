.class public final synthetic Lcom/cloud/hisavana/sdk/common/activity/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/y;->a:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/activity/y;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/y;->a:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/y;->b:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->a(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Landroid/view/View;)V

    return-void
.end method
