.class public final Lcom/transsnet/downloader/adapter/t0;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001f\u0010\n\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u001f\u0010\u000c\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\u000bJ\u001f\u0010\r\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000bJ#\u0010\u0012\u001a\u00020\u00112\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000eH\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u001f\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/transsnet/downloader/adapter/t0;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "<init>",
        "()V",
        "Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;",
        "it",
        "holder",
        "",
        "E1",
        "(Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V",
        "D1",
        "C1",
        "",
        "pr",
        "total",
        "",
        "F1",
        "(Ljava/lang/Long;Ljava/lang/Long;)I",
        "item",
        "B1",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;)V",
        "Downloader_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    sget v0, Lcom/transsnet/downloader/R$layout;->adapter_historical_play_record_layout:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method private final C1(Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 6

    sget-object v0, Lej/f;->a:Lej/f$a;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getAudio()Lcom/transsion/baselib/db/audio/AudioBean;

    move-result-object v1

    const-string v2, ""

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/baselib/db/audio/AudioBean;->getCover()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    move-object v1, v2

    :cond_1
    invoke-virtual {v0, v1}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object v0

    sget v1, Lcom/transsnet/downloader/R$id;->ivCore:I

    invoke-virtual {p2, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    sget v0, Lcom/transsnet/downloader/R$id;->ivCornerMark:I

    sget v1, Lcom/transsnet/downloader/R$mipmap;->ic_audio_download_historical:I

    invoke-virtual {p2, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getAudio()Lcom/transsion/baselib/db/audio/AudioBean;

    move-result-object v0

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/baselib/db/audio/AudioBean;->getDuration()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_2
    move-wide v0, v3

    :goto_0
    cmp-long v0, v0, v3

    if-lez v0, :cond_4

    sget v0, Lcom/transsnet/downloader/R$id;->tvTime:I

    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getAudio()Lcom/transsion/baselib/db/audio/AudioBean;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/transsion/baselib/db/audio/AudioBean;->getDuration()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :cond_3
    invoke-static {v3, v4}, Lcom/transsion/baseui/util/TimeUtilKt;->n(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    :cond_4
    sget v0, Lcom/transsnet/downloader/R$id;->progressBar:I

    invoke-virtual {p2, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getAudio()Lcom/transsion/baselib/db/audio/AudioBean;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/transsion/baselib/db/audio/AudioBean;->getReadProcess()Ljava/lang/Long;

    move-result-object v1

    goto :goto_1

    :cond_5
    move-object v1, v3

    :goto_1
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getAudio()Lcom/transsion/baselib/db/audio/AudioBean;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/transsion/baselib/db/audio/AudioBean;->getDuration()Ljava/lang/Long;

    move-result-object v4

    goto :goto_2

    :cond_6
    move-object v4, v3

    :goto_2
    invoke-direct {p0, v1, v4}, Lcom/transsnet/downloader/adapter/t0;->F1(Ljava/lang/Long;Ljava/lang/Long;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getAudio()Lcom/transsion/baselib/db/audio/AudioBean;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/transsion/baselib/db/audio/AudioBean;->getSe()I

    move-result v0

    goto :goto_3

    :cond_7
    move v0, v1

    :goto_3
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getAudio()Lcom/transsion/baselib/db/audio/AudioBean;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lcom/transsion/baselib/db/audio/AudioBean;->getEp()I

    move-result v4

    goto :goto_4

    :cond_8
    move v4, v1

    :goto_4
    if-nez v0, :cond_9

    if-nez v4, :cond_9

    sget v0, Lcom/transsnet/downloader/R$id;->tvEpisode:I

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto :goto_5

    :cond_9
    sget v5, Lcom/transsnet/downloader/R$id;->tvEpisode:I

    invoke-virtual {p2, v5, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    sget v1, Lcom/transsnet/downloader/R$id;->tvEpisode:I

    sget-object v5, Lcom/transsion/moviedetailapi/SubjectType;->AUDIO:Lcom/transsion/moviedetailapi/SubjectType;

    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v0, v5}, Lak/i;->b(IILjava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    :goto_5
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getAudio()Lcom/transsion/baselib/db/audio/AudioBean;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/transsion/baselib/db/audio/AudioBean;->getSubjectTitle()Ljava/lang/String;

    move-result-object v3

    :cond_a
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    sget v0, Lcom/transsnet/downloader/R$id;->tvTitle:I

    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getAudio()Lcom/transsion/baselib/db/audio/AudioBean;

    move-result-object p1

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/transsion/baselib/db/audio/AudioBean;->getSubjectTitle()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_b

    goto :goto_6

    :cond_b
    move-object v2, p1

    :cond_c
    :goto_6
    invoke-virtual {p2, v0, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto :goto_8

    :cond_d
    sget v0, Lcom/transsnet/downloader/R$id;->tvTitle:I

    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getAudio()Lcom/transsion/baselib/db/audio/AudioBean;

    move-result-object p1

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lcom/transsion/baselib/db/audio/AudioBean;->getTitle()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_e

    goto :goto_7

    :cond_e
    move-object v2, p1

    :cond_f
    :goto_7
    invoke-virtual {p2, v0, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    :goto_8
    return-void
.end method

.method private final D1(Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 6

    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getStreamVideo()Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getSubjectId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const-string v2, ""

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/transsnet/downloader/R$id;->ivCore:I

    invoke-virtual {p2, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getStreamVideo()Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getCoverUrl()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v4

    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getStreamVideo()Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getThumbnail()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_4
    move-object v4, v1

    :goto_2
    invoke-static {v0, v3, v2, v4}, Lcom/transsnet/downloader/adapter/DownloadedHolderKt;->a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_5
    :goto_3
    sget v0, Lcom/transsnet/downloader/R$id;->ivCore:I

    invoke-virtual {p2, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/imageview/ShapeableImageView;

    sget-object v3, Lcom/transsnet/downloader/viewmodel/a0;->a:Lcom/transsnet/downloader/viewmodel/a0;

    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getStreamVideo()Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getCoverUrl()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    goto :goto_4

    :cond_6
    move-object v2, v4

    :cond_7
    :goto_4
    invoke-virtual {v3, v2}, Lcom/transsnet/downloader/viewmodel/a0;->d(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_5
    sget v0, Lcom/transsnet/downloader/R$id;->tvTitle:I

    invoke-virtual {p2, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getStreamVideo()Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getSubjectType()Ljava/lang/Integer;

    move-result-object v0

    sget-object v3, Lcom/transsion/moviedetailapi/SubjectType;->TV:Lcom/transsion/moviedetailapi/SubjectType;

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    move-result v3

    if-nez v0, :cond_8

    goto :goto_6

    :cond_8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_9

    sget v0, Lcom/transsnet/downloader/R$id;->ivCornerMark:I

    sget v3, Lcom/transsion/baseui/R$mipmap;->home_ic_tv_white:I

    invoke-virtual {p2, v0, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto :goto_7

    :cond_9
    :goto_6
    sget v0, Lcom/transsnet/downloader/R$id;->ivCornerMark:I

    sget v3, Lcom/transsion/baseui/R$mipmap;->home_ic_movie_white:I

    invoke-virtual {p2, v0, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    :goto_7
    sget v0, Lcom/transsnet/downloader/R$id;->tvTitle:I

    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getStreamVideo()Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getTitle()Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    :cond_a
    move-object v3, v1

    :goto_8
    invoke-virtual {p2, v0, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getStreamVideo()Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getEp()I

    move-result v0

    goto :goto_9

    :cond_b
    move v0, v3

    :goto_9
    if-lez v0, :cond_f

    sget v0, Lcom/transsnet/downloader/R$id;->tvEpisode:I

    invoke-virtual {p2, v0, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    sget v0, Lcom/transsnet/downloader/R$id;->tvEpisode:I

    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getStreamVideo()Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getEp()I

    move-result v2

    goto :goto_a

    :cond_c
    move v2, v3

    :goto_a
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getStreamVideo()Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    move-result-object v4

    if-eqz v4, :cond_d

    invoke-virtual {v4}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getSe()I

    move-result v3

    :cond_d
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getStreamVideo()Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    move-result-object v4

    if-eqz v4, :cond_e

    invoke-virtual {v4}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getSubjectType()Ljava/lang/Integer;

    move-result-object v4

    goto :goto_b

    :cond_e
    move-object v4, v1

    :goto_b
    invoke-static {v2, v3, v4}, Lak/i;->b(IILjava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto :goto_c

    :cond_f
    sget v0, Lcom/transsnet/downloader/R$id;->tvEpisode:I

    invoke-virtual {p2, v0, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    :goto_c
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getStreamVideo()Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    move-result-object v0

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getTotalDuration()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_d

    :cond_10
    move-wide v4, v2

    :goto_d
    cmp-long v0, v4, v2

    if-lez v0, :cond_12

    sget v0, Lcom/transsnet/downloader/R$id;->tvTime:I

    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getStreamVideo()Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    move-result-object v4

    if-eqz v4, :cond_11

    invoke-virtual {v4}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getTotalDuration()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_11

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :cond_11
    invoke-static {v2, v3}, Lcom/transsion/baseui/util/TimeUtilKt;->n(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    :cond_12
    sget v0, Lcom/transsnet/downloader/R$id;->progressBar:I

    invoke-virtual {p2, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getStreamVideo()Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    move-result-object v2

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getProgress()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_e

    :cond_13
    move-object v2, v1

    :goto_e
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getStreamVideo()Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    move-result-object p1

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getTotalDuration()Ljava/lang/Long;

    move-result-object v1

    :cond_14
    invoke-direct {p0, v2, v1}, Lcom/transsnet/downloader/adapter/t0;->F1(Ljava/lang/Long;Ljava/lang/Long;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    sget p1, Lcom/transsnet/downloader/R$id;->viewStub:I

    invoke-virtual {p2, p1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/ViewStub;->setVisibility(I)V

    return-void
.end method

.method private final E1(Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 9

    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getVideo()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getFileType()I

    move-result v0

    if-ne v0, v2, :cond_2

    sget v0, Lcom/transsnet/downloader/R$id;->ivCore:I

    invoke-virtual {p2, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/imageview/ShapeableImageView;

    sget-object v4, Lcom/transsnet/downloader/viewmodel/a0;->a:Lcom/transsnet/downloader/viewmodel/a0;

    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getVideo()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getCover()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v5

    :cond_1
    :goto_0
    invoke-virtual {v4, v1}, Lcom/transsnet/downloader/viewmodel/a0;->d(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_3

    :cond_2
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v4, Lcom/transsnet/downloader/R$id;->ivCore:I

    invoke-virtual {p2, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getVideo()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getCover()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    move-object v1, v5

    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getVideo()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getThumbnail()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_5
    move-object v5, v3

    :goto_2
    invoke-static {v0, v4, v1, v5}, Lcom/transsnet/downloader/adapter/DownloadedHolderKt;->a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getVideo()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->isSeries()Z

    move-result v0

    if-ne v0, v1, :cond_7

    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getVideo()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_7

    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getVideo()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectName()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    :cond_6
    move-object v0, v3

    goto/16 :goto_9

    :cond_7
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getVideo()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getResolution()I

    move-result v0

    goto :goto_4

    :cond_8
    move v0, v4

    :goto_4
    if-lez v0, :cond_d

    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getVideo()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_9

    move v0, v1

    goto :goto_5

    :cond_9
    move v0, v4

    :goto_5
    if-ne v0, v1, :cond_a

    move v0, v1

    goto :goto_6

    :cond_a
    move v0, v4

    :goto_6
    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getVideo()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getResolution()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_7

    :cond_b
    move-object v0, v3

    :goto_7
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getVideo()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v5

    if-eqz v5, :cond_c

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectName()Ljava/lang/String;

    move-result-object v5

    goto :goto_8

    :cond_c
    move-object v5, v3

    :goto_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "P "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_d
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getVideo()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_9
    sget v5, Lcom/transsnet/downloader/R$id;->tvTitle:I

    invoke-virtual {p2, v5, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getVideo()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->isSeries()Z

    move-result v0

    if-ne v0, v1, :cond_e

    move v0, v1

    goto :goto_a

    :cond_e
    move v0, v4

    :goto_a
    if-eqz v0, :cond_15

    sget v0, Lcom/transsnet/downloader/R$id;->tvEpisode:I

    invoke-virtual {p2, v0, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getVideo()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getEp()I

    move-result v0

    goto :goto_b

    :cond_f
    move v0, v4

    :goto_b
    if-lez v0, :cond_13

    sget v0, Lcom/transsnet/downloader/R$id;->tvEpisode:I

    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getVideo()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v5

    if-eqz v5, :cond_10

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getEp()I

    move-result v5

    goto :goto_c

    :cond_10
    move v5, v4

    :goto_c
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getVideo()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v6

    if-eqz v6, :cond_11

    invoke-virtual {v6}, Lcom/transsion/baselib/db/download/DownloadBean;->getSe()I

    move-result v6

    goto :goto_d

    :cond_11
    move v6, v4

    :goto_d
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getVideo()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v7

    if-eqz v7, :cond_12

    invoke-virtual {v7}, Lcom/transsion/baselib/db/download/DownloadBean;->getType()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_e

    :cond_12
    move-object v7, v3

    :goto_e
    invoke-static {v5, v6, v7}, Lak/i;->b(IILjava/lang/Integer;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v0, v5}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto :goto_10

    :cond_13
    sget v0, Lcom/transsnet/downloader/R$id;->tvEpisode:I

    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getVideo()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v5

    if-eqz v5, :cond_14

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getEpse()I

    move-result v5

    goto :goto_f

    :cond_14
    move v5, v4

    :goto_f
    invoke-static {v5, v1}, Lak/i;->c(IZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v0, v5}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto :goto_10

    :cond_15
    sget v0, Lcom/transsnet/downloader/R$id;->tvEpisode:I

    invoke-virtual {p2, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    :goto_10
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getType()I

    move-result v0

    if-eq v0, v2, :cond_19

    const/4 v2, 0x3

    if-eq v0, v2, :cond_16

    const/4 v2, 0x5

    if-eq v0, v2, :cond_19

    const/4 v2, 0x6

    if-eq v0, v2, :cond_19

    sget v0, Lcom/transsnet/downloader/R$id;->ivCornerMark:I

    sget v2, Lcom/transsion/baseui/R$mipmap;->home_ic_audio_white:I

    invoke-virtual {p2, v0, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto :goto_13

    :cond_16
    sget v0, Lcom/transsnet/downloader/R$id;->ivCornerMark:I

    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getVideo()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v2

    if-eqz v2, :cond_17

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->isShotTV()Z

    move-result v2

    if-ne v2, v1, :cond_17

    move v2, v1

    goto :goto_11

    :cond_17
    move v2, v4

    :goto_11
    if-eqz v2, :cond_18

    sget v2, Lcom/transsion/baseui/R$mipmap;->home_ic_short_tv_white:I

    goto :goto_12

    :cond_18
    sget v2, Lcom/transsion/baseui/R$mipmap;->home_ic_tv_white:I

    :goto_12
    invoke-virtual {p2, v0, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto :goto_13

    :cond_19
    sget v0, Lcom/transsnet/downloader/R$id;->ivCornerMark:I

    sget v2, Lcom/transsion/baseui/R$mipmap;->home_ic_movie_white:I

    invoke-virtual {p2, v0, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    :goto_13
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getVideo()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v0

    const-wide/16 v5, 0x0

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getDuration()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    goto :goto_14

    :cond_1a
    move-wide v7, v5

    :goto_14
    cmp-long v0, v7, v5

    if-lez v0, :cond_1c

    sget v0, Lcom/transsnet/downloader/R$id;->tvTime:I

    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getVideo()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v2

    if-eqz v2, :cond_1b

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getDuration()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_1b

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    :cond_1b
    invoke-static {v5, v6}, Lcom/transsion/baseui/util/TimeUtilKt;->n(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    :cond_1c
    sget v0, Lcom/transsnet/downloader/R$id;->progressBar:I

    invoke-virtual {p2, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getVideo()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v2

    if-eqz v2, :cond_1d

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getReadProgress()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_15

    :cond_1d
    move-object v2, v3

    :goto_15
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getVideo()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v5

    if-eqz v5, :cond_1e

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getDuration()Ljava/lang/Long;

    move-result-object v3

    :cond_1e
    invoke-direct {p0, v2, v3}, Lcom/transsnet/downloader/adapter/t0;->F1(Ljava/lang/Long;Ljava/lang/Long;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->isLocalFileDelete()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getVideo()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object p1

    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isFileExist()Z

    move-result p1

    if-nez p1, :cond_1f

    goto :goto_16

    :cond_1f
    move v1, v4

    :goto_16
    if-eqz v1, :cond_20

    goto :goto_17

    :cond_20
    sget p1, Lcom/transsnet/downloader/R$id;->viewStub:I

    invoke-virtual {p2, p1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_18

    :cond_21
    :goto_17
    sget p1, Lcom/transsnet/downloader/R$id;->viewStub:I

    invoke-virtual {p2, p1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    invoke-virtual {p1, v4}, Landroid/view/ViewStub;->setVisibility(I)V

    :goto_18
    return-void
.end method

.method private final F1(Ljava/lang/Long;Ljava/lang/Long;)I
    .locals 4

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/16 p1, 0x64

    int-to-long v2, p1

    mul-long/2addr v0, v2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    div-long/2addr v0, p1

    long-to-int p1, v0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected B1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;->getHistorical()Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p2, p1}, Lcom/transsnet/downloader/adapter/t0;->C1(Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getStreamVideo()Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2, p1}, Lcom/transsnet/downloader/adapter/t0;->D1(Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/adapter/t0;->B1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;)V

    return-void
.end method
