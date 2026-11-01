.class public final Ldl/d;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;


# instance fields
.field private final e:Lcom/transsion/home/adapter/hashtag/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/transsion/home/adapter/hashtag/a$a;)V
    .locals 1

    const-string v0, "callbacks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    iput-object p1, p0, Ldl/d;->e:Lcom/transsion/home/adapter/hashtag/a$a;

    return-void
.end method

.method private static final A(Ldl/d;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Ldl/d;->e:Lcom/transsion/home/adapter/hashtag/a$a;

    invoke-interface {p0, p1}, Lcom/transsion/home/adapter/hashtag/a$a;->b(Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;)V

    return-void
.end method

.method public static synthetic y(Ldl/d;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ldl/d;->A(Ldl/d;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/home/hashtag/model/HashTagItem;

    invoke-virtual {p0, p1, p2}, Ldl/d;->z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/hashtag/model/HashTagItem;)V

    return-void
.end method

.method public l()I
    .locals 1

    sget-object v0, Lcom/transsion/home/hashtag/model/HashTagItemType;->TAGS:Lcom/transsion/home/hashtag/model/HashTagItemType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method public m()I
    .locals 1

    sget v0, Lcom/transsion/home/R$layout;->item_hashtag_tags:I

    return v0
.end method

.method public z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/hashtag/model/HashTagItem;)V
    .locals 10

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/transsion/home/R$id;->hashtag_tags_flow:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tn/lib/view/FlowLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {p2}, Lcom/transsion/home/hashtag/model/HashTagItem;->getTags()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;

    sget v4, Lcom/transsion/home/R$layout;->item_hashtag_chip:I

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    sget v6, Lcom/transsion/home/R$id;->hashtag_chip_text:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/transsion/baseui/widget/GradientTextView;

    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;->getTitle()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;->getTag()Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/transsion/home/hashtag/model/HashTagItem;->getSelectedTags()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_4

    check-cast v7, Ljava/lang/Iterable;

    instance-of v8, v7, Ljava/util/Collection;

    if-eqz v8, :cond_2

    move-object v8, v7

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;

    invoke-virtual {v8}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;->getTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;->getTag()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v5, 0x1

    :cond_4
    :goto_2
    invoke-virtual {v4, v5}, Landroid/view/View;->setSelected(Z)V

    if-eqz v5, :cond_5

    sget v5, Lcom/transsion/home/R$drawable;->bg_hashtag_item_seleted:I

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v5, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v7, Lcom/tn/lib/widget/R$color;->brand_new_gradient_start:I

    invoke-static {v5, v7}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v5

    iget-object v7, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lcom/tn/lib/widget/R$color;->brand_new_gradient_center:I

    invoke-static {v7, v8}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v7

    iget-object v8, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    sget v9, Lcom/tn/lib/widget/R$color;->brand_new_gradient_end:I

    invoke-static {v8, v9}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v8

    invoke-virtual {v6, v5, v7, v8}, Lcom/transsion/baseui/widget/GradientTextView;->setGradientColors(III)V

    goto :goto_3

    :cond_5
    sget v5, Lcom/transsion/home/R$drawable;->bg_hashtag_item_unseleted:I

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v5, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v7, Lcom/tn/lib/widget/R$color;->white_80:I

    invoke-static {v5, v7}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v5

    iget-object v7, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lcom/tn/lib/widget/R$color;->white_80:I

    invoke-static {v7, v8}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v7

    iget-object v8, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    sget v9, Lcom/tn/lib/widget/R$color;->white_80:I

    invoke-static {v8, v9}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v8

    invoke-virtual {v6, v5, v7, v8}, Lcom/transsion/baseui/widget/GradientTextView;->setGradientColors(III)V

    :goto_3
    new-instance v5, Ldl/c;

    invoke-direct {v5, p0, v3}, Ldl/c;-><init>(Ldl/d;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_6
    return-void
.end method
