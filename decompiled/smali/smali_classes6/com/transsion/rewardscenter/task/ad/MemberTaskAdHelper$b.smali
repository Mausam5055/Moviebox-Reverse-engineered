.class public final Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$b;
.super Ldi/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;-><init>(Landroid/content/Context;Lkotlinx/coroutines/n0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;


# direct methods
.method constructor <init>(Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$b;->d:Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;

    invoke-direct {p0}, Ldi/a;-><init>()V

    return-void
.end method


# virtual methods
.method public i(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 1

    invoke-super {p0, p1}, Ldi/a;->i(Lcom/hisavana/common/bean/TAdErrorCode;)V

    iget-object p1, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$b;->d:Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;

    invoke-static {p1}, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->I(Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;)Lkotlin/jvm/functions/Function1;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public k(Ljava/util/List;)V
    .locals 5

    invoke-super {p0, p1}, Ldi/a;->k(Ljava/util/List;)V

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$b;->d:Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "MemberTaskRegularNativeScene"

    invoke-static {v0, v2, p1, v1}, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->D(Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    invoke-virtual {p0, v2}, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$b;->x(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)Lcom/transsion/rewardscenter/task/ad/v$a;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->u()I

    move-result p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gtz p1, :cond_1

    move p1, v3

    goto :goto_1

    :cond_1
    move p1, v2

    :goto_1
    invoke-virtual {v0}, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->t()I

    move-result v4

    if-gtz v4, :cond_2

    move v2, v3

    :cond_2
    if-eqz p1, :cond_5

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/transsion/rewardscenter/task/ad/v$a;

    invoke-virtual {v4}, Lcom/transsion/rewardscenter/task/ad/v$a;->k()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    move-object v1, p1

    :cond_5
    if-eqz v2, :cond_8

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/transsion/rewardscenter/task/ad/v$a;

    invoke-virtual {v3}, Lcom/transsion/rewardscenter/task/ad/v$a;->k()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    move-object v1, p1

    :cond_8
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    invoke-static {v0}, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->I(Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;)Lkotlin/jvm/functions/Function1;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    return-void
.end method

.method public final x(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)Lcom/transsion/rewardscenter/task/ad/v$a;
    .locals 14

    const-string v0, "bean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/rewardscenter/task/ad/v$a;

    iget-object v1, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$b;->d:Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;

    invoke-virtual {v1, p1}, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->g(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$b;->d:Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;

    invoke-virtual {v1, p1}, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->i(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)Z

    move-result v8

    const/16 v12, 0x19e

    const/4 v13, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v13}, Lcom/transsion/rewardscenter/task/ad/v$a;-><init>(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/bidding/base/u;Lcom/transsion/rewardscenter/task/ad/AdTaskState;Ljava/lang/String;ZZJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
