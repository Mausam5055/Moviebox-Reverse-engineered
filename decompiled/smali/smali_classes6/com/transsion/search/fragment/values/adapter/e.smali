.class public final Lcom/transsion/search/fragment/values/adapter/e;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;


# instance fields
.field private final e:I

.field private final f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    const/high16 v0, 0x42900000    # 72.0f

    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v0

    iput v0, p0, Lcom/transsion/search/fragment/values/adapter/e;->e:I

    const/high16 v0, 0x42c00000    # 96.0f

    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v0

    iput v0, p0, Lcom/transsion/search/fragment/values/adapter/e;->f:I

    return-void
.end method

.method private final z()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->g()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    move-result-object v0

    instance-of v1, v0, Lcom/transsion/search/fragment/values/adapter/b;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/transsion/search/fragment/values/adapter/b;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/search/fragment/values/adapter/b;->Q1()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, ""

    :cond_2
    return-object v0
.end method


# virtual methods
.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/search/bean/SearchValuesRelatedCollectionEntity;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/search/fragment/values/adapter/e;->y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/search/bean/SearchValuesRelatedCollectionEntity;)V

    return-void
.end method

.method public l()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public m()I
    .locals 1

    sget v0, Lcom/transsion/search/R$layout;->item_search_values_vertical_rank_layout:I

    return v0
.end method

.method public y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/search/bean/SearchValuesRelatedCollectionEntity;)V
    .locals 12

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/transsion/search/R$id;->tvTitle:I

    sget-object v1, Lcom/transsion/search/fragment/suggest/d;->H:Lcom/transsion/search/fragment/suggest/d$a;

    invoke-direct {p0}, Lcom/transsion/search/fragment/values/adapter/e;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/transsion/search/bean/SearchValuesRelatedCollectionEntity;->getVerticalRank()Lcom/transsion/search/bean/VerticalRank;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/transsion/search/bean/VerticalRank;->getTitle()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    invoke-virtual {v1, v2, v3}, Lcom/transsion/search/fragment/suggest/d$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    sget v0, Lcom/transsion/search/R$id;->tvSubTitle:I

    invoke-virtual {p2}, Lcom/transsion/search/bean/SearchValuesRelatedCollectionEntity;->getVerticalRank()Lcom/transsion/search/bean/VerticalRank;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsion/search/bean/VerticalRank;->getDescription()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v4

    :goto_1
    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    sget v0, Lcom/transsion/search/R$id;->ivCover:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/imageview/ShapeableImageView;

    sget-object v1, Lej/f;->a:Lej/f$a;

    invoke-virtual {p2}, Lcom/transsion/search/bean/SearchValuesRelatedCollectionEntity;->getVerticalRank()Lcom/transsion/search/bean/VerticalRank;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/transsion/search/bean/VerticalRank;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_3

    :cond_2
    :goto_2
    move-object v6, v2

    goto :goto_4

    :cond_3
    :goto_3
    const-string v2, ""

    goto :goto_2

    :goto_4
    iget v7, p0, Lcom/transsion/search/fragment/values/adapter/e;->e:I

    const/16 v10, 0xc

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, v1

    invoke-static/range {v5 .. v11}, Lej/f$a;->e(Lej/f$a;Ljava/lang/String;IZZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object v1

    invoke-virtual {v1, v2}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    sget-object v5, Lcom/transsion/search/fragment/values/SearchValuesFragment;->j:Lcom/transsion/search/fragment/values/SearchValuesFragment$a;

    invoke-virtual {p2}, Lcom/transsion/search/bean/SearchValuesRelatedCollectionEntity;->getStaff()Lcom/transsion/moviedetailapi/bean/Staff;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Staff;->getStaffId()Ljava/lang/String;

    move-result-object v4

    :cond_4
    move-object v8, v4

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapterPosition()I

    move-result v10

    const/4 v11, 0x1

    const-string v6, ""

    const-string v7, ""

    const-string v9, ""

    invoke-virtual/range {v5 .. v11}, Lcom/transsion/search/fragment/values/SearchValuesFragment$a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method
