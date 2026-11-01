.class public final Lcom/transsion/wrapperad/install/ui/StreamerIconAdView$b;
.super Ldi/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;

.field final synthetic e:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/wrapperad/install/ui/StreamerIconAdView$b;->d:Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;

    iput-object p2, p0, Lcom/transsion/wrapperad/install/ui/StreamerIconAdView$b;->e:Landroid/content/Context;

    invoke-direct {p0}, Ldi/a;-><init>()V

    return-void
.end method

.method public static synthetic x(Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/wrapperad/install/ui/StreamerIconAdView$b;->y(Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final y(Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;)Lkotlin/Unit;
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    invoke-static {p0}, Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;->access$getClassTag(Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> \u9ad8\u4f18\u62a2\u5360\uff0c\u5173\u95ed\u5e7f\u544a"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "StreamerIcon"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-static {p0}, Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;->access$cancelCountDown(Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;->access$setShowingNotified$p(Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;Z)V

    sget-object v0, Lii/b;->a:Lii/b;

    invoke-static {p0}, Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;->access$getSceneId$p(Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lii/b;->e(Ljava/lang/String;Z)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public i(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 6

    invoke-super {p0, p1}, Ldi/a;->i(Lcom/hisavana/common/bean/TAdErrorCode;)V

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object p1, p0, Lcom/transsion/wrapperad/install/ui/StreamerIconAdView$b;->d:Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;

    invoke-static {p1}, Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;->access$getClassTag(Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " --> onWrapperIconReady() --> \u6570\u636e\u4e3a\u7a7a\uff0c\u52a0\u8f7d\u5931\u8d25"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "StreamerIcon"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/wrapperad/install/ui/StreamerIconAdView$b;->d:Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;->access$dismissCoordinator(Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;Z)V

    return-void
.end method

.method public m(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 7

    invoke-super {p0, p1}, Ldi/a;->m(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    iget-object p1, p0, Lcom/transsion/wrapperad/install/ui/StreamerIconAdView$b;->d:Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;->access$setWrapperIconBean$p(Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;)V

    iget-object p1, p0, Lcom/transsion/wrapperad/install/ui/StreamerIconAdView$b;->d:Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;->access$dismissCoordinator(Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;Z)V

    sget-object v1, Llg/a;->a:Llg/a$a;

    iget-object p1, p0, Lcom/transsion/wrapperad/install/ui/StreamerIconAdView$b;->d:Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;

    invoke-static {p1}, Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;->access$getClassTag(Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " --> onBiddingWrapperAdClose() --> \u5e7f\u544a\u5173\u95ed"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "StreamerIcon"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public p(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 7

    invoke-super {p0, p1}, Ldi/a;->p(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    iget-object p1, p0, Lcom/transsion/wrapperad/install/ui/StreamerIconAdView$b;->d:Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;->access$setWrapperIconBean$p(Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;)V

    iget-object p1, p0, Lcom/transsion/wrapperad/install/ui/StreamerIconAdView$b;->d:Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;->access$dismissCoordinator(Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;Z)V

    sget-object v1, Llg/a;->a:Llg/a$a;

    iget-object p1, p0, Lcom/transsion/wrapperad/install/ui/StreamerIconAdView$b;->d:Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;

    invoke-static {p1}, Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;->access$getClassTag(Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " --> onBiddingWrapperAdShowError() --> \u5e7f\u544a\u5c55\u793a\u5931\u8d25"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "StreamerIcon"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public w(Ljava/util/List;)V
    .locals 11

    invoke-super {p0, p1}, Ldi/a;->w(Ljava/util/List;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    sget-object v1, Lii/b;->a:Lii/b;

    iget-object v3, p0, Lcom/transsion/wrapperad/install/ui/StreamerIconAdView$b;->d:Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;

    invoke-static {v3}, Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;->access$getSceneId$p(Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lii/b;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/transsion/wrapperad/install/ui/StreamerIconAdView$b;->d:Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/transsion/wrapperad/install/ui/StreamerIconAdView$b;->d:Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;

    invoke-static {v3, p1}, Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;->access$setWrapperIconBean$p(Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;)V

    iget-object p1, p0, Lcom/transsion/wrapperad/install/ui/StreamerIconAdView$b;->d:Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;

    invoke-static {p1}, Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;->access$getWrapperIconBean$p(Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;)Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/wrapperad/install/ui/StreamerIconAdView$b;->d:Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;

    invoke-static {v0}, Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;->access$getIconView$p(Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;)Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v0}, Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;->access$getAdManager$p(Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;)Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;

    move-result-object v4

    invoke-static {v0}, Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;->access$getViewBinderProvider$p(Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;)Lfy/c;

    move-result-object v0

    invoke-virtual {v3, v4, p1, v0}, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;->showData(Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;Lcom/transsion/ad/bidding/base/r;)V

    :cond_1
    sget-object v5, Llg/a;->a:Llg/a$a;

    iget-object p1, p0, Lcom/transsion/wrapperad/install/ui/StreamerIconAdView$b;->d:Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;

    invoke-static {p1}, Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;->access$getClassTag(Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " --> onWrapperIconReady() --> \u5e7f\u544a\u52a0\u8f7d\u6210\u529f"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x4

    const/4 v10, 0x0

    const-string v6, "StreamerIcon"

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;->access$setLastShowTimestamp$cp(J)V

    iget-object p1, p0, Lcom/transsion/wrapperad/install/ui/StreamerIconAdView$b;->d:Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;

    invoke-static {p1, v2}, Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;->access$setShowingNotified$p(Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;Z)V

    iget-object p1, p0, Lcom/transsion/wrapperad/install/ui/StreamerIconAdView$b;->d:Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;

    invoke-static {p1}, Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;->access$getSceneId$p(Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/wrapperad/install/ui/StreamerIconAdView$b;->d:Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;

    new-instance v2, Lcom/transsion/wrapperad/install/ui/k;

    invoke-direct {v2, v0}, Lcom/transsion/wrapperad/install/ui/k;-><init>(Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;)V

    invoke-virtual {v1, p1, v2}, Lii/b;->f(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    iget-object p1, p0, Lcom/transsion/wrapperad/install/ui/StreamerIconAdView$b;->e:Landroid/content/Context;

    instance-of v0, p1, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_2

    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/transsion/wrapperad/install/ui/StreamerIconAdView$b;->d:Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;

    invoke-static {v0, p1}, Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;->access$startCountDownIfNeeded(Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;Landroidx/appcompat/app/AppCompatActivity;)V

    goto :goto_1

    :cond_3
    sget-object v1, Llg/a;->a:Llg/a$a;

    iget-object p1, p0, Lcom/transsion/wrapperad/install/ui/StreamerIconAdView$b;->d:Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;

    invoke-static {p1}, Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;->access$getClassTag(Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " --> onWrapperIconReady() --> \u6570\u636e\u4e3a\u7a7a\uff0c\u52a0\u8f7d\u5931\u8d25"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "StreamerIcon"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/wrapperad/install/ui/StreamerIconAdView$b;->d:Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;

    invoke-static {p1, v0}, Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;->access$dismissCoordinator(Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;Z)V

    :cond_4
    :goto_1
    return-void
.end method
