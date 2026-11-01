.class public final Lcom/cloud/hisavana/sdk/common/activity/OnlinePreloadLandingPageActivity$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$PreloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/activity/OnlinePreloadLandingPageActivity;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/common/activity/OnlinePreloadLandingPageActivity;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/common/activity/OnlinePreloadLandingPageActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/OnlinePreloadLandingPageActivity$a;->a:Lcom/cloud/hisavana/sdk/common/activity/OnlinePreloadLandingPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFailed(I)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/OnlinePreloadLandingPageActivity$a;->a:Lcom/cloud/hisavana/sdk/common/activity/OnlinePreloadLandingPageActivity;

    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/common/activity/b;->j(I)V

    return-void
.end method

.method public onPageStart()V
    .locals 0

    return-void
.end method

.method public onProgressChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/OnlinePreloadLandingPageActivity$a;->a:Lcom/cloud/hisavana/sdk/common/activity/OnlinePreloadLandingPageActivity;

    invoke-static {v0, p1}, Lcom/cloud/hisavana/sdk/common/activity/OnlinePreloadLandingPageActivity;->x(Lcom/cloud/hisavana/sdk/common/activity/OnlinePreloadLandingPageActivity;I)V

    return-void
.end method

.method public onReceivedTitle(Ljava/lang/String;)V
    .locals 1

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/OnlinePreloadLandingPageActivity$a;->a:Lcom/cloud/hisavana/sdk/common/activity/OnlinePreloadLandingPageActivity;

    invoke-static {v0, p1}, Lcom/cloud/hisavana/sdk/common/activity/OnlinePreloadLandingPageActivity;->y(Lcom/cloud/hisavana/sdk/common/activity/OnlinePreloadLandingPageActivity;Ljava/lang/String;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/OnlinePreloadLandingPageActivity$a;->a:Lcom/cloud/hisavana/sdk/common/activity/OnlinePreloadLandingPageActivity;

    invoke-virtual {v0, p1, p2}, Lcom/cloud/hisavana/sdk/common/activity/b;->g(Ljava/lang/String;Z)Z

    return-void
.end method
