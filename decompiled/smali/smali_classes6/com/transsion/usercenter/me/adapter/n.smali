.class public final Lcom/transsion/usercenter/me/adapter/n;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;


# instance fields
.field private final e:Lcom/transsion/usercenter/me/adapter/o;

.field private f:Lcom/transsion/usercenter/profile/f;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/transsion/usercenter/me/adapter/n;-><init>(Lcom/transsion/usercenter/me/adapter/o;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/usercenter/me/adapter/o;)V
    .locals 0

    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    iput-object p1, p0, Lcom/transsion/usercenter/me/adapter/n;->e:Lcom/transsion/usercenter/me/adapter/o;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/usercenter/me/adapter/o;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/usercenter/me/adapter/n;-><init>(Lcom/transsion/usercenter/me/adapter/o;)V

    return-void
.end method

.method private static final B(Landroid/widget/TextView;Ljava/lang/Integer;)Lkotlin/Unit;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final C(Lcom/transsion/usercenter/me/adapter/n;Lcom/transsion/usercenter/profile/bean/MeItemInfo;Landroid/view/View;)Lkotlin/Unit;
    .locals 3

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lcom/transsion/usercenter/me/u;->a:Lcom/transsion/usercenter/me/u;

    const-string v0, "notice"

    invoke-virtual {p2, v0}, Lcom/transsion/usercenter/me/u;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/transsion/usercenter/message/UserMessageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object p2, p0, Lcom/transsion/usercenter/me/adapter/n;->f:Lcom/transsion/usercenter/profile/f;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/transsion/usercenter/profile/f;->e()V

    :cond_0
    iget-object p0, p0, Lcom/transsion/usercenter/me/adapter/n;->e:Lcom/transsion/usercenter/me/adapter/o;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/usercenter/me/adapter/o;->Q1()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic y(Landroid/widget/TextView;Ljava/lang/Integer;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/usercenter/me/adapter/n;->B(Landroid/widget/TextView;Ljava/lang/Integer;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic z(Lcom/transsion/usercenter/me/adapter/n;Lcom/transsion/usercenter/profile/bean/MeItemInfo;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/usercenter/me/adapter/n;->C(Lcom/transsion/usercenter/me/adapter/n;Lcom/transsion/usercenter/profile/bean/MeItemInfo;Landroid/view/View;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/usercenter/profile/bean/MeItemInfo;)V
    .locals 8

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Lcom/transsion/baseui/activity/BaseActivity;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/transsion/baseui/activity/BaseActivity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    sget v1, Lcom/transsion/usercenter/R$id;->desTv:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/usercenter/me/adapter/n;->f:Lcom/transsion/usercenter/profile/f;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/transsion/usercenter/profile/f;->h()Landroidx/lifecycle/b0;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v3, Lcom/transsion/usercenter/me/adapter/l;

    invoke-direct {v3, v1}, Lcom/transsion/usercenter/me/adapter/l;-><init>(Landroid/widget/TextView;)V

    new-instance v1, Lcom/transsion/usercenter/me/adapter/n$a;

    invoke-direct {v1, v3}, Lcom/transsion/usercenter/me/adapter/n$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v2, v0, v1}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    :cond_1
    sget v0, Lcom/transsion/usercenter/R$id;->titleTv:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/transsion/usercenter/R$string;->messages_title_name:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const-string v0, "itemView"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lcom/transsion/usercenter/me/adapter/m;

    invoke-direct {v5, p0, p2}, Lcom/transsion/usercenter/me/adapter/m;-><init>(Lcom/transsion/usercenter/me/adapter/n;Lcom/transsion/usercenter/profile/bean/MeItemInfo;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-wide/16 v3, 0x0

    invoke-static/range {v2 .. v7}, Ljg/c;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    sget p2, Lcom/transsion/usercenter/R$id;->divider:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/usercenter/profile/bean/MeItemInfo;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/usercenter/me/adapter/n;->A(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/usercenter/profile/bean/MeItemInfo;)V

    return-void
.end method

.method public l()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public m()I
    .locals 1

    sget v0, Lcom/transsion/usercenter/R$layout;->message_item_icon_layout:I

    return v0
.end method

.method public v(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V
    .locals 4

    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->v(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V

    sget p2, Lcom/transsion/usercenter/R$id;->desTv:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const/high16 v0, 0x41300000    # 11.0f

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v0, 0x4

    invoke-static {v0}, Ldk/a;->b(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2}, Ldk/a;->b(I)I

    move-result v3

    invoke-static {v0}, Ldk/a;->b(I)I

    move-result v0

    invoke-static {v2}, Ldk/a;->b(I)I

    move-result v2

    invoke-virtual {p2, v1, v3, v0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/tn/lib/widget/R$color;->white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    sget v0, Lcom/transsion/baseui/R$drawable;->bg_red_r7:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    sget p2, Lcom/transsion/usercenter/R$id;->bgView:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    sget v0, Lcom/tn/lib/widget/R$color;->white_6:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    sget p2, Lcom/transsion/usercenter/R$id;->icIV:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    sget p2, Lcom/tn/lib/widget/R$drawable;->ic_me_message:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object p1

    instance-of p2, p1, Lcom/transsion/baseui/activity/BaseActivity;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/transsion/baseui/activity/BaseActivity;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    new-instance p2, Landroidx/lifecycle/v0;

    invoke-direct {p2, p1}, Landroidx/lifecycle/v0;-><init>(Landroidx/lifecycle/y0;)V

    const-class p1, Lcom/transsion/usercenter/profile/f;

    invoke-virtual {p2, p1}, Landroidx/lifecycle/v0;->a(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object p1

    check-cast p1, Lcom/transsion/usercenter/profile/f;

    iput-object p1, p0, Lcom/transsion/usercenter/me/adapter/n;->f:Lcom/transsion/usercenter/profile/f;

    :cond_1
    return-void
.end method
