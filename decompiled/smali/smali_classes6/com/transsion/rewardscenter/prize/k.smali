.class public final Lcom/transsion/rewardscenter/prize/k;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/rewardscenter/prize/k$a;
    }
.end annotation


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

    iput-object p1, p0, Lcom/transsion/rewardscenter/prize/k;->e:Lwp/a;

    return-void
.end method

.method private static final A(Lcom/transsion/rewardscenter/prize/PrizeButtonState;Landroid/content/Context;Lcom/transsion/rewardscenter/prize/k;Lcom/transsion/rewardscenterapi/DrawResult;Landroid/view/View;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p4, Lcom/transsion/rewardscenter/prize/PrizeButtonState;->ACTIVE:Lcom/transsion/rewardscenter/prize/PrizeButtonState;

    if-ne p0, p4, :cond_2

    sget-object p0, Lnh/m;->a:Lnh/m;

    invoke-virtual {p0}, Lnh/m;->e()Z

    move-result p0

    if-nez p0, :cond_0

    sget p0, Lcom/tn/lib/widget/R$string;->no_network_toast:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "getString(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {p1, p0}, Lcom/transsion/rewardscenter/utils/p;->a(ZLjava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p2, Lcom/transsion/rewardscenter/prize/k;->e:Lwp/a;

    invoke-virtual {p0}, Lwp/a;->a()Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/rewardscenter/ui/RewardsCenterFragment;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p3}, Lcom/transsion/rewardscenter/ui/RewardsCenterFragment;->u1(Lcom/transsion/rewardscenterapi/DrawResult;)V

    :cond_1
    invoke-direct {p2, p3}, Lcom/transsion/rewardscenter/prize/k;->C(Lcom/transsion/rewardscenterapi/DrawResult;)V

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final B(Lcom/transsion/rewardscenterapi/DrawResult;)Lcom/transsion/rewardscenter/prize/PrizeButtonState;
    .locals 3

    invoke-virtual {p1}, Lcom/transsion/rewardscenterapi/DrawResult;->getClaimStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CLAIM_STATUS_TOP_UP"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/transsion/rewardscenter/prize/PrizeButtonState;->CLAIMING:Lcom/transsion/rewardscenter/prize/PrizeButtonState;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/rewardscenterapi/DrawResult;->getClaimStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CLAIM_STATUS_UNCLAIM"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/transsion/rewardscenterapi/DrawResult;->getNeedFill()Ljava/lang/String;

    move-result-object v0

    const-string v2, "LOTTERY_NEED_FILL_YES"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/transsion/rewardscenterapi/DrawResult;->getFillStatus()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FILL_STATUS_NO"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/transsion/rewardscenter/prize/PrizeButtonState;->ACTIVE:Lcom/transsion/rewardscenter/prize/PrizeButtonState;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/rewardscenterapi/DrawResult;->getClaimStatus()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/transsion/rewardscenterapi/DrawResult;->getNeedFill()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LOTTERY_NEED_FILL_NO"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/transsion/rewardscenter/prize/PrizeButtonState;->ACTIVE:Lcom/transsion/rewardscenter/prize/PrizeButtonState;

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/transsion/rewardscenter/prize/PrizeButtonState;->CLAIMED:Lcom/transsion/rewardscenter/prize/PrizeButtonState;

    :goto_0
    return-object p1
.end method

.method private final C(Lcom/transsion/rewardscenterapi/DrawResult;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lcom/transsion/rewardscenterapi/DrawResult;->getPrizeType()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    const-string v1, "source"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "prize_list"

    invoke-static {p1, v0}, Lcom/transsion/rewardscenter/utils/q;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic y(Lcom/transsion/rewardscenter/prize/PrizeButtonState;Landroid/content/Context;Lcom/transsion/rewardscenter/prize/k;Lcom/transsion/rewardscenterapi/DrawResult;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/rewardscenter/prize/k;->A(Lcom/transsion/rewardscenter/prize/PrizeButtonState;Landroid/content/Context;Lcom/transsion/rewardscenter/prize/k;Lcom/transsion/rewardscenterapi/DrawResult;Landroid/view/View;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/rewardscenter/prize/e;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/rewardscenter/prize/k;->z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/rewardscenter/prize/e;)V

    return-void
.end method

.method public l()I
    .locals 1

    sget-object v0, Lcom/transsion/rewardscenter/prize/PrizeItemType;->ROW:Lcom/transsion/rewardscenter/prize/PrizeItemType;

    invoke-virtual {v0}, Lcom/transsion/rewardscenter/prize/PrizeItemType;->getValue()I

    move-result v0

    return v0
.end method

.method public m()I
    .locals 1

    sget v0, Lcom/transsion/rewardscenter/R$layout;->prize_row_item:I

    return v0
.end method

.method public z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/rewardscenter/prize/e;)V
    .locals 7

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p2, Lcom/transsion/rewardscenter/prize/e$c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p2, Lcom/transsion/rewardscenter/prize/e$c;

    invoke-virtual {p2}, Lcom/transsion/rewardscenter/prize/e$c;->a()Lcom/transsion/rewardscenterapi/DrawResult;

    move-result-object p2

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lej/f;->a:Lej/f$a;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object v1

    invoke-virtual {p2}, Lcom/transsion/rewardscenterapi/DrawResult;->getImgUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object v1

    sget v2, Lcom/transsion/rewardscenter/R$id;->icon:I

    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    sget v1, Lcom/transsion/rewardscenter/R$id;->tv_title:I

    invoke-virtual {p2}, Lcom/transsion/rewardscenterapi/DrawResult;->getTitle()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, ""

    :cond_1
    invoke-virtual {p1, v1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    sget v1, Lcom/transsion/rewardscenter/R$id;->tv_count:I

    const-string v2, "x 1"

    invoke-virtual {p1, v1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    sget v1, Lcom/transsion/rewardscenter/R$id;->btn_action:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {p0, p2}, Lcom/transsion/rewardscenter/prize/k;->B(Lcom/transsion/rewardscenterapi/DrawResult;)Lcom/transsion/rewardscenter/prize/PrizeButtonState;

    move-result-object p1

    sget-object v2, Lcom/transsion/rewardscenter/prize/k$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    if-eq v2, v4, :cond_4

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq v2, v4, :cond_3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    sget v2, Lcom/transsion/rewardscenter/R$mipmap;->btn_claim_normal:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    sget v2, Lcom/transsion/rewardscenter/R$string;->prize_btn_Topping:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v2, Lcom/tn/lib/widget/R$color;->white:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_3
    sget v2, Lcom/transsion/rewardscenter/R$mipmap;->btn_claim_done:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    sget v2, Lcom/transsion/rewardscenter/R$string;->prize_btn_claimed:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v2, Lcom/transsion/rewardscenter/R$color;->prize_btn_claimed_text:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_4
    sget v2, Lcom/transsion/rewardscenter/R$mipmap;->btn_claim_normal:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    sget v2, Lcom/transsion/rewardscenter/R$string;->prize_btn_claim:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v2, Lcom/tn/lib/widget/R$color;->white:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    new-instance v4, Lcom/transsion/rewardscenter/prize/j;

    invoke-direct {v4, p1, v0, p0, p2}, Lcom/transsion/rewardscenter/prize/j;-><init>(Lcom/transsion/rewardscenter/prize/PrizeButtonState;Landroid/content/Context;Lcom/transsion/rewardscenter/prize/k;Lcom/transsion/rewardscenterapi/DrawResult;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    invoke-static/range {v1 .. v6}, Ljg/c;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method
