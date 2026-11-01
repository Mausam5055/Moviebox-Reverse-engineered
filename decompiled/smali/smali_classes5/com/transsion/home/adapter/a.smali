.class public final Lcom/transsion/home/adapter/a;
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
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0012\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B1\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0005\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u001f\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0017\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0017\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0015R\u0016\u0010\u0008\u001a\u0004\u0018\u00010\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R$\u0010\n\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u0017\u0010\u000c\u001a\u00020\u000b8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"\u00a8\u0006#"
    }
    d2 = {
        "Lcom/transsion/home/adapter/a;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/transsion/home/bean/MovieItem;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "Lr6/i;",
        "",
        "dataList",
        "Lhl/b;",
        "listExposureHelper",
        "Lcom/transsion/home/bean/LayoutStyle;",
        "style",
        "",
        "rowCount",
        "<init>",
        "(Ljava/util/List;Lhl/b;Lcom/transsion/home/bean/LayoutStyle;I)V",
        "holder",
        "item",
        "",
        "B1",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/MovieItem;)V",
        "B0",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V",
        "E1",
        "F",
        "Lhl/b;",
        "G",
        "Lcom/transsion/home/bean/LayoutStyle;",
        "D1",
        "()Lcom/transsion/home/bean/LayoutStyle;",
        "F1",
        "(Lcom/transsion/home/bean/LayoutStyle;)V",
        "H",
        "I",
        "C1",
        "()I",
        "Home_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final I:I = 0x8


# instance fields
.field private final F:Lhl/b;

.field private G:Lcom/transsion/home/bean/LayoutStyle;

.field private final H:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lhl/b;Lcom/transsion/home/bean/LayoutStyle;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/home/bean/MovieItem;",
            ">;",
            "Lhl/b;",
            "Lcom/transsion/home/bean/LayoutStyle;",
            "I)V"
        }
    .end annotation

    const-string v0, "dataList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/transsion/home/R$layout;->home_adapter_movie:I

    invoke-direct {p0, v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    iput-object p2, p0, Lcom/transsion/home/adapter/a;->F:Lhl/b;

    iput-object p3, p0, Lcom/transsion/home/adapter/a;->G:Lcom/transsion/home/bean/LayoutStyle;

    iput p4, p0, Lcom/transsion/home/adapter/a;->H:I

    return-void
.end method


# virtual methods
.method public B0(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->B0(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapterPosition()I

    move-result p1

    iget-object v0, p0, Lcom/transsion/home/adapter/a;->F:Lhl/b;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type androidx.recyclerview.widget.GridLayoutManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lhl/b;->h(Landroidx/recyclerview/widget/LinearLayoutManager;IZ)V

    :cond_0
    return-void
.end method

.method protected B1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/MovieItem;)V
    .locals 12

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

    iget v2, p0, Lcom/transsion/home/adapter/a;->H:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v4, 0x41000000    # 8.0f

    mul-float/2addr v2, v4

    const/high16 v5, 0x41c00000    # 24.0f

    add-float/2addr v2, v5

    invoke-static {v2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v2

    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    move-result v6

    sub-int v2, v6, v2

    iget v7, p0, Lcom/transsion/home/adapter/a;->H:I

    div-int/2addr v2, v7

    int-to-float v8, v2

    int-to-float v1, v1

    const/high16 v9, 0x3f800000    # 1.0f

    mul-float/2addr v1, v9

    int-to-float v0, v0

    div-float/2addr v1, v0

    mul-float/2addr v8, v1

    float-to-int v0, v8

    sub-int/2addr v7, v3

    int-to-float v1, v7

    mul-float/2addr v1, v4

    add-float/2addr v1, v5

    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v1

    const/high16 v4, 0x42da0000    # 109.0f

    invoke-static {v4}, Lcom/blankj/utilcode/util/a0;->a(F)I

    invoke-static {v4}, Lcom/blankj/utilcode/util/a0;->a(F)I

    sub-int/2addr v6, v1

    iget v1, p0, Lcom/transsion/home/adapter/a;->H:I

    div-int v1, v6, v1

    const/high16 v4, 0x43240000    # 164.0f

    invoke-static {v4}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v4

    const/high16 v5, 0x42b80000    # 92.0f

    invoke-static {v5}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v5

    iget v7, p0, Lcom/transsion/home/adapter/a;->H:I

    div-int/2addr v6, v7

    int-to-float v7, v6

    int-to-float v5, v5

    mul-float/2addr v5, v9

    int-to-float v4, v4

    div-float/2addr v5, v4

    mul-float/2addr v7, v5

    float-to-int v4, v7

    invoke-virtual {p2}, Lcom/transsion/home/bean/MovieItem;->getNonAdDelegate()Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    move-result-object v5

    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eqz v5, :cond_3

    sget-object v0, Lcy/b;->a:Lcy/b;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2}, Lcom/transsion/home/bean/MovieItem;->getNonAdDelegate()Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v9

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcy/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/transsion/ad/bidding/base/r;

    move-result-object v0

    sget v1, Lcom/transsion/home/R$id;->nativeView:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Lcom/transsion/home/bean/MovieItem;->getNonAdDelegate()Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    move-result-object v2

    invoke-virtual {p2}, Lcom/transsion/home/bean/MovieItem;->getNonAdDelegate()Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->n0()Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    move-result-object v9

    :cond_1
    invoke-virtual {v1, v2, v0, v9}, Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;->bindNativeView(Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    :cond_2
    sget p2, Lcom/transsion/home/R$id;->nativeView:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    invoke-virtual {p2, v8}, Landroid/view/View;->setVisibility(I)V

    sget p2, Lcom/transsion/home/R$id;->group:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/Group;

    invoke-virtual {p1, v7}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    return-void

    :cond_3
    sget v5, Lcom/transsion/home/R$id;->nativeView:I

    invoke-virtual {p1, v5}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    sget v5, Lcom/transsion/home/R$id;->group:I

    invoke-virtual {p1, v5}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v5, v8}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    sget v5, Lcom/transsion/home/R$id;->iv_cover:I

    invoke-virtual {p1, v5}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/imageview/ShapeableImageView;

    iget-object v10, p0, Lcom/transsion/home/adapter/a;->G:Lcom/transsion/home/bean/LayoutStyle;

    if-nez v10, :cond_b

    invoke-virtual {p2}, Lcom/transsion/home/bean/MovieItem;->getSubjectType()Ljava/lang/Integer;

    move-result-object v9

    sget-object v10, Lcom/transsion/moviedetailapi/SubjectType;->AUDIO:Lcom/transsion/moviedetailapi/SubjectType;

    invoke-virtual {v10}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    move-result v11

    if-nez v9, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v9, v11, :cond_9

    :goto_1
    invoke-virtual {p2}, Lcom/transsion/home/bean/MovieItem;->getSubjectType()Ljava/lang/Integer;

    move-result-object v9

    sget-object v11, Lcom/transsion/moviedetailapi/SubjectType;->MOVIE:Lcom/transsion/moviedetailapi/SubjectType;

    invoke-virtual {v11}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    move-result v11

    if-nez v9, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v9, v11, :cond_9

    :goto_2
    invoke-virtual {p2}, Lcom/transsion/home/bean/MovieItem;->getSubjectType()Ljava/lang/Integer;

    move-result-object v9

    sget-object v11, Lcom/transsion/moviedetailapi/SubjectType;->VSHOW:Lcom/transsion/moviedetailapi/SubjectType;

    invoke-virtual {v11}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    move-result v11

    if-nez v9, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v9, v11, :cond_9

    :goto_3
    invoke-virtual {p2}, Lcom/transsion/home/bean/MovieItem;->getSubjectType()Ljava/lang/Integer;

    move-result-object v9

    sget-object v11, Lcom/transsion/moviedetailapi/SubjectType;->TV:Lcom/transsion/moviedetailapi/SubjectType;

    invoke-virtual {v11}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    move-result v11

    if-nez v9, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v9, v11, :cond_9

    :goto_4
    invoke-virtual {p2}, Lcom/transsion/home/bean/MovieItem;->getSubjectType()Ljava/lang/Integer;

    move-result-object v9

    sget-object v11, Lcom/transsion/moviedetailapi/SubjectType;->SHORT_TV:Lcom/transsion/moviedetailapi/SubjectType;

    invoke-virtual {v11}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    move-result v11

    if-nez v9, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v11, :cond_d

    :cond_9
    invoke-virtual {p2}, Lcom/transsion/home/bean/MovieItem;->getSubjectType()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    move-result v6

    if-nez v4, :cond_a

    goto :goto_7

    :cond_a
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v6, :cond_f

    goto :goto_6

    :cond_b
    if-eqz v10, :cond_c

    invoke-virtual {v10}, Lcom/transsion/home/bean/LayoutStyle;->getShape()Ljava/lang/String;

    move-result-object v9

    :cond_c
    sget-object v10, Lcom/transsion/home/enum/LayoutStyleEnum;->Horizontal:Lcom/transsion/home/enum/LayoutStyleEnum;

    invoke-virtual {v10}, Lcom/transsion/home/enum/LayoutStyleEnum;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    :cond_d
    :goto_5
    move v0, v4

    move v2, v6

    goto :goto_7

    :cond_e
    sget-object v4, Lcom/transsion/home/enum/LayoutStyleEnum;->Square:Lcom/transsion/home/enum/LayoutStyleEnum;

    invoke-virtual {v4}, Lcom/transsion/home/enum/LayoutStyleEnum;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    :goto_6
    move v0, v1

    move v2, v0

    :cond_f
    :goto_7
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string v4, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v5, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v1, Lej/f;->a:Lej/f$a;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v4}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object v1

    invoke-virtual {p2}, Lcom/transsion/home/bean/MovieItem;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v4

    const-string v6, ""

    if-eqz v4, :cond_10

    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_11

    :cond_10
    move-object v4, v6

    :cond_11
    invoke-virtual {v1, v4}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object v1

    sget v4, Lcom/tn/lib/widget/R$color;->cl37:I

    invoke-virtual {v1, v4}, Lej/f$b;->i(I)Lej/f$b;

    move-result-object v1

    invoke-virtual {v1, v2}, Lej/f$b;->m(I)Lej/f$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lej/f$b;->c(I)Lej/f$b;

    move-result-object v0

    invoke-virtual {p2}, Lcom/transsion/home/bean/MovieItem;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_13

    :cond_12
    move-object v1, v6

    :cond_13
    invoke-virtual {v0, v1}, Lej/f$b;->l(Ljava/lang/String;)Lej/f$b;

    move-result-object v0

    invoke-virtual {v0, v5}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    sget v0, Lcom/transsion/home/R$id;->iv_vip_type:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/transsion/home/bean/MovieItem;->getVipInfo()Lcom/transsion/baselib/db/download/VipInfo;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/VipInfo;->getRequireMemberType()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_14

    goto :goto_9

    :cond_14
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_17

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {p2}, Lcom/transsion/home/bean/MovieItem;->getVipInfo()Lcom/transsion/baselib/db/download/VipInfo;

    move-result-object v2

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/VipInfo;->getMemberIcon()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_15

    goto :goto_8

    :cond_15
    move-object v6, v2

    :cond_16
    :goto_8
    invoke-virtual {v1, v6}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    sget v2, Lcom/tn/lib/widget/R$drawable;->icon_subject_premium:I

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    goto :goto_a

    :cond_17
    :goto_9
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    :goto_a
    sget v0, Lcom/transsion/home/R$id;->tv_title:I

    invoke-virtual {p2}, Lcom/transsion/home/bean/MovieItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    sget v0, Lcom/transsion/home/R$id;->tv_tabs:I

    invoke-virtual {p2}, Lcom/transsion/home/bean/MovieItem;->getGenre()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/transsion/home/bean/MovieItem;->getCountryName()Ljava/lang/String;

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

    sget v0, Lcom/transsion/home/R$id;->tv_score:I

    invoke-virtual {p2}, Lcom/transsion/home/bean/MovieItem;->getImdbRatingValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    sget v0, Lcom/transsion/home/R$id;->tv_tips:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/tn/lib/view/CornerTextView;

    invoke-virtual {p2}, Lcom/transsion/home/bean/MovieItem;->getCorner()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/transsion/home/bean/MovieItem;->getSubjectType()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/tn/lib/view/CornerTextView;->setTextWithType(Ljava/lang/CharSequence;Ljava/lang/Integer;)V

    return-void
.end method

.method public final C1()I
    .locals 1

    iget v0, p0, Lcom/transsion/home/adapter/a;->H:I

    return v0
.end method

.method public final D1()Lcom/transsion/home/bean/LayoutStyle;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/adapter/a;->G:Lcom/transsion/home/bean/LayoutStyle;

    return-object v0
.end method

.method public E1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 4

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    sget v0, Lcom/transsion/home/R$id;->iv_cover:I

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

    check-cast p2, Lcom/transsion/home/bean/MovieItem;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/a;->B1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/MovieItem;)V

    return-void
.end method

.method public final F1(Lcom/transsion/home/bean/LayoutStyle;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/adapter/a;->G:Lcom/transsion/home/bean/LayoutStyle;

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

    invoke-virtual {p0, p1}, Lcom/transsion/home/adapter/a;->B0(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    return-void
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .locals 0

    check-cast p1, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-virtual {p0, p1}, Lcom/transsion/home/adapter/a;->E1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    return-void
.end method
