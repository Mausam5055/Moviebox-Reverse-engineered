.class public final Lum/c;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;


# instance fields
.field private final e:Landroidx/lifecycle/u;

.field private final f:Lcom/transsion/member/MemberViewModel;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/u;Lcom/transsion/member/MemberViewModel;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    iput-object p1, p0, Lum/c;->e:Landroidx/lifecycle/u;

    iput-object p2, p0, Lum/c;->f:Lcom/transsion/member/MemberViewModel;

    return-void
.end method

.method public static final synthetic A(Lum/c;)Z
    .locals 0

    iget-boolean p0, p0, Lum/c;->g:Z

    return p0
.end method

.method private static final C(Lcom/transsion/member/view/CheckInView;Lcom/transsion/memberapi/MemberTaskItem;Lum/c;II)Lkotlin/Unit;
    .locals 3

    const/4 v0, 0x2

    if-eq p4, v0, :cond_0

    const/4 v0, 0x5

    if-eq p4, v0, :cond_0

    goto :goto_2

    :cond_0
    sget-object p4, Lcom/transsion/baseui/util/c;->a:Lcom/transsion/baseui/util/c;

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {p4, v0, v1, v2}, Lcom/transsion/baseui/util/c;->a(IJ)Z

    move-result p4

    if-eqz p4, :cond_1

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_1
    :try_start_0
    sget-object p4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberTaskItem;->getCheckInList()Ljava/util/List;

    move-result-object p4

    move-object v0, p4

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v1, "event_detail"

    const-string v2, "task_check_in_item"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "index"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-direct {p2, p1, v0}, Lum/c;->F(Lcom/transsion/memberapi/MemberTaskItem;Ljava/util/Map;)V

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;

    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->getHasCheckIn()Z

    move-result p4

    if-nez p4, :cond_3

    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->isToday()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    iput-boolean p1, p2, Lum/c;->g:Z

    invoke-virtual {p0, p3}, Lcom/transsion/member/view/CheckInView;->notifyItemCheckInStateChange(I)V

    iget-object p0, p2, Lum/c;->f:Lcom/transsion/member/MemberViewModel;

    invoke-virtual {p0, p3}, Lcom/transsion/member/MemberViewModel;->W(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p3}, Lcom/transsion/member/view/CheckInView;->notifyItemCheckInStateChange(I)V

    :cond_4
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

    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final D(Lum/c;Lcom/transsion/memberapi/MemberTaskItem;Lcom/transsion/member/view/CheckInView;Lkotlin/Pair;)Lkotlin/Unit;
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lum/c;->g:Z

    if-nez v2, :cond_0

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_0
    iput-boolean v1, p0, Lum/c;->g:Z

    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberTaskItem;->getCheckInList()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    if-eqz v2, :cond_7

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/transsion/memberapi/MemberTaskSubmitCheckInRes;

    const-string v3, "getString(...)"

    const-string v4, "index"

    const-string v5, "event_detail"

    if-eqz p3, :cond_6

    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v7, "task_check_in_item_success"

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-direct {p0, p1, v6}, Lum/c;->F(Lcom/transsion/memberapi/MemberTaskItem;Ljava/util/Map;)V

    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberTaskItem;->getCheckInList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;

    invoke-virtual {v5}, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->isToday()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    check-cast v4, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;

    if-eqz v4, :cond_4

    invoke-virtual {v4, v0}, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->setHasCheckIn(Z)V

    :cond_4
    sget-object p1, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p3}, Lcom/transsion/memberapi/MemberTaskSubmitCheckInRes;->getRewardType()I

    move-result v4

    if-ne v4, v0, :cond_5

    sget v4, Lcom/transsion/member/R$string;->member_claimed_succeed_days:I

    goto :goto_1

    :cond_5
    sget v4, Lcom/transsion/member/R$string;->member_reward_points_receive_tips:I

    :goto_1
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/transsion/memberapi/MemberTaskSubmitCheckInRes;->getRewardAmount()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p3, v3, v1

    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "format(...)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lum/c;->G(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    new-instance p3, Ljava/util/LinkedHashMap;

    invoke-direct {p3}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v0, "task_check_in_item_fail"

    invoke-interface {p3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-direct {p0, p1, p3}, Lum/c;->F(Lcom/transsion/memberapi/MemberTaskItem;Ljava/util/Map;)V

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p3, Lcom/transsion/member/R$string;->member_reward_receive_fault_tips:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lum/c;->G(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p2, v2}, Lcom/transsion/member/view/CheckInView;->notifyItemCheckInStateChange(I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_7
    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final E(Lcom/transsion/memberapi/MemberTaskItem;)V
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

    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberTaskItem;->getCheckInList()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;

    invoke-virtual {v3}, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->isToday()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->getHasCheckIn()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v1, v2

    :cond_1
    check-cast v1, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;

    :cond_2
    if-nez v1, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "showClaim"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    const-string v1, "memberdetail"

    invoke-virtual {p1, v1, v0}, Lcom/transsion/baselib/helper/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private final F(Lcom/transsion/memberapi/MemberTaskItem;Ljava/util/Map;)V
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

    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberTaskItem;->getCheckInList()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;

    invoke-virtual {v3}, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->isToday()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->getHasCheckIn()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v1, v2

    :cond_1
    check-cast v1, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;

    :cond_2
    if-nez v1, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "showClaim"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    sget-object p1, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    const-string p2, "memberdetail"

    invoke-virtual {p1, p2, v0}, Lcom/transsion/baselib/helper/a;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private final G(Ljava/lang/String;)V
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

.method public static synthetic y(Lcom/transsion/member/view/CheckInView;Lcom/transsion/memberapi/MemberTaskItem;Lum/c;II)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lum/c;->C(Lcom/transsion/member/view/CheckInView;Lcom/transsion/memberapi/MemberTaskItem;Lum/c;II)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic z(Lum/c;Lcom/transsion/memberapi/MemberTaskItem;Lcom/transsion/member/view/CheckInView;Lkotlin/Pair;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lum/c;->D(Lum/c;Lcom/transsion/memberapi/MemberTaskItem;Lcom/transsion/member/view/CheckInView;Lkotlin/Pair;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public B(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/memberapi/MemberTaskItem;)V
    .locals 3

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lum/c;->E(Lcom/transsion/memberapi/MemberTaskItem;)V

    sget v0, Lcom/transsion/member/R$id;->member_check_in_view:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/member/view/CheckInView;

    new-instance v0, Lum/c$a;

    invoke-direct {v0, p2, p0, p1}, Lum/c$a;-><init>(Lcom/transsion/memberapi/MemberTaskItem;Lum/c;Lcom/transsion/member/view/CheckInView;)V

    invoke-virtual {p1, v0}, Lcom/transsion/member/view/CheckInView;->setDataViewBinder(Lcom/transsion/member/view/CheckInView$d;)V

    new-instance v0, Lum/a;

    invoke-direct {v0, p1, p2, p0}, Lum/a;-><init>(Lcom/transsion/member/view/CheckInView;Lcom/transsion/memberapi/MemberTaskItem;Lum/c;)V

    invoke-virtual {p1, v0}, Lcom/transsion/member/view/CheckInView;->setItemClicker(Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {p1}, Lcom/transsion/member/view/CheckInView;->notifyAllChange()V

    iget-object v0, p0, Lum/c;->f:Lcom/transsion/member/MemberViewModel;

    invoke-virtual {v0}, Lcom/transsion/member/MemberViewModel;->L()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lum/c;->e:Landroidx/lifecycle/u;

    new-instance v2, Lum/b;

    invoke-direct {v2, p0, p2, p1}, Lum/b;-><init>(Lum/c;Lcom/transsion/memberapi/MemberTaskItem;Lcom/transsion/member/view/CheckInView;)V

    new-instance p1, Lum/c$b;

    invoke-direct {p1, v2}, Lum/c$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, p1}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    return-void
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/memberapi/MemberTaskItem;

    invoke-virtual {p0, p1, p2}, Lum/c;->B(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/memberapi/MemberTaskItem;)V

    return-void
.end method

.method public l()I
    .locals 1

    sget-object v0, Lcom/transsion/member/constants/TaskType;->CHECK_IN:Lcom/transsion/member/constants/TaskType;

    invoke-virtual {v0}, Lcom/transsion/member/constants/TaskType;->getValue()I

    move-result v0

    return v0
.end method

.method public m()I
    .locals 1

    sget v0, Lcom/transsion/member/R$layout;->item_task_check_in_container:I

    return v0
.end method
