.class public final Lcom/transsion/ad/test/ad_example/TestAdVideoActivity$a;
.super Ldi/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ad/test/ad_example/TestAdVideoActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/ad/test/ad_example/TestAdVideoActivity;


# direct methods
.method constructor <init>(Lcom/transsion/ad/test/ad_example/TestAdVideoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/ad/test/ad_example/TestAdVideoActivity$a;->d:Lcom/transsion/ad/test/ad_example/TestAdVideoActivity;

    invoke-direct {p0}, Ldi/a;-><init>()V

    return-void
.end method


# virtual methods
.method public i(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 7

    invoke-super {p0, p1}, Ldi/a;->i(Lcom/hisavana/common/bean/TAdErrorCode;)V

    iget-object v0, p0, Lcom/transsion/ad/test/ad_example/TestAdVideoActivity$a;->d:Lcom/transsion/ad/test/ad_example/TestAdVideoActivity;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdErrorCode;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBiddingError() --> p0 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v1, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Loi/b$a;->c(Loi/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 7

    invoke-super {p0, p1}, Ldi/a;->j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    iget-object v0, p0, Lcom/transsion/ad/test/ad_example/TestAdVideoActivity$a;->d:Lcom/transsion/ad/test/ad_example/TestAdVideoActivity;

    invoke-static {v0}, Lcom/transsion/ad/test/ad_example/TestAdVideoActivity;->U(Lcom/transsion/ad/test/ad_example/TestAdVideoActivity;)Lcom/transsion/ad/bidding/video/BiddingVideoManager;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "videoManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    move-object v1, v0

    iget-object v2, p0, Lcom/transsion/ad/test/ad_example/TestAdVideoActivity$a;->d:Lcom/transsion/ad/test/ad_example/TestAdVideoActivity;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->R0(Lcom/transsion/ad/bidding/base/AbsAdBidding;Landroid/app/Activity;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;ZILjava/lang/Object;)V

    return-void
.end method

.method public p(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 7

    invoke-super {p0, p1}, Ldi/a;->p(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    iget-object v0, p0, Lcom/transsion/ad/test/ad_example/TestAdVideoActivity$a;->d:Lcom/transsion/ad/test/ad_example/TestAdVideoActivity;

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v1, 0x6

    const-string v2, "onBiddingWrapperAdShowError() --> \u5c55\u793a\u5931\u8d25"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Loi/b$a;->c(Loi/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method
