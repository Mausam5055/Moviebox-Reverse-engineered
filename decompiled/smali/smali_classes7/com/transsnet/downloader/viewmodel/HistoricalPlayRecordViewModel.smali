.class public final Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;
.super Lcom/transsnet/downloader/viewmodel/a;


# instance fields
.field private final b:Landroidx/lifecycle/b0;

.field private final c:Landroidx/lifecycle/b0;

.field private final d:Lkotlin/Lazy;

.field private final e:Landroidx/lifecycle/b0;

.field private final f:Lkotlin/Lazy;

.field private final g:Lkotlin/Lazy;

.field private final h:Lkotlin/Lazy;

.field private final i:Lkotlin/Lazy;

.field private final j:Lkotlin/Lazy;

.field private final k:Lkotlin/Lazy;

.field private final l:Lkotlin/Lazy;

.field private m:Ljava/lang/String;

.field private n:I

.field private o:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsnet/downloader/viewmodel/a;-><init>()V

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->b:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->c:Landroidx/lifecycle/b0;

    new-instance v0, Lcom/transsnet/downloader/viewmodel/b0;

    invoke-direct {v0}, Lcom/transsnet/downloader/viewmodel/b0;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->d:Lkotlin/Lazy;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->e:Landroidx/lifecycle/b0;

    new-instance v0, Lcom/transsnet/downloader/viewmodel/c0;

    invoke-direct {v0}, Lcom/transsnet/downloader/viewmodel/c0;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->f:Lkotlin/Lazy;

    new-instance v0, Lcom/transsnet/downloader/viewmodel/d0;

    invoke-direct {v0}, Lcom/transsnet/downloader/viewmodel/d0;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->g:Lkotlin/Lazy;

    new-instance v0, Lcom/transsnet/downloader/viewmodel/e0;

    invoke-direct {v0}, Lcom/transsnet/downloader/viewmodel/e0;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->h:Lkotlin/Lazy;

    new-instance v0, Lcom/transsnet/downloader/viewmodel/f0;

    invoke-direct {v0}, Lcom/transsnet/downloader/viewmodel/f0;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->i:Lkotlin/Lazy;

    new-instance v0, Lcom/transsnet/downloader/viewmodel/g0;

    invoke-direct {v0}, Lcom/transsnet/downloader/viewmodel/g0;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->j:Lkotlin/Lazy;

    new-instance v0, Lcom/transsnet/downloader/viewmodel/h0;

    invoke-direct {v0}, Lcom/transsnet/downloader/viewmodel/h0;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->k:Lkotlin/Lazy;

    new-instance v0, Lcom/transsnet/downloader/viewmodel/i0;

    invoke-direct {v0}, Lcom/transsnet/downloader/viewmodel/i0;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->l:Lkotlin/Lazy;

    const-string v0, "lastFormatTime"

    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->m:Ljava/lang/String;

    const/16 v0, 0xa

    iput v0, p0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->o:I

    return-void
.end method

.method static synthetic A(Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;Ljava/util/List;ZILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->z(Ljava/util/List;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final D(Lcom/transsion/baselib/db/audio/AudioBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteAudioRecord$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteAudioRecord$1;

    iget v1, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteAudioRecord$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteAudioRecord$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteAudioRecord$1;

    invoke-direct {v0, p0, p2}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteAudioRecord$1;-><init>(Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteAudioRecord$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteAudioRecord$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteAudioRecord$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/baselib/db/audio/AudioBean;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->H()Ljj/a;

    move-result-object p2

    if-eqz p2, :cond_3

    iput-object p1, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteAudioRecord$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteAudioRecord$1;->label:I

    invoke-interface {p2, p1, v0}, Ljj/a;->b(Lcom/transsion/baselib/db/audio/AudioBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    sget-object p2, Lcom/transsnet/downloader/viewmodel/a0;->a:Lcom/transsnet/downloader/viewmodel/a0;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/audio/AudioBean;->getTitle()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete --- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ---audio recording"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/transsnet/downloader/viewmodel/a0;->t(Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method private final E(Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteShortTVRecord$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteShortTVRecord$1;

    iget v1, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteShortTVRecord$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteShortTVRecord$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteShortTVRecord$1;

    invoke-direct {v0, p0, p2}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteShortTVRecord$1;-><init>(Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteShortTVRecord$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteShortTVRecord$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->Q()Lcom/transsion/baselib/db/video/ShortTVPlayDao;

    move-result-object p2

    invoke-virtual {p1}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getSubjectId()Ljava/lang/String;

    move-result-object p1

    iput v4, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteShortTVRecord$1;->label:I

    invoke-interface {p2, p1, v0}, Lcom/transsion/baselib/db/video/ShortTVPlayDao;->e(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p2, Lcom/transsion/baselib/db/video/ShortTVPlayBean;

    if-eqz p2, :cond_5

    invoke-direct {p0}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->Q()Lcom/transsion/baselib/db/video/ShortTVPlayDao;

    move-result-object p1

    iput v3, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteShortTVRecord$1;->label:I

    invoke-interface {p1, p2, v0}, Lcom/transsion/baselib/db/video/ShortTVPlayDao;->j(Lcom/transsion/baselib/db/video/ShortTVPlayBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method private final F(Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteStreamRecord$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteStreamRecord$1;

    iget v1, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteStreamRecord$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteStreamRecord$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteStreamRecord$1;

    invoke-direct {v0, p0, p2}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteStreamRecord$1;-><init>(Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteStreamRecord$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteStreamRecord$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteStreamRecord$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/util/Iterator;

    iget-object v2, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteStreamRecord$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteStreamRecord$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->V()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    move-result-object p2

    invoke-virtual {p1}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getSubjectId()Ljava/lang/String;

    move-result-object v2

    iput-object p1, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteStreamRecord$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteStreamRecord$1;->label:I

    invoke-interface {p2, v2, v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayDao;->j(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p2, Ljava/util/List;

    if-nez p2, :cond_5

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_5
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move-object v2, p1

    move-object p1, p2

    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    invoke-direct {p0}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->V()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    move-result-object v4

    iput-object v2, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteStreamRecord$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteStreamRecord$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteStreamRecord$1;->label:I

    invoke-interface {v4, p2, v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayDao;->h(Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_6

    return-object v1

    :cond_7
    sget-object p1, Lcom/transsnet/downloader/viewmodel/a0;->a:Lcom/transsnet/downloader/viewmodel/a0;

    invoke-virtual {v2}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getSubjectId()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete --- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " --- video recording --> success"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/viewmodel/a0;->t(Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method private final G(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteVideoRecord$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteVideoRecord$1;

    iget v1, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteVideoRecord$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteVideoRecord$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteVideoRecord$1;

    invoke-direct {v0, p0, p2}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteVideoRecord$1;-><init>(Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteVideoRecord$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteVideoRecord$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteVideoRecord$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-virtual {p1, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setRead(I)V

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v4, v5}, Lcom/transsion/baselib/db/download/DownloadBean;->setLastPlayTimeStamp(J)V

    invoke-virtual {p1, v4, v5}, Lcom/transsion/baselib/db/download/DownloadBean;->setReadProgress(J)V

    sget-object p2, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    invoke-virtual {p2}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    move-result-object p2

    iput-object p1, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteVideoRecord$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteVideoRecord$1;->label:I

    invoke-virtual {p2, p1, v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->b0(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    sget-object p2, Lcom/transsnet/downloader/viewmodel/a0;->a:Lcom/transsnet/downloader/viewmodel/a0;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete --- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " --- video recording --> success"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/transsnet/downloader/viewmodel/a0;->t(Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method private final H()Ljj/a;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->g:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj/a;

    return-object v0
.end method

.method private final K()Lcom/transsion/room/api/IAudioApi;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->k:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/room/api/IAudioApi;

    return-object v0
.end method

.method private final L()Lcom/transsion/room/api/IFloatingApi;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->l:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/room/api/IFloatingApi;

    return-object v0
.end method

.method private final O(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13

    instance-of v0, p2, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getOutsideVideoDownloadList$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getOutsideVideoDownloadList$1;

    iget v1, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getOutsideVideoDownloadList$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getOutsideVideoDownloadList$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getOutsideVideoDownloadList$1;

    invoke-direct {v0, p0, p2}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getOutsideVideoDownloadList$1;-><init>(Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getOutsideVideoDownloadList$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getOutsideVideoDownloadList$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getOutsideVideoDownloadList$1;->L$3:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/baselib/db/download/DownloadBean;

    iget-object v2, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getOutsideVideoDownloadList$1;->L$2:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v5, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getOutsideVideoDownloadList$1;->L$1:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    iget-object v6, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getOutsideVideoDownloadList$1;->L$0:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getOutsideVideoDownloadList$1;->L$3:Ljava/lang/Object;

    check-cast p1, Lcom/transsnet/downloader/viewmodel/j0;

    iget-object v2, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getOutsideVideoDownloadList$1;->L$2:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v5, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getOutsideVideoDownloadList$1;->L$1:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    iget-object v6, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getOutsideVideoDownloadList$1;->L$0:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p2, Lcom/transsnet/downloader/viewmodel/a0;->a:Lcom/transsnet/downloader/viewmodel/a0;

    invoke-virtual {p2}, Lcom/transsnet/downloader/viewmodel/a0;->a()Z

    move-result v2

    if-nez v2, :cond_4

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_4
    invoke-virtual {p0}, Lcom/transsnet/downloader/viewmodel/a;->d()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-string v2, "\u5f00\u59cb\u83b7\u53d6\u7ad9\u5916\u89c6\u9891 "

    invoke-virtual {p2, v2}, Lcom/transsnet/downloader/viewmodel/a0;->t(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/transsnet/downloader/viewmodel/a0;->n()Ljava/util/List;

    move-result-object v2

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getOutsideVideoDownloadList --> videos = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " --- consume = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/transsnet/downloader/viewmodel/a0;->t(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move-object v2, v7

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Lcom/transsnet/downloader/viewmodel/j0;

    sget-object v5, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    invoke-virtual {v5}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    move-result-object v5

    invoke-virtual {v11}, Lcom/transsnet/downloader/viewmodel/j0;->e()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_5

    const-string v6, ""

    :cond_5
    iput-object p1, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getOutsideVideoDownloadList$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getOutsideVideoDownloadList$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getOutsideVideoDownloadList$1;->L$2:Ljava/lang/Object;

    iput-object v11, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getOutsideVideoDownloadList$1;->L$3:Ljava/lang/Object;

    iput v4, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getOutsideVideoDownloadList$1;->label:I

    const/4 v7, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    move-object v8, v0

    invoke-static/range {v5 .. v10}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->F(Lcom/transsnet/downloader/manager/DownloadEsHelper;Ljava/lang/String;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_6

    return-object v1

    :cond_6
    move-object v6, p1

    move-object p1, v11

    move-object v12, v2

    move-object v2, p2

    move-object p2, v5

    move-object v5, v12

    :goto_2
    check-cast p2, Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getCover()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {p0, p2}, Lcom/transsnet/downloader/viewmodel/a;->c(Lcom/transsion/baselib/db/download/DownloadBean;)Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;

    move-result-object p1

    invoke-interface {v6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    move-object p2, v2

    move-object v2, v5

    move-object p1, v6

    goto :goto_1

    :cond_8
    :goto_4
    invoke-virtual {p0, p1}, Lcom/transsnet/downloader/viewmodel/a;->b(Lcom/transsnet/downloader/viewmodel/j0;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object p1

    sget-object p2, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    invoke-virtual {p2}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    move-result-object p2

    iput-object v6, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getOutsideVideoDownloadList$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getOutsideVideoDownloadList$1;->L$1:Ljava/lang/Object;

    iput-object v2, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getOutsideVideoDownloadList$1;->L$2:Ljava/lang/Object;

    iput-object p1, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getOutsideVideoDownloadList$1;->L$3:Ljava/lang/Object;

    iput v3, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getOutsideVideoDownloadList$1;->label:I

    invoke-virtual {p2, p1, v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->T(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_9

    return-object v1

    :cond_9
    :goto_5
    invoke-virtual {p0, p1}, Lcom/transsnet/downloader/viewmodel/a;->c(Lcom/transsion/baselib/db/download/DownloadBean;)Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;

    move-result-object p1

    invoke-interface {v6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    sget-object p1, Lcom/transsnet/downloader/viewmodel/a0;->a:Lcom/transsnet/downloader/viewmodel/a0;

    invoke-virtual {p0}, Lcom/transsnet/downloader/viewmodel/a;->d()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u9700\u8981\u52a0\u8f7d\u7684\u5c01\u9762 coverVideoList = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/viewmodel/a0;->t(Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method private final Q()Lcom/transsion/baselib/db/video/ShortTVPlayDao;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->h:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/baselib/db/video/ShortTVPlayDao;

    return-object v0
.end method

.method private final R(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p2, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getTransferReceivedVideoDataList$2;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getTransferReceivedVideoDataList$2;

    iget v1, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getTransferReceivedVideoDataList$2;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getTransferReceivedVideoDataList$2;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getTransferReceivedVideoDataList$2;

    invoke-direct {v0, p0, p2}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getTransferReceivedVideoDataList$2;-><init>(Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getTransferReceivedVideoDataList$2;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getTransferReceivedVideoDataList$2;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v5, :cond_1

    iget-object p1, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getTransferReceivedVideoDataList$2;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget-object v0, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getTransferReceivedVideoDataList$2;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v6, p2

    move-object p2, p1

    move-object p1, v0

    move-object v0, v6

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    invoke-virtual {v2}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    move-result-object v2

    iput-object p1, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getTransferReceivedVideoDataList$2;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getTransferReceivedVideoDataList$2;->L$1:Ljava/lang/Object;

    iput v5, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getTransferReceivedVideoDataList$2;->label:I

    invoke-static {v2, v4, v0, v5, v3}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->O(Lcom/transsnet/downloader/manager/DownloadEsHelper;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {p0, v1}, Lcom/transsnet/downloader/viewmodel/a;->c(Lcom/transsion/baselib/db/download/DownloadBean;)Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    if-eqz p1, :cond_5

    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    :cond_5
    const/4 p1, 0x2

    invoke-static {p0, p2, v4, p1, v3}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->A(Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;Ljava/util/List;ZILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->T()Landroidx/lifecycle/b0;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method private final U()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->j:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    return-object v0
.end method

.method private final V()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->i:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    return-object v0
.end method

.method public static synthetic X(Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;ZZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->W(ZZ)V

    return-void
.end method

.method private final Z(Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getUgcVideo()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->U()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getUgcVideo()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getUgcVideoId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;->j(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getVideo()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-direct {p0, p1, p2}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->G(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_5

    return-object p1

    :cond_2
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getStreamVideo()Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-direct {p0, p1, p2}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->E(Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_5

    return-object p1

    :cond_3
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getStreamVideo()Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-direct {p0, p1, p2}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->F(Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_5

    return-object p1

    :cond_4
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getAudio()Lcom/transsion/baselib/db/audio/AudioBean;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-direct {p0, p1, p2}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->D(Lcom/transsion/baselib/db/audio/AudioBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_5

    return-object p1

    :cond_5
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method private static final a0()Lcom/transsion/room/api/IAudioApi;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lcom/transsion/room/api/IAudioApi;

    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/room/api/IAudioApi;

    return-object v0
.end method

.method private static final b0()Lcom/transsion/room/api/IFloatingApi;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lcom/transsion/room/api/IFloatingApi;

    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/room/api/IFloatingApi;

    return-object v0
.end method

.method private final d0(Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;Landroidx/fragment/app/FragmentActivity;)V
    .locals 4

    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getAudio()Lcom/transsion/baselib/db/audio/AudioBean;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->K()Lcom/transsion/room/api/IAudioApi;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/room/api/IAudioApi;->b(Lcom/transsion/baselib/db/audio/AudioBean;)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->K()Lcom/transsion/room/api/IAudioApi;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/transsion/room/api/IAudioApi;->f()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->K()Lcom/transsion/room/api/IAudioApi;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/transsion/room/api/IAudioApi;->stop()V

    :cond_2
    return-void

    :cond_3
    invoke-direct {p0}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->K()Lcom/transsion/room/api/IAudioApi;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Lcom/transsion/room/api/IAudioApi$a;->a(Lcom/transsion/room/api/IAudioApi;Lcom/transsion/baselib/db/audio/AudioBean;ZILjava/lang/Object;)V

    :cond_4
    invoke-direct {p0}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->L()Lcom/transsion/room/api/IFloatingApi;

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1, p1}, Lcom/transsion/room/api/IFloatingApi;->a(Ljava/lang/ref/WeakReference;Lcom/transsion/baselib/db/audio/AudioBean;)V

    :cond_5
    return-void
.end method

.method public static synthetic e()Lcom/transsion/baselib/db/video/ShortTVPlayDao;
    .locals 1

    invoke-static {}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->j0()Lcom/transsion/baselib/db/video/ShortTVPlayDao;

    move-result-object v0

    return-object v0
.end method

.method private final e0(Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getDownloadFilePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    sget-object v2, Lcom/transsnet/downloader/viewmodel/a0;->a:Lcom/transsnet/downloader/viewmodel/a0;

    invoke-virtual {v2, v1}, Lcom/transsnet/downloader/viewmodel/a0;->o(Ljava/lang/String;)Z

    move-result v2

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_6

    sget-object v0, Lcom/transsnet/downloader/DownloadManagerApi;->j:Lcom/transsnet/downloader/DownloadManagerApi$a;

    invoke-virtual {v0}, Lcom/transsnet/downloader/DownloadManagerApi$a;->a()Lcom/transsnet/downloader/DownloadManagerApi;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1, p3}, Lcom/transsnet/downloader/DownloadManagerApi;->t0(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_3
    :goto_1
    if-eqz p2, :cond_6

    const-string p3, "/movie/detail"

    invoke-static {p3}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p3

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getSubjectType()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_2

    :cond_4
    sget-object v1, Lcom/transsion/moviedetailapi/SubjectType;->MOVIE:Lcom/transsion/moviedetailapi/SubjectType;

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    move-result v1

    :goto_2
    const-string v2, "subject_type"

    invoke-virtual {p3, v2, v1}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    move-result-object p3

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getSubjectId()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_5
    move-object p1, v0

    :goto_3
    const-string v1, "id"

    invoke-virtual {p3, v1, p1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    const-class p3, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    const-string v1, "module_name"

    invoke-virtual {p1, v1, p3}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    const/4 p3, 0x2

    invoke-static {p1, p2, v0, p3, v0}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    :cond_6
    :goto_4
    return-void
.end method

.method public static synthetic f()Lcom/transsion/room/api/IFloatingApi;
    .locals 1

    invoke-static {}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->b0()Lcom/transsion/room/api/IFloatingApi;

    move-result-object v0

    return-object v0
.end method

.method private final f0(Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_3

    const-string p3, "/movie/detail"

    invoke-static {p3}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p3

    sget-object v0, Lcom/transsion/moviedetailapi/SubjectType;->MUSIC:Lcom/transsion/moviedetailapi/SubjectType;

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    move-result v0

    const-string v1, "subject_type"

    invoke-virtual {p3, v1, v0}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    move-result-object p3

    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getStreamVideo()Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getSubjectId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getVideo()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :cond_2
    :goto_0
    const-string p1, "id"

    invoke-virtual {p3, p1, v0}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    const/4 p3, 0x2

    invoke-static {p1, p2, v1, p3, v1}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public static synthetic g()Ljj/a;
    .locals 1

    invoke-static {}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->y()Ljj/a;

    move-result-object v0

    return-object v0
.end method

.method private final g0(Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getVideo()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isShotTV()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p3, Lls/a;->a:Lls/a;

    invoke-virtual {p3}, Lls/a;->b()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p3

    const-string v0, "id"

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p3

    const-string v0, "ep"

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getEp()I

    move-result v1

    invoke-virtual {p3, v0, v1}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    move-result-object p3

    const-string v0, "ops"

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getOps()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p3

    const-string v0, "ms"

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getReadProgress()J

    move-result-wide v1

    invoke-virtual {p3, v0, v1, v2}, Lcom/therouter/router/Navigator;->G(Ljava/lang/String;J)Lcom/therouter/router/Navigator;

    move-result-object p1

    const/4 p3, 0x2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0, p3, v0}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/transsnet/downloader/DownloadManagerApi;->j:Lcom/transsnet/downloader/DownloadManagerApi$a;

    invoke-virtual {v0}, Lcom/transsnet/downloader/DownloadManagerApi$a;->a()Lcom/transsnet/downloader/DownloadManagerApi;

    move-result-object v0

    invoke-virtual {v0, p2, p1, p3}, Lcom/transsnet/downloader/DownloadManagerApi;->s0(Landroidx/fragment/app/FragmentActivity;Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic h()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
    .locals 1

    invoke-static {}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->m0()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    move-result-object v0

    return-object v0
.end method

.method private static final h0()Lkotlinx/coroutines/flow/y0;
    .locals 1

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/flow/j1;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/y0;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic i()Landroidx/lifecycle/b0;
    .locals 1

    invoke-static {}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->k0()Landroidx/lifecycle/b0;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic j()Lkotlinx/coroutines/flow/y0;
    .locals 1

    invoke-static {}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->h0()Lkotlinx/coroutines/flow/y0;

    move-result-object v0

    return-object v0
.end method

.method private static final j0()Lcom/transsion/baselib/db/video/ShortTVPlayDao;
    .locals 3

    sget-object v0, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$g1;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    const-string v2, "getApp(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/AppDatabase$g1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/baselib/db/AppDatabase;->x1()Lcom/transsion/baselib/db/video/ShortTVPlayDao;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic k()Lcom/transsion/room/api/IAudioApi;
    .locals 1

    invoke-static {}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->a0()Lcom/transsion/room/api/IAudioApi;

    move-result-object v0

    return-object v0
.end method

.method private static final k0()Landroidx/lifecycle/b0;
    .locals 1

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    return-object v0
.end method

.method public static synthetic l()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;
    .locals 1

    invoke-static {}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->l0()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    move-result-object v0

    return-object v0
.end method

.method private static final l0()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;
    .locals 3

    sget-object v0, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$g1;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    const-string v2, "getApp(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/AppDatabase$g1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/baselib/db/AppDatabase;->C1()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic m(Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;Ljava/util/List;Z)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->z(Ljava/util/List;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final m0()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
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

.method public static final synthetic n(Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;Lcom/transsion/baselib/db/audio/AudioBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->D(Lcom/transsion/baselib/db/audio/AudioBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic o(Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->E(Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic p(Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->F(Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic q(Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->G(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic r(Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;)I
    .locals 0

    iget p0, p0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->o:I

    return p0
.end method

.method public static final synthetic s(Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->O(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic t(Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;)Lcom/transsion/baselib/db/video/ShortTVPlayDao;
    .locals 0

    invoke-direct {p0}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->Q()Lcom/transsion/baselib/db/video/ShortTVPlayDao;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic u(Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->R(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic v(Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;)Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;
    .locals 0

    invoke-direct {p0}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->U()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic w(Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;)Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
    .locals 0

    invoke-direct {p0}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->V()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic x(Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->Z(Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final y()Ljj/a;
    .locals 2

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$g1;

    invoke-virtual {v1, v0}, Lcom/transsion/baselib/db/AppDatabase$g1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/baselib/db/AppDatabase;->o1()Ljj/a;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private final z(Ljava/util/List;Z)Ljava/util/List;
    .locals 12

    const/4 v0, 0x0

    new-instance v1, Ljava/util/LinkedHashMap;

    const/16 v2, 0x10

    const/high16 v3, 0x3f400000    # 0.75f

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;

    invoke-virtual {v2}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getOriginalFormatTime()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getOriginalFormatTime()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_0

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getOriginalFormatTime()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v3, ""

    :cond_2
    new-array v5, v4, [Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;

    aput-object v2, v5, v0

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, "lastFormatTime"

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    const/4 v5, 0x0

    if-eqz p2, :cond_4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;

    invoke-virtual {v6}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getFormatTime()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;

    invoke-virtual {v2}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getFormatTime()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;

    invoke-virtual {v7}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getFormatTime()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v4, v5, v7, v5}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;-><init>(ILcom/transsnet/downloader/bean/HistoricalPlayRecordBean;Ljava/lang/String;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;

    new-instance v9, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;

    invoke-virtual {v10}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getFormatTime()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    invoke-direct {v9, v11, v8, v10, v5}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;-><init>(ILcom/transsnet/downloader/bean/HistoricalPlayRecordBean;Ljava/lang/String;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-interface {p1, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    :cond_6
    return-object p1
.end method


# virtual methods
.method public final B(Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;Lkotlin/jvm/functions/Function0;)V
    .locals 7

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$delete$2;

    const/4 v0, 0x0

    invoke-direct {v4, p1, p0, p2, v0}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$delete$2;-><init>(Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final C(Lkotlin/jvm/functions/Function0;)V
    .locals 7

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteAll$2;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteAll$2;-><init>(Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final I()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->b:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final J()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->c:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final M()I
    .locals 1

    iget v0, p0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->n:I

    return v0
.end method

.method public final N()V
    .locals 6

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v1

    new-instance v3, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getOutsideLocalFileList$1;

    const/4 v2, 0x0

    invoke-direct {v3, p0, v2}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getOutsideLocalFileList$1;-><init>(Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final P()Lkotlinx/coroutines/flow/y0;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->f:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/flow/y0;

    return-object v0
.end method

.method public final S()V
    .locals 6

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v1

    new-instance v3, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getTransferReceivedVideoDataList$1;

    const/4 v2, 0x0

    invoke-direct {v3, p0, v2}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getTransferReceivedVideoDataList$1;-><init>(Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final T()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->d:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final W(ZZ)V
    .locals 6

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v1

    new-instance v3, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getVideoPlayHistoricalList$1;

    const/4 v2, 0x0

    invoke-direct {v3, p2, p0, p1, v2}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getVideoPlayHistoricalList$1;-><init>(ZLcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;ZLkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final Y()V
    .locals 6

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v1

    new-instance v3, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$loadVideoCover$1;

    const/4 v2, 0x0

    invoke-direct {v3, p0, v2}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$loadVideoCover$1;-><init>(Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final c0(Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;->getHistorical()Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getType()I

    move-result v0

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getStreamVideo()Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->e0(Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->f0(Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->g0(Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->d0(Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;Landroidx/fragment/app/FragmentActivity;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public final i0(I)V
    .locals 0

    iput p1, p0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->n:I

    return-void
.end method
