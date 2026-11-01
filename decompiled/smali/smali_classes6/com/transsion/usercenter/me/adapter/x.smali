.class public final Lcom/transsion/usercenter/me/adapter/x;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;


# instance fields
.field private final e:Lcom/transsion/usercenter/me/adapter/o;

.field private f:J

.field private g:Landroidx/lifecycle/LiveData;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/transsion/usercenter/me/adapter/x;-><init>(Lcom/transsion/usercenter/me/adapter/o;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/usercenter/me/adapter/o;)V
    .locals 0

    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    iput-object p1, p0, Lcom/transsion/usercenter/me/adapter/x;->e:Lcom/transsion/usercenter/me/adapter/o;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/usercenter/me/adapter/o;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/usercenter/me/adapter/x;-><init>(Lcom/transsion/usercenter/me/adapter/o;)V

    return-void
.end method

.method private static final B(Lcom/transsion/memberapi/MemberInfo;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/transsion/usercenter/me/adapter/x;Ljava/lang/Integer;)Lkotlin/Unit;
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x8

    if-lez v2, :cond_7

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/transsion/memberapi/MemberInfo;->getMemberType()I

    move-result v2

    const-string v4, "999+"

    const/16 v5, 0x3e7

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/transsion/memberapi/MemberInfo;->getMemberType()I

    move-result v2

    if-ne v2, v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/memberapi/MemberInfo;->getMemberType()I

    move-result p0

    const/4 v2, 0x2

    if-ne p0, v2, :cond_6

    const-class p0, Lcom/transsnet/loginapi/ILoginApi;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v2}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsnet/loginapi/ILoginApi;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/transsnet/loginapi/ILoginApi;->a()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-le p0, v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p3, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_3
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_4
    :goto_2
    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-le p0, v5, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_3
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p3, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    :goto_4
    invoke-virtual {p5}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/transsion/usercenter/R$string;->unclaimed_rewards:I

    new-array p2, v0, [Ljava/lang/Object;

    aput-object p6, p2, v1

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_7
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p3, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p5}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/transsion/usercenter/R$string;->reward_win_big_prizes:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final C(Lcom/transsion/usercenter/me/adapter/x;Lcom/transsion/usercenter/profile/bean/MeItemInfo;Landroid/view/View;)Lkotlin/Unit;
    .locals 2

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "/rewards/center"

    invoke-static {p2}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p2

    const-string v0, "source"

    const-string v1, "PROFILE_DETAIL"

    invoke-virtual {p2, v0, v1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {p2, v0, v0, v1, v0}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/usercenter/me/adapter/x;->e:Lcom/transsion/usercenter/me/adapter/o;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/usercenter/me/adapter/o;->Q1()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic y(Lcom/transsion/memberapi/MemberInfo;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/transsion/usercenter/me/adapter/x;Ljava/lang/Integer;)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/transsion/usercenter/me/adapter/x;->B(Lcom/transsion/memberapi/MemberInfo;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/transsion/usercenter/me/adapter/x;Ljava/lang/Integer;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic z(Lcom/transsion/usercenter/me/adapter/x;Lcom/transsion/usercenter/profile/bean/MeItemInfo;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/usercenter/me/adapter/x;->C(Lcom/transsion/usercenter/me/adapter/x;Lcom/transsion/usercenter/profile/bean/MeItemInfo;Landroid/view/View;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/usercenter/profile/bean/MeItemInfo;)V
    .locals 10

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Lcom/transsion/baseui/activity/BaseActivity;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/transsion/baseui/activity/BaseActivity;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_5

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-class v3, Lcom/transsion/rewardscenterapi/IRewardsCenterApi;

    invoke-static {v3, v1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/rewardscenterapi/IRewardsCenterApi;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/transsion/usercenter/me/adapter/x;->g:Landroidx/lifecycle/LiveData;

    if-eqz v5, :cond_2

    iget-wide v5, p0, Lcom/transsion/usercenter/me/adapter/x;->f:J

    sub-long v5, v3, v5

    const-wide/16 v7, 0x7530

    cmp-long v5, v5, v7

    if-ltz v5, :cond_3

    :cond_2
    iput-wide v3, p0, Lcom/transsion/usercenter/me/adapter/x;->f:J

    invoke-interface {v1}, Lcom/transsion/rewardscenterapi/IRewardsCenterApi;->d()Landroidx/lifecycle/LiveData;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/usercenter/me/adapter/x;->g:Landroidx/lifecycle/LiveData;

    :cond_3
    sget v1, Lcom/transsion/usercenter/R$id;->badgeTv:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    sget v1, Lcom/transsion/usercenter/R$id;->desTv:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    sget v1, Lcom/transsion/usercenter/R$id;->tv_rewards_number:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    sget v1, Lcom/transsion/usercenter/R$id;->icIV:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/transsion/usercenter/profile/bean/MeItemInfo;->getData()Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Lcom/transsion/memberapi/MemberInfo;

    if-eqz v3, :cond_4

    move-object v2, v1

    check-cast v2, Lcom/transsion/memberapi/MemberInfo;

    :cond_4
    move-object v4, v2

    iget-object v1, p0, Lcom/transsion/usercenter/me/adapter/x;->g:Landroidx/lifecycle/LiveData;

    if-eqz v1, :cond_5

    new-instance v2, Lcom/transsion/usercenter/me/adapter/v;

    move-object v3, v2

    move-object v9, p0

    invoke-direct/range {v3 .. v9}, Lcom/transsion/usercenter/me/adapter/v;-><init>(Lcom/transsion/memberapi/MemberInfo;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/transsion/usercenter/me/adapter/x;)V

    new-instance v3, Lcom/transsion/usercenter/me/adapter/x$a;

    invoke-direct {v3, v2}, Lcom/transsion/usercenter/me/adapter/x$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v0, v3}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    :cond_5
    :goto_1
    iget-object v4, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const-string p1, "itemView"

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Lcom/transsion/usercenter/me/adapter/w;

    invoke-direct {v7, p0, p2}, Lcom/transsion/usercenter/me/adapter/w;-><init>(Lcom/transsion/usercenter/me/adapter/x;Lcom/transsion/usercenter/profile/bean/MeItemInfo;)V

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-wide/16 v5, 0x0

    invoke-static/range {v4 .. v9}, Ljg/c;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/usercenter/profile/bean/MeItemInfo;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/usercenter/me/adapter/x;->A(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/usercenter/profile/bean/MeItemInfo;)V

    return-void
.end method

.method public l()I
    .locals 1

    const/16 v0, 0xb

    return v0
.end method

.method public m()I
    .locals 1

    sget v0, Lcom/transsion/usercenter/R$layout;->mine_item_rewards_center_layout:I

    return v0
.end method
