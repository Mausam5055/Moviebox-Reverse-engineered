.class public final Lcom/transsion/rewardscenter/task/ad/m;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/rewardscenter/task/ad/m$a;
    }
.end annotation


# instance fields
.field private final e:Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;

.field private f:Z

.field private g:I

.field private h:I

.field private i:I

.field private final j:I

.field private final k:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    iput-object p1, p0, Lcom/transsion/rewardscenter/task/ad/m;->e:Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;

    sget-object p1, Lcom/transsion/rewardscenter/task/ad/AdTaskType;->REGULAR_AD:Lcom/transsion/rewardscenter/task/ad/AdTaskType;

    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/AdTaskType;->getValue()I

    move-result p1

    iput p1, p0, Lcom/transsion/rewardscenter/task/ad/m;->j:I

    sget p1, Lcom/transsion/rewardscenter/R$layout;->member_task_regular_item_layout:I

    iput p1, p0, Lcom/transsion/rewardscenter/task/ad/m;->k:I

    return-void
.end method

.method public static synthetic A(Lcom/transsion/rewardscenter/task/ad/v$a;Lcom/transsion/rewardscenter/task/ad/m;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/rewardscenter/task/ad/m;->L(Lcom/transsion/rewardscenter/task/ad/v$a;Lcom/transsion/rewardscenter/task/ad/m;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final C(Lcom/transsion/rewardscenter/task/ad/v$a;)V
    .locals 6

    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$a;->h()Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$a;->c()Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$a;->j()Lcom/transsion/ad/bidding/base/u;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;->simulatingClick$default(Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/bidding/base/u;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private final D(Lcom/transsion/rewardscenter/task/ad/v$a;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "module_name"

    const-string v2, "member_ad_task_regular"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$a;->e()Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ad_state"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$a;->k()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "pull_new"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lhj/i;->a:Lhj/i;

    const-string v1, "MemberAdTask"

    invoke-virtual {p1, v1, v0}, Lhj/i;->p(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private final E()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "module_name"

    const-string v2, "member_ad_task_regular"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lhj/i;->a:Lhj/i;

    const-string v2, "MemberAdTask"

    invoke-virtual {v1, v2, v0}, Lhj/i;->D(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private final F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/rewardscenter/task/ad/v$a;)V
    .locals 2

    sget v0, Lcom/transsion/rewardscenter/R$id;->ad_container:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/transsion/rewardscenter/task/ad/m;->e:Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->Q(Lcom/transsion/rewardscenter/task/ad/v$a;)V

    :cond_0
    invoke-virtual {p2}, Lcom/transsion/rewardscenter/task/ad/v$a;->h()Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method private final G(Lcom/transsion/rewardscenter/task/ad/v$a;)V
    .locals 2

    sget-object v0, Lcom/transsion/rewardscenter/task/ad/u;->a:Lcom/transsion/rewardscenter/task/ad/u;

    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$a;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$a;->e()Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/transsion/rewardscenter/task/ad/u;->v(Ljava/lang/String;Lcom/transsion/rewardscenter/task/ad/AdTaskState;)V

    return-void
.end method

.method private final H(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/rewardscenter/task/ad/v$a;Z)V
    .locals 1

    sget v0, Lcom/transsion/rewardscenter/R$id;->btn_action:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/transsion/rewardscenter/task/ad/v$a;->e()Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    move-result-object p2

    sget-object v0, Lcom/transsion/rewardscenter/task/ad/m$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    if-eqz p3, :cond_0

    const-string p2, "Install"

    goto :goto_0

    :cond_0
    const-string p2, "Open"

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget p2, p0, Lcom/transsion/rewardscenter/task/ad/m;->g:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_1
    const-string p2, "Completed"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget p2, p0, Lcom/transsion/rewardscenter/task/ad/m;->i:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_2
    const-string p2, "Claim"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget p2, p0, Lcom/transsion/rewardscenter/task/ad/m;->g:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_3
    const-string p2, "Downloading..."

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget p2, p0, Lcom/transsion/rewardscenter/task/ad/m;->h:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    return-void
.end method

.method static synthetic I(Lcom/transsion/rewardscenter/task/ad/m;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/rewardscenter/task/ad/v$a;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/rewardscenter/task/ad/m;->H(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/rewardscenter/task/ad/v$a;Z)V

    return-void
.end method

.method private final J(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/rewardscenter/task/ad/v$a;Z)V
    .locals 7

    sget v0, Lcom/transsion/rewardscenter/R$id;->btn_action:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    new-instance v4, Lcom/transsion/rewardscenter/task/ad/j;

    invoke-direct {v4, p0, p2, p3, p1}, Lcom/transsion/rewardscenter/task/ad/j;-><init>(Lcom/transsion/rewardscenter/task/ad/m;Lcom/transsion/rewardscenter/task/ad/v$a;ZLcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    invoke-static/range {v1 .. v6}, Ljg/c;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method private static final K(Lcom/transsion/rewardscenter/task/ad/m;Lcom/transsion/rewardscenter/task/ad/v$a;ZLcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)Lkotlin/Unit;
    .locals 6

    const-string v0, "it"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/transsion/rewardscenter/task/ad/m;->D(Lcom/transsion/rewardscenter/task/ad/v$a;)V

    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$a;->e()Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    move-result-object p4

    sget-object v0, Lcom/transsion/rewardscenter/task/ad/m$a;->a:[I

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    aget p4, v0, p4

    const/4 v0, 0x2

    if-eq p4, v0, :cond_3

    const/4 v0, 0x3

    if-eq p4, v0, :cond_2

    const/4 v0, 0x5

    if-eq p4, v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    sget-object p2, Lcom/transsion/rewardscenter/task/ad/AdTaskState;->DOWNLOADING:Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    invoke-virtual {p1, p2}, Lcom/transsion/rewardscenter/task/ad/v$a;->m(Lcom/transsion/rewardscenter/task/ad/AdTaskState;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/transsion/rewardscenter/task/ad/v$a;->o(J)V

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/transsion/rewardscenter/task/ad/AdTaskState;->PLAYING:Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    invoke-virtual {p1, p2}, Lcom/transsion/rewardscenter/task/ad/v$a;->m(Lcom/transsion/rewardscenter/task/ad/AdTaskState;)V

    :goto_0
    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/transsion/rewardscenter/task/ad/m;->I(Lcom/transsion/rewardscenter/task/ad/m;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/rewardscenter/task/ad/v$a;ZILjava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/transsion/rewardscenter/task/ad/m;->G(Lcom/transsion/rewardscenter/task/ad/v$a;)V

    invoke-direct {p0, p1}, Lcom/transsion/rewardscenter/task/ad/m;->C(Lcom/transsion/rewardscenter/task/ad/v$a;)V

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/transsion/rewardscenter/task/ad/m;->e:Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;

    if-eqz p2, :cond_4

    new-instance p4, Lcom/transsion/rewardscenter/task/ad/l;

    invoke-direct {p4, p1, p0, p3}, Lcom/transsion/rewardscenter/task/ad/l;-><init>(Lcom/transsion/rewardscenter/task/ad/v$a;Lcom/transsion/rewardscenter/task/ad/m;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    invoke-virtual {p2, p1, p4}, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->z(Lcom/transsion/rewardscenter/task/ad/v;Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lcom/transsion/rewardscenter/task/ad/m;->e:Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;

    if-eqz p2, :cond_4

    new-instance p4, Lcom/transsion/rewardscenter/task/ad/k;

    invoke-direct {p4, p1, p0, p3}, Lcom/transsion/rewardscenter/task/ad/k;-><init>(Lcom/transsion/rewardscenter/task/ad/v$a;Lcom/transsion/rewardscenter/task/ad/m;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    invoke-virtual {p2, p1, p4}, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->z(Lcom/transsion/rewardscenter/task/ad/v;Lkotlin/jvm/functions/Function0;)V

    :cond_4
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final L(Lcom/transsion/rewardscenter/task/ad/v$a;Lcom/transsion/rewardscenter/task/ad/m;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Lkotlin/Unit;
    .locals 7

    sget-object v0, Lcom/transsion/rewardscenter/task/ad/AdTaskState;->COMPLETED:Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    invoke-virtual {p0, v0}, Lcom/transsion/rewardscenter/task/ad/v$a;->m(Lcom/transsion/rewardscenter/task/ad/AdTaskState;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Lcom/transsion/rewardscenter/task/ad/m;->I(Lcom/transsion/rewardscenter/task/ad/m;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/rewardscenter/task/ad/v$a;ZILjava/lang/Object;)V

    invoke-direct {p1, p0}, Lcom/transsion/rewardscenter/task/ad/m;->G(Lcom/transsion/rewardscenter/task/ad/v$a;)V

    iget-object p2, p1, Lcom/transsion/rewardscenter/task/ad/m;->e:Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;

    invoke-virtual {p0}, Lcom/transsion/rewardscenter/task/ad/v$a;->i()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/transsion/rewardscenter/task/ad/m;->e:Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;

    invoke-virtual {p0}, Lcom/transsion/rewardscenter/task/ad/v$a;->c()Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->q(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->y(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object p1, Lcom/transsion/rewardscenter/task/ad/u;->a:Lcom/transsion/rewardscenter/task/ad/u;

    invoke-virtual {p1, p0}, Lcom/transsion/rewardscenter/task/ad/u;->q(Lcom/transsion/rewardscenter/task/ad/v$a;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final M(Lcom/transsion/rewardscenter/task/ad/v$a;Lcom/transsion/rewardscenter/task/ad/m;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Lkotlin/Unit;
    .locals 7

    sget-object v0, Lcom/transsion/rewardscenter/task/ad/AdTaskState;->COMPLETED:Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    invoke-virtual {p0, v0}, Lcom/transsion/rewardscenter/task/ad/v$a;->m(Lcom/transsion/rewardscenter/task/ad/AdTaskState;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Lcom/transsion/rewardscenter/task/ad/m;->I(Lcom/transsion/rewardscenter/task/ad/m;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/rewardscenter/task/ad/v$a;ZILjava/lang/Object;)V

    invoke-direct {p1, p0}, Lcom/transsion/rewardscenter/task/ad/m;->G(Lcom/transsion/rewardscenter/task/ad/v$a;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final N(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Z)V
    .locals 3

    sget v0, Lcom/transsion/rewardscenter/R$id;->member_point:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, " points"

    const-string v1, "+"

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    sget-object p2, Lcom/transsion/rewardscenter/task/ad/u;->a:Lcom/transsion/rewardscenter/task/ad/u;

    invoke-virtual {p2}, Lcom/transsion/rewardscenter/task/ad/u;->h()Lcom/transsion/rewardscenterapi/MemberTaskItem;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->getRewardAmount()Ljava/lang/Integer;

    move-result-object v2

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/transsion/rewardscenter/task/ad/u;->a:Lcom/transsion/rewardscenter/task/ad/u;

    invoke-virtual {p2}, Lcom/transsion/rewardscenter/task/ad/u;->g()Lcom/transsion/rewardscenterapi/MemberTaskItem;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->getRewardAmount()Ljava/lang/Integer;

    move-result-object v2

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public static synthetic y(Lcom/transsion/rewardscenter/task/ad/v$a;Lcom/transsion/rewardscenter/task/ad/m;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/rewardscenter/task/ad/m;->M(Lcom/transsion/rewardscenter/task/ad/v$a;Lcom/transsion/rewardscenter/task/ad/m;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic z(Lcom/transsion/rewardscenter/task/ad/m;Lcom/transsion/rewardscenter/task/ad/v$a;ZLcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/rewardscenter/task/ad/m;->K(Lcom/transsion/rewardscenter/task/ad/m;Lcom/transsion/rewardscenter/task/ad/v$a;ZLcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public B(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/rewardscenter/task/ad/v;)V
    .locals 3

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p2, Lcom/transsion/rewardscenter/task/ad/v$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p2, Lcom/transsion/rewardscenter/task/ad/v$a;

    invoke-direct {p0, p1, p2}, Lcom/transsion/rewardscenter/task/ad/m;->F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/rewardscenter/task/ad/v$a;)V

    invoke-virtual {p2}, Lcom/transsion/rewardscenter/task/ad/v$a;->k()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/transsion/rewardscenter/task/ad/m;->N(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Z)V

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/transsion/rewardscenter/task/ad/v$a;->e()Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    move-result-object v1

    sget-object v2, Lcom/transsion/rewardscenter/task/ad/AdTaskState;->COMPLETED:Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/transsion/rewardscenter/task/ad/AdTaskState;->NORMAL:Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    invoke-virtual {p2, v1}, Lcom/transsion/rewardscenter/task/ad/v$a;->m(Lcom/transsion/rewardscenter/task/ad/AdTaskState;)V

    :cond_1
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/rewardscenter/task/ad/m;->H(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/rewardscenter/task/ad/v$a;Z)V

    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/rewardscenter/task/ad/m;->J(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/rewardscenter/task/ad/v$a;Z)V

    iget-boolean p1, p0, Lcom/transsion/rewardscenter/task/ad/m;->f:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/rewardscenter/task/ad/m;->f:Z

    invoke-direct {p0}, Lcom/transsion/rewardscenter/task/ad/m;->E()V

    :cond_2
    return-void
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/rewardscenter/task/ad/v;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/rewardscenter/task/ad/m;->B(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/rewardscenter/task/ad/v;)V

    return-void
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lcom/transsion/rewardscenter/task/ad/m;->j:I

    return v0
.end method

.method public m()I
    .locals 1

    iget v0, p0, Lcom/transsion/rewardscenter/task/ad/m;->k:I

    return v0
.end method

.method public r(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
    .locals 2

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p0}, Lcom/transsion/rewardscenter/task/ad/m;->m()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/tn/lib/widget/R$color;->white:I

    invoke-static {v0, v1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/rewardscenter/task/ad/m;->g:I

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/tn/lib/widget/R$color;->white_50:I

    invoke-static {v0, v1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/rewardscenter/task/ad/m;->h:I

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/tn/lib/widget/R$color;->white_40:I

    invoke-static {p1, v0}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/rewardscenter/task/ad/m;->i:I

    new-instance p1, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method
