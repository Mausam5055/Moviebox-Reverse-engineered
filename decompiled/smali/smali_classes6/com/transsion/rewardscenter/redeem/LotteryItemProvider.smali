.class public final Lcom/transsion/rewardscenter/redeem/LotteryItemProvider;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;


# instance fields
.field private final e:Lwp/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lwp/a;)V
    .locals 1

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    iput-object p1, p0, Lcom/transsion/rewardscenter/redeem/LotteryItemProvider;->e:Lwp/a;

    return-void
.end method

.method private static final B(ZLcom/transsion/rewardscenter/redeem/LotteryItemProvider;Lcom/transsion/rewardscenter/redeem/e;Lcom/transsion/rewardscenterapi/LotteryPrize;Landroid/view/View;)Lkotlin/Unit;
    .locals 7

    const-string v0, "it"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p0, :cond_0

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_0
    sget-object p0, Lnh/m;->a:Lnh/m;

    invoke-virtual {p0}, Lnh/m;->e()Z

    move-result p0

    const-string p4, "getString(...)"

    const/4 v0, 0x0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/tn/lib/widget/R$string;->no_network_toast:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/transsion/rewardscenter/utils/p;->a(ZLjava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_1
    check-cast p2, Lcom/transsion/rewardscenter/redeem/e$a;

    invoke-virtual {p2}, Lcom/transsion/rewardscenter/redeem/e$a;->a()Z

    move-result p0

    if-eqz p0, :cond_4

    iget-object p0, p1, Lcom/transsion/rewardscenter/redeem/LotteryItemProvider;->e:Lwp/a;

    invoke-virtual {p0}, Lwp/a;->a()Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/rewardscenter/ui/RewardsCenterFragment;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/rewardscenter/ui/RewardsCenterFragment;->showLoading()V

    :cond_2
    invoke-virtual {p3}, Lcom/transsion/rewardscenterapi/LotteryPrize;->getActivityId()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    iget-object p3, p1, Lcom/transsion/rewardscenter/redeem/LotteryItemProvider;->e:Lwp/a;

    invoke-virtual {p3}, Lwp/a;->b()Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/rewardscenter/redeem/LotteryItemProvider$convert$1$1$1;

    const/4 p3, 0x0

    invoke-direct {v4, p0, p1, p3}, Lcom/transsion/rewardscenter/redeem/LotteryItemProvider$convert$1$1$1;-><init>(Ljava/lang/String;Lcom/transsion/rewardscenter/redeem/LotteryItemProvider;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    move-result-object p0

    if-nez p0, :cond_5

    :cond_3
    iget-object p0, p1, Lcom/transsion/rewardscenter/redeem/LotteryItemProvider;->e:Lwp/a;

    invoke-virtual {p0}, Lwp/a;->c()Lcom/transsion/rewardscenter/model/RewardsCenterModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->o()Landroidx/lifecycle/b0;

    move-result-object p0

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p3}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object p0

    sget p3, Lcom/transsion/rewardscenter/R$string;->redeem_failed_tips:I

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/transsion/rewardscenter/utils/p;->a(ZLjava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_0

    :cond_4
    iget-object p0, p1, Lcom/transsion/rewardscenter/redeem/LotteryItemProvider;->e:Lwp/a;

    sget-object p3, Lcom/transsion/rewardscenterapi/TopUpType;->REDEEM:Lcom/transsion/rewardscenterapi/TopUpType;

    invoke-virtual {p0}, Lwp/a;->c()Lcom/transsion/rewardscenter/model/RewardsCenterModel;

    move-result-object p4

    invoke-virtual {p4}, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->l()Lcom/transsion/rewardscenterapi/SkuPoint;

    move-result-object p4

    invoke-static {p0, p3, p4}, Lcom/transsion/rewardscenter/utils/f;->c(Lwp/a;Lcom/transsion/rewardscenterapi/TopUpType;Lcom/transsion/rewardscenterapi/SkuPoint;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_5
    :goto_0
    invoke-virtual {p2}, Lcom/transsion/rewardscenter/redeem/e$a;->a()Z

    move-result p0

    invoke-direct {p1, p0}, Lcom/transsion/rewardscenter/redeem/LotteryItemProvider;->C(Z)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final C(Z)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    const-string v1, "has_paid"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "source"

    const-string v1, "lottery"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "redeem_rewards"

    invoke-static {p1, v0}, Lcom/transsion/rewardscenter/utils/q;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic y(ZLcom/transsion/rewardscenter/redeem/LotteryItemProvider;Lcom/transsion/rewardscenter/redeem/e;Lcom/transsion/rewardscenterapi/LotteryPrize;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/rewardscenter/redeem/LotteryItemProvider;->B(ZLcom/transsion/rewardscenter/redeem/LotteryItemProvider;Lcom/transsion/rewardscenter/redeem/e;Lcom/transsion/rewardscenterapi/LotteryPrize;Landroid/view/View;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic z(Lcom/transsion/rewardscenter/redeem/LotteryItemProvider;)Lwp/a;
    .locals 0

    iget-object p0, p0, Lcom/transsion/rewardscenter/redeem/LotteryItemProvider;->e:Lwp/a;

    return-object p0
.end method


# virtual methods
.method public A(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/rewardscenter/redeem/e;)V
    .locals 11

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p2, Lcom/transsion/rewardscenter/redeem/e$a;

    if-eqz v0, :cond_3

    move-object v0, p2

    check-cast v0, Lcom/transsion/rewardscenter/redeem/e$a;

    invoke-virtual {v0}, Lcom/transsion/rewardscenter/redeem/e$a;->b()Lcom/transsion/rewardscenterapi/LotteryPrize;

    move-result-object v1

    sget v2, Lcom/transsion/rewardscenter/R$id;->title:I

    invoke-virtual {v1}, Lcom/transsion/rewardscenterapi/LotteryPrize;->getPrizeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    sget v2, Lcom/transsion/rewardscenter/R$id;->point:I

    invoke-virtual {v1}, Lcom/transsion/rewardscenterapi/LotteryPrize;->getPointCost()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    sget v2, Lcom/transsion/rewardscenter/R$id;->icon:I

    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    sget-object v3, Lej/f;->a:Lej/f$a;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "getContext(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object v3

    invoke-virtual {v0}, Lcom/transsion/rewardscenter/redeem/e$a;->b()Lcom/transsion/rewardscenterapi/LotteryPrize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/rewardscenterapi/LotteryPrize;->getPrizeUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object v0

    sget v3, Lcom/transsion/rewardscenter/R$mipmap;->ic_redeem_lottery:I

    invoke-virtual {v0, v3}, Lej/f$b;->i(I)Lej/f$b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/transsion/rewardscenter/redeem/LotteryItemProvider;->e:Lwp/a;

    invoke-virtual {v0}, Lwp/a;->c()Lcom/transsion/rewardscenter/model/RewardsCenterModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->w()Lcom/transsion/rewardscenterapi/User;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/rewardscenterapi/User;->getPoint()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {v1}, Lcom/transsion/rewardscenterapi/LotteryPrize;->getPointCost()I

    move-result v3

    const/4 v4, 0x1

    if-lt v0, v3, :cond_1

    move v0, v4

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    sget v3, Lcom/transsion/rewardscenter/R$id;->action:I

    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    sget p1, Lcom/transsion/rewardscenter/R$mipmap;->ic_redeem_btn_bg_orange:I

    invoke-virtual {v5, p1}, Landroid/view/View;->setBackgroundResource(I)V

    const/4 p1, 0x0

    invoke-virtual {v5, p1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object p1

    sget v2, Lcom/tn/lib/widget/R$color;->white:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    sget p1, Lcom/transsion/rewardscenter/R$drawable;->shape_r6_tint:I

    invoke-virtual {v5, p1}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object p1

    sget v2, Lcom/transsion/rewardscenter/R$color;->redeem_disable_bg:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v5, p1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object p1

    sget v2, Lcom/tn/lib/widget/R$color;->white_80:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_2
    new-instance v8, Lcom/transsion/rewardscenter/redeem/a;

    invoke-direct {v8, v0, p0, p2, v1}, Lcom/transsion/rewardscenter/redeem/a;-><init>(ZLcom/transsion/rewardscenter/redeem/LotteryItemProvider;Lcom/transsion/rewardscenter/redeem/e;Lcom/transsion/rewardscenterapi/LotteryPrize;)V

    const/4 v9, 0x1

    const/4 v10, 0x0

    const-wide/16 v6, 0x0

    invoke-static/range {v5 .. v10}, Ljg/c;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/rewardscenter/redeem/e;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/rewardscenter/redeem/LotteryItemProvider;->A(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/rewardscenter/redeem/e;)V

    return-void
.end method

.method public l()I
    .locals 1

    sget-object v0, Lcom/transsion/rewardscenter/redeem/RedeemType;->LOTTERY:Lcom/transsion/rewardscenter/redeem/RedeemType;

    invoke-virtual {v0}, Lcom/transsion/rewardscenter/redeem/RedeemType;->getValue()I

    move-result v0

    return v0
.end method

.method public m()I
    .locals 1

    sget v0, Lcom/transsion/rewardscenter/R$layout;->redeem_lottery_item:I

    return v0
.end method
