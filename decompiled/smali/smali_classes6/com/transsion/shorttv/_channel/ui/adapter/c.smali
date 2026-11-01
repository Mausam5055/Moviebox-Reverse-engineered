.class public final Lcom/transsion/shorttv/_channel/ui/adapter/c;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;

# interfaces
.implements Lr6/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lr6/i;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0012\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B1\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0005\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u001f\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0017\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0017\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0015R\u0016\u0010\u0008\u001a\u0004\u0018\u00010\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R$\u0010\n\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u0017\u0010\u000c\u001a\u00020\u000b8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"\u00a8\u0006#"
    }
    d2 = {
        "Lcom/transsion/shorttv/_channel/ui/adapter/c;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/transsion/shorttv/_channel/model/ShortTvMovieItem;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "Lr6/i;",
        "",
        "dataList",
        "Lxr/b;",
        "listExposureHelper",
        "Lcom/transsion/shorttv/_channel/model/ShortTvLayoutStyle;",
        "style",
        "",
        "rowCount",
        "<init>",
        "(Ljava/util/List;Lxr/b;Lcom/transsion/shorttv/_channel/model/ShortTvLayoutStyle;I)V",
        "holder",
        "item",
        "",
        "B1",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv/_channel/model/ShortTvMovieItem;)V",
        "B0",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V",
        "E1",
        "F",
        "Lxr/b;",
        "G",
        "Lcom/transsion/shorttv/_channel/model/ShortTvLayoutStyle;",
        "D1",
        "()Lcom/transsion/shorttv/_channel/model/ShortTvLayoutStyle;",
        "F1",
        "(Lcom/transsion/shorttv/_channel/model/ShortTvLayoutStyle;)V",
        "H",
        "I",
        "C1",
        "()I",
        "shortTvLib_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final F:Lxr/b;

.field private G:Lcom/transsion/shorttv/_channel/model/ShortTvLayoutStyle;

.field private final H:I


# direct methods
.method public constructor <init>(Ljava/util/List;Lxr/b;Lcom/transsion/shorttv/_channel/model/ShortTvLayoutStyle;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/shorttv/_channel/model/ShortTvMovieItem;",
            ">;",
            "Lxr/b;",
            "Lcom/transsion/shorttv/_channel/model/ShortTvLayoutStyle;",
            "I)V"
        }
    .end annotation

    const-string v0, "dataList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/transsion/shorttv/R$layout;->short_tv_home_adapter_movie:I

    invoke-direct {p0, v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    iput-object p2, p0, Lcom/transsion/shorttv/_channel/ui/adapter/c;->F:Lxr/b;

    iput-object p3, p0, Lcom/transsion/shorttv/_channel/ui/adapter/c;->G:Lcom/transsion/shorttv/_channel/model/ShortTvLayoutStyle;

    iput p4, p0, Lcom/transsion/shorttv/_channel/ui/adapter/c;->H:I

    return-void
.end method


# virtual methods
.method public B0(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 8

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->B0(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapterPosition()I

    move-result v3

    iget-object v1, p0, Lcom/transsion/shorttv/_channel/ui/adapter/c;->F:Lxr/b;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type androidx.recyclerview.widget.GridLayoutManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p1

    check-cast v2, Landroidx/recyclerview/widget/GridLayoutManager;

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lxr/b;->h(Lxr/b;Landroidx/recyclerview/widget/LinearLayoutManager;IZZILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected B1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv/_channel/model/ShortTvMovieItem;)V
    .locals 9

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v0, 0x42d60000    # 107.0f

    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v0

    const/high16 v1, 0x43150000    # 149.0f

    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v1

    iget v2, p0, Lcom/transsion/shorttv/_channel/ui/adapter/c;->H:I

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    const/high16 v3, 0x41000000    # 8.0f

    mul-float/2addr v2, v3

    const/high16 v4, 0x41c00000    # 24.0f

    add-float/2addr v2, v4

    invoke-static {v2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v2

    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    move-result v5

    sub-int v2, v5, v2

    iget v6, p0, Lcom/transsion/shorttv/_channel/ui/adapter/c;->H:I

    div-int/2addr v2, v6

    int-to-float v7, v2

    int-to-float v1, v1

    const/high16 v8, 0x3f800000    # 1.0f

    mul-float/2addr v1, v8

    int-to-float v0, v0

    div-float/2addr v1, v0

    mul-float/2addr v7, v1

    float-to-int v0, v7

    add-int/lit8 v6, v6, -0x1

    int-to-float v1, v6

    mul-float/2addr v1, v3

    add-float/2addr v1, v4

    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v1

    const/high16 v3, 0x42da0000    # 109.0f

    invoke-static {v3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    invoke-static {v3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    sub-int/2addr v5, v1

    iget v1, p0, Lcom/transsion/shorttv/_channel/ui/adapter/c;->H:I

    div-int v1, v5, v1

    const/high16 v3, 0x43240000    # 164.0f

    invoke-static {v3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v3

    const/high16 v4, 0x42b80000    # 92.0f

    invoke-static {v4}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v4

    iget v6, p0, Lcom/transsion/shorttv/_channel/ui/adapter/c;->H:I

    div-int/2addr v5, v6

    int-to-float v6, v5

    int-to-float v4, v4

    mul-float/2addr v4, v8

    int-to-float v3, v3

    div-float/2addr v4, v3

    mul-float/2addr v6, v4

    float-to-int v3, v6

    invoke-virtual {p2}, Lcom/transsion/shorttv/_channel/model/ShortTvMovieItem;->getNonAdDelegate()Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    move-result-object v4

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v4, :cond_3

    sget-object v0, Lor/a;->a:Lor/a;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2}, Lcom/transsion/shorttv/_channel/model/ShortTvMovieItem;->getNonAdDelegate()Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v8

    :goto_0
    invoke-virtual {v0, v1, v2}, Lor/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/transsion/ad/bidding/base/r;

    move-result-object v0

    sget v1, Lcom/transsion/shorttv/R$id;->nativeView:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Lcom/transsion/shorttv/_channel/model/ShortTvMovieItem;->getNonAdDelegate()Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    move-result-object v2

    invoke-virtual {p2}, Lcom/transsion/shorttv/_channel/model/ShortTvMovieItem;->getNonAdDelegate()Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->n0()Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    move-result-object v8

    :cond_1
    invoke-virtual {v1, v2, v0, v8}, Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;->bindNativeView(Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    :cond_2
    sget p2, Lcom/transsion/shorttv/R$id;->nativeView:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    invoke-virtual {p2, v7}, Landroid/view/View;->setVisibility(I)V

    sget p2, Lcom/transsion/shorttv/R$id;->group:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/Group;

    invoke-virtual {p1, v6}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    return-void

    :cond_3
    sget v4, Lcom/transsion/shorttv/R$id;->nativeView:I

    invoke-virtual {p1, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    sget v4, Lcom/transsion/shorttv/R$id;->group:I

    invoke-virtual {p1, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v4, v7}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    sget v4, Lcom/transsion/shorttv/R$id;->iv_cover:I

    invoke-virtual {p1, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/imageview/ShapeableImageView;

    iget-object v6, p0, Lcom/transsion/shorttv/_channel/ui/adapter/c;->G:Lcom/transsion/shorttv/_channel/model/ShortTvLayoutStyle;

    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/transsion/shorttv/_channel/model/ShortTvLayoutStyle;->getShape()Ljava/lang/String;

    move-result-object v8

    :cond_5
    sget-object v6, Lcom/transsion/shorttv/_channel/model/ShortTvLayoutStyleEnum;->Horizontal:Lcom/transsion/shorttv/_channel/model/ShortTvLayoutStyleEnum;

    invoke-virtual {v6}, Lcom/transsion/shorttv/_channel/model/ShortTvLayoutStyleEnum;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    move v0, v3

    move v2, v5

    goto :goto_1

    :cond_6
    sget-object v3, Lcom/transsion/shorttv/_channel/model/ShortTvLayoutStyleEnum;->Square:Lcom/transsion/shorttv/_channel/model/ShortTvLayoutStyleEnum;

    invoke-virtual {v3}, Lcom/transsion/shorttv/_channel/model/ShortTvLayoutStyleEnum;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move v0, v1

    move v2, v0

    :cond_7
    :goto_1
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v1, Lej/f;->a:Lej/f$a;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object v1

    invoke-virtual {p2}, Lcom/transsion/shorttv/_channel/model/ShortTvMovieItem;->getCover()Lcom/transsion/shorttv/bean/Cover;

    move-result-object v3

    const-string v5, ""

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/Cover;->getUrl()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_9

    :cond_8
    move-object v3, v5

    :cond_9
    invoke-virtual {v1, v3}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object v1

    sget v3, Lcom/transsion/shorttv/R$color;->short_tv_cl37:I

    invoke-virtual {v1, v3}, Lej/f$b;->i(I)Lej/f$b;

    move-result-object v1

    invoke-virtual {v1, v2}, Lej/f$b;->m(I)Lej/f$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lej/f$b;->c(I)Lej/f$b;

    move-result-object v0

    invoke-virtual {p2}, Lcom/transsion/shorttv/_channel/model/ShortTvMovieItem;->getCover()Lcom/transsion/shorttv/bean/Cover;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/Cover;->getThumbnail()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_2

    :cond_a
    move-object v5, v1

    :cond_b
    :goto_2
    invoke-virtual {v0, v5}, Lej/f$b;->l(Ljava/lang/String;)Lej/f$b;

    move-result-object v0

    invoke-virtual {v0, v4}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    sget v0, Lcom/transsion/shorttv/R$id;->tv_title:I

    invoke-virtual {p2}, Lcom/transsion/shorttv/_channel/model/ShortTvMovieItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    sget v0, Lcom/transsion/shorttv/R$id;->tv_tabs:I

    invoke-virtual {p2}, Lcom/transsion/shorttv/_channel/model/ShortTvMovieItem;->getGenre()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/transsion/shorttv/_channel/model/ShortTvMovieItem;->getCountryName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u2022"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    sget v0, Lcom/transsion/shorttv/R$id;->tv_score:I

    invoke-virtual {p2}, Lcom/transsion/shorttv/_channel/model/ShortTvMovieItem;->getImdbRatingValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    sget v0, Lcom/transsion/shorttv/R$id;->tv_tips:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/shorttv/base/widget/CornerTextView;

    invoke-virtual {p2}, Lcom/transsion/shorttv/_channel/model/ShortTvMovieItem;->getCorner()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/transsion/shorttv/_channel/model/ShortTvMovieItem;->getSubjectType()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/transsion/shorttv/base/widget/CornerTextView;->setTextWithType(Ljava/lang/CharSequence;Ljava/lang/Integer;)V

    return-void
.end method

.method public final C1()I
    .locals 1

    iget v0, p0, Lcom/transsion/shorttv/_channel/ui/adapter/c;->H:I

    return v0
.end method

.method public final D1()Lcom/transsion/shorttv/_channel/model/ShortTvLayoutStyle;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/_channel/ui/adapter/c;->G:Lcom/transsion/shorttv/_channel/model/ShortTvLayoutStyle;

    return-object v0
.end method

.method public E1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 4

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    sget v0, Lcom/transsion/shorttv/R$id;->iv_cover:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/imageview/ShapeableImageView;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroid/app/Activity;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v3, v0, Landroid/app/Activity;

    if-eqz v3, :cond_2

    move-object v2, v0

    check-cast v2, Landroid/app/Activity;

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-ne v0, v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->clear(Landroid/view/View;)V

    nop

    :cond_4
    :goto_1
    return-void
.end method

.method public bridge synthetic F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/shorttv/_channel/model/ShortTvMovieItem;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/_channel/ui/adapter/c;->B1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv/_channel/model/ShortTvMovieItem;)V

    return-void
.end method

.method public final F1(Lcom/transsion/shorttv/_channel/model/ShortTvLayoutStyle;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv/_channel/ui/adapter/c;->G:Lcom/transsion/shorttv/_channel/model/ShortTvLayoutStyle;

    return-void
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lr6/f;
    .locals 0

    invoke-static {p0, p1}, Lr6/h;->a(Lr6/i;Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lr6/f;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .locals 0

    check-cast p1, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-virtual {p0, p1}, Lcom/transsion/shorttv/_channel/ui/adapter/c;->B0(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    return-void
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .locals 0

    check-cast p1, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-virtual {p0, p1}, Lcom/transsion/shorttv/_channel/ui/adapter/c;->E1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    return-void
.end method
