.class final Lcom/transsion/moviedetail/adapter/ForYouSubjectProvider;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;


# instance fields
.field private final e:Lcom/transsion/moviedetailapi/bean/Subject;

.field private final f:I

.field private final g:I

.field private final h:F

.field private final i:F


# direct methods
.method public constructor <init>(Lcom/transsion/moviedetailapi/bean/Subject;I)V
    .locals 1

    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    iput-object p1, p0, Lcom/transsion/moviedetail/adapter/ForYouSubjectProvider;->e:Lcom/transsion/moviedetailapi/bean/Subject;

    iput p2, p0, Lcom/transsion/moviedetail/adapter/ForYouSubjectProvider;->f:I

    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    move-result p1

    iput p1, p0, Lcom/transsion/moviedetail/adapter/ForYouSubjectProvider;->g:I

    add-int/lit8 v0, p2, -0x1

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x18

    int-to-float v0, v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Lcom/transsion/moviedetail/adapter/ForYouSubjectProvider;->h:F

    const/high16 p2, 0x43150000    # 149.0f

    mul-float/2addr p1, p2

    const/high16 p2, 0x42d60000    # 107.0f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/transsion/moviedetail/adapter/ForYouSubjectProvider;->i:F

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/moviedetailapi/bean/Subject;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/moviedetail/adapter/ForYouSubjectProvider;->y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/Subject;)V

    return-void
.end method

.method public l()I
    .locals 1

    const/16 v0, 0x3ea

    return v0
.end method

.method public m()I
    .locals 2

    iget-object v0, p0, Lcom/transsion/moviedetail/adapter/ForYouSubjectProvider;->e:Lcom/transsion/moviedetailapi/bean/Subject;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/transsion/moviedetailapi/SubjectType;->MUSIC:Lcom/transsion/moviedetailapi/SubjectType;

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    move-result v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_1

    sget v0, Lcom/transsion/moviedetail/R$layout;->movie_detail_item_for_you_hor:I

    goto :goto_2

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/moviedetail/adapter/ForYouSubjectProvider;->e:Lcom/transsion/moviedetailapi/bean/Subject;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getStyle()Lcom/transsion/moviedetailapi/bean/LayoutStyle;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/LayoutStyle;->getShape()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lcom/transsion/moviedetailapi/SubjectLayoutStyle;->Horizontal:Lcom/transsion/moviedetailapi/SubjectLayoutStyle;

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/SubjectLayoutStyle;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget v0, Lcom/transsion/moviedetail/R$layout;->movie_detail_item_for_you_hor:I

    goto :goto_2

    :cond_3
    sget-object v1, Lcom/transsion/moviedetailapi/SubjectLayoutStyle;->Square:Lcom/transsion/moviedetailapi/SubjectLayoutStyle;

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/SubjectLayoutStyle;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Lcom/transsion/moviedetail/R$layout;->movie_detail_item_for_you_square:I

    goto :goto_2

    :cond_4
    sget v0, Lcom/transsion/moviedetail/R$layout;->movie_detail_item_for_you:I

    :goto_2
    return v0
.end method

.method public y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/Subject;)V
    .locals 10

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->c(Z)V

    :cond_0
    sget v0, Lcom/transsion/moviedetail/R$id;->iv_cover:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/imageview/ShapeableImageView;

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getBuiltIn()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v4

    new-instance v7, Lcom/transsion/moviedetail/adapter/ForYouSubjectProvider$convert$1$1;

    invoke-direct {v7, p2, v0, v3}, Lcom/transsion/moviedetail/adapter/ForYouSubjectProvider$convert$1$1;-><init>(Lcom/transsion/moviedetailapi/bean/Subject;Lcom/google/android/material/imageview/ShapeableImageView;Lkotlin/coroutines/Continuation;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    goto :goto_0

    :cond_1
    sget-object v1, Lej/f;->a:Lej/f$a;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "getContext(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object v1

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    move-result-object v3

    :cond_2
    invoke-virtual {v1, v3}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object v1

    iget v3, p0, Lcom/transsion/moviedetail/adapter/ForYouSubjectProvider;->h:F

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Lej/f$b;->m(I)Lej/f$b;

    move-result-object v1

    iget v3, p0, Lcom/transsion/moviedetail/adapter/ForYouSubjectProvider;->i:F

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Lej/f$b;->c(I)Lej/f$b;

    move-result-object v1

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    :cond_3
    const-string v3, ""

    :cond_4
    invoke-virtual {v1, v3}, Lej/f$b;->l(Ljava/lang/String;)Lej/f$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    :cond_5
    :goto_0
    sget v0, Lcom/transsion/moviedetail/R$id;->tv_title:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    sget v0, Lcom/transsion/moviedetail/R$id;->tv_for_you_corner:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCorner()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCorner()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_7

    goto :goto_1

    :cond_7
    move p2, v2

    goto :goto_2

    :cond_8
    :goto_1
    const/4 p2, 0x1

    :goto_2
    if-nez p2, :cond_9

    goto :goto_3

    :cond_9
    const/16 v2, 0x8

    :goto_3
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
