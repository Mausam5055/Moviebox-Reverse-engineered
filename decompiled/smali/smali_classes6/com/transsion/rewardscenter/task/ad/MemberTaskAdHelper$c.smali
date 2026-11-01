.class public final Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$c;
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

    iput-object p1, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$c;->d:Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;

    invoke-direct {p0}, Ldi/a;-><init>()V

    return-void
.end method


# virtual methods
.method public i(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 1

    invoke-super {p0, p1}, Ldi/a;->i(Lcom/hisavana/common/bean/TAdErrorCode;)V

    iget-object p1, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$c;->d:Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;

    invoke-static {p1}, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->N(Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;)Lkotlin/jvm/functions/Function1;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public k(Ljava/util/List;)V
    .locals 3

    invoke-super {p0, p1}, Ldi/a;->k(Ljava/util/List;)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$c;->d:Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "MemberTaskStageNativeScene"

    invoke-static {v0, v2, p1, v1}, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->D(Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;)Ljava/util/List;

    move-result-object p1

    invoke-static {v0}, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->N(Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_1

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

    invoke-virtual {p0, v2}, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$c;->x(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)Lcom/transsion/rewardscenter/task/ad/v$c;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final x(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)Lcom/transsion/rewardscenter/task/ad/v$c;
    .locals 16

    move-object/from16 v1, p1

    const-string v0, "bean"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v14, Lcom/transsion/rewardscenter/task/ad/v$c;

    move-object/from16 v15, p0

    iget-object v0, v15, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$c;->d:Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;

    invoke-virtual {v0, v1}, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->g(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)Ljava/lang/String;

    move-result-object v6

    const/16 v12, 0x1de

    const/4 v13, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Lcom/transsion/rewardscenter/task/ad/v$c;-><init>(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/bidding/base/u;Lcom/transsion/rewardscenter/task/ad/AdTaskState;Ljava/lang/String;ZJJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v14
.end method
