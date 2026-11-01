.class public final Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/avery/subtitle/widget/SimpleSubtitleView;

.field private final b:Lpx/a;

.field private final c:Ljava/lang/String;

.field private d:Z

.field private e:J

.field private f:F

.field private final g:Lkotlin/Lazy;

.field private final h:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Lcom/avery/subtitle/widget/SimpleSubtitleView;Lpx/a;)V
    .locals 1

    const-string v0, "subtitleView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "floatBean"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->a:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    iput-object p2, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->b:Lpx/a;

    const-string p1, "VideoFloatSubtitle"

    iput-object p1, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->c:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->d:Z

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->f:F

    new-instance p1, Lcom/transsion/videofloat/manager/j;

    invoke-direct {p1}, Lcom/transsion/videofloat/manager/j;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->g:Lkotlin/Lazy;

    new-instance p1, Lcom/transsion/videofloat/manager/k;

    invoke-direct {p1}, Lcom/transsion/videofloat/manager/k;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->h:Lkotlin/Lazy;

    invoke-direct {p0}, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->o()V

    return-void
.end method

.method public static synthetic a()Llj/c;
    .locals 1

    invoke-static {}, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->i()Llj/c;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
    .locals 1

    invoke-static {}, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->x()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic c(Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;)Llj/c;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->j()Llj/c;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d(Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;)Lpx/a;
    .locals 0

    iget-object p0, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->b:Lpx/a;

    return-object p0
.end method

.method public static final synthetic e(Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic f(Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;)Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->l()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic g(Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->n(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic h(Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->t(Ljava/util/List;)V

    return-void
.end method

.method private static final i()Llj/c;
    .locals 3

    sget-object v0, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$g1;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    const-string v2, "getApp(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/AppDatabase$g1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/baselib/db/AppDatabase;->p1()Llj/c;

    move-result-object v0

    return-object v0
.end method

.method private final j()Llj/c;
    .locals 1

    iget-object v0, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->h:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llj/c;

    return-object v0
.end method

.method private final l()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
    .locals 1

    iget-object v0, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->g:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    return-object v0
.end method

.method private final n(Ljava/lang/String;Ljava/util/List;)V
    .locals 12

    invoke-static {}, Lcom/transsion/subtitle/helper/e;->a()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Llg/a;->a:Llg/a$a;

    iget-object v2, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "------------------cur  language = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\uff0c country = "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x1

    invoke-virtual {v1, v2, v3, v7}, Llg/a$a;->u(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v2, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {v2}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v2

    const-string v3, "k_subtitle_language"

    const-string v8, ""

    invoke-virtual {v2, v3, v8}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v2, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initDefaultSubtitle savedDiffId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\uff0c savedLan = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Leu/a;

    invoke-virtual {v5}, Leu/a;->d()Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v6

    invoke-virtual {v6}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLan()Ljava/lang/String;

    move-result-object v6

    const-string v10, "en"

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v3, v5

    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_4

    :cond_3
    invoke-virtual {v5}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v6

    invoke-virtual {v6}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLanAbbr()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    move-result-object v8

    sget-object v4, Llg/a;->a:Llg/a$a;

    iget-object v6, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->c:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "111 phone set def language = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v6, v10, v7}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_1
    move-object v4, v5

    goto :goto_0

    :cond_4
    invoke-virtual {v5}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v6

    invoke-virtual {v6}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v5}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    move-result-object v8

    sget-object v4, Llg/a;->a:Llg/a$a;

    iget-object v6, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->c:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "222 saved flag = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v6, v10, v7}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_5
    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_0

    :cond_6
    invoke-virtual {v5}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v6

    invoke-virtual {v6}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLanName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    move-result-object v8

    sget-object v4, Llg/a;->a:Llg/a$a;

    iget-object v6, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->c:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "555 local set savedLan = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v6, v10, v7}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_7
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_b

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Leu/a;->d()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {v3}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    move-result-object v8

    sget-object p1, Llg/a;->a:Llg/a$a;

    iget-object p2, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "333 english set def language = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0, v7}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_3

    :cond_8
    move-object p1, p2

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_b

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Leu/a;

    invoke-virtual {p2}, Leu/a;->d()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p2}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    move-result-object v8

    move-object v3, p2

    goto :goto_2

    :cond_a
    move-object v3, v4

    :goto_2
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_c

    sget-object p1, Llg/a;->a:Llg/a$a;

    iget-object p2, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->c:Ljava/lang/String;

    const-string v0, "\u6ca1\u6709\u5bf9\u5e94\u7684\u8bed\u8a00\uff0c\u4e0d\u8bbe\u7f6e\uff0c\u9700\u8981\u7528\u6237\u624b\u52a8\u8bbe\u7f6e\u6216\u5f53\u524d\u4e0b\u8f7d\u540e\u81ea\u52a8\u8bbe\u7f6e\u4e0a"

    invoke-virtual {p1, p2, v0, v7}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_b
    move-object v3, v4

    :cond_c
    :goto_3
    if-eqz v3, :cond_d

    invoke-virtual {v3}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object p1

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getPath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_d

    iget-object p2, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->a:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    invoke-virtual {p2, p1}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->setDefaultSubtitle(Ljava/lang/String;)V

    :cond_d
    if-eqz v3, :cond_e

    invoke-virtual {v3}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object p1

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getDelay()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "default delayDuration = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4, v7}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->a:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    invoke-virtual {v0, p1, p2}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->subtitleDelay(J)V

    :cond_e
    sget-object p1, Llg/a;->a:Llg/a$a;

    iget-object p2, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->c:Ljava/lang/String;

    if-eqz v3, :cond_f

    invoke-virtual {v3}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_f
    move-object v0, v2

    :goto_4
    if-eqz v3, :cond_10

    invoke-virtual {v3}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getPath()Ljava/lang/String;

    move-result-object v2

    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default select subtitle defDiffId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", name= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\uff0cpath:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0, v7}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private final o()V
    .locals 7

    iget-object v0, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->b:Lpx/a;

    invoke-virtual {v0}, Lpx/a;->x()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->b:Lpx/a;

    invoke-virtual {v2}, Lpx/a;->i()Lcom/transsion/videofloat/bean/FloatPlayType;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "float subtitle----intercept\uff0c "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->a:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    new-instance v1, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$a;

    invoke-direct {v1, p0}, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$a;-><init>(Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->initSubtitle(Li5/a;Z)V

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2;-><init>(Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method private final t(Ljava/util/List;)V
    .locals 3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leu/a;

    invoke-virtual {v0}, Leu/a;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->a:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    invoke-static {v0}, Lcom/transsion/subtitle/helper/e;->b(Leu/a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->setSubtitlePath(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static final x()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
    .locals 3

    sget-object v0, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$g1;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    const-string v2, "getApp(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/AppDatabase$g1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/baselib/db/AppDatabase;->D1()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final k()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->e:J

    return-wide v0
.end method

.method public final m()F
    .locals 1

    iget v0, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->f:F

    return v0
.end method

.method public final p()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->d:Z

    return v0
.end method

.method public final q()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->b:Lpx/a;

    invoke-virtual {v0}, Lpx/a;->x()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->a:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    invoke-virtual {v0}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->pause()V

    return-void
.end method

.method public final r()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->b:Lpx/a;

    invoke-virtual {v0}, Lpx/a;->x()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->a:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    invoke-virtual {v0}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->stop()V

    iget-object v0, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->a:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    invoke-virtual {v0}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->destroy()V

    return-void
.end method

.method public final s()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->b:Lpx/a;

    invoke-virtual {v0}, Lpx/a;->x()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->a:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    invoke-virtual {v0}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->resume()V

    return-void
.end method

.method public final u(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->e:J

    return-void
.end method

.method public final v(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->d:Z

    return-void
.end method

.method public final w(F)V
    .locals 0

    iput p1, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->f:F

    return-void
.end method
