.class public final Lcom/transsion/rewardscenter/prize/b;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/rewardscenter/prize/b$a;
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

    iput-object p1, p0, Lcom/transsion/rewardscenter/prize/b;->e:Lwp/a;

    return-void
.end method

.method private static final A(ZLandroid/content/Context;Lcom/transsion/rewardscenter/prize/b;ZLandroid/view/View;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "getString(...)"

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    sget-object p0, Lnh/m;->a:Lnh/m;

    invoke-virtual {p0}, Lnh/m;->e()Z

    move-result p0

    if-nez p0, :cond_0

    sget p0, Lcom/tn/lib/widget/R$string;->no_network_toast:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/transsion/rewardscenter/utils/p;->a(ZLjava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p2, Lcom/transsion/rewardscenter/prize/b;->e:Lwp/a;

    invoke-virtual {p0}, Lwp/a;->c()Lcom/transsion/rewardscenter/model/RewardsCenterModel;

    move-result-object p0

    const/4 p1, 0x0

    const/4 p3, 0x1

    invoke-static {p0, p1, p3, p3, p1}, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->h(Lcom/transsion/rewardscenter/model/RewardsCenterModel;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct {p2}, Lcom/transsion/rewardscenter/prize/b;->D()V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    sget p0, Lcom/transsion/rewardscenter/R$string;->prize_limit_tips:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/transsion/rewardscenter/utils/p;->a(ZLjava/lang/String;)V

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final D()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "source"

    const-string v2, "draw_chance"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "prize_list"

    invoke-static {v1, v0}, Lcom/transsion/rewardscenter/utils/q;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic y(ZLandroid/content/Context;Lcom/transsion/rewardscenter/prize/b;ZLandroid/view/View;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/rewardscenter/prize/b;->A(ZLandroid/content/Context;Lcom/transsion/rewardscenter/prize/b;ZLandroid/view/View;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final B(Lcom/transsion/rewardscenterapi/DrawChance;)Z
    .locals 1

    const-string v0, "drawChance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/rewardscenterapi/DrawChance;->getRemain()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/transsion/rewardscenterapi/DrawChance;->getTodayRemain()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final C(Lcom/transsion/rewardscenterapi/DrawChance;)Z
    .locals 1

    const-string v0, "drawChance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/rewardscenterapi/DrawChance;->getTodayRemain()I

    move-result p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/rewardscenter/prize/e;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/rewardscenter/prize/b;->z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/rewardscenter/prize/e;)V

    return-void
.end method

.method public l()I
    .locals 1

    sget-object v0, Lcom/transsion/rewardscenter/prize/PrizeItemType;->DRAW_CHANCE:Lcom/transsion/rewardscenter/prize/PrizeItemType;

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

    instance-of v0, p2, Lcom/transsion/rewardscenter/prize/e$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p2, Lcom/transsion/rewardscenter/prize/e$a;

    invoke-virtual {p2}, Lcom/transsion/rewardscenter/prize/e$a;->a()Lcom/transsion/rewardscenterapi/DrawChance;

    move-result-object p2

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lej/f;->a:Lej/f$a;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object v1

    invoke-virtual {p2}, Lcom/transsion/rewardscenterapi/DrawChance;->getImgUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object v1

    sget v2, Lcom/transsion/rewardscenter/R$id;->icon:I

    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    sget v1, Lcom/transsion/rewardscenter/R$id;->tv_title:I

    invoke-virtual {p2}, Lcom/transsion/rewardscenterapi/DrawChance;->getTitle()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, ""

    :cond_1
    invoke-virtual {p1, v1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    sget v1, Lcom/transsion/rewardscenter/R$id;->tv_count:I

    invoke-virtual {p2}, Lcom/transsion/rewardscenterapi/DrawChance;->getRemain()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "x "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    sget v1, Lcom/transsion/rewardscenter/R$id;->btn_action:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Lcom/transsion/rewardscenter/prize/b;->B(Lcom/transsion/rewardscenterapi/DrawChance;)Z

    move-result p1

    invoke-virtual {p0, p2}, Lcom/transsion/rewardscenter/prize/b;->C(Lcom/transsion/rewardscenterapi/DrawChance;)Z

    move-result p2

    if-eqz p1, :cond_2

    sget-object v2, Lcom/transsion/rewardscenter/prize/PrizeButtonState;->ACTIVE:Lcom/transsion/rewardscenter/prize/PrizeButtonState;

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/transsion/rewardscenter/prize/PrizeButtonState;->CLAIMED:Lcom/transsion/rewardscenter/prize/PrizeButtonState;

    :goto_0
    if-eqz p1, :cond_3

    sget v3, Lcom/transsion/rewardscenter/R$string;->prize_btn_claim:I

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    sget v3, Lcom/transsion/rewardscenter/R$string;->prize_btn_limit:I

    goto :goto_1

    :cond_4
    sget v3, Lcom/transsion/rewardscenter/R$string;->prize_btn_claimed:I

    :goto_1
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v3, Lcom/transsion/rewardscenter/prize/b$a;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_6

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5

    goto :goto_2

    :cond_5
    sget v2, Lcom/transsion/rewardscenter/R$mipmap;->btn_claim_done:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    sget v2, Lcom/transsion/rewardscenter/R$color;->prize_btn_claimed_text:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_2

    :cond_6
    sget v2, Lcom/transsion/rewardscenter/R$mipmap;->btn_claim_normal:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    sget v2, Lcom/tn/lib/widget/R$color;->white:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_2
    new-instance v4, Lcom/transsion/rewardscenter/prize/a;

    invoke-direct {v4, p1, v0, p0, p2}, Lcom/transsion/rewardscenter/prize/a;-><init>(ZLandroid/content/Context;Lcom/transsion/rewardscenter/prize/b;Z)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    invoke-static/range {v1 .. v6}, Ljg/c;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method
