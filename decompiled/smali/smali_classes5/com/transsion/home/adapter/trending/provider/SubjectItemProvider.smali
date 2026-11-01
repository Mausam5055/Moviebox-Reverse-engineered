.class public final Lcom/transsion/home/adapter/trending/provider/SubjectItemProvider;
.super Lcom/transsion/home/adapter/trending/provider/b;


# instance fields
.field private final e:Z

.field private final f:I

.field private final g:I

.field private h:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/home/adapter/trending/provider/b;-><init>()V

    iput-boolean p1, p0, Lcom/transsion/home/adapter/trending/provider/SubjectItemProvider;->e:Z

    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    move-result v0

    invoke-static {}, Lcom/blankj/utilcode/util/y;->c()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/transsion/home/adapter/trending/provider/SubjectItemProvider;->f:I

    if-eqz p1, :cond_0

    const p1, 0x43126667    # 146.40001f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x42f40000    # 122.0f

    :goto_0
    invoke-static {p1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p1

    iput p1, p0, Lcom/transsion/home/adapter/trending/provider/SubjectItemProvider;->g:I

    return-void
.end method

.method public static synthetic D(Lcom/transsion/moviedetailapi/bean/Subject;ZZJ)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/home/adapter/trending/provider/SubjectItemProvider;->F(Lcom/transsion/moviedetailapi/bean/Subject;ZZJ)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final F(Lcom/transsion/moviedetailapi/bean/Subject;ZZJ)Lkotlin/Unit;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/moviedetailapi/bean/Subject;->setLoadCoverSuccess(Z)V

    invoke-virtual {p0, p2}, Lcom/transsion/moviedetailapi/bean/Subject;->setCoverCache(Z)V

    invoke-virtual {p0, p3, p4}, Lcom/transsion/moviedetailapi/bean/Subject;->setLoadCoverDuration(J)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public E(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;)V
    .locals 11

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getFeedsSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object p2

    if-eqz p2, :cond_29

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_15

    :cond_0
    sget v0, Lcom/transsion/home/R$id;->cl_cover:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/transsion/home/adapter/trending/provider/SubjectItemProvider;->g:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    div-int/lit8 v2, v2, 0x4

    mul-int/lit8 v2, v2, 0x3

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    sget v0, Lcom/transsion/home/R$id;->iv_cover:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/imageview/ShapeableImageView;

    const-string v1, "getContext(...)"

    const-string v2, ""

    const/4 v3, 0x0

    if-eqz v0, :cond_7

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getBuiltIn()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v4

    invoke-static {v4}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v5

    new-instance v8, Lcom/transsion/home/adapter/trending/provider/SubjectItemProvider$convert$2$1;

    invoke-direct {v8, p2, v0, v3}, Lcom/transsion/home/adapter/trending/provider/SubjectItemProvider$convert$2$1;-><init>(Lcom/transsion/moviedetailapi/bean/Subject;Lcom/google/android/material/imageview/ShapeableImageView;Lkotlin/coroutines/Continuation;)V

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    goto :goto_0

    :cond_2
    sget-object v4, Lej/f;->a:Lej/f$a;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object v4

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4

    :cond_3
    move-object v5, v2

    :cond_4
    invoke-virtual {v4, v5}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object v4

    iget v5, p0, Lcom/transsion/home/adapter/trending/provider/SubjectItemProvider;->f:I

    invoke-virtual {v4, v5}, Lej/f$b;->m(I)Lej/f$b;

    move-result-object v4

    sget v5, Lcom/tn/lib/widget/R$color;->skeleton:I

    invoke-virtual {v4, v5}, Lej/f$b;->i(I)Lej/f$b;

    move-result-object v4

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_6

    :cond_5
    move-object v5, v2

    :cond_6
    invoke-virtual {v4, v5}, Lej/f$b;->l(Ljava/lang/String;)Lej/f$b;

    move-result-object v4

    new-instance v5, Lcom/transsion/home/adapter/trending/provider/m0;

    invoke-direct {v5, p2}, Lcom/transsion/home/adapter/trending/provider/m0;-><init>(Lcom/transsion/moviedetailapi/bean/Subject;)V

    invoke-virtual {v4, v5}, Lej/f$b;->b(Lkotlin/jvm/functions/Function3;)Lej/f$b;

    move-result-object v4

    invoke-virtual {v4, v0}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    :cond_7
    :goto_0
    sget v0, Lcom/transsion/home/R$id;->iv_stills:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/imageview/ShapeableImageView;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v5, p0, Lcom/transsion/home/adapter/trending/provider/SubjectItemProvider;->g:I

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getTrailer()Lcom/transsion/moviedetailapi/bean/Trailer;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Trailer;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_8
    move-object v5, v3

    :goto_1
    iput-object v5, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v5, Ljava/lang/CharSequence;

    if-eqz v5, :cond_9

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_e

    :cond_9
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getStills()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_a
    move-object v5, v3

    :goto_2
    if-eqz v5, :cond_d

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_b

    goto :goto_4

    :cond_b
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getStills()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v5

    if-eqz v5, :cond_c

    :goto_3
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    :cond_c
    move-object v5, v3

    goto :goto_5

    :cond_d
    :goto_4
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v5

    if-eqz v5, :cond_c

    goto :goto_3

    :goto_5
    iput-object v5, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_e
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getTrailer()Lcom/transsion/moviedetailapi/bean/Trailer;

    move-result-object v5

    if-eqz v5, :cond_f

    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Trailer;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v5

    if-eqz v5, :cond_f

    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    :cond_f
    move-object v5, v3

    :goto_6
    if-eqz v5, :cond_10

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_15

    :cond_10
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getStills()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v5

    if-eqz v5, :cond_11

    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    move-result-object v5

    goto :goto_7

    :cond_11
    move-object v5, v3

    :goto_7
    if-eqz v5, :cond_14

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_12

    goto :goto_9

    :cond_12
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getStills()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v5

    if-eqz v5, :cond_13

    :goto_8
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    move-result-object v5

    goto :goto_a

    :cond_13
    move-object v5, v3

    goto :goto_a

    :cond_14
    :goto_9
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v5

    if-eqz v5, :cond_13

    goto :goto_8

    :cond_15
    :goto_a
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getBuiltIn()Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v5

    new-instance v8, Lcom/transsion/home/adapter/trending/provider/SubjectItemProvider$convert$3$1;

    invoke-direct {v8, v4, v0, v3}, Lcom/transsion/home/adapter/trending/provider/SubjectItemProvider$convert$3$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/google/android/material/imageview/ShapeableImageView;Lkotlin/coroutines/Continuation;)V

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    goto :goto_c

    :cond_16
    sget-object v6, Lej/f;->a:Lej/f$a;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object v1

    iget-object v4, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_17

    move-object v4, v2

    :cond_17
    invoke-virtual {v1, v4}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object v1

    sget v4, Lcom/tn/lib/widget/R$color;->skeleton:I

    invoke-virtual {v1, v4}, Lej/f$b;->i(I)Lej/f$b;

    move-result-object v1

    if-nez v5, :cond_18

    goto :goto_b

    :cond_18
    move-object v2, v5

    :goto_b
    invoke-virtual {v1, v2}, Lej/f$b;->l(Ljava/lang/String;)Lej/f$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    :cond_19
    :goto_c
    sget v0, Lcom/transsion/home/R$id;->ic_player:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v0, :cond_1b

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getTrailer()Lcom/transsion/moviedetailapi/bean/Trailer;

    move-result-object v1

    if-nez v1, :cond_1a

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    goto :goto_d

    :cond_1a
    invoke-static {v0}, Ljg/c;->k(Landroid/view/View;)V

    :cond_1b
    :goto_d
    sget v0, Lcom/transsion/home/R$id;->tv_subject:I

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getReleaseDate()Ljava/lang/String;

    move-result-object v0

    const-string v1, "yyyy-MM-dd"

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/c0;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    sget v0, Lcom/transsion/home/R$id;->tv_subject_year:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v2, 0x1

    if-eqz v0, :cond_22

    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCountryName()Ljava/lang/String;

    move-result-object v1

    const-string v5, " \u2022 "

    if-eqz v1, :cond_1d

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1c

    goto :goto_e

    :cond_1c
    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCountryName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_1d
    :goto_e
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getGenre()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_20

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1e

    goto :goto_10

    :cond_1e
    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getGenre()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1f

    const/4 v9, 0x4

    const/4 v10, 0x0

    const-string v6, "\uff0c"

    const-string v7, " \u2022 "

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_f

    :cond_1f
    move-object v5, v3

    :goto_f
    invoke-virtual {v1, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_20
    :goto_10
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/moviedetailapi/g;->a(Ljava/lang/Integer;)I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Landroidx/core/content/b;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/tn/lib/widget/R$color;->gray_40:I

    invoke-static {v4, v5}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_21
    invoke-virtual {v0, v1, v3, v3, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_22
    sget v0, Lcom/transsion/baseui/R$id;->tv_subject:I

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getHasResource()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    sget v0, Lcom/transsion/home/R$id;->ll_download:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/transsnet/downloader/widget/DownloadView;

    if-eqz v3, :cond_28

    invoke-static {v3}, Ljg/c;->k(Landroid/view/View;)V

    sget-object v0, Lak/t;->a:Lak/t;

    invoke-virtual {v0}, Lak/t;->b()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/transsion/moviedetailapi/SubjectType;->SHORT_TV:Lcom/transsion/moviedetailapi/SubjectType;

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    move-result v1

    if-nez v0, :cond_23

    goto :goto_11

    :cond_23
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_24

    :goto_11
    invoke-virtual {v3}, Lcom/transsnet/downloader/widget/DownloadView;->setShowPlayType()V

    goto :goto_14

    :cond_24
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getResourceDetector()Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getResourceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getType()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_25

    goto :goto_12

    :cond_25
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_26

    goto :goto_13

    :cond_26
    :goto_12
    const/4 v2, 0x0

    :goto_13
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/16 v9, 0x18

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v10}, Lcom/transsnet/downloader/widget/DownloadView;->setShowType$default(Lcom/transsnet/downloader/widget/DownloadView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ZIILjava/lang/Object;)V

    goto :goto_14

    :cond_27
    sget v0, Lcom/transsion/home/R$id;->ll_download:I

    invoke-virtual {p1, v0, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    :cond_28
    :goto_14
    iput-object p1, p0, Lcom/transsion/home/adapter/trending/provider/SubjectItemProvider;->h:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/trending/provider/b;->A(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/Subject;)V

    :cond_29
    :goto_15
    return-void
.end method

.method public final G()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/transsion/home/adapter/trending/provider/SubjectItemProvider;->h:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    if-eqz v0, :cond_0

    sget v1, Lcom/transsion/home/R$id;->ll_download:I

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsnet/downloader/widget/DownloadView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/home/bean/OperateItem;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/trending/provider/SubjectItemProvider;->E(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;)V

    return-void
.end method

.method public l()I
    .locals 1

    sget-object v0, Lcom/transsion/moviedetailapi/bean/PostItemType;->SUBJECT:Lcom/transsion/moviedetailapi/bean/PostItemType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method public m()I
    .locals 1

    sget v0, Lcom/transsion/home/R$layout;->post_list_item_subject:I

    return v0
.end method
