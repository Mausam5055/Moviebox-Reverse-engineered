.class Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->a(Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;)Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->a(Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;)Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->openOrCloseVolume()V

    :cond_0
    return-void
.end method
