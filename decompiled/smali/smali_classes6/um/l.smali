.class public final Lum/l;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;


# instance fields
.field private final e:Landroidx/fragment/app/Fragment;

.field private final f:Lcom/transsion/member/MemberViewModel;

.field private g:Z

.field private final h:Lcom/transsnet/loginapi/ILoginApi;

.field private i:Z

.field private j:Ljava/lang/Integer;

.field private final k:Landroidx/activity/result/b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;Lcom/transsion/member/MemberViewModel;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    iput-object p1, p0, Lum/l;->e:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Lum/l;->f:Lcom/transsion/member/MemberViewModel;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-class v0, Lcom/transsnet/loginapi/ILoginApi;

    invoke-static {v0, p2}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsnet/loginapi/ILoginApi;

    iput-object p2, p0, Lum/l;->h:Lcom/transsnet/loginapi/ILoginApi;

    new-instance p2, Lf/j;

    invoke-direct {p2}, Lf/j;-><init>()V

    new-instance v0, Lum/d;

    invoke-direct {v0, p0}, Lum/d;-><init>(Lum/l;)V

    invoke-virtual {p1, p2, v0}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Lf/a;Landroidx/activity/result/a;)Landroidx/activity/result/b;

    move-result-object p1

    const-string p2, "registerForActivityResult(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lum/l;->k:Landroidx/activity/result/b;

    return-void
.end method

.method public static synthetic A(Landroid/widget/TextView;Lum/l;Lcom/transsion/memberapi/MemberTaskItem;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lum/l;->J(Landroid/widget/TextView;Lum/l;Lcom/transsion/memberapi/MemberTaskItem;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic B(Lum/l;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    invoke-static {p0, p1}, Lum/l;->V(Lum/l;Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method public static synthetic C(Lum/l;Lcom/transsion/memberapi/MemberTaskItem;Lcom/transsion/member/view/InviteUserView;Landroid/widget/TextView;Lzm/d;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lum/l;->K(Lum/l;Lcom/transsion/memberapi/MemberTaskItem;Lcom/transsion/member/view/InviteUserView;Landroid/widget/TextView;Lzm/d;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic D(Lcom/transsion/member/view/InviteUserView;Lcom/transsion/memberapi/MemberTaskItem;Lum/l;II)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lum/l;->O(Lcom/transsion/member/view/InviteUserView;Lcom/transsion/memberapi/MemberTaskItem;Lum/l;II)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic E(Landroid/widget/TextView;Lum/l;Lcom/transsion/memberapi/MemberTaskItem;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lum/l;->P(Landroid/widget/TextView;Lum/l;Lcom/transsion/memberapi/MemberTaskItem;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic F(Lcom/transsion/member/view/InviteUserView;Lum/l;Lcom/transsion/memberapi/MemberTaskItem;Lcom/transsion/memberapi/MemberTaskInviteRewards;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lum/l;->L(Lcom/transsion/member/view/InviteUserView;Lum/l;Lcom/transsion/memberapi/MemberTaskItem;Lcom/transsion/memberapi/MemberTaskInviteRewards;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic G(Lum/l;)Z
    .locals 0

    iget-boolean p0, p0, Lum/l;->g:Z

    return p0
.end method

.method public static final synthetic H(Lum/l;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lum/l;->j:Ljava/lang/Integer;

    return-object p0
.end method

.method private static final J(Landroid/widget/TextView;Lum/l;Lcom/transsion/memberapi/MemberTaskItem;Landroid/view/View;)V
    .locals 3

    sget-object p3, Lcom/transsion/baseui/util/c;->a:Lcom/transsion/baseui/util/c;

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {p3, v0, v1, v2}, Lcom/transsion/baseui/util/c;->a(IJ)Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    :cond_0
    new-instance p3, Ljava/util/LinkedHashMap;

    invoke-direct {p3}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v0, "event_detail"

    const-string v1, "task_invite_user_share_dialog"

    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lum/l;->h:Lcom/transsnet/loginapi/ILoginApi;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/transsnet/loginapi/ILoginApi;->a()Z

    move-result v0

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "is_login"

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-direct {p1, p2, p3}, Lum/l;->U(Lcom/transsion/memberapi/MemberTaskItem;Ljava/util/Map;)V

    iget-object p2, p1, Lum/l;->h:Lcom/transsnet/loginapi/ILoginApi;

    if-eqz p2, :cond_2

    invoke-interface {p2}, Lcom/transsnet/loginapi/ILoginApi;->a()Z

    move-result p2

    if-ne p2, v2, :cond_2

    iput-boolean v2, p1, Lum/l;->i:Z

    iget-object p0, p1, Lum/l;->f:Lcom/transsion/member/MemberViewModel;

    invoke-virtual {p0}, Lcom/transsion/member/MemberViewModel;->V()V

    goto :goto_0

    :cond_2
    iget-object p1, p1, Lum/l;->h:Lcom/transsnet/loginapi/ILoginApi;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p2, "getContext(...)"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lcom/transsnet/loginapi/ILoginApi;->j(Landroid/content/Context;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private static final K(Lum/l;Lcom/transsion/memberapi/MemberTaskItem;Lcom/transsion/member/view/InviteUserView;Landroid/widget/TextView;Lzm/d;)Lkotlin/Unit;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const/4 v4, 0x0

    iget-boolean v5, v0, Lum/l;->g:Z

    if-nez v5, :cond_0

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_0
    iput-boolean v4, v0, Lum/l;->g:Z

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/memberapi/MemberTaskItem;->getInviteList()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    if-eqz v5, :cond_11

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_d

    :cond_1
    invoke-virtual/range {p4 .. p4}, Lzm/d;->a()I

    move-result v5

    invoke-virtual/range {p4 .. p4}, Lzm/d;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p4 .. p4}, Lzm/d;->c()I

    move-result v7

    invoke-virtual/range {p4 .. p4}, Lzm/d;->e()I

    move-result v8

    invoke-virtual/range {p4 .. p4}, Lzm/d;->b()Lcom/transsion/memberapi/MemberTaskRewardInfo;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v10

    const-string v11, "0"

    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    const-string v14, "rewardRes"

    const-string v15, "getString(...)"

    const-string v13, "rewardId"

    const-string v4, "index"

    const-string v3, "event_detail"

    if-nez v11, :cond_8

    if-ltz v5, :cond_7

    if-eqz v9, :cond_7

    new-instance v11, Ljava/util/LinkedHashMap;

    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v12, "task_invite_user_claim_item_success"

    invoke-interface {v11, v3, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v11, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v11, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9}, Lcom/transsion/memberapi/MemberTaskRewardInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v11, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-direct {v0, v1, v11}, Lum/l;->U(Lcom/transsion/memberapi/MemberTaskItem;Ljava/util/Map;)V

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/memberapi/MemberTaskItem;->getInviteList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_5

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/transsion/memberapi/MemberTaskItemInvite;

    invoke-virtual {v5}, Lcom/transsion/memberapi/MemberTaskItemInvite;->getRewardId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    check-cast v4, Lcom/transsion/memberapi/MemberTaskItemInvite;

    if-eqz v4, :cond_5

    const/4 v3, 0x2

    invoke-virtual {v4, v3}, Lcom/transsion/memberapi/MemberTaskItemInvite;->setStatus(I)V

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/memberapi/MemberTaskItem;->getInviteList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-interface {v3, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    move v10, v3

    goto :goto_1

    :cond_4
    const/4 v10, 0x0

    :cond_5
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    if-ne v8, v4, :cond_6

    sget v5, Lcom/transsion/member/R$string;->member_claimed_succeed_days:I

    goto :goto_2

    :cond_6
    sget v5, Lcom/transsion/member/R$string;->member_reward_points_receive_tips:I

    :goto_2
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v6, v7, v4

    invoke-virtual {v3, v5, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v15}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v3}, Lum/l;->W(Ljava/lang/String;)V

    :goto_3
    move-object/from16 v8, p2

    goto :goto_4

    :cond_7
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v8, "task_invite_user_claim_item_fail"

    invoke-interface {v7, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-direct {v0, v1, v7}, Lum/l;->U(Lcom/transsion/memberapi/MemberTaskItem;Ljava/util/Map;)V

    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/transsion/member/R$string;->member_reward_receive_fault_tips:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v15}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v3}, Lum/l;->W(Ljava/lang/String;)V

    goto :goto_3

    :goto_4
    invoke-virtual {v8, v10}, Lcom/transsion/member/view/InviteUserView;->notifyItemInviteUserStateChange(I)V

    goto/16 :goto_6

    :cond_8
    move-object/from16 v8, p2

    if-nez v9, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v7

    sget v8, Lcom/transsion/member/R$string;->member_reward_receive_fault_tips:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v15}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v7}, Lum/l;->W(Ljava/lang/String;)V

    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v8, "task_invite_user_claim_all_fail"

    invoke-interface {v7, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-direct {v0, v1, v7}, Lum/l;->U(Lcom/transsion/memberapi/MemberTaskItem;Ljava/util/Map;)V

    goto :goto_6

    :cond_9
    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v11, "task_invite_user_claim_all_success"

    invoke-interface {v10, v3, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9}, Lcom/transsion/memberapi/MemberTaskRewardInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-direct {v0, v1, v10}, Lum/l;->U(Lcom/transsion/memberapi/MemberTaskItem;Ljava/util/Map;)V

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/memberapi/MemberTaskItem;->getInviteList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_b

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/memberapi/MemberTaskItemInvite;

    invoke-virtual {v4}, Lcom/transsion/memberapi/MemberTaskItemInvite;->getStatus()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_a

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/transsion/memberapi/MemberTaskItemInvite;->setStatus(I)V

    goto :goto_5

    :cond_a
    const/4 v5, 0x2

    goto :goto_5

    :cond_b
    const/4 v6, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/transsion/member/R$string;->member_claimed_succeed_days:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v5, v7, v6

    invoke-virtual {v3, v4, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v15}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v3}, Lum/l;->W(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/member/view/InviteUserView;->notifyAllItemInviteUserStateChange()V

    :goto_6
    if-eqz v9, :cond_10

    invoke-virtual {v1, v9}, Lcom/transsion/memberapi/MemberTaskItem;->setRewardInfo(Lcom/transsion/memberapi/MemberTaskRewardInfo;)V

    invoke-virtual {v9}, Lcom/transsion/memberapi/MemberTaskRewardInfo;->getDuration()I

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/member/R$string;->member_claim_all:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    const/4 v6, 0x0

    goto :goto_b

    :cond_c
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/member/R$string;->task_invite_user_view_get_premium_text:I

    invoke-virtual {v9}, Lcom/transsion/memberapi/MemberTaskRewardInfo;->getDuration()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v4, 0x1

    :try_start_1
    new-array v5, v4, [Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v6, 0x0

    :try_start_2
    aput-object v3, v5, v6

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_9

    :catchall_0
    move-exception v0

    goto :goto_8

    :catchall_1
    move-exception v0

    goto :goto_7

    :catchall_2
    move-exception v0

    const/4 v4, 0x1

    :goto_7
    const/4 v6, 0x0

    :goto_8
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_9
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v13, 0x0

    goto :goto_a

    :cond_d
    move-object v13, v0

    :goto_a
    check-cast v13, Ljava/lang/String;

    if-nez v13, :cond_e

    invoke-virtual {v9}, Lcom/transsion/memberapi/MemberTaskRewardInfo;->getDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_e
    move-object v0, v13

    :goto_b
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v9}, Lcom/transsion/memberapi/MemberTaskRewardInfo;->getDuration()I

    move-result v0

    if-lez v0, :cond_f

    move v3, v4

    goto :goto_c

    :cond_f
    move v3, v6

    :goto_c
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_10
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_11
    :goto_d
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method private static final L(Lcom/transsion/member/view/InviteUserView;Lum/l;Lcom/transsion/memberapi/MemberTaskItem;Lcom/transsion/memberapi/MemberTaskInviteRewards;)Lkotlin/Unit;
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/member/view/InviteUserView;->isLoadingMoreState()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    if-eqz p3, :cond_7

    invoke-virtual {p3}, Lcom/transsion/memberapi/MemberTaskInviteRewards;->getList()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p3}, Lcom/transsion/memberapi/MemberTaskInviteRewards;->getLastId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p1, Lum/l;->j:Ljava/lang/Integer;

    invoke-virtual {p3}, Lcom/transsion/memberapi/MemberTaskInviteRewards;->getList()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Lcom/transsion/memberapi/MemberTaskInviteRewards;->getList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_6

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p2}, Lcom/transsion/memberapi/MemberTaskItem;->getInviteList()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-interface {p2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    invoke-virtual {p0, p1}, Lcom/transsion/member/view/InviteUserView;->onLoadMoreCompleted(Ljava/util/List;)V

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Lcom/transsion/member/view/InviteUserView;->onLoadMoreCompleted(Ljava/util/List;)V

    goto :goto_1

    :cond_5
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Lcom/transsion/member/view/InviteUserView;->onLoadMoreCompleted(Ljava/util/List;)V

    :cond_6
    :goto_1
    invoke-virtual {p3}, Lcom/transsion/memberapi/MemberTaskInviteRewards;->getLastId()I

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {p0, v0}, Lcom/transsion/member/view/InviteUserView;->setLoadMoreEnable(Z)V

    goto :goto_3

    :cond_7
    :goto_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Lcom/transsion/member/view/InviteUserView;->onLoadMoreCompleted(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/transsion/member/view/InviteUserView;->setLoadMoreEnable(Z)V

    :cond_8
    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final M(Lum/l;Ljava/util/Map;)Lkotlin/Unit;
    .locals 9

    iget-boolean v0, p0, Lum/l;->i:Z

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const-string v1, "getString(...)"

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/tn/lib/widget/R$string;->load_failed:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lum/l;->W(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v2, ""

    :cond_1
    :goto_0
    move-object v3, v2

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/member/bean/request/MemberInviteUserShareInfo;

    const/4 v7, 0x0

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/transsion/member/bean/request/MemberInviteUserShareInfo;->getDesc()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_3
    move-object v6, v7

    :goto_1
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/transsion/member/bean/request/MemberInviteUserShareInfo;

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Lcom/transsion/member/bean/request/MemberInviteUserShareInfo;->getUrl()Ljava/lang/String;

    move-result-object v7

    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/member/bean/request/MemberInviteUserShareInfo;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/transsion/member/bean/request/MemberInviteUserShareInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_5
    const-string p1, "H5Source"

    const-string v2, "fissionNative"

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object p1

    sget v2, Lcom/transsion/member/R$string;->member_invite_user_share_title:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_6
    const-string p1, "title"

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p1, Lcom/transsion/web/share/WebShareDialog;->g:Lcom/transsion/web/share/WebShareDialog$a;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/transsion/web/share/WebShareDialog$a;->a(Ljava/lang/String;)Lcom/transsion/web/share/WebShareDialog;

    move-result-object p1

    new-instance v0, Lum/k;

    invoke-direct {v0, p1, p0}, Lum/k;-><init>(Lcom/transsion/web/share/WebShareDialog;Lum/l;)V

    invoke-virtual {p1, v0}, Lcom/transsion/web/share/WebShareDialog;->r0(Lkotlin/jvm/functions/Function3;)V

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v0

    const-string v1, "WebShareDialog"

    invoke-virtual {p1, v0, v1}, Lcom/transsion/baseui/dialog/BaseDialog;->k0(Landroid/content/Context;Ljava/lang/String;)V

    iget-boolean p1, p0, Lum/l;->i:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lum/l;->i:Z

    :cond_7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final N(Lcom/transsion/web/share/WebShareDialog;Lum/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    const-string v0, "packageName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "txt"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    const-string p1, "MovieBox"

    invoke-static {p1, p4}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p2, "clipboard"

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    check-cast p0, Landroid/content/ClipboardManager;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    :cond_1
    sget-object p0, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    sget p1, Lcom/transsion/web/R$string;->web_copied:I

    invoke-virtual {p0, p1}, Lcom/tn/lib/widget/toast/core/h;->k(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0, p4, p2, p3}, Lum/l;->Q(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    if-nez p0, :cond_3

    sget-object p0, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    sget p1, Lcom/transsion/web/R$string;->web_app_not_exist:I

    invoke-virtual {p0, p1}, Lcom/tn/lib/widget/toast/core/h;->k(I)V

    goto :goto_2

    :cond_3
    :try_start_0
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object p1, p1, Lum/l;->k:Landroidx/activity/result/b;

    invoke-virtual {p1, p0}, Landroidx/activity/result/b;->a(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    invoke-static {p0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final O(Lcom/transsion/member/view/InviteUserView;Lcom/transsion/memberapi/MemberTaskItem;Lum/l;II)Lkotlin/Unit;
    .locals 3

    const/4 v0, 0x2

    if-ne p4, v0, :cond_3

    sget-object p4, Lcom/transsion/baseui/util/c;->a:Lcom/transsion/baseui/util/c;

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {p4, v0, v1, v2}, Lcom/transsion/baseui/util/c;->a(IJ)Z

    move-result p4

    if-eqz p4, :cond_0

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_0
    :try_start_0
    sget-object p4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberTaskItem;->getInviteList()Ljava/util/List;

    move-result-object p4

    move-object v0, p4

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v1, "event_detail"

    const-string v2, "task_invite_user_claim_item"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "index"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-direct {p2, p1, v0}, Lum/l;->U(Lcom/transsion/memberapi/MemberTaskItem;Ljava/util/Map;)V

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/memberapi/MemberTaskItemInvite;

    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberTaskItemInvite;->getStatus()I

    move-result p4

    const/4 v0, 0x1

    if-ne p4, v0, :cond_2

    iput-boolean v0, p2, Lum/l;->g:Z

    invoke-virtual {p0, p3}, Lcom/transsion/member/view/InviteUserView;->notifyItemInviteUserStateChange(I)V

    iget-object p0, p2, Lum/l;->f:Lcom/transsion/member/MemberViewModel;

    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberTaskItemInvite;->getRewardId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberTaskItemInvite;->getRewardAmount()I

    move-result p4

    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberTaskItemInvite;->getRewardType()I

    move-result p1

    invoke-virtual {p0, p3, p2, p4, p1}, Lcom/transsion/member/MemberViewModel;->X(ILjava/lang/String;II)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final P(Landroid/widget/TextView;Lum/l;Lcom/transsion/memberapi/MemberTaskItem;Landroid/view/View;)V
    .locals 2

    sget-object p3, Lcom/transsion/baseui/util/c;->a:Lcom/transsion/baseui/util/c;

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p0

    const-wide/16 v0, 0x7d0

    invoke-virtual {p3, p0, v0, v1}, Lcom/transsion/baseui/util/c;->a(IJ)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string p3, "event_detail"

    const-string v0, "task_invite_user_claim_all"

    invoke-interface {p0, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "index"

    const-string v0, "-1"

    invoke-interface {p0, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p3, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-direct {p1, p2, p0}, Lum/l;->U(Lcom/transsion/memberapi/MemberTaskItem;Ljava/util/Map;)V

    const/4 p0, 0x1

    iput-boolean p0, p1, Lum/l;->g:Z

    iget-object p1, p1, Lum/l;->f:Lcom/transsion/member/MemberViewModel;

    invoke-virtual {p2}, Lcom/transsion/memberapi/MemberTaskItem;->getRewardInfo()Lcom/transsion/memberapi/MemberTaskRewardInfo;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/transsion/memberapi/MemberTaskRewardInfo;->getDuration()I

    move-result p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    const/4 p3, -0x1

    const-string v0, "0"

    invoke-virtual {p1, p3, v0, p2, p0}, Lcom/transsion/member/MemberViewModel;->X(ILjava/lang/String;II)V

    return-void
.end method

.method private final Q(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    invoke-direct {p0, p3, p4}, Lum/l;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p3, Landroid/content/Intent;

    const-string p4, "android.intent.action.SEND"

    invoke-direct {p3, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p4, "text/plain"

    invoke-virtual {p3, p4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string p4, "android.intent.extra.TEXT"

    invoke-virtual {p3, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p3, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object p3
.end method

.method private final R(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/baseui/util/a;->a:Lcom/transsion/baseui/util/a;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/transsion/baseui/util/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    sget-object p1, Lcom/transsion/baseui/util/a;->a:Lcom/transsion/baseui/util/a;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/transsion/baseui/util/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p2

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private final T(Lcom/transsion/memberapi/MemberTaskItem;)V
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "event_type"

    const-string v2, "task_browse"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberTaskItem;->getTaskSubType()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "taskSubType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberTaskItem;->getRewardType()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "rewardType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberTaskItem;->getRewardAmount()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "rewardAmount"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberTaskItem;->getInviteList()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/transsion/memberapi/MemberTaskItemInvite;

    invoke-virtual {v4}, Lcom/transsion/memberapi/MemberTaskItemInvite;->getStatus()I

    move-result v4

    if-ne v4, v2, :cond_0

    move-object v1, v3

    :cond_1
    check-cast v1, Lcom/transsion/memberapi/MemberTaskItemInvite;

    :cond_2
    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "showClaim"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    const-string v1, "rewards_center"

    invoke-virtual {p1, v1, v0}, Lcom/transsion/baselib/helper/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private final U(Lcom/transsion/memberapi/MemberTaskItem;Ljava/util/Map;)V
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "event_type"

    const-string v2, "task_click"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberTaskItem;->getTaskSubType()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "taskSubType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberTaskItem;->getRewardType()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "rewardType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberTaskItem;->getRewardAmount()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "rewardAmount"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberTaskItem;->getInviteList()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/transsion/memberapi/MemberTaskItemInvite;

    invoke-virtual {v4}, Lcom/transsion/memberapi/MemberTaskItemInvite;->getStatus()I

    move-result v4

    if-ne v4, v2, :cond_0

    move-object v1, v3

    :cond_1
    check-cast v1, Lcom/transsion/memberapi/MemberTaskItemInvite;

    :cond_2
    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "showClaim"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    sget-object p1, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    const-string p2, "rewards_center"

    invoke-virtual {p1, p2, v0}, Lcom/transsion/baselib/helper/a;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static final V(Lum/l;Landroidx/activity/result/ActivityResult;)V
    .locals 1

    const-string v0, "activityResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/transsion/member/R$string;->share_failed_tips:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/tn/lib/widget/toast/core/h;->l(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/transsion/member/R$string;->share_canceled_tips:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/tn/lib/widget/toast/core/h;->l(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/transsion/member/R$string;->share_success_tips:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/tn/lib/widget/toast/core/h;->l(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method private final W(Ljava/lang/String;)V
    .locals 8

    sget-object v0, Luh/b;->a:Luh/b$a;

    sget v1, Lcom/transsion/member/R$layout;->claim_succeed_layout:I

    const/high16 v2, 0x42840000    # 66.0f

    invoke-static {v2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v5

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/16 v3, 0x50

    const/4 v4, 0x0

    move-object v2, p1

    invoke-static/range {v0 .. v7}, Luh/b$a;->h(Luh/b$a;ILjava/lang/CharSequence;IIIILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic y(Lum/l;Ljava/util/Map;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lum/l;->M(Lum/l;Ljava/util/Map;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic z(Lcom/transsion/web/share/WebShareDialog;Lum/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lum/l;->N(Lcom/transsion/web/share/WebShareDialog;Lum/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public I(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/memberapi/MemberTaskItem;)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "helper"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "item"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lum/l;->T(Lcom/transsion/memberapi/MemberTaskItem;)V

    sget v2, Lcom/transsion/member/R$id;->task_invite_user_view:I

    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/transsion/member/view/InviteUserView;

    invoke-virtual {v2}, Lcom/transsion/member/view/InviteUserView;->getData()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p2}, Lcom/transsion/memberapi/MemberTaskItem;->getInviteList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    check-cast v4, Ljava/util/Collection;

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v3, v4}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_3

    invoke-virtual {p2}, Lcom/transsion/memberapi/MemberTaskItem;->getInviteList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->R0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_2

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    invoke-virtual {v2, v3}, Lcom/transsion/member/view/InviteUserView;->setData(Ljava/util/List;)V

    iput-object v4, p0, Lum/l;->j:Ljava/lang/Integer;

    invoke-virtual {v2, v1}, Lcom/transsion/member/view/InviteUserView;->setLoadMoreEnable(Z)V

    goto :goto_3

    :cond_3
    iget-object v3, p0, Lum/l;->j:Ljava/lang/Integer;

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_5

    :goto_1
    move v3, v1

    goto :goto_2

    :cond_5
    move v3, v0

    :goto_2
    invoke-virtual {v2, v3}, Lcom/transsion/member/view/InviteUserView;->setLoadMoreEnable(Z)V

    :goto_3
    new-instance v3, Lum/l$a;

    invoke-direct {v3, p0, v2}, Lum/l$a;-><init>(Lum/l;Lcom/transsion/member/view/InviteUserView;)V

    invoke-virtual {v2, v3}, Lcom/transsion/member/view/InviteUserView;->setDataViewBinder(Lcom/transsion/member/view/InviteUserView$c;)V

    new-instance v3, Lum/e;

    invoke-direct {v3, v2, p2, p0}, Lum/e;-><init>(Lcom/transsion/member/view/InviteUserView;Lcom/transsion/memberapi/MemberTaskItem;Lum/l;)V

    invoke-virtual {v2, v3}, Lcom/transsion/member/view/InviteUserView;->setItemClicker(Lkotlin/jvm/functions/Function2;)V

    sget v3, Lcom/transsion/member/R$id;->claim_all_bt:I

    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/transsion/memberapi/MemberTaskItem;->getRewardInfo()Lcom/transsion/memberapi/MemberTaskRewardInfo;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/transsion/memberapi/MemberTaskRewardInfo;->getDuration()I

    move-result v5

    goto :goto_4

    :cond_6
    move v5, v0

    :goto_4
    if-nez v5, :cond_7

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/transsion/member/R$string;->member_claim_all:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    :cond_7
    :try_start_0
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/transsion/member/R$string;->task_invite_user_view_get_premium_text:I

    invoke-virtual {p2}, Lcom/transsion/memberapi/MemberTaskItem;->getRewardInfo()Lcom/transsion/memberapi/MemberTaskRewardInfo;

    move-result-object v7

    if-eqz v7, :cond_8

    invoke-virtual {v7}, Lcom/transsion/memberapi/MemberTaskRewardInfo;->getDuration()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_5

    :catchall_0
    move-exception v5

    goto :goto_6

    :cond_8
    move-object v7, v4

    :goto_5
    new-array v8, v1, [Ljava/lang/Object;

    aput-object v7, v8, v0

    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_7

    :goto_6
    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v5}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    :goto_7
    invoke-static {v5}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    move-object v5, v4

    :cond_9
    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_b

    invoke-virtual {p2}, Lcom/transsion/memberapi/MemberTaskItem;->getRewardInfo()Lcom/transsion/memberapi/MemberTaskRewardInfo;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-virtual {v5}, Lcom/transsion/memberapi/MemberTaskRewardInfo;->getDescription()Ljava/lang/String;

    move-result-object v4

    :cond_a
    if-nez v4, :cond_c

    const-string v4, ""

    goto :goto_8

    :cond_b
    move-object v4, v5

    :cond_c
    :goto_8
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/transsion/memberapi/MemberTaskItem;->getRewardInfo()Lcom/transsion/memberapi/MemberTaskRewardInfo;

    move-result-object v4

    if-eqz v4, :cond_d

    invoke-virtual {v4}, Lcom/transsion/memberapi/MemberTaskRewardInfo;->getDuration()I

    move-result v4

    goto :goto_9

    :cond_d
    move v4, v0

    :goto_9
    if-lez v4, :cond_e

    move v0, v1

    :cond_e
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    new-instance v0, Lum/f;

    invoke-direct {v0, v3, p0, p2}, Lum/f;-><init>(Landroid/widget/TextView;Lum/l;Lcom/transsion/memberapi/MemberTaskItem;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/transsion/member/R$id;->invite_tips_bt:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-instance v0, Lum/g;

    invoke-direct {v0, p1, p0, p2}, Lum/g;-><init>(Landroid/widget/TextView;Lum/l;Lcom/transsion/memberapi/MemberTaskItem;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lum/l;->f:Lcom/transsion/member/MemberViewModel;

    invoke-virtual {p1}, Lcom/transsion/member/MemberViewModel;->M()Landroidx/lifecycle/LiveData;

    move-result-object p1

    iget-object v0, p0, Lum/l;->e:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/u;

    move-result-object v0

    new-instance v1, Lum/h;

    invoke-direct {v1, p0, p2, v2, v3}, Lum/h;-><init>(Lum/l;Lcom/transsion/memberapi/MemberTaskItem;Lcom/transsion/member/view/InviteUserView;Landroid/widget/TextView;)V

    new-instance v3, Lum/l$b;

    invoke-direct {v3, v1}, Lum/l$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0, v3}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    iget-object p1, p0, Lum/l;->f:Lcom/transsion/member/MemberViewModel;

    invoke-virtual {p1}, Lcom/transsion/member/MemberViewModel;->B()Landroidx/lifecycle/LiveData;

    move-result-object p1

    iget-object v0, p0, Lum/l;->e:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/u;

    move-result-object v0

    new-instance v1, Lum/i;

    invoke-direct {v1, v2, p0, p2}, Lum/i;-><init>(Lcom/transsion/member/view/InviteUserView;Lum/l;Lcom/transsion/memberapi/MemberTaskItem;)V

    new-instance p2, Lum/l$b;

    invoke-direct {p2, v1}, Lum/l$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0, p2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    iget-object p1, p0, Lum/l;->f:Lcom/transsion/member/MemberViewModel;

    invoke-virtual {p1}, Lcom/transsion/member/MemberViewModel;->I()Landroidx/lifecycle/LiveData;

    move-result-object p1

    iget-object p2, p0, Lum/l;->e:Landroidx/fragment/app/Fragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/u;

    move-result-object p2

    new-instance v0, Lum/j;

    invoke-direct {v0, p0}, Lum/j;-><init>(Lum/l;)V

    new-instance v1, Lum/l$b;

    invoke-direct {v1, v0}, Lum/l$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2, v1}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    return-void
.end method

.method public final S()Lcom/transsion/member/MemberViewModel;
    .locals 1

    iget-object v0, p0, Lum/l;->f:Lcom/transsion/member/MemberViewModel;

    return-object v0
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/memberapi/MemberTaskItem;

    invoke-virtual {p0, p1, p2}, Lum/l;->I(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/memberapi/MemberTaskItem;)V

    return-void
.end method

.method public l()I
    .locals 1

    sget-object v0, Lcom/transsion/member/constants/TaskType;->INVITE_USER:Lcom/transsion/member/constants/TaskType;

    invoke-virtual {v0}, Lcom/transsion/member/constants/TaskType;->getValue()I

    move-result v0

    return v0
.end method

.method public m()I
    .locals 1

    sget v0, Lcom/transsion/member/R$layout;->item_task_invite_user_container:I

    return v0
.end method
