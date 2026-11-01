.class public final Lly/g;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lly/g$a;,
        Lly/g$b;
    }
.end annotation


# static fields
.field public static final l:Lly/g$a;


# instance fields
.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:Loy/c;

.field private final k:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lly/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lly/g$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lly/g;->l:Lly/g$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    sget v0, Lcom/transsnet/downloader/R$string;->downloading_time_left:I

    iput v0, p0, Lly/g;->e:I

    sget v0, Lcom/transsnet/downloader/R$string;->download_status_waiting:I

    iput v0, p0, Lly/g;->f:I

    sget v0, Lcom/transsnet/downloader/R$string;->download_status_paused:I

    iput v0, p0, Lly/g;->g:I

    sget v0, Lcom/transsnet/downloader/R$string;->download_status_failed:I

    iput v0, p0, Lly/g;->h:I

    sget v0, Lcom/transsnet/downloader/R$string;->download_status_no_net:I

    iput v0, p0, Lly/g;->i:I

    new-instance v0, Loy/c;

    invoke-direct {v0}, Loy/c;-><init>()V

    iput-object v0, p0, Lly/g;->j:Loy/c;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lly/g;->k:Ljava/util/Map;

    return-void
.end method

.method private final B(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getProgress()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-gez v7, :cond_0

    move-wide v3, v5

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    goto :goto_0

    :cond_1
    const-wide/16 v10, 0x1

    :goto_0
    cmp-long v7, v10, v5

    if-gtz v7, :cond_2

    const-wide/16 v10, 0x1

    :cond_2
    long-to-float v7, v3

    const/high16 v12, 0x3f800000    # 1.0f

    mul-float/2addr v7, v12

    long-to-float v13, v10

    div-float/2addr v7, v13

    const/16 v13, 0x64

    int-to-float v13, v13

    mul-float/2addr v7, v13

    float-to-int v7, v7

    sget-object v14, Lcom/transsnet/downloader/util/h;->a:Lcom/transsnet/downloader/util/h;

    invoke-virtual {v14}, Lcom/transsnet/downloader/util/h;->a()Z

    move-result v14

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result v15

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v12, 0x1

    if-eq v15, v12, :cond_3

    if-eq v15, v9, :cond_3

    sget v15, Lcom/transsnet/downloader/R$id;->pb_download:I

    invoke-virtual {v1, v15}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ProgressBar;

    iget-object v5, v1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/transsnet/downloader/R$drawable;->bg_progress_bar_pause:I

    invoke-static {v5, v6}, Landroidx/core/content/b;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v15, v5}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v15, v7}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    invoke-virtual {v15, v8}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_3

    :cond_3
    sget v5, Lcom/transsnet/downloader/R$id;->pb_download:I

    invoke-virtual {v1, v5}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    iget-object v6, v1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    if-eqz v14, :cond_4

    sget v15, Lcom/transsnet/downloader/R$drawable;->bg_progress_bar_svip:I

    goto :goto_1

    :cond_4
    sget v15, Lcom/transsnet/downloader/R$drawable;->bg_progress_bar_pause:I

    :goto_1
    invoke-static {v6, v15}, Landroidx/core/content/b;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/download/DownloadBean;->isPreDownload()Z

    move-result v6

    if-eqz v6, :cond_5

    move v6, v7

    goto :goto_2

    :cond_5
    move v6, v8

    :goto_2
    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/download/DownloadBean;->isPreDownload()Z

    move-result v6

    if-eqz v6, :cond_6

    move v7, v8

    :cond_6
    invoke-virtual {v5, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3, v4, v12}, Loh/b;->a(JI)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v10, v11, v12}, Loh/b;->a(JI)Ljava/lang/String;

    sget v3, Lcom/transsnet/downloader/R$id;->tv_state_progress:I

    invoke-virtual {v1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {v10, v11, v12}, Loh/b;->a(JI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v3, Lcom/tn/lib/widget/R$color;->white_80:I

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result v4

    const/4 v5, 0x6

    const/4 v6, 0x4

    const/4 v7, 0x3

    if-eq v4, v12, :cond_c

    if-eq v4, v9, :cond_c

    if-eq v4, v7, :cond_b

    if-eq v4, v6, :cond_a

    if-eq v4, v5, :cond_7

    const/4 v4, 0x0

    goto :goto_7

    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/download/DownloadBean;->isNoNetError()Z

    move-result v3

    if-nez v3, :cond_9

    sget-object v3, Lnh/m;->a:Lnh/m;

    invoke-virtual {v3}, Lnh/m;->e()Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_5

    :cond_8
    iget v3, v0, Lly/g;->h:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_4
    move-object v4, v3

    goto :goto_6

    :cond_9
    :goto_5
    iget v3, v0, Lly/g;->i:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_4

    :goto_6
    sget v3, Lcom/tn/lib/widget/R$color;->error_50:I

    goto :goto_7

    :cond_a
    iget v3, v0, Lly/g;->g:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget v3, Lcom/tn/lib/widget/R$color;->error_50:I

    goto :goto_7

    :cond_b
    iget v4, v0, Lly/g;->f:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_7

    :cond_c
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/download/DownloadBean;->isPreDownload()Z

    move-result v4

    if-eqz v4, :cond_d

    iget v4, v0, Lly/g;->f:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_7

    :cond_d
    sget v3, Lcom/tn/lib/widget/R$color;->white_80:I

    invoke-direct {v0, v2}, Lly/g;->y(Lcom/transsion/baselib/db/download/DownloadBean;)Ljava/lang/String;

    move-result-object v4

    :goto_7
    sget v8, Lcom/transsnet/downloader/R$id;->tv_time_or_status:I

    invoke-virtual {v1, v8}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/tn/lib/widget/TnTextView;

    instance-of v10, v4, Ljava/lang/Integer;

    if-eqz v10, :cond_e

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-virtual {v8, v4}, Lcom/tn/lib/widget/TnTextView;->setTextById(I)V

    goto :goto_8

    :cond_e
    instance-of v10, v4, Ljava/lang/String;

    if-eqz v10, :cond_f

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v8, v4}, Lcom/tn/lib/widget/TnTextView;->setTextWithString(Ljava/lang/CharSequence;)V

    :cond_f
    :goto_8
    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-direct {v0, v1, v2, v14}, Lly/g;->C(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/baselib/db/download/DownloadBean;Z)V

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result v3

    if-eq v3, v12, :cond_11

    if-eq v3, v9, :cond_11

    if-eq v3, v7, :cond_11

    if-eq v3, v6, :cond_10

    if-eq v3, v5, :cond_10

    goto :goto_9

    :cond_10
    sget v3, Lcom/transsnet/downloader/R$id;->iv_state_bg:I

    invoke-virtual {v1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/AppCompatImageView;

    sget v4, Lcom/transsnet/downloader/R$mipmap;->ic_download_downloading:I

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    goto :goto_9

    :cond_11
    sget v3, Lcom/transsnet/downloader/R$id;->iv_state_bg:I

    invoke-virtual {v1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/AppCompatImageView;

    sget v4, Lcom/transsnet/downloader/R$mipmap;->ic_download_pause:I

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    :goto_9
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getReadProgress()J

    move-result-wide v3

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getDuration()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    :goto_a
    const-wide/16 v7, 0x0

    goto :goto_b

    :cond_12
    const-wide/16 v5, 0x1

    goto :goto_a

    :goto_b
    cmp-long v2, v5, v7

    if-gtz v2, :cond_13

    const-wide/16 v8, 0x1

    goto :goto_c

    :cond_13
    move-wide v8, v5

    :goto_c
    long-to-float v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    long-to-float v3, v8

    div-float/2addr v2, v3

    mul-float/2addr v2, v13

    float-to-int v2, v2

    sget v3, Lcom/transsnet/downloader/R$id;->progress_bar:I

    invoke-virtual {v1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method private final C(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/baselib/db/download/DownloadBean;Z)V
    .locals 11

    sget v0, Lcom/transsnet/downloader/R$id;->speedLimitContainer:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    sget v1, Lcom/transsnet/downloader/R$id;->tvSpeedLimitSpeed:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    iget-object v4, p0, Lly/g;->j:Loy/c;

    invoke-virtual {v4}, Loy/c;->d()D

    move-result-wide v5

    const-wide/16 v7, 0x0

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v5 .. v10}, Lkotlin/ranges/RangesKt;->k(DDD)D

    move-result-wide v4

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getCurrentDownloadSpeed()J

    move-result-wide v6

    long-to-double v6, v6

    mul-double/2addr v6, v4

    double-to-long v6, v6

    if-eqz p3, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->isPreDownload()Z

    move-result p2

    if-nez p2, :cond_3

    const-wide/16 p2, 0x0

    cmpg-double p2, v4, p2

    if-lez p2, :cond_3

    const-wide/16 p2, 0x0

    cmp-long p2, v6, p2

    if-gtz p2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-static {v6, v7, v3, v2}, Loh/b;->b(JII)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "+"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/s"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_3
    :goto_2
    const/16 p2, 0x8

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final y(Lcom/transsion/baselib/db/download/DownloadBean;)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v3

    :cond_0
    iget-object v4, v0, Lly/g;->k:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lly/g$b;

    const-wide/16 v5, 0x0

    if-nez v4, :cond_1

    move-wide v7, v5

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Lly/g$b;->b()J

    move-result-wide v7

    sub-long v7, v1, v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    :goto_0
    const-string v9, "/s"

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v4, :cond_2

    const-wide/16 v12, 0x2

    cmp-long v12, v7, v12

    if-gez v12, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getCurrentDownloadSpeed()J

    move-result-wide v12

    cmp-long v12, v12, v5

    if-lez v12, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getCurrentDownloadSpeed()J

    move-result-wide v1

    invoke-static {v1, v2, v11, v10}, Loh/b;->b(JII)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2
    if-eqz v4, :cond_5

    cmp-long v12, v7, v5

    if-gtz v12, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getProgress()J

    move-result-wide v12

    invoke-virtual {v4}, Lly/g$b;->a()J

    move-result-wide v14

    sub-long/2addr v12, v14

    cmp-long v4, v12, v5

    if-lez v4, :cond_4

    div-long/2addr v12, v7

    goto :goto_2

    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getCurrentDownloadSpeed()J

    move-result-wide v12

    goto :goto_2

    :cond_5
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getCurrentDownloadSpeed()J

    move-result-wide v12

    :goto_2
    iget-object v4, v0, Lly/g;->k:Ljava/util/Map;

    new-instance v7, Lly/g$b;

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getProgress()J

    move-result-wide v14

    invoke-direct {v7, v14, v15, v1, v2}, Lly/g$b;-><init>(JJ)V

    invoke-interface {v4, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    cmp-long v1, v12, v5

    if-gtz v1, :cond_6

    const-string v1, "0KB/s"

    return-object v1

    :cond_6
    move-object/from16 v1, p1

    invoke-virtual {v1, v12, v13}, Lcom/transsion/baselib/db/download/DownloadBean;->setCurrentDownloadSpeed(J)V

    invoke-static {v12, v13, v11, v10}, Loh/b;->b(JII)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public A(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/baselib/db/download/DownloadBean;Ljava/util/List;)V
    .locals 2

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payloads"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->f(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->v0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p3

    instance-of v0, p3, Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    invoke-virtual {v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    move-result-object v0

    check-cast p3, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {p3}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {v0, v1}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->q(Ljava/lang/String;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    move-object p3, p2

    :goto_0
    invoke-direct {p0, p1, p3}, Lly/g;->B(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/baselib/db/download/DownloadBean;)V

    :cond_3
    return-void
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {p0, p1, p2}, Lly/g;->z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/baselib/db/download/DownloadBean;)V

    return-void
.end method

.method public bridge synthetic f(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0

    check-cast p2, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {p0, p1, p2, p3}, Lly/g;->A(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/baselib/db/download/DownloadBean;Ljava/util/List;)V

    return-void
.end method

.method public l()I
    .locals 1

    sget-object v0, Lcom/transsnet/downloader/adapter/LayoutType;->NO_DONE_LAYOUT:Lcom/transsnet/downloader/adapter/LayoutType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method public m()I
    .locals 1

    sget v0, Lcom/transsnet/downloader/R$layout;->adapter_downloading_item:I

    return v0
.end method

.method public z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 13

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    invoke-virtual {v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    move-result-object v0

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v1}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->q(Ljava/lang/String;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, p2

    :cond_1
    sget v1, Lcom/transsnet/downloader/R$id;->card_cover:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_b

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getPosition()I

    move-result v3

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->g()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result v4

    goto :goto_0

    :cond_2
    move v4, v5

    :goto_0
    const/4 v6, 0x1

    sub-int/2addr v4, v6

    if-ne v3, v4, :cond_3

    const/16 v3, 0x10

    :goto_1
    invoke-static {v3}, Ldk/a;->b(I)I

    move-result v3

    goto :goto_2

    :cond_3
    const/16 v3, 0xc

    goto :goto_1

    :goto_2
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getCover()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "getContext(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lcom/transsnet/downloader/R$id;->iv_cover:I

    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getThumbnail()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v1, v4}, Lcom/transsnet/downloader/adapter/DownloadedHolderKt;->a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getType()I

    move-result p2

    const/16 v1, 0x9

    if-ne p2, v1, :cond_5

    move p2, v6

    goto :goto_3

    :cond_5
    move p2, v5

    :goto_3
    sget v1, Lcom/transsnet/downloader/R$id;->tv_shorts:I

    xor-int/lit8 v2, p2, 0x1

    invoke-virtual {p1, v1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    if-eqz p2, :cond_6

    sget p2, Lcom/transsnet/downloader/R$id;->iv_type:I

    invoke-virtual {p1, p2, v6}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto :goto_5

    :cond_6
    sget p2, Lcom/transsnet/downloader/R$id;->iv_type:I

    invoke-virtual {p1, p2, v5}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    sget p2, Lcom/transsnet/downloader/R$id;->iv_type:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    move-object v7, p2

    check-cast v7, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->isUGCVideo()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoType()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcCateLev1Id()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcCateLev2Id()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcCateLev3Id()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcCateLev4Id()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoType()Ljava/lang/String;

    move-result-object v12

    invoke-static/range {v7 .. v12}, Lcom/transsion/ugcvideodetail/api/UGCVideoTypeKt;->j(Landroid/widget/ImageView;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    :goto_4
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectType()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2}, Lcom/transsion/moviedetailapi/g;->a(Ljava/lang/Integer;)I

    move-result p2

    invoke-virtual {v7, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    :goto_5
    sget p2, Lcom/transsnet/downloader/R$id;->tv_name:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getTitleNameAppendResolution()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    sget p2, Lcom/transsnet/downloader/R$id;->tv_ep:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getEpName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_9

    goto :goto_6

    :cond_9
    move v6, v5

    :goto_6
    if-eqz v6, :cond_a

    goto :goto_7

    :cond_a
    const/16 v5, 0x8

    :goto_7
    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getEpName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p1, v0}, Lly/g;->B(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/baselib/db/download/DownloadBean;)V

    return-void

    :cond_b
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
