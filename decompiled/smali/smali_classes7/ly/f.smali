.class public final Lly/f;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;


# instance fields
.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lly/f;->e:Ljava/lang/String;

    return-void
.end method

.method private static final C(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/baselib/db/download/DownloadBean;Lly/f;Landroid/view/View;)Lkotlin/Unit;
    .locals 9

    const-string v0, "view"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsnet/downloader/util/a0;->a:Lcom/transsnet/downloader/util/a0;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string v1, "getContext(...)"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/transsnet/downloader/popup/PopupManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAbsoluteAdapterPosition()I

    move-result p0

    invoke-direct {v1, p0, p1}, Lcom/transsnet/downloader/popup/PopupManager;-><init>(ILcom/transsion/baselib/db/download/DownloadBean;)V

    iget-object p0, p2, Lly/f;->e:Ljava/lang/String;

    const-string v2, "save_local/vip_prompt"

    invoke-virtual {v0, p3, v1, v2, p0}, Lcom/transsnet/downloader/util/a0;->a(Landroid/content/Context;Lcom/transsnet/downloader/popup/PopupManager;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/transsion/baselib/helper/f;->a:Lcom/transsion/baselib/helper/f;

    sget-object p0, Lcom/transsnet/downloader/api/DownloadPageType;->DOWNLOAD:Lcom/transsnet/downloader/api/DownloadPageType;

    invoke-virtual {p0}, Lcom/transsnet/downloader/api/DownloadPageType;->getPageName()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p2, Lly/f;->e:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    const-string v5, "save_local/vip_prompt"

    invoke-virtual/range {v3 .. v8}, Lcom/transsion/baselib/helper/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final D(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 10

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->isShorts()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lep/e;->a:Lep/e;

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getPostId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lep/e;->c(Ljava/lang/String;)J

    move-result-wide v0

    :goto_0
    move-wide v4, v0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getReadProgress()J

    move-result-wide v0

    goto :goto_0

    :goto_1
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getDuration()Ljava/lang/Long;

    move-result-object v0

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_2

    :cond_1
    move-wide v6, v1

    :goto_2
    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-gtz v0, :cond_2

    goto :goto_3

    :cond_2
    move-wide v1, v6

    :goto_3
    long-to-float v0, v4

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v0, v3

    long-to-float v1, v1

    div-float/2addr v0, v1

    const/16 v1, 0x64

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v3, v0

    sget v0, Lcom/transsnet/downloader/R$id;->progress_bar:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    if-ltz v3, :cond_3

    const/16 v0, 0x65

    if-ge v3, v0, :cond_3

    sget v0, Lcom/transsnet/downloader/R$id;->tv_read_progress:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/tn/lib/widget/TnTextView;

    new-instance v0, Lly/e;

    move-object v2, v0

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Lly/e;-><init>(IJLcom/transsion/baselib/db/download/DownloadBean;Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/tn/lib/widget/TnTextView;->setTextAction(Lkotlin/jvm/functions/Function0;)V

    :cond_3
    return-void
.end method

.method private static final E(IJLcom/transsion/baselib/db/download/DownloadBean;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_2

    const/16 p1, 0x64

    if-eq p0, p1, :cond_1

    invoke-virtual {p3}, Lcom/transsion/baselib/db/download/DownloadBean;->getType()I

    move-result p1

    if-ne p1, v1, :cond_0

    sget p1, Lcom/transsnet/downloader/R$string;->download_listened:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p0, p2, v0

    invoke-virtual {p4, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget p1, Lcom/transsnet/downloader/R$string;->download_watched:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p0, p2, v0

    invoke-virtual {p4, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    sget p0, Lcom/transsnet/downloader/R$string;->download_finished:I

    invoke-virtual {p4, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-wide/16 v2, 0x0

    cmp-long p0, p1, v2

    if-lez p0, :cond_4

    invoke-virtual {p3}, Lcom/transsion/baselib/db/download/DownloadBean;->getType()I

    move-result p0

    if-ne p0, v1, :cond_3

    sget p0, Lcom/transsnet/downloader/R$string;->download_listened:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v0

    invoke-virtual {p4, p0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    sget p0, Lcom/transsnet/downloader/R$string;->download_watched:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v0

    invoke-virtual {p4, p0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_4
    sget p0, Lcom/transsnet/downloader/R$string;->download_not_open:I

    invoke-virtual {p4, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static synthetic y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/baselib/db/download/DownloadBean;Lly/f;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lly/f;->C(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/baselib/db/download/DownloadBean;Lly/f;Landroid/view/View;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic z(IJLcom/transsion/baselib/db/download/DownloadBean;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lly/f;->E(IJLcom/transsion/baselib/db/download/DownloadBean;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x1

    const-string v4, "helper"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "item"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getPosition()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->g()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    sub-int/2addr v5, v3

    const/16 v7, 0x8

    if-ne v4, v5, :cond_1

    const/16 v4, 0x64

    invoke-static {v4}, Ldk/a;->b(I)I

    move-result v4

    goto :goto_1

    :cond_1
    invoke-static {v7}, Ldk/a;->b(I)I

    move-result v4

    :goto_1
    sget v5, Lcom/transsnet/downloader/R$id;->cl_item_root:I

    invoke-virtual {v1, v5}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v5, v6, v6, v6, v4}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/download/DownloadBean;->isInnerRes()Z

    move-result v4

    const-string v5, ""

    if-nez v4, :cond_3

    sget v4, Lcom/transsnet/downloader/R$id;->iv_cover:I

    invoke-virtual {v1, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/AppCompatImageView;

    sget-object v8, Lcom/transsnet/downloader/viewmodel/a0;->a:Lcom/transsnet/downloader/viewmodel/a0;

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getCover()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_2

    move-object v9, v5

    :cond_2
    invoke-virtual {v8, v9}, Lcom/transsnet/downloader/viewmodel/a0;->d(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getCover()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v8, v1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "getContext(...)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget v9, Lcom/transsnet/downloader/R$id;->iv_cover:I

    invoke-virtual {v1, v9}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getThumbnail()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v4, v10}, Lcom/transsnet/downloader/util/DownloadUtilKt;->a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getType()I

    move-result v4

    const/16 v8, 0x9

    if-ne v4, v8, :cond_5

    move v4, v3

    goto :goto_3

    :cond_5
    move v4, v6

    :goto_3
    sget v8, Lcom/transsnet/downloader/R$id;->tv_shorts:I

    xor-int/lit8 v9, v4, 0x1

    invoke-virtual {v1, v8, v9}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    if-eqz v4, :cond_6

    sget v4, Lcom/transsnet/downloader/R$id;->iv_type:I

    invoke-virtual {v1, v4, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto :goto_5

    :cond_6
    sget v4, Lcom/transsnet/downloader/R$id;->iv_type:I

    invoke-virtual {v1, v4, v6}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    sget v4, Lcom/transsnet/downloader/R$id;->iv_type:I

    invoke-virtual {v1, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/download/DownloadBean;->isInnerRes()Z

    move-result v4

    if-nez v4, :cond_7

    sget v4, Lcom/transsion/baseui/R$drawable;->ic_tag_local_file:I

    invoke-virtual {v8, v4}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    goto :goto_5

    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/download/DownloadBean;->isUGCVideo()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoType()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcCateLev1Id()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcCateLev2Id()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcCateLev3Id()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcCateLev4Id()Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoType()Ljava/lang/String;

    move-result-object v13

    invoke-static/range {v8 .. v13}, Lcom/transsion/ugcvideodetail/api/UGCVideoTypeKt;->j(Landroid/widget/ImageView;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    :goto_4
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lcom/transsion/moviedetailapi/g;->a(Ljava/lang/Integer;)I

    move-result v4

    invoke-virtual {v8, v4}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    :goto_5
    sget v4, Lcom/transsnet/downloader/R$id;->tv_btn:I

    invoke-virtual {v1, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/download/DownloadBean;->isInnerRes()Z

    move-result v4

    const/4 v9, 0x0

    if-eqz v4, :cond_b

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v4

    sget v10, Lcom/transsion/baseui/R$drawable;->bg_btn_save_new:I

    invoke-static {v4, v10}, Landroidx/core/content/b;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v4

    sget v10, Lcom/transsion/baseui/R$mipmap;->icon_download_premium:I

    invoke-static {v4, v10}, Landroidx/core/content/b;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_a

    const/16 v10, 0xb

    invoke-static {v10}, Ldk/a;->b(I)I

    move-result v11

    invoke-static {v10}, Ldk/a;->b(I)I

    move-result v10

    invoke-virtual {v4, v6, v6, v11, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_a
    invoke-virtual {v8, v4, v9, v9, v9}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x2

    invoke-static {v4}, Ldk/a;->b(I)I

    move-result v4

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v4

    sget v9, Lcom/transsion/baseui/R$string;->Save:I

    invoke-static {v4, v9}, Landroidx/core/content/b;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v11, Lly/d;

    invoke-direct {v11, v1, v2, v0}, Lly/d;-><init>(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/baselib/db/download/DownloadBean;Lly/f;)V

    const/4 v12, 0x1

    const/4 v13, 0x0

    const-wide/16 v9, 0x0

    invoke-static/range {v8 .. v13}, Ljg/c;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    sget-object v14, Lcom/transsion/baselib/helper/f;->a:Lcom/transsion/baselib/helper/f;

    sget-object v4, Lcom/transsnet/downloader/api/DownloadPageType;->DOWNLOAD:Lcom/transsnet/downloader/api/DownloadPageType;

    invoke-virtual {v4}, Lcom/transsnet/downloader/api/DownloadPageType;->getPageName()Ljava/lang/String;

    move-result-object v15

    iget-object v4, v0, Lly/f;->e:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x2

    const-string v16, "save_local/vip_prompt"

    move-object/from16 v17, v4

    invoke-virtual/range {v14 .. v19}, Lcom/transsion/baselib/helper/f;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_6

    :cond_b
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v4

    sget v10, Lcom/transsion/baseui/R$drawable;->bg_btn_01_new:I

    invoke-static {v4, v10}, Landroidx/core/content/b;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v4

    sget v10, Lcom/transsion/baseui/R$string;->play:I

    invoke-static {v4, v10}, Landroidx/core/content/b;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v8, v9, v9, v9, v9}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_6
    sget v4, Lcom/transsnet/downloader/R$id;->tv_name:I

    invoke-virtual {v1, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getTitleNameAppendResolution()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v4, Lcom/transsnet/downloader/R$id;->tv_ep:I

    invoke-virtual {v1, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getEpName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-lez v8, :cond_c

    move v8, v3

    goto :goto_7

    :cond_c
    move v8, v6

    :goto_7
    if-eqz v8, :cond_d

    move v8, v6

    goto :goto_8

    :cond_d
    move v8, v7

    :goto_8
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getEpName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_f

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9, v3}, Loh/b;->a(JI)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_e

    goto :goto_9

    :cond_e
    move-object v5, v4

    :cond_f
    :goto_9
    sget v4, Lcom/transsnet/downloader/R$id;->tv_file_size:I

    invoke-virtual {v1, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_10

    sget v4, Lcom/transsnet/downloader/R$id;->tv_series_line:I

    invoke-virtual {v1, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Ljg/c;->k(Landroid/view/View;)V

    sget v4, Lcom/transsnet/downloader/R$id;->tv_series_count:I

    invoke-virtual {v1, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {v4}, Ljg/c;->k(Landroid/view/View;)V

    iget-object v5, v1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v7, Lcom/transsnet/downloader/R$string;->download_episodes:I

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getCount()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v8, v3, v6

    invoke-virtual {v5, v7, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v3, Lcom/transsnet/downloader/R$id;->layout_no_file_tips:I

    invoke-virtual {v1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Ljg/c;->g(Landroid/view/View;)V

    goto :goto_c

    :cond_10
    sget v3, Lcom/transsnet/downloader/R$id;->tv_series_count:I

    invoke-virtual {v1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Ljg/c;->g(Landroid/view/View;)V

    sget v3, Lcom/transsnet/downloader/R$id;->tv_series_line:I

    invoke-virtual {v1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Ljg/c;->g(Landroid/view/View;)V

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/download/DownloadBean;->isFileExist()Z

    move-result v3

    sget v4, Lcom/transsnet/downloader/R$id;->layout_no_file_tips:I

    invoke-virtual {v1, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    if-nez v3, :cond_11

    move v5, v6

    goto :goto_a

    :cond_11
    move v5, v7

    :goto_a
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    sget v4, Lcom/transsnet/downloader/R$id;->iv_play:I

    invoke-virtual {v1, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    if-eqz v3, :cond_12

    goto :goto_b

    :cond_12
    move v6, v7

    :goto_b
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_c
    invoke-direct/range {p0 .. p2}, Lly/f;->D(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/baselib/db/download/DownloadBean;)V

    return-void
.end method

.method public B(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/baselib/db/download/DownloadBean;Ljava/util/List;)V
    .locals 1

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payloads"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->f(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->v0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    instance-of p3, p2, Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz p3, :cond_1

    check-cast p2, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-direct {p0, p1, p2}, Lly/f;->D(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/baselib/db/download/DownloadBean;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {p0, p1, p2}, Lly/f;->A(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/baselib/db/download/DownloadBean;)V

    return-void
.end method

.method public bridge synthetic f(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0

    check-cast p2, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {p0, p1, p2, p3}, Lly/f;->B(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/baselib/db/download/DownloadBean;Ljava/util/List;)V

    return-void
.end method

.method public l()I
    .locals 1

    sget-object v0, Lcom/transsnet/downloader/adapter/LayoutType;->DONE_LAYOUT:Lcom/transsnet/downloader/adapter/LayoutType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method public m()I
    .locals 1

    sget v0, Lcom/transsnet/downloader/R$layout;->adapter_downloaded_item:I

    return v0
.end method
