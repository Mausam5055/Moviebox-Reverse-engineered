.class public final Lcom/transsnet/downloader/core/task/DownloadTaskUtil;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsnet/downloader/core/task/DownloadTaskUtil;

.field private static final b:Lkotlin/Lazy;

.field private static final c:Lkotlin/Lazy;

.field private static final d:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsnet/downloader/core/task/DownloadTaskUtil;

    invoke-direct {v0}, Lcom/transsnet/downloader/core/task/DownloadTaskUtil;-><init>()V

    sput-object v0, Lcom/transsnet/downloader/core/task/DownloadTaskUtil;->a:Lcom/transsnet/downloader/core/task/DownloadTaskUtil;

    new-instance v0, Lcom/transsnet/downloader/core/task/d;

    invoke-direct {v0}, Lcom/transsnet/downloader/core/task/d;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsnet/downloader/core/task/DownloadTaskUtil;->b:Lkotlin/Lazy;

    new-instance v0, Lcom/transsnet/downloader/core/task/e;

    invoke-direct {v0}, Lcom/transsnet/downloader/core/task/e;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsnet/downloader/core/task/DownloadTaskUtil;->c:Lkotlin/Lazy;

    new-instance v0, Lcom/transsnet/downloader/core/task/f;

    invoke-direct {v0}, Lcom/transsnet/downloader/core/task/f;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsnet/downloader/core/task/DownloadTaskUtil;->d:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Z
    .locals 1

    invoke-static {}, Lcom/transsnet/downloader/core/task/DownloadTaskUtil;->h()Z

    move-result v0

    return v0
.end method

.method public static synthetic b()Z
    .locals 1

    invoke-static {}, Lcom/transsnet/downloader/core/task/DownloadTaskUtil;->g()Z

    move-result v0

    return v0
.end method

.method public static synthetic c()Llj/n0;
    .locals 1

    invoke-static {}, Lcom/transsnet/downloader/core/task/DownloadTaskUtil;->m()Llj/n0;

    move-result-object v0

    return-object v0
.end method

.method private static final g()Z
    .locals 3

    sget-object v0, Lsm/f;->c:Lsm/f$a;

    invoke-virtual {v0}, Lsm/f$a;->a()Lsm/f;

    move-result-object v0

    const-string v1, "downloadInCoroutine"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lsm/f;->c(Ljava/lang/String;Z)Lcom/transsion/mb/config/manager/ConfigBean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lkotlin/text/StringsKt;->m1(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_2
    :goto_1
    return v1
.end method

.method private static final h()Z
    .locals 3

    sget-object v0, Lsm/f;->c:Lsm/f$a;

    invoke-virtual {v0}, Lsm/f$a;->a()Lsm/f;

    move-result-object v0

    const-string v1, "downloadNewRange"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lsm/f;->c(Ljava/lang/String;Z)Lcom/transsion/mb/config/manager/ConfigBean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lkotlin/text/StringsKt;->m1(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_2
    :goto_1
    return v1
.end method

.method private final l()Llj/n0;
    .locals 1

    sget-object v0, Lcom/transsnet/downloader/core/task/DownloadTaskUtil;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llj/n0;

    return-object v0
.end method

.method private static final m()Llj/n0;
    .locals 3

    sget-object v0, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$g1;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    const-string v2, "getApp(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/AppDatabase$g1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/baselib/db/AppDatabase;->q1()Llj/n0;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final d(JLcom/transsion/baselib/db/download/DownloadBean;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    instance-of v3, v2, Lcom/transsnet/downloader/core/task/DownloadTaskUtil$checkOldRanges$1;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/transsnet/downloader/core/task/DownloadTaskUtil$checkOldRanges$1;

    iget v4, v3, Lcom/transsnet/downloader/core/task/DownloadTaskUtil$checkOldRanges$1;->label:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/transsnet/downloader/core/task/DownloadTaskUtil$checkOldRanges$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/transsnet/downloader/core/task/DownloadTaskUtil$checkOldRanges$1;

    invoke-direct {v3, v0, v2}, Lcom/transsnet/downloader/core/task/DownloadTaskUtil$checkOldRanges$1;-><init>(Lcom/transsnet/downloader/core/task/DownloadTaskUtil;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v2, v3, Lcom/transsnet/downloader/core/task/DownloadTaskUtil$checkOldRanges$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v4

    iget v5, v3, Lcom/transsnet/downloader/core/task/DownloadTaskUtil$checkOldRanges$1;->label:I

    const-string v6, "download"

    const/4 v7, 0x1

    if-eqz v5, :cond_2

    if-ne v5, v7, :cond_1

    iget-object v1, v3, Lcom/transsnet/downloader/core/task/DownloadTaskUtil$checkOldRanges$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v3, v3, Lcom/transsnet/downloader/core/task/DownloadTaskUtil$checkOldRanges$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v4, v0

    move-object v0, v3

    move-object v2, v6

    goto/16 :goto_6

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadRange;->isRangeDownloadSuccess()Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadRange;->getRangeSize()J

    move-result-wide v9

    const-wide/32 v11, 0x300000

    add-long v11, p1, v11

    cmp-long v9, v9, v11

    if-gez v9, :cond_4

    :cond_3
    move-object v0, v2

    move-object/from16 v22, v3

    move-object/from16 p5, v4

    move-object/from16 v16, v5

    move-object v2, v6

    goto/16 :goto_5

    :cond_4
    sget-object v9, Llg/a;->a:Llg/a$a;

    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadRange;->getRangeId()I

    move-result v10

    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadRange;->getStart()J

    move-result-wide v11

    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadRange;->getEnd()J

    move-result-wide v13

    move-object/from16 p5, v4

    move-object v15, v5

    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadRange;->getProgress()J

    move-result-wide v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v15

    const-string v15, "checkOldRanges, rangeId:"

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ",start:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ",end:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ",progress:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v9, v6, v4, v5}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v4, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    const-wide/16 v9, -0x1

    iput-wide v9, v4, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    new-instance v5, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    iput-wide v9, v5, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadRange;->totalProgress()J

    move-result-wide v9

    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadRange;->getEnd()J

    move-result-wide v11

    :goto_2
    iget-wide v13, v4, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    cmp-long v7, v13, v11

    if-gez v7, :cond_a

    iget-wide v0, v5, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    const-wide/16 v17, 0x0

    cmp-long v0, v0, v17

    const-wide/16 v19, 0x1

    if-gez v0, :cond_5

    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadRange;->getStart()J

    move-result-wide v0

    goto :goto_3

    :cond_5
    add-long v0, v13, v19

    :goto_3
    iput-wide v0, v5, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    add-long v0, v0, p1

    sub-long v0, v0, v19

    iput-wide v0, v4, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    cmp-long v0, v0, v11

    if-ltz v0, :cond_6

    iput-wide v11, v4, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    :cond_6
    iget-wide v0, v4, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    cmp-long v0, v9, v0

    if-lez v0, :cond_7

    move-wide/from16 v0, p1

    goto :goto_4

    :cond_7
    iget-wide v0, v5, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    cmp-long v7, v9, v0

    if-lez v7, :cond_8

    sub-long v17, v9, v0

    :cond_8
    move-wide/from16 v0, v17

    :goto_4
    iget-wide v13, v5, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadRange;->getStart()J

    move-result-wide v17

    cmp-long v7, v13, v17

    const-string v13, ", progress:"

    const-string v14, ", end:"

    const-string v15, ", start:"

    if-nez v7, :cond_9

    move-wide/from16 v17, v11

    iget-wide v11, v4, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-virtual {v8, v11, v12}, Lcom/transsion/baselib/db/download/DownloadRange;->setEnd(J)V

    invoke-virtual {v8, v0, v1}, Lcom/transsion/baselib/db/download/DownloadRange;->setProgress(J)V

    sget-object v7, Llg/a;->a:Llg/a$a;

    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadRange;->getRangeId()I

    move-result v11

    move-object/from16 v19, v2

    move-object v12, v3

    iget-wide v2, v5, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    move-object/from16 v21, v5

    move-object/from16 v20, v6

    iget-wide v5, v4, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    move-object/from16 v22, v12

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v4

    const-string v4, "checkOldRanges,oldRange rangeId:"

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", totalProgress:"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v20

    const/4 v1, 0x1

    invoke-virtual {v7, v2, v0, v1}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v6, v2

    move-wide/from16 v11, v17

    move-object/from16 v2, v19

    move-object/from16 v5, v21

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    goto/16 :goto_2

    :cond_9
    move-object/from16 v19, v2

    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move-object/from16 v21, v5

    move-object v2, v6

    move-wide/from16 v17, v11

    new-instance v3, Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-direct {v3}, Lcom/transsion/baselib/db/download/DownloadRange;-><init>()V

    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadRange;->getThreadId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/transsion/baselib/db/download/DownloadRange;->setThreadId(I)V

    move-object/from16 v4, v21

    iget-wide v5, v4, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    move-object/from16 v7, v23

    iget-wide v11, v7, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    add-long/2addr v5, v11

    invoke-static {v5, v6}, Landroidx/collection/s;->a(J)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/transsion/baselib/db/download/DownloadRange;->setRangeId(I)V

    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadRange;->getResourceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/transsion/baselib/db/download/DownloadRange;->setResourceId(Ljava/lang/String;)V

    iget-wide v5, v4, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-virtual {v3, v5, v6}, Lcom/transsion/baselib/db/download/DownloadRange;->setStart(J)V

    iget-wide v5, v7, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-virtual {v3, v5, v6}, Lcom/transsion/baselib/db/download/DownloadRange;->setEnd(J)V

    invoke-virtual {v3, v0, v1}, Lcom/transsion/baselib/db/download/DownloadRange;->setProgress(J)V

    sget-object v5, Llg/a;->a:Llg/a$a;

    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadRange;->getRangeId()I

    move-result v6

    iget-wide v11, v4, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    move-object/from16 v20, v8

    move-wide/from16 v23, v9

    iget-wide v8, v7, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkOldRanges,newRange rangeId:"

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v5, v2, v0, v1}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-object/from16 v1, p4

    move-object v6, v2

    move-object v4, v7

    move-wide/from16 v11, v17

    move-object/from16 v8, v20

    move-object/from16 v5, v21

    move-object/from16 v3, v22

    move-wide/from16 v9, v23

    move-object v2, v0

    move-object/from16 v0, p0

    goto/16 :goto_2

    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v4, p5

    move-object/from16 v5, v16

    const/4 v7, 0x1

    goto/16 :goto_1

    :goto_5
    move-object/from16 v1, p4

    move-object/from16 v4, p5

    move-object v6, v2

    move-object/from16 v5, v16

    move-object/from16 v3, v22

    const/4 v7, 0x1

    move-object v2, v0

    move-object/from16 v0, p0

    goto/16 :goto_1

    :cond_b
    move-object v0, v2

    move-object/from16 v22, v3

    move-object/from16 p5, v4

    move-object v2, v6

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    move-object/from16 v1, p4

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, p3

    move-object/from16 v3, v22

    iput-object v0, v3, Lcom/transsnet/downloader/core/task/DownloadTaskUtil$checkOldRanges$1;->L$0:Ljava/lang/Object;

    iput-object v1, v3, Lcom/transsnet/downloader/core/task/DownloadTaskUtil$checkOldRanges$1;->L$1:Ljava/lang/Object;

    const/4 v4, 0x1

    iput v4, v3, Lcom/transsnet/downloader/core/task/DownloadTaskUtil$checkOldRanges$1;->label:I

    move-object/from16 v4, p0

    invoke-virtual {v4, v1, v3}, Lcom/transsnet/downloader/core/task/DownloadTaskUtil;->n(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v5, p5

    if-ne v3, v5, :cond_c

    return-object v5

    :cond_c
    :goto_6
    sget-object v3, Llg/a;->a:Llg/a$a;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getDownloadRanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkOldRanges, set new range, size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v0, v5}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_7

    :cond_d
    move-object/from16 v4, p0

    move-object/from16 v1, p4

    :goto_7
    return-object v1
.end method

.method public final e(Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 3

    const-string v0, "downloadBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/transsnet/downloader/util/DownloadUtil;->a:Lcom/transsnet/downloader/util/DownloadUtil;

    invoke-virtual {v0, p1}, Lcom/transsnet/downloader/util/DownloadUtil;->s(Lcom/transsion/baselib/db/download/DownloadBean;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/baselib/db/download/DownloadBean;->setPath(Ljava/lang/String;)V

    sget-object v0, Llg/a;->a:Llg/a$a;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadTaskImpl \u65b0\u4efb\u52a1, set download path, path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    const-string v2, "download"

    invoke-virtual {v0, v2, p1, v1}, Llg/a$a;->p(Ljava/lang/String;[Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public final f(Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsnet/downloader/core/DownloadTaskImpl2;Lcom/transsnet/downloader/core/task/c;)J
    .locals 8

    const-string v0, "downloadBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadTask"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getDownloadRanges()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadRange;->getReDownload()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadRange;->getProgress()J

    move-result-wide v5

    cmp-long v5, v5, v2

    if-lez v5, :cond_0

    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadRange;->getProgress()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    monitor-enter p2

    :try_start_0
    invoke-virtual {p1, v0, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setProgress(J)V

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isPreDownload()Z

    move-result v2

    if-eqz v2, :cond_2

    const-wide/32 v2, 0x500000

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    if-eqz p3, :cond_2

    invoke-interface {p3, p1}, Lcom/transsnet/downloader/core/task/c;->I(Lcom/transsion/baselib/db/download/DownloadBean;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_1
    sget-object v2, Llg/a;->a:Llg/a$a;

    const-string v3, "DownloadThread"

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isPreDownload()Z

    move-result p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "------------total size:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " progress:"

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, ", isPreDownload: "

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    return-wide v0

    :goto_2
    monitor-exit p2

    throw p1
.end method

.method public final i()Z
    .locals 1

    sget-object v0, Lcom/transsnet/downloader/core/task/DownloadTaskUtil;->d:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final j()Z
    .locals 1

    sget-object v0, Lcom/transsnet/downloader/core/task/DownloadTaskUtil;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final k(ILcom/transsion/baselib/db/download/DownloadBean;)Ljava/util/List;
    .locals 8

    const-string v0, "downloadBean"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getCurrentOffset()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getCurrentOffset()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :goto_0
    cmp-long v0, v0, v4

    if-gez v0, :cond_1

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getCurrentOffset()J

    move-result-wide v2

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getDownloadRanges()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadRange;->isRangeDownloadSuccess()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadRange;->isDownloading()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->isDownloadingPlay()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadRange;->getEnd()J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-gez v6, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lt v5, p1, :cond_2

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-ge p2, p1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadRange;->isRangeDownloadSuccess()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadRange;->isDownloading()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, p1, :cond_5

    :cond_6
    return-object v0
.end method

.method public final n(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p2

    instance-of v1, v0, Lcom/transsnet/downloader/core/task/DownloadTaskUtil$updateDBRanges$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/transsnet/downloader/core/task/DownloadTaskUtil$updateDBRanges$1;

    iget v2, v1, Lcom/transsnet/downloader/core/task/DownloadTaskUtil$updateDBRanges$1;->label:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/transsnet/downloader/core/task/DownloadTaskUtil$updateDBRanges$1;->label:I

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/transsnet/downloader/core/task/DownloadTaskUtil$updateDBRanges$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lcom/transsnet/downloader/core/task/DownloadTaskUtil$updateDBRanges$1;-><init>(Lcom/transsnet/downloader/core/task/DownloadTaskUtil;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v1, Lcom/transsnet/downloader/core/task/DownloadTaskUtil$updateDBRanges$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v3

    iget v4, v1, Lcom/transsnet/downloader/core/task/DownloadTaskUtil$updateDBRanges$1;->label:I

    const-string v5, "updateDBRanges, size= "

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v6, :cond_1

    iget-object v4, v1, Lcom/transsnet/downloader/core/task/DownloadTaskUtil$updateDBRanges$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lcom/transsion/baselib/db/download/DownloadRange;

    iget-object v7, v1, Lcom/transsnet/downloader/core/task/DownloadTaskUtil$updateDBRanges$1;->L$1:Ljava/lang/Object;

    check-cast v7, Ljava/util/Iterator;

    iget-object v8, v1, Lcom/transsnet/downloader/core/task/DownloadTaskUtil$updateDBRanges$1;->L$0:Ljava/lang/Object;

    check-cast v8, Ljava/util/List;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v4, p1

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :try_start_1
    sget-object v7, Llg/a;->a:Llg/a$a;

    const-string v8, "Download_TaskImpl"

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ------------------start"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x4

    const/4 v12, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Llg/a$a;->v(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v8, v0

    move-object v7, v4

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/transsion/baselib/db/download/DownloadRange;

    sget-object v0, Lcom/transsnet/downloader/core/task/DownloadTaskUtil;->a:Lcom/transsnet/downloader/core/task/DownloadTaskUtil;

    invoke-direct {v0}, Lcom/transsnet/downloader/core/task/DownloadTaskUtil;->l()Llj/n0;

    move-result-object v0

    iput-object v8, v1, Lcom/transsnet/downloader/core/task/DownloadTaskUtil$updateDBRanges$1;->L$0:Ljava/lang/Object;

    iput-object v7, v1, Lcom/transsnet/downloader/core/task/DownloadTaskUtil$updateDBRanges$1;->L$1:Ljava/lang/Object;

    iput-object v4, v1, Lcom/transsnet/downloader/core/task/DownloadTaskUtil$updateDBRanges$1;->L$2:Ljava/lang/Object;

    iput v6, v1, Lcom/transsnet/downloader/core/task/DownloadTaskUtil$updateDBRanges$1;->label:I

    invoke-interface {v0, v4, v1}, Llj/n0;->d(Lcom/transsion/baselib/db/download/DownloadRange;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_3

    return-object v3

    :cond_3
    :goto_2
    sget-object v9, Llg/a;->a:Llg/a$a;

    const-string v10, "Download_TaskImpl"

    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadRange;->getRangeId()I

    move-result v0

    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadRange;->getStart()J

    move-result-wide v11

    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadRange;->getEnd()J

    move-result-wide v13

    move-object/from16 p1, v7

    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadRange;->getProgress()J

    move-result-wide v6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "updateDBRanges,rangeId = "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", start = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", end = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", progress = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x4

    const/4 v14, 0x0

    const/4 v12, 0x0

    invoke-static/range {v9 .. v14}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    move-object/from16 v7, p1

    const/4 v6, 0x1

    goto :goto_1

    :cond_4
    sget-object v15, Llg/a;->a:Llg/a$a;

    const-string v16, "Download_TaskImpl"

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ------------------end"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v19, 0x4

    const/16 v20, 0x0

    const/16 v18, 0x0

    invoke-static/range {v15 .. v20}, Llg/a$a;->v(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
