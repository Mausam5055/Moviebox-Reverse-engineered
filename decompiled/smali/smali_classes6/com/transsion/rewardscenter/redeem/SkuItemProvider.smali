.class public final Lcom/transsion/rewardscenter/redeem/SkuItemProvider;
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

    iput-object p1, p0, Lcom/transsion/rewardscenter/redeem/SkuItemProvider;->e:Lwp/a;

    return-void
.end method

.method private static final B(ZLcom/transsion/rewardscenter/redeem/SkuItemProvider;Lcom/transsion/rewardscenter/redeem/e;Lcom/transsion/rewardscenterapi/SkuPoint;Landroid/view/View;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p0, :cond_0

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_0
    sget-object p0, Lnh/m;->a:Lnh/m;

    invoke-virtual {p0}, Lnh/m;->e()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/tn/lib/widget/R$string;->no_network_toast:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "getString(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {p1, p0}, Lcom/transsion/rewardscenter/utils/p;->a(ZLjava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_1
    iget-object p0, p1, Lcom/transsion/rewardscenter/redeem/SkuItemProvider;->e:Lwp/a;

    invoke-virtual {p0}, Lwp/a;->c()Lcom/transsion/rewardscenter/model/RewardsCenterModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->p()Landroidx/lifecycle/b0;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/rewardscenterapi/Lottery;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/rewardscenterapi/Lottery;->getActivityId()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    const-string p4, "0"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    move-object p0, p2

    check-cast p0, Lcom/transsion/rewardscenter/redeem/e$b;

    invoke-virtual {p0}, Lcom/transsion/rewardscenter/redeem/e$b;->a()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    iget-object p0, p1, Lcom/transsion/rewardscenter/redeem/SkuItemProvider;->e:Lwp/a;

    sget-object p3, Lcom/transsion/rewardscenterapi/TopUpType;->REDEEM:Lcom/transsion/rewardscenterapi/TopUpType;

    invoke-virtual {p0}, Lwp/a;->c()Lcom/transsion/rewardscenter/model/RewardsCenterModel;

    move-result-object p4

    invoke-virtual {p4}, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->l()Lcom/transsion/rewardscenterapi/SkuPoint;

    move-result-object p4

    invoke-static {p0, p3, p4}, Lcom/transsion/rewardscenter/utils/f;->c(Lwp/a;Lcom/transsion/rewardscenterapi/TopUpType;Lcom/transsion/rewardscenterapi/SkuPoint;)V

    goto :goto_2

    :cond_4
    :goto_1
    invoke-direct {p1, p3}, Lcom/transsion/rewardscenter/redeem/SkuItemProvider;->C(Lcom/transsion/rewardscenterapi/SkuPoint;)V

    :goto_2
    check-cast p2, Lcom/transsion/rewardscenter/redeem/e$b;

    invoke-virtual {p2}, Lcom/transsion/rewardscenter/redeem/e$b;->a()Z

    move-result p0

    invoke-direct {p1, p0}, Lcom/transsion/rewardscenter/redeem/SkuItemProvider;->D(Z)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final C(Lcom/transsion/rewardscenterapi/SkuPoint;)V
    .locals 7

    invoke-virtual {p1}, Lcom/transsion/rewardscenterapi/SkuPoint;->getSkuId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/rewardscenter/redeem/SkuItemProvider;->e:Lwp/a;

    invoke-virtual {v0}, Lwp/a;->b()Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/rewardscenter/redeem/SkuItemProvider$redeem$1$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/transsion/rewardscenter/redeem/SkuItemProvider$redeem$1$1;-><init>(Lcom/transsion/rewardscenter/redeem/SkuItemProvider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/transsion/rewardscenter/R$string;->redeem_failed_tips:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/transsion/rewardscenter/utils/p;->a(ZLjava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_1
    return-void
.end method

.method private final D(Z)V
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

    const-string v1, "sku"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "redeem_rewards"

    invoke-static {p1, v0}, Lcom/transsion/rewardscenter/utils/q;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic y(ZLcom/transsion/rewardscenter/redeem/SkuItemProvider;Lcom/transsion/rewardscenter/redeem/e;Lcom/transsion/rewardscenterapi/SkuPoint;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/rewardscenter/redeem/SkuItemProvider;->B(ZLcom/transsion/rewardscenter/redeem/SkuItemProvider;Lcom/transsion/rewardscenter/redeem/e;Lcom/transsion/rewardscenterapi/SkuPoint;Landroid/view/View;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic z(Lcom/transsion/rewardscenter/redeem/SkuItemProvider;)Lwp/a;
    .locals 0

    iget-object p0, p0, Lcom/transsion/rewardscenter/redeem/SkuItemProvider;->e:Lwp/a;

    return-object p0
.end method


# virtual methods
.method public A(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/rewardscenter/redeem/e;)V
    .locals 10

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p2, Lcom/transsion/rewardscenter/redeem/e$b;

    if-eqz v0, :cond_3

    move-object v0, p2

    check-cast v0, Lcom/transsion/rewardscenter/redeem/e$b;

    invoke-virtual {v0}, Lcom/transsion/rewardscenter/redeem/e$b;->b()Lcom/transsion/rewardscenterapi/SkuPoint;

    move-result-object v0

    sget v1, Lcom/transsion/rewardscenter/R$id;->title:I

    invoke-virtual {v0}, Lcom/transsion/rewardscenterapi/SkuPoint;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    sget v1, Lcom/transsion/rewardscenter/R$id;->point:I

    new-instance v2, Ljava/math/BigDecimal;

    invoke-virtual {v0}, Lcom/transsion/rewardscenterapi/SkuPoint;->getPrice()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/cloud/hisavana/sdk/common/util/n0;->a(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    iget-object v1, p0, Lcom/transsion/rewardscenter/redeem/SkuItemProvider;->e:Lwp/a;

    invoke-virtual {v1}, Lwp/a;->c()Lcom/transsion/rewardscenter/model/RewardsCenterModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->w()Lcom/transsion/rewardscenterapi/User;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/rewardscenterapi/User;->getPoint()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    int-to-double v3, v1

    invoke-virtual {v0}, Lcom/transsion/rewardscenterapi/SkuPoint;->getPrice()D

    move-result-wide v5

    cmpl-double v1, v3, v5

    const/4 v3, 0x1

    if-ltz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    sget v4, Lcom/transsion/rewardscenter/R$id;->action:I

    invoke-virtual {p1, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/widget/TextView;

    if-eqz v1, :cond_2

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    sget p1, Lcom/transsion/rewardscenter/R$mipmap;->ic_redeem_btn_bg_orange:I

    invoke-virtual {v4, p1}, Landroid/view/View;->setBackgroundResource(I)V

    const/4 p1, 0x0

    invoke-virtual {v4, p1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object p1

    sget v2, Lcom/tn/lib/widget/R$color;->white:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    sget p1, Lcom/transsion/rewardscenter/R$drawable;->shape_r6_tint:I

    invoke-virtual {v4, p1}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object p1

    sget v2, Lcom/transsion/rewardscenter/R$color;->redeem_disable_bg:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object p1

    sget v2, Lcom/tn/lib/widget/R$color;->white_80:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_2
    new-instance v7, Lcom/transsion/rewardscenter/redeem/f;

    invoke-direct {v7, v1, p0, p2, v0}, Lcom/transsion/rewardscenter/redeem/f;-><init>(ZLcom/transsion/rewardscenter/redeem/SkuItemProvider;Lcom/transsion/rewardscenter/redeem/e;Lcom/transsion/rewardscenterapi/SkuPoint;)V

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-wide/16 v5, 0x0

    invoke-static/range {v4 .. v9}, Ljg/c;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/rewardscenter/redeem/e;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/rewardscenter/redeem/SkuItemProvider;->A(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/rewardscenter/redeem/e;)V

    return-void
.end method

.method public l()I
    .locals 1

    sget-object v0, Lcom/transsion/rewardscenter/redeem/RedeemType;->SKU:Lcom/transsion/rewardscenter/redeem/RedeemType;

    invoke-virtual {v0}, Lcom/transsion/rewardscenter/redeem/RedeemType;->getValue()I

    move-result v0

    return v0
.end method

.method public m()I
    .locals 1

    sget v0, Lcom/transsion/rewardscenter/R$layout;->redeem_sku_item:I

    return v0
.end method
