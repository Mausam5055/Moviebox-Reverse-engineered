.class public final Lcom/transsion/usercenter/me/adapter/h0;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;


# instance fields
.field private final e:Lcom/transsion/usercenter/me/adapter/o;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/transsion/usercenter/me/adapter/h0;-><init>(Lcom/transsion/usercenter/me/adapter/o;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/usercenter/me/adapter/o;)V
    .locals 0

    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    iput-object p1, p0, Lcom/transsion/usercenter/me/adapter/h0;->e:Lcom/transsion/usercenter/me/adapter/o;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/usercenter/me/adapter/o;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/usercenter/me/adapter/h0;-><init>(Lcom/transsion/usercenter/me/adapter/o;)V

    return-void
.end method

.method private static final A(Lcom/transsion/usercenter/profile/bean/ButtonInfo;Lcom/transsion/usercenter/me/adapter/h0;Lcom/transsion/usercenter/profile/bean/MeItemInfo;Landroid/view/View;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/usercenter/profile/bean/ButtonInfo;->getLink()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p3, 0x1

    const/4 v0, 0x0

    invoke-static {p0, v0, p3, v0}, Lak/k;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    sget-object p0, Lcom/transsion/usercenter/me/u;->a:Lcom/transsion/usercenter/me/u;

    const-string p3, "free_buy"

    invoke-virtual {p0, p3}, Lcom/transsion/usercenter/me/u;->b(Ljava/lang/String;)V

    iget-object p0, p1, Lcom/transsion/usercenter/me/adapter/h0;->e:Lcom/transsion/usercenter/me/adapter/o;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/usercenter/me/adapter/o;->Q1()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic y(Lcom/transsion/usercenter/profile/bean/ButtonInfo;Lcom/transsion/usercenter/me/adapter/h0;Lcom/transsion/usercenter/profile/bean/MeItemInfo;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/usercenter/me/adapter/h0;->A(Lcom/transsion/usercenter/profile/bean/ButtonInfo;Lcom/transsion/usercenter/me/adapter/h0;Lcom/transsion/usercenter/profile/bean/MeItemInfo;Landroid/view/View;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/usercenter/profile/bean/MeItemInfo;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/usercenter/me/adapter/h0;->z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/usercenter/profile/bean/MeItemInfo;)V

    return-void
.end method

.method public l()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public m()I
    .locals 1

    sget v0, Lcom/transsion/usercenter/R$layout;->mine_item_vip_layout:I

    return v0
.end method

.method public z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/usercenter/profile/bean/MeItemInfo;)V
    .locals 9

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/transsion/usercenter/profile/bean/MeItemInfo;->getData()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/transsion/usercenter/profile/bean/ZeroInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/transsion/usercenter/profile/bean/ZeroInfo;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/transsion/usercenter/profile/bean/ZeroInfo;->getButton()Lcom/transsion/usercenter/profile/bean/ButtonInfo;

    move-result-object v1

    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const-string v4, "itemView"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Lcom/transsion/usercenter/me/adapter/g0;

    invoke-direct {v6, v1, p0, p2}, Lcom/transsion/usercenter/me/adapter/g0;-><init>(Lcom/transsion/usercenter/profile/bean/ButtonInfo;Lcom/transsion/usercenter/me/adapter/h0;Lcom/transsion/usercenter/profile/bean/MeItemInfo;)V

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-wide/16 v4, 0x0

    invoke-static/range {v3 .. v8}, Ljg/c;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    sget p2, Lcom/transsion/usercenter/R$id;->titleTv:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/transsion/usercenter/profile/bean/ZeroInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget p2, Lcom/transsion/usercenter/R$id;->desTv:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/transsion/usercenter/profile/bean/ZeroInfo;->getSubtitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/transsion/usercenter/profile/bean/ZeroInfo;->getSubtitle()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v3, 0x1

    :goto_2
    const/16 v5, 0x8

    if-nez v3, :cond_4

    move v3, v4

    goto :goto_3

    :cond_4
    move v3, v5

    :goto_3
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    sget-object p2, Lej/f;->a:Lej/f$a;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p2, v3}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object p2

    invoke-virtual {v0}, Lcom/transsion/usercenter/profile/bean/ZeroInfo;->getIconUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object p2

    sget v3, Lcom/tn/lib/widget/R$mipmap;->ic_point_purchase:I

    invoke-virtual {p2, v3}, Lej/f$b;->i(I)Lej/f$b;

    move-result-object p2

    sget v3, Lcom/transsion/usercenter/R$id;->icIV:I

    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {p2, v3}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    sget p2, Lcom/transsion/usercenter/R$id;->btnTv:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    sget v3, Lcom/transsion/usercenter/R$id;->arrowIV:I

    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/transsion/usercenter/profile/bean/ZeroInfo;->getShowButton()Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/transsion/usercenter/profile/bean/ButtonInfo;->getType()Ljava/lang/String;

    move-result-object v2

    :cond_5
    const-string v0, "TEXT"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v1}, Lcom/transsion/usercenter/profile/bean/ButtonInfo;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_6
    const-string p2, "ARROW"

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    :goto_4
    return-void
.end method
