.class public final Lcom/transsion/home/adapter/trending/provider/h;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/home/adapter/trending/provider/h$a;
    }
.end annotation


# static fields
.field public static final g:Lcom/transsion/home/adapter/trending/provider/h$a;

.field public static final h:I


# instance fields
.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/home/adapter/trending/provider/h$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/home/adapter/trending/provider/h$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/home/adapter/trending/provider/h;->g:Lcom/transsion/home/adapter/trending/provider/h$a;

    const/16 v0, 0x8

    sput v0, Lcom/transsion/home/adapter/trending/provider/h;->h:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "sceneId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/adapter/trending/provider/h;->e:Ljava/lang/String;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "toString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/home/adapter/trending/provider/h;->f:Ljava/lang/String;

    return-void
.end method

.method private static final B(Lcom/transsion/home/adapter/trending/provider/h;Lcom/transsion/home/bean/OperateItem;Lcom/tn/lib/view/MemberGuideBannerView;)Lkotlin/Unit;
    .locals 9

    iget-object v2, p0, Lcom/transsion/home/adapter/trending/provider/h;->e:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/home/bean/OperateItem;->getFeedsSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object p1

    move-object v4, p1

    goto :goto_0

    :cond_0
    move-object v4, v0

    :goto_0
    iget-object v3, p0, Lcom/transsion/home/adapter/trending/provider/h;->f:Ljava/lang/String;

    const/4 p0, 0x0

    new-array p1, p0, [Ljava/lang/Object;

    const-class v1, Lcom/transsion/memberapi/IPremiumApi;

    invoke-static {v1, p1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/memberapi/IPremiumApi;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/transsion/memberapi/IPremiumApi;->c()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    move-object v6, p1

    goto :goto_1

    :cond_1
    move-object v6, v0

    :goto_1
    new-array p1, p0, [Ljava/lang/Object;

    invoke-static {v1, p1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/memberapi/IPremiumApi;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/transsion/memberapi/IPremiumApi;->o()Ljava/lang/Integer;

    move-result-object p1

    move-object v7, p1

    goto :goto_2

    :cond_2
    move-object v7, v0

    :goto_2
    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {v1, p0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/memberapi/IPremiumApi;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lcom/transsion/memberapi/IPremiumApi;->u()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    move-object v8, p0

    goto :goto_3

    :cond_3
    move-object v8, v0

    :goto_3
    const-string v1, "stream_detail"

    const/4 v5, 0x1

    move-object v0, p2

    invoke-virtual/range {v0 .. v8}, Lcom/tn/lib/view/MemberGuideBannerView;->setMemberInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)Lcom/tn/lib/view/MemberGuideBannerView;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final C(Lcom/transsion/home/adapter/trending/provider/h;Landroid/view/View;)V
    .locals 4

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    const-class v1, Lcom/transsion/memberapi/IMemberApi;

    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/memberapi/IMemberApi;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/memberapi/IMemberApi;->f()Z

    move-result p1

    :cond_0
    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const-string p1, "/member/MemberActivity"

    invoke-static {p1}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    iget-object v2, p0, Lcom/transsion/home/adapter/trending/provider/h;->e:Ljava/lang/String;

    const-string v3, "scene_id"

    invoke-virtual {p1, v3, v2}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    const-string v2, "trace_id"

    iget-object p0, p0, Lcom/transsion/home/adapter/trending/provider/h;->f:Ljava/lang/String;

    invoke-virtual {p1, v2, p0}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p0

    invoke-static {p0, v1, v1, v0, v1}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string p0, "/rewards/center"

    invoke-static {p0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p0

    invoke-static {p0, v1, v1, v0, v1}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static synthetic y(Lcom/transsion/home/adapter/trending/provider/h;Lcom/transsion/home/bean/OperateItem;Lcom/tn/lib/view/MemberGuideBannerView;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/home/adapter/trending/provider/h;->B(Lcom/transsion/home/adapter/trending/provider/h;Lcom/transsion/home/bean/OperateItem;Lcom/tn/lib/view/MemberGuideBannerView;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic z(Lcom/transsion/home/adapter/trending/provider/h;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/home/adapter/trending/provider/h;->C(Lcom/transsion/home/adapter/trending/provider/h;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public A(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "helper"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "item"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lcom/transsion/home/R$id;->member_guide_banner:I

    invoke-virtual {v1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/tn/lib/view/MemberGuideBannerView;

    new-instance v4, Lcom/transsion/home/adapter/trending/provider/f;

    invoke-direct {v4, v0, v2, v3}, Lcom/transsion/home/adapter/trending/provider/f;-><init>(Lcom/transsion/home/adapter/trending/provider/h;Lcom/transsion/home/bean/OperateItem;Lcom/tn/lib/view/MemberGuideBannerView;)V

    invoke-virtual {v3, v4}, Lcom/tn/lib/view/MemberGuideBannerView;->setRefreshMemberInfo(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/home/bean/OperateItem;->getRemindData()Lcom/transsion/memberapi/MemberRemindData;

    move-result-object v4

    const/4 v15, 0x0

    new-array v5, v15, [Ljava/lang/Object;

    const-class v6, Lcom/transsion/rewardscenterapi/IRewardsCenterApi;

    invoke-static {v6, v5}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/rewardscenterapi/IRewardsCenterApi;

    const/4 v14, 0x0

    if-eqz v5, :cond_0

    invoke-interface {v5}, Lcom/transsion/rewardscenterapi/IRewardsCenterApi;->a()Lcom/transsion/rewardscenterapi/RewardsCenterData;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, v14

    :goto_0
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/transsion/rewardscenterapi/RewardsCenterData;->getLottery()Lcom/transsion/rewardscenterapi/Lottery;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/transsion/rewardscenterapi/Lottery;->getActivityId()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    :cond_1
    const-string v6, "0"

    :cond_2
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_3

    const/4 v6, 0x1

    move v13, v6

    goto :goto_1

    :cond_3
    move v13, v15

    :goto_1
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/transsion/rewardscenterapi/RewardsCenterData;->getLottery()Lcom/transsion/rewardscenterapi/Lottery;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/transsion/rewardscenterapi/Lottery;->getBgImage()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v16, v5

    goto :goto_2

    :cond_4
    move-object/from16 v16, v14

    :goto_2
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    instance-of v6, v5, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    if-eqz v6, :cond_5

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    goto :goto_3

    :cond_5
    move-object v5, v14

    :goto_3
    if-eqz v5, :cond_7

    iput v15, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz v13, :cond_6

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v6, Lcom/transsion/home/R$dimen;->dp_20:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, -0x1

    iput v1, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_6
    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    if-nez v4, :cond_c

    iget-object v6, v0, Lcom/transsion/home/adapter/trending/provider/h;->e:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/home/bean/OperateItem;->getFeedsSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v1

    move-object v8, v1

    goto :goto_4

    :cond_8
    move-object v8, v14

    :goto_4
    iget-object v7, v0, Lcom/transsion/home/adapter/trending/provider/h;->f:Ljava/lang/String;

    new-array v1, v15, [Ljava/lang/Object;

    const-class v2, Lcom/transsion/memberapi/IPremiumApi;

    invoke-static {v2, v1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/memberapi/IPremiumApi;

    if-eqz v1, :cond_9

    invoke-interface {v1}, Lcom/transsion/memberapi/IPremiumApi;->c()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object v10, v1

    goto :goto_5

    :cond_9
    move-object v10, v14

    :goto_5
    new-array v1, v15, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/memberapi/IPremiumApi;

    if-eqz v1, :cond_a

    invoke-interface {v1}, Lcom/transsion/memberapi/IPremiumApi;->o()Ljava/lang/Integer;

    move-result-object v1

    move-object v11, v1

    goto :goto_6

    :cond_a
    move-object v11, v14

    :goto_6
    new-array v1, v15, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/memberapi/IPremiumApi;

    if-eqz v1, :cond_b

    invoke-interface {v1}, Lcom/transsion/memberapi/IPremiumApi;->u()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object v12, v1

    goto :goto_7

    :cond_b
    move-object v12, v14

    :goto_7
    const/16 v1, 0x10

    const/4 v2, 0x0

    const-string v5, "stream_detail"

    const/4 v9, 0x0

    move-object v4, v3

    move/from16 v17, v13

    move v13, v1

    move-object v1, v14

    move-object v14, v2

    invoke-static/range {v4 .. v14}, Lcom/tn/lib/view/MemberGuideBannerView;->setMemberInfo$default(Lcom/tn/lib/view/MemberGuideBannerView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;ILjava/lang/Object;)Lcom/tn/lib/view/MemberGuideBannerView;

    move-result-object v2

    const/4 v4, 0x2

    move/from16 v6, v17

    invoke-static {v2, v6, v15, v4, v1}, Lcom/tn/lib/view/MemberGuideBannerView;->setZeroTreasureVisible$default(Lcom/tn/lib/view/MemberGuideBannerView;ZZILjava/lang/Object;)Lcom/tn/lib/view/MemberGuideBannerView;

    move-result-object v1

    new-instance v2, Lcom/transsion/home/adapter/trending/provider/g;

    invoke-direct {v2, v0}, Lcom/transsion/home/adapter/trending/provider/g;-><init>(Lcom/transsion/home/adapter/trending/provider/h;)V

    invoke-virtual {v1, v2}, Lcom/tn/lib/view/MemberGuideBannerView;->setBtnClickListener(Landroid/view/View$OnClickListener;)Lcom/tn/lib/view/MemberGuideBannerView;

    goto :goto_8

    :cond_c
    move v6, v13

    :goto_8
    if-eqz v6, :cond_e

    if-nez v16, :cond_d

    const-string v16, ""

    :cond_d
    move-object/from16 v1, v16

    invoke-virtual {v3, v1}, Lcom/tn/lib/view/MemberGuideBannerView;->setZeroTreasureIcon(Ljava/lang/String;)Lcom/tn/lib/view/MemberGuideBannerView;

    :cond_e
    return-void
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/home/bean/OperateItem;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/trending/provider/h;->A(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;)V

    return-void
.end method

.method public l()I
    .locals 1

    sget-object v0, Lcom/transsion/moviedetailapi/bean/PostItemType;->MEMBER_BANNER:Lcom/transsion/moviedetailapi/bean/PostItemType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method public m()I
    .locals 1

    sget v0, Lcom/transsion/home/R$layout;->item_member_banner:I

    return v0
.end method
