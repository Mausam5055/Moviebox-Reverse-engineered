.class public final Lcom/transsion/usercenter/me/adapter/u;
.super Lcom/transsion/baseui/adapter/BaseItemBindingProvider;


# instance fields
.field private final g:Lcom/transsion/usercenter/me/adapter/o;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/transsion/usercenter/me/adapter/u;-><init>(Lcom/transsion/usercenter/me/adapter/o;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/usercenter/me/adapter/o;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/baseui/adapter/BaseItemBindingProvider;-><init>()V

    iput-object p1, p0, Lcom/transsion/usercenter/me/adapter/u;->g:Lcom/transsion/usercenter/me/adapter/o;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/usercenter/me/adapter/o;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/usercenter/me/adapter/u;-><init>(Lcom/transsion/usercenter/me/adapter/o;)V

    return-void
.end method

.method public static synthetic A(Lcom/transsion/usercenter/profile/bean/MineNovelItem;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/usercenter/me/adapter/u;->D(Lcom/transsion/usercenter/profile/bean/MineNovelItem;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic B(Lcom/transsion/usercenter/profile/bean/MineNovel;Lcom/transsion/usercenter/me/adapter/u;Lcom/transsion/usercenter/profile/bean/MeItemInfo;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/usercenter/me/adapter/u;->G(Lcom/transsion/usercenter/profile/bean/MineNovel;Lcom/transsion/usercenter/me/adapter/u;Lcom/transsion/usercenter/profile/bean/MeItemInfo;Landroid/view/View;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final C(Lfw/z0;Lcom/transsion/usercenter/profile/bean/MineNovelItem;I)V
    .locals 8

    invoke-virtual {p1}, Lfw/z0;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x14

    invoke-static {v3}, Ldk/a;->b(I)I

    move-result v4

    invoke-static {v3}, Ldk/a;->b(I)I

    move-result v5

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq p3, v5, :cond_1

    if-eq p3, v4, :cond_0

    sget v6, Lcom/tn/lib/widget/R$mipmap;->ic_mine_novel_library:I

    goto :goto_0

    :cond_0
    sget v6, Lcom/tn/lib/widget/R$mipmap;->ic_mine_novel_download:I

    goto :goto_0

    :cond_1
    sget v6, Lcom/tn/lib/widget/R$mipmap;->ic_mine_novel_history:I

    :goto_0
    invoke-virtual {p2}, Lcom/transsion/usercenter/profile/bean/MineNovelItem;->getIcUrl()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    sget-object v6, Lej/f;->a:Lej/f$a;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v6, v0}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object v6

    invoke-virtual {p2}, Lcom/transsion/usercenter/profile/bean/MineNovelItem;->getIcUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object v6

    invoke-static {v3}, Ldk/a;->b(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lej/f$b;->m(I)Lej/f$b;

    move-result-object v6

    invoke-static {v3}, Ldk/a;->b(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lej/f$b;->c(I)Lej/f$b;

    move-result-object v3

    invoke-virtual {v3, v1}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    new-instance v3, Lcom/tn/lib/widget/TnTextView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {v3, v0}, Lcom/tn/lib/widget/TnTextView;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Ljg/a;->d(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v6, 0x41400000    # 12.0f

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextSize(F)V

    sget v6, Lcom/tn/lib/widget/R$color;->white_80:I

    invoke-static {v0, v6}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    if-eq p3, v5, :cond_5

    if-eq p3, v4, :cond_4

    sget v4, Lcom/transsion/baseui/R$string;->Library:I

    goto :goto_3

    :cond_4
    sget v4, Lcom/transsion/baseui/R$string;->Downloads:I

    goto :goto_3

    :cond_5
    sget v4, Lcom/transsion/baseui/R$string;->History:I

    :goto_3
    invoke-virtual {p2}, Lcom/transsion/usercenter/profile/bean/MineNovelItem;->getTitle()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {p2}, Lcom/transsion/usercenter/profile/bean/MineNovelItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_7
    :goto_4
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v4, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v6, 0x4

    invoke-static {v6}, Ldk/a;->b(I)I

    move-result v6

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v6, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x11

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v0, Lcom/transsion/usercenter/me/adapter/t;

    invoke-direct {v0, p2, p3}, Lcom/transsion/usercenter/me/adapter/t;-><init>(Lcom/transsion/usercenter/profile/bean/MineNovelItem;I)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p3, 0x0

    const/4 v0, -0x1

    invoke-direct {p2, p3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 p3, 0x3f800000    # 1.0f

    iput p3, p2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object p1, p1, Lfw/z0;->e:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v6, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private static final D(Lcom/transsion/usercenter/profile/bean/MineNovelItem;ILandroid/view/View;)V
    .locals 3

    sget-object p2, Lcom/transsion/usercenter/me/u;->a:Lcom/transsion/usercenter/me/u;

    invoke-virtual {p0}, Lcom/transsion/usercenter/profile/bean/MineNovelItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "novel_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/transsion/usercenter/me/u;->c(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/transsion/usercenter/profile/bean/MineNovelItem;->getDeeplink()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-static {p0, p2, p1, p2}, Lak/k;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private final E(Lfw/z0;Lcom/transsion/usercenter/profile/bean/MineNovel;)V
    .locals 8

    invoke-virtual {p2}, Lcom/transsion/usercenter/profile/bean/MineNovel;->getSubItems()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    const-string v1, "llBottom"

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v0, p1, Lfw/z0;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p1, Lfw/z0;->e:Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljg/c;->k(Landroid/view/View;)V

    invoke-virtual {p2}, Lcom/transsion/usercenter/profile/bean/MineNovel;->getSubItems()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_4

    check-cast p2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/transsion/usercenter/profile/bean/MineNovelItem;

    invoke-virtual {v5}, Lcom/transsion/usercenter/profile/bean/MineNovelItem;->getDeeplink()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    move v5, v0

    goto :goto_2

    :cond_3
    :goto_1
    move v5, v2

    :goto_2
    if-nez v5, :cond_1

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :cond_5
    if-eqz v3, :cond_9

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_4

    :cond_6
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result p2

    :goto_3
    if-ge v0, p2, :cond_8

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/usercenter/profile/bean/MineNovelItem;

    invoke-direct {p0, p1, v1, v0}, Lcom/transsion/usercenter/me/adapter/u;->C(Lfw/z0;Lcom/transsion/usercenter/profile/bean/MineNovelItem;I)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_7

    iget-object v1, p1, Lfw/z0;->e:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/view/View;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v6, 0x8

    invoke-static {v6}, Ldk/a;->b(I)I

    move-result v6

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    return-void

    :cond_9
    :goto_4
    iget-object p1, p1, Lfw/z0;->e:Landroid/widget/LinearLayout;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljg/c;->g(Landroid/view/View;)V

    return-void

    :cond_a
    :goto_5
    iget-object p1, p1, Lfw/z0;->e:Landroid/widget/LinearLayout;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljg/c;->g(Landroid/view/View;)V

    return-void
.end method

.method private static final G(Lcom/transsion/usercenter/profile/bean/MineNovel;Lcom/transsion/usercenter/me/adapter/u;Lcom/transsion/usercenter/profile/bean/MeItemInfo;Landroid/view/View;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p3, Lcom/transsion/usercenter/me/u;->a:Lcom/transsion/usercenter/me/u;

    const-string v0, "novel"

    invoke-virtual {p3, v0}, Lcom/transsion/usercenter/me/u;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/usercenter/profile/bean/MineNovel;->getDeeplink()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p3, 0x1

    const/4 v0, 0x0

    invoke-static {p0, v0, p3, v0}, Lak/k;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    iget-object p0, p1, Lcom/transsion/usercenter/me/adapter/u;->g:Lcom/transsion/usercenter/me/adapter/o;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/usercenter/me/adapter/o;->Q1()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public F(Lfw/z0;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/usercenter/profile/bean/MeItemInfo;)V
    .locals 9

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "helper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/transsion/usercenter/profile/bean/MeItemInfo;->getData()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/transsion/usercenter/profile/bean/MineNovel;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/transsion/usercenter/profile/bean/MineNovel;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    sget-object v1, Lcom/transsion/usercenter/me/u;->a:Lcom/transsion/usercenter/me/u;

    const-string v2, "novel"

    invoke-virtual {v1, v2}, Lcom/transsion/usercenter/me/u;->a(Ljava/lang/String;)V

    iget-object v3, p2, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const-string p2, "itemView"

    invoke-static {v3, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Lcom/transsion/usercenter/me/adapter/s;

    invoke-direct {v6, v0, p0, p3}, Lcom/transsion/usercenter/me/adapter/s;-><init>(Lcom/transsion/usercenter/profile/bean/MineNovel;Lcom/transsion/usercenter/me/adapter/u;Lcom/transsion/usercenter/profile/bean/MeItemInfo;)V

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-wide/16 v4, 0x0

    invoke-static/range {v3 .. v8}, Ljg/c;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    iget-object p2, p1, Lfw/z0;->f:Lcom/tn/lib/widget/TnTextView;

    invoke-virtual {v0}, Lcom/transsion/usercenter/profile/bean/MineNovel;->getTitle()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Lfw/z0;->c:Landroidx/appcompat/widget/AppCompatTextView;

    const-string p3, "desTv"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/transsion/usercenter/profile/bean/MineNovel;->getDes()Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x0

    if-eqz p3, :cond_3

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    move p3, v1

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p3, 0x1

    :goto_2
    if-nez p3, :cond_4

    goto :goto_3

    :cond_4
    const/16 v1, 0x8

    :goto_3
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p1, Lfw/z0;->c:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Lcom/transsion/usercenter/profile/bean/MineNovel;->getDes()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/transsion/usercenter/profile/bean/MineNovel;->getButtonText()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_5

    goto :goto_4

    :cond_5
    iget-object p2, p1, Lfw/z0;->b:Lcom/tn/lib/widget/TnTextView;

    invoke-virtual {v0}, Lcom/transsion/usercenter/profile/bean/MineNovel;->getButtonText()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_4
    invoke-virtual {v0}, Lcom/transsion/usercenter/profile/bean/MineNovel;->getIcUrl()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_7

    goto :goto_5

    :cond_7
    sget-object p2, Lej/f;->a:Lej/f$a;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p2, p3}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object p2

    invoke-virtual {v0}, Lcom/transsion/usercenter/profile/bean/MineNovel;->getIcUrl()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p2, p3}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object p2

    const/16 p3, 0x14

    invoke-static {p3}, Ldk/a;->b(I)I

    move-result v1

    invoke-virtual {p2, v1}, Lej/f$b;->m(I)Lej/f$b;

    move-result-object p2

    invoke-static {p3}, Ldk/a;->b(I)I

    move-result p3

    invoke-virtual {p2, p3}, Lej/f$b;->c(I)Lej/f$b;

    move-result-object p2

    iget-object p3, p1, Lfw/z0;->d:Landroid/widget/ImageView;

    const-string v1, "icIV"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    goto :goto_6

    :cond_8
    :goto_5
    iget-object p2, p1, Lfw/z0;->d:Landroid/widget/ImageView;

    sget p3, Lcom/tn/lib/widget/R$mipmap;->ic_mine_novel:I

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_6
    invoke-direct {p0, p1, v0}, Lcom/transsion/usercenter/me/adapter/u;->E(Lfw/z0;Lcom/transsion/usercenter/profile/bean/MineNovel;)V

    return-void
.end method

.method public H(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lfw/z0;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "parent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lfw/z0;->c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfw/z0;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public l()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public bridge synthetic y(Lg4/a;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lfw/z0;

    check-cast p3, Lcom/transsion/usercenter/profile/bean/MeItemInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/usercenter/me/adapter/u;->F(Lfw/z0;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/usercenter/profile/bean/MeItemInfo;)V

    return-void
.end method

.method public bridge synthetic z(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lg4/a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/usercenter/me/adapter/u;->H(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lfw/z0;

    move-result-object p1

    return-object p1
.end method
