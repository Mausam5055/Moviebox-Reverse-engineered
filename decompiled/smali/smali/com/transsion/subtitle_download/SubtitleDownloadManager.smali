.class public final Lcom/transsion/subtitle_download/SubtitleDownloadManager;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/subtitle_download/SubtitleDownloadManager;

.field private static b:Lcom/transsion/subtitle_download/bean/SubtitleAppType;

.field private static final c:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private static d:Lkotlin/jvm/functions/Function0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/subtitle_download/SubtitleDownloadManager;

    invoke-direct {v0}, Lcom/transsion/subtitle_download/SubtitleDownloadManager;-><init>()V

    sput-object v0, Lcom/transsion/subtitle_download/SubtitleDownloadManager;->a:Lcom/transsion/subtitle_download/SubtitleDownloadManager;

    sget-object v0, Lcom/transsion/subtitle_download/bean/SubtitleAppType;->MB:Lcom/transsion/subtitle_download/bean/SubtitleAppType;

    sput-object v0, Lcom/transsion/subtitle_download/SubtitleDownloadManager;->b:Lcom/transsion/subtitle_download/bean/SubtitleAppType;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/transsion/subtitle_download/SubtitleDownloadManager;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/transsion/subtitle_download/SubtitleDownloadManager;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/subtitle_download/SubtitleDownloadManager;->i()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final i()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/transsion/subtitle_download/SubtitleDownloadManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSimpleName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final b(Lcom/transsion/subtitle_download/a;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/subtitle_download/SubtitleDownloadManager;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    new-instance v1, Lcom/transsion/subtitle_download/SubtitleDownloadManager$deleteSubtitle$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/transsion/subtitle_download/SubtitleDownloadManager$deleteSubtitle$2;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final d(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 1

    const-string v0, "dbBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->a:Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;

    invoke-virtual {v0, p1}, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->h(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V

    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 12

    sget-object v0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->a:Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p4

    move/from16 v4, p7

    move/from16 v5, p8

    move/from16 v6, p9

    move-object v7, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p10

    move/from16 v10, p6

    move-object/from16 v11, p11

    invoke-virtual/range {v0 .. v11}, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 10

    const-string v0, "videoResourceId"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "idType"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->a:Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/subtitle_download/SubtitleDownloadManager;->d:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final h()Lcom/transsion/subtitle_download/bean/SubtitleAppType;
    .locals 1

    sget-object v0, Lcom/transsion/subtitle_download/SubtitleDownloadManager;->b:Lcom/transsion/subtitle_download/bean/SubtitleAppType;

    return-object v0
.end method

.method public final j(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    new-instance v1, Lcom/transsion/subtitle_download/SubtitleDownloadManager$getSubtitleList$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/transsion/subtitle_download/SubtitleDownloadManager$getSubtitleList$2;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final k(Lcom/transsion/subtitle_download/bean/SubtitleAppType;)V
    .locals 2

    const-string v0, "appType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/transsion/subtitle_download/SubtitleDownloadManager;->b:Lcom/transsion/subtitle_download/bean/SubtitleAppType;

    sget-object p1, Lcom/transsion/subtitle_download/utils/b;->a:Lcom/transsion/subtitle_download/utils/b;

    invoke-direct {p0}, Lcom/transsion/subtitle_download/SubtitleDownloadManager;->i()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> init() --> \u5b57\u5e55\u4e0b\u8f7d\u5de5\u5177\u521d\u59cb\u5316"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/subtitle_download/utils/b;->b(Ljava/lang/String;)V

    sget-object p1, Lcom/transsion/subtitle_download/utils/ObserveNetworkState;->a:Lcom/transsion/subtitle_download/utils/ObserveNetworkState;

    invoke-virtual {p1}, Lcom/transsion/subtitle_download/utils/ObserveNetworkState;->d()V

    return-void
.end method

.method public final l(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    sput-object p1, Lcom/transsion/subtitle_download/SubtitleDownloadManager;->d:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final m(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getResourceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    new-instance v1, Lcom/transsion/subtitle_download/SubtitleDownloadManager$migration$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/transsion/subtitle_download/SubtitleDownloadManager$migration$2;-><init>(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_1

    return-object p1

    :cond_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_2
    :goto_0
    sget-object p2, Lcom/transsion/subtitle_download/utils/b;->a:Lcom/transsion/subtitle_download/utils/b;

    invoke-direct {p0}, Lcom/transsion/subtitle_download/SubtitleDownloadManager;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getResourceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> migration() --> \u7f3a\u5c11\u5fc5\u8981\u5b57\u6bb5 --> path = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -- resourceId = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -- id = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/transsion/subtitle_download/utils/b;->b(Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final n(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 2

    const-string v0, "stDownloadTable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/subtitle_download/task/q;->a:Lcom/transsion/subtitle_download/task/q;

    invoke-virtual {v0, p1}, Lcom/transsion/subtitle_download/task/q;->c(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V

    sget-object v0, Lcom/transsion/subtitle_download/SubtitleDownloadManager;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/subtitle_download/a;

    invoke-interface {v1, p1}, Lcom/transsion/subtitle_download/a;->onComplete(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final o(Ljava/lang/Exception;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dbBean"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/subtitle_download/SubtitleDownloadManager;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/subtitle_download/a;

    invoke-interface {v1, p1, p2}, Lcom/transsion/subtitle_download/a;->onFail(Ljava/lang/Exception;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final p(ILcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 2

    const-string v0, "stDownloadTable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/subtitle_download/SubtitleDownloadManager;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/subtitle_download/a;

    invoke-interface {v1, p1, p2}, Lcom/transsion/subtitle_download/a;->onDownloading(ILcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final q(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 2

    const-string v0, "bean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/subtitle_download/SubtitleDownloadManager;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/subtitle_download/a;

    invoke-interface {v1, p1}, Lcom/transsion/subtitle_download/a;->onSaveDownload(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final r(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 2

    const-string v0, "stDownloadTable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/subtitle_download/SubtitleDownloadManager;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/subtitle_download/a;

    invoke-interface {v1, p1}, Lcom/transsion/subtitle_download/a;->onUnGzZip(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final s(Lcom/transsion/subtitle_download/a;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/subtitle_download/SubtitleDownloadManager;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
