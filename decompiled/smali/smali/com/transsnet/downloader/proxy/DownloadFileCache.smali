.class public final Lcom/transsnet/downloader/proxy/DownloadFileCache;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/danikula/videocache/a;


# instance fields
.field private final a:J

.field private b:J

.field private final c:Lkotlin/Lazy;

.field private d:Ljava/io/RandomAccessFile;

.field private e:Lcom/transsion/baselib/db/download/DownloadBean;

.field private f:Ljava/lang/String;

.field private g:Lcom/transsnet/downloader/proxy/c;

.field private h:Ljava/util/concurrent/ConcurrentHashMap;

.field private i:Lcom/transsion/baselib/db/download/DownloadRange;

.field private j:I

.field private k:Ljava/lang/String;

.field private l:J

.field private m:Lcom/danikula/videocache/m;

.field private n:Z

.field private final o:Lny/d;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x300000

    iput-wide v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->a:J

    iput-wide v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->b:J

    new-instance v0, Lcom/transsnet/downloader/proxy/a;

    invoke-direct {v0}, Lcom/transsnet/downloader/proxy/a;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->c:Lkotlin/Lazy;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->h:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v0, ""

    iput-object v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->k:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->n:Z

    new-instance v0, Lcom/transsnet/downloader/proxy/DownloadFileCache$a;

    invoke-direct {v0, p0}, Lcom/transsnet/downloader/proxy/DownloadFileCache$a;-><init>(Lcom/transsnet/downloader/proxy/DownloadFileCache;)V

    iput-object v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->o:Lny/d;

    return-void
.end method

.method public static synthetic a()Llj/n0;
    .locals 1

    invoke-static {}, Lcom/transsnet/downloader/proxy/DownloadFileCache;->m()Llj/n0;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic b(Lcom/transsnet/downloader/proxy/DownloadFileCache;)J
    .locals 2

    iget-wide v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->l:J

    return-wide v0
.end method

.method public static final synthetic c(Lcom/transsnet/downloader/proxy/DownloadFileCache;)Lcom/transsion/baselib/db/download/DownloadRange;
    .locals 0

    iget-object p0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    return-object p0
.end method

.method public static final synthetic d(Lcom/transsnet/downloader/proxy/DownloadFileCache;)Lcom/danikula/videocache/m;
    .locals 0

    iget-object p0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->m:Lcom/danikula/videocache/m;

    return-object p0
.end method

.method public static final synthetic e(Lcom/transsnet/downloader/proxy/DownloadFileCache;)Llj/n0;
    .locals 0

    invoke-direct {p0}, Lcom/transsnet/downloader/proxy/DownloadFileCache;->k()Llj/n0;

    move-result-object p0

    return-object p0
.end method

.method private final g(J)V
    .locals 17

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    iget-object v3, v0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    if-eqz v3, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v3, v1, v2}, Lcom/transsion/baselib/db/download/DownloadRange;->contains(J)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    iget-object v3, v0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkDownloadNewV2Ranges = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/danikula/videocache/q;->a(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v3, :cond_d

    iget-object v5, v0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getDownloadRanges()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-virtual {v7, v1, v2}, Lcom/transsion/baselib/db/download/DownloadRange;->contains(J)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v7}, Lcom/transsion/baselib/db/download/DownloadRange;->getThreadIndex()I

    move-result v6

    iput v6, v0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->j:I

    iput-object v7, v0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    :cond_3
    sget-object v6, Llg/a;->a:Llg/a$a;

    iget v7, v0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->j:I

    iget-object v8, v0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    const/4 v9, 0x0

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadRange;->isDownloading()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    goto :goto_1

    :cond_4
    move-object v8, v9

    :goto_1
    iget-object v10, v0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    if-eqz v10, :cond_5

    invoke-virtual {v10}, Lcom/transsion/baselib/db/download/DownloadRange;->isRangeDownloadSuccess()Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    goto :goto_2

    :cond_5
    move-object v10, v9

    :goto_2
    iget-object v11, v0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    if-eqz v11, :cond_6

    invoke-virtual {v11}, Lcom/transsion/baselib/db/download/DownloadRange;->getRangeId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_3

    :cond_6
    const-string v11, "range is null"

    :goto_3
    iget-object v12, v0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    if-eqz v12, :cond_7

    invoke-virtual {v12}, Lcom/transsion/baselib/db/download/DownloadRange;->getStart()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    goto :goto_4

    :cond_7
    move-object v12, v9

    :goto_4
    iget-object v13, v0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    if-eqz v13, :cond_8

    invoke-virtual {v13}, Lcom/transsion/baselib/db/download/DownloadRange;->getEnd()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    goto :goto_5

    :cond_8
    move-object v13, v9

    :goto_5
    iget-object v14, v0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    if-eqz v14, :cond_9

    invoke-virtual {v14}, Lcom/transsion/baselib/db/download/DownloadRange;->getProgress()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    :cond_9
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    move-result-object v15

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v5

    const-string v5, "download&play checkDownloadNewV2Ranges, offset="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",index = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " \n                  currentRange, isDownloading: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", downloadSuccess: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n                  rangeId: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", start: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", end: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",progress: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n                  resourceId:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",name:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n                "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/text/StringsKt;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "download"

    const/4 v4, 0x1

    invoke-virtual {v6, v2, v1, v4}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, v0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    if-eqz v1, :cond_d

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadRange;->isDownloading()Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, v0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadRange;->isRangeDownloadSuccess()Z

    move-result v1

    if-nez v1, :cond_d

    sget-object v1, Lnh/m;->a:Lnh/m;

    invoke-virtual {v1}, Lnh/m;->e()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, v0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->g:Lcom/transsnet/downloader/proxy/c;

    if-eqz v1, :cond_a

    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v2

    iget v4, v0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->j:I

    iget-object v5, v0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    move-object/from16 v6, v16

    invoke-interface {v1, v2, v4, v6, v5}, Lcom/transsnet/downloader/proxy/c;->a(Ljava/lang/String;ILcom/transsion/baselib/db/download/DownloadRange;Lcom/transsion/baselib/db/download/DownloadRange;)V

    goto :goto_6

    :cond_a
    move-object/from16 v6, v16

    :goto_6
    iget-object v1, v0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_c

    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v5

    :cond_c
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsnet/downloader/proxy/c;

    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v4

    iget v5, v0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->j:I

    iget-object v7, v0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {v2, v4, v5, v6, v7}, Lcom/transsnet/downloader/proxy/c;->a(Ljava/lang/String;ILcom/transsion/baselib/db/download/DownloadRange;Lcom/transsion/baselib/db/download/DownloadRange;)V

    goto :goto_7

    :cond_d
    return-void
.end method

.method private final h(Ljava/lang/String;J)V
    .locals 7

    iget-object v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getDownloadRanges()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_12

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_8

    :cond_1
    iget-object v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getDownloadRanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-virtual {v2, p2, p3}, Lcom/transsion/baselib/db/download/DownloadRange;->contains(J)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadRange;->getStart()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadRange;->totalProgress()J

    move-result-wide v5

    cmp-long v5, p2, v5

    if-gtz v5, :cond_3

    cmp-long v3, v3, p2

    if-gtz v3, :cond_3

    iput-object v2, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_range1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadRange;->getRangeId()I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \u6682\u505c\u5f53\u524d\u7ebf\u7a0b\uff0c\u542f\u52a8\u65b0\u7ebf\u7a0b\u4e0b\u8f7d, \u5df2\u7ecf\u4e0b\u8f7d\uff0c\u76f4\u63a5\u8fd4\u56de, offset = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", rangeId = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/transsnet/downloader/proxy/DownloadFileCache;->r(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_3
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadRange;->getStart()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadRange;->getProgress()J

    move-result-wide v5

    add-long/2addr v3, v5

    iget-wide v5, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->b:J

    add-long/2addr v3, v5

    cmp-long v3, p2, v3

    if-gez v3, :cond_4

    iput-object v2, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_range2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \u6682\u505c\u5f53\u524d\u7ebf\u7a0b\uff0c\u542f\u52a8\u65b0\u7ebf\u7a0b\u4e0b\u8f7d, \u5c0f\u4e8e\u9608\u503c\uff0c\u7b49\u5f85\u4e0b\u8f7d,\u53ea\u7684\u542f\u52a8\u7ebf\u7a0b\uff0c\u4e0d\u5904\u7406range, offset = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/transsnet/downloader/proxy/DownloadFileCache;->r(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_4
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadRange;->getEnd()J

    move-result-wide v3

    sub-long/2addr v3, p2

    iget-wide v5, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->b:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_range3"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \u6682\u505c\u5f53\u524d\u7ebf\u7a0b\uff0c\u542f\u52a8\u65b0\u7ebf\u7a0b\u4e0b\u8f7d, \u65b0\u589e\u5206\u7247\u5c0f\u4e8e\u9608\u503c\uff0c\u4f7f\u7528\u9608\u503c\u5927\u5c0f, offset = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/transsnet/downloader/proxy/DownloadFileCache;->r(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadRange;->getEnd()J

    move-result-wide p1

    iget-wide v3, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->b:J

    sub-long p2, p1, v3

    goto :goto_1

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_range4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \u6682\u505c\u5f53\u524d\u7ebf\u7a0b\uff0c\u542f\u52a8\u65b0\u7ebf\u7a0b\u4e0b\u8f7d, \u65b0\u589e\u5206\u7247\u5927\u4e8e\u9608\u503c, offset = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/transsnet/downloader/proxy/DownloadFileCache;->r(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    sget-object p1, Lnh/m;->a:Lnh/m;

    invoke-virtual {p1}, Lnh/m;->e()Z

    move-result p1

    if-eqz p1, :cond_a

    new-instance p1, Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-direct {p1}, Lcom/transsion/baselib/db/download/DownloadRange;-><init>()V

    iget-object v3, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_7

    :cond_6
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_7
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/transsion/baselib/db/download/DownloadRange;->setThreadId(I)V

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadRange;->getEnd()J

    move-result-wide v3

    add-long/2addr v3, p2

    invoke-static {v3, v4}, Landroidx/collection/s;->a(J)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/transsion/baselib/db/download/DownloadRange;->setRangeId(I)V

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadRange;->getResourceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/transsion/baselib/db/download/DownloadRange;->setResourceId(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Lcom/transsion/baselib/db/download/DownloadRange;->setStart(J)V

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadRange;->getEnd()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/transsion/baselib/db/download/DownloadRange;->setEnd(J)V

    const-wide/16 p2, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/transsion/baselib/db/download/DownloadRange;->setProgress(J)V

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadRange;->getStart()J

    move-result-wide p2

    const-wide/16 v3, 0x1

    sub-long/2addr p2, v3

    invoke-virtual {v2, p2, p3}, Lcom/transsion/baselib/db/download/DownloadRange;->setEnd(J)V

    iget-object p2, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getDownloadRanges()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    iput-object p1, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    iget-object p1, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getDownloadRanges()Ljava/util/List;

    move-result-object p1

    goto :goto_2

    :cond_9
    move-object p1, v1

    :goto_2
    invoke-direct {p0, p1}, Lcom/transsnet/downloader/proxy/DownloadFileCache;->s(Ljava/util/List;)V

    :cond_a
    :goto_3
    iget-object p1, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    if-eqz p1, :cond_12

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadRange;->isRangeDownloadSuccess()Z

    move-result p1

    if-nez p1, :cond_12

    iget-object p1, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadRange;->isDownloading()Z

    move-result p1

    if-nez p1, :cond_12

    sget-object p1, Lnh/m;->a:Lnh/m;

    invoke-virtual {p1}, Lnh/m;->e()Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->g:Lcom/transsnet/downloader/proxy/c;

    if-eqz p1, :cond_c

    iget-object p2, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz p2, :cond_b

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object p2

    goto :goto_4

    :cond_b
    move-object p2, v1

    :goto_4
    iget p3, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->j:I

    iget-object v2, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {p1, p2, p3, v0, v2}, Lcom/transsnet/downloader/proxy/c;->a(Ljava/lang/String;ILcom/transsion/baselib/db/download/DownloadRange;Lcom/transsion/baselib/db/download/DownloadRange;)V

    :cond_c
    iget-object p1, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_12

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    iget-object v2, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_10

    :cond_e
    iget-object v2, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_f
    move-object v2, v1

    :cond_10
    :goto_6
    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_d

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsnet/downloader/proxy/c;

    iget-object p3, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz p3, :cond_11

    invoke-virtual {p3}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object p3

    goto :goto_7

    :cond_11
    move-object p3, v1

    :goto_7
    iget v2, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->j:I

    iget-object v3, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {p2, p3, v2, v0, v3}, Lcom/transsnet/downloader/proxy/c;->a(Ljava/lang/String;ILcom/transsion/baselib/db/download/DownloadRange;Lcom/transsion/baselib/db/download/DownloadRange;)V

    goto :goto_5

    :cond_12
    :goto_8
    return-void
.end method

.method private final k()Llj/n0;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->c:Lkotlin/Lazy;

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

.method private final r(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->k:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->k:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "================range,  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/danikula/videocache/q;->a(Ljava/lang/String;)V

    return-void
.end method

.method private final s(Ljava/util/List;)V
    .locals 7

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    new-instance v0, Lcom/transsnet/downloader/proxy/DownloadFileCache$updateDBRanges$lambda$6$$inlined$sortBy$1;

    invoke-direct {v0}, Lcom/transsnet/downloader/proxy/DownloadFileCache$updateDBRanges$lambda$6$$inlined$sortBy$1;-><init>()V

    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->A(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsnet/downloader/proxy/DownloadFileCache$updateDBRanges$1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, p0, v0}, Lcom/transsnet/downloader/proxy/DownloadFileCache$updateDBRanges$1;-><init>(Ljava/util/List;Lcom/transsnet/downloader/proxy/DownloadFileCache;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public A()J
    .locals 2

    iget-object v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public B()V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_3

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    const-string v1, "1-path create"

    invoke-static {v1}, Lcom/danikula/videocache/q;->b(Ljava/lang/String;)V

    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v0

    :goto_1
    const-string v3, "r"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->d:Ljava/io/RandomAccessFile;

    goto :goto_7

    :cond_3
    :goto_2
    const-string v1, "path is null, is not downloading"

    invoke-static {v1}, Lcom/danikula/videocache/q;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_3
    iget-object v2, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_4
    move-object v2, v0

    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "1--path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",error = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/danikula/videocache/q;->b(Ljava/lang/String;)V

    :try_start_1
    const-string v1, "2-path create"

    invoke-static {v1}, Lcom/danikula/videocache/q;->b(Ljava/lang/String;)V

    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :catchall_1
    move-exception v1

    goto :goto_6

    :cond_5
    move-object v3, v0

    :goto_5
    const-string v4, "rwd"

    invoke-direct {v1, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->d:Ljava/io/RandomAccessFile;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_7

    :goto_6
    iget-object v3, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    move-result-object v0

    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "2--path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/danikula/videocache/q;->b(Ljava/lang/String;)V

    :goto_7
    return-void
.end method

.method public C(J)V
    .locals 6

    sget-object v0, Lcom/transsnet/downloader/core/task/DownloadTaskUtil;->a:Lcom/transsnet/downloader/core/task/DownloadTaskUtil;

    invoke-virtual {v0}, Lcom/transsnet/downloader/core/task/DownloadTaskUtil;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/transsnet/downloader/proxy/DownloadFileCache;->g(J)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v2, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    iget-object v3, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    move-result-object v1

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "download&play currentRangeNull currentRange is null, offset = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ",resourceId="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",,name="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    const-string v1, "download"

    invoke-virtual {v0, v1, p1, p2}, Llg/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadRange;->getStart()J

    move-result-wide v2

    iget-object v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadRange;->totalProgress()J

    move-result-wide v4

    cmp-long v0, p1, v4

    if-gtz v0, :cond_4

    cmp-long v0, v2, p1

    if-gtz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5f53\u524d\u5206\u7247\u5df2\u4e0b\u8f7d\u8fdb\u5ea6\u5185\uff0c\u4e0d\u505a\u4efb\u4f55\u5904\u7406\uff0c\u76f4\u63a5\u8fd4\u56de, offset = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "currentRange1"

    invoke-direct {p0, p2, p1}, Lcom/transsnet/downloader/proxy/DownloadFileCache;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadRange;->getStart()J

    move-result-wide v2

    cmp-long v0, p1, v2

    if-gez v0, :cond_5

    const-string v0, "beforeRange"

    invoke-direct {p0, v0, p1, p2}, Lcom/transsnet/downloader/proxy/DownloadFileCache;->h(Ljava/lang/String;J)V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadRange;->getEnd()J

    move-result-wide v2

    cmp-long v0, p1, v2

    if-gez v0, :cond_15

    iget-object v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadRange;->getStart()J

    move-result-wide v2

    iget-object v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadRange;->getProgress()J

    move-result-wide v4

    add-long/2addr v2, v4

    iget-wide v4, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->b:J

    add-long/2addr v2, v4

    cmp-long v0, p1, v2

    if-gez v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5f53\u524d\u5206\u7247\u5185\uff0c\u5feb\u8fdb\u5c0f\u4e8e\u9608\u503c\uff0c\u7b49\u5f85\u4e0b\u8f7d, offset = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "currentRange21"

    invoke-direct {p0, p2, p1}, Lcom/transsnet/downloader/proxy/DownloadFileCache;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    iget-object v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadRange;->getEnd()J

    move-result-wide v2

    sub-long/2addr v2, p1

    iget-wide v4, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->b:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f53\u524d\u5206\u7247\u5185\uff0c\uff08\u6682\u505c\u5f53\u524d\u7ebf\u7a0b\uff0c\u542f\u52a8\u65b0\u7ebf\u7a0b\u4e0b\u8f7d\uff09\u5feb\u8fdb \u65b0\u589e\u5206\u7247\u5c0f\u4e8e\u9608\u503c\uff0c\u4f7f\u7528\u9608\u503c\u5927\u5c0f, offset = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "currentRange22"

    invoke-direct {p0, p2, p1}, Lcom/transsnet/downloader/proxy/DownloadFileCache;->r(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadRange;->getEnd()J

    move-result-wide p1

    iget-wide v2, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->b:J

    sub-long/2addr p1, v2

    goto :goto_1

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f53\u524d\u5206\u7247\u5185\uff0c\uff08\u6682\u505c\u5f53\u524d\u7ebf\u7a0b\uff0c\u542f\u52a8\u65b0\u7ebf\u7a0b\u4e0b\u8f7d\uff09\u5feb\u8fdb \u65b0\u589e\u5206\u7247\u5927\u4e8e\u9608\u503c, offset = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "currentRange23"

    invoke-direct {p0, v2, v0}, Lcom/transsnet/downloader/proxy/DownloadFileCache;->r(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    sget-object v0, Lnh/m;->a:Lnh/m;

    invoke-virtual {v0}, Lnh/m;->e()Z

    move-result v0

    if-nez v0, :cond_8

    return-void

    :cond_8
    new-instance v0, Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-direct {v0}, Lcom/transsion/baselib/db/download/DownloadRange;-><init>()V

    iget-object v2, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_a

    :cond_9
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_a
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/transsion/baselib/db/download/DownloadRange;->setThreadId(I)V

    iget-object v2, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadRange;->getEnd()J

    move-result-wide v2

    add-long/2addr v2, p1

    invoke-static {v2, v3}, Landroidx/collection/s;->a(J)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/transsion/baselib/db/download/DownloadRange;->setRangeId(I)V

    iget-object v2, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadRange;->getResourceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/baselib/db/download/DownloadRange;->setResourceId(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Lcom/transsion/baselib/db/download/DownloadRange;->setStart(J)V

    iget-object p1, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadRange;->getEnd()J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/transsion/baselib/db/download/DownloadRange;->setEnd(J)V

    const-wide/16 p1, 0x0

    invoke-virtual {v0, p1, p2}, Lcom/transsion/baselib/db/download/DownloadRange;->setProgress(J)V

    iget-object p1, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadRange;->getStart()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    invoke-virtual {p1, v2, v3}, Lcom/transsion/baselib/db/download/DownloadRange;->setEnd(J)V

    iget-object p1, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getDownloadRanges()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    iget-object p1, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    iput-object v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    iget-object p2, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz p2, :cond_c

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getDownloadRanges()Ljava/util/List;

    move-result-object p2

    goto :goto_2

    :cond_c
    move-object p2, v1

    :goto_2
    invoke-direct {p0, p2}, Lcom/transsnet/downloader/proxy/DownloadFileCache;->s(Ljava/util/List;)V

    iget-object p2, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->g:Lcom/transsnet/downloader/proxy/c;

    if-eqz p2, :cond_e

    iget-object v2, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_d
    move-object v2, v1

    :goto_3
    iget v3, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->j:I

    invoke-interface {p2, v2, v3, p1, v0}, Lcom/transsnet/downloader/proxy/c;->a(Ljava/lang/String;ILcom/transsion/baselib/db/download/DownloadRange;Lcom/transsion/baselib/db/download/DownloadRange;)V

    :cond_e
    iget-object p2, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_f
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v4, :cond_10

    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_12

    :cond_10
    iget-object v4, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v4, :cond_11

    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_11
    move-object v4, v1

    :cond_12
    :goto_5
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsnet/downloader/proxy/c;

    iget-object v3, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v3, :cond_13

    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_13
    move-object v3, v1

    :goto_6
    iget v4, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->j:I

    invoke-interface {v2, v3, v4, p1, v0}, Lcom/transsnet/downloader/proxy/c;->a(Ljava/lang/String;ILcom/transsion/baselib/db/download/DownloadRange;Lcom/transsion/baselib/db/download/DownloadRange;)V

    goto :goto_4

    :cond_14
    return-void

    :cond_15
    const-string v0, "afterRange"

    invoke-direct {p0, v0, p1, p2}, Lcom/transsnet/downloader/proxy/DownloadFileCache;->h(Ljava/lang/String;J)V

    return-void
.end method

.method public D([BJILjava/lang/String;)I
    .locals 5

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p5, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->d:Ljava/io/RandomAccessFile;

    if-nez p5, :cond_0

    invoke-virtual {p0}, Lcom/transsnet/downloader/proxy/DownloadFileCache;->B()V

    :cond_0
    iget-object p5, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->d:Ljava/io/RandomAccessFile;

    const-wide/16 v0, 0x0

    if-eqz p5, :cond_1

    invoke-virtual {p5}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    goto :goto_0

    :cond_1
    move-wide v2, v0

    :goto_0
    cmp-long p5, v2, v0

    if-nez p5, :cond_3

    iget-object p5, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    if-eqz p5, :cond_2

    invoke-virtual {p5}, Lcom/transsion/baselib/db/download/DownloadRange;->getProgress()J

    move-result-wide v2

    goto :goto_1

    :cond_2
    move-wide v2, v0

    :goto_1
    cmp-long p5, v2, v0

    if-lez p5, :cond_3

    const-string p5, "read error, create new data file"

    invoke-static {p5}, Lcom/danikula/videocache/q;->f(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsnet/downloader/proxy/DownloadFileCache;->B()V

    :cond_3
    iget-object p5, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->d:Ljava/io/RandomAccessFile;

    if-eqz p5, :cond_4

    invoke-virtual {p5, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    :cond_4
    iget-object p5, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-static {p5}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p5}, Lcom/transsion/baselib/db/download/DownloadRange;->totalProgress()J

    move-result-wide v0

    cmp-long p5, p2, v0

    const/4 v0, -0x1

    if-lez p5, :cond_6

    :cond_5
    move p1, v0

    goto :goto_2

    :cond_6
    iget-object p5, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->d:Ljava/io/RandomAccessFile;

    if-eqz p5, :cond_5

    const/4 v1, 0x0

    invoke-virtual {p5, p1, v1, p4}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p1

    :goto_2
    if-ne p1, v0, :cond_c

    iget-object p4, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->d:Ljava/io/RandomAccessFile;

    const/4 p5, 0x0

    if-eqz p4, :cond_7

    invoke-virtual {p4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    goto :goto_3

    :cond_7
    move-object p4, p5

    :goto_3
    iget-object v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadRange;->getRangeId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_4

    :cond_8
    move-object v0, p5

    :goto_4
    iget-object v1, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadRange;->getStart()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_5

    :cond_9
    move-object v1, p5

    :goto_5
    iget-object v2, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadRange;->getEnd()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_6

    :cond_a
    move-object v2, p5

    :goto_6
    iget-object v3, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadRange;->totalProgress()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "read -1, dataFile created & length= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, ", rangeId = "

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, ", offset = "

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " , start =  "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ",end =  "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", totalProgress = "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/danikula/videocache/q;->b(Ljava/lang/String;)V

    :cond_c
    return p1
.end method

.method public E(J)V
    .locals 11

    sget-object v0, Lcom/transsnet/downloader/core/task/DownloadTaskUtil;->a:Lcom/transsnet/downloader/core/task/DownloadTaskUtil;

    invoke-virtual {v0}, Lcom/transsnet/downloader/core/task/DownloadTaskUtil;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadRange;->getStart()J

    move-result-wide v0

    iget-object v2, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadRange;->getEnd()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-gtz v2, :cond_1

    cmp-long v0, v0, p1

    if-gtz v0, :cond_1

    goto/16 :goto_6

    :cond_1
    iget-object v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    const/4 v1, 0x1

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check  downloadBean = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/danikula/videocache/q;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getDownloadRanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-virtual {v2, p1, p2}, Lcom/transsion/baselib/db/download/DownloadRange;->contains(J)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadRange;->getThreadIndex()I

    move-result v0

    iput v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->j:I

    iput-object v2, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    :cond_4
    sget-object v0, Llg/a;->a:Llg/a$a;

    iget v2, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->j:I

    iget-object v3, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadRange;->getRangeId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    :cond_5
    const-string v3, "range is null"

    :goto_1
    iget-object v4, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    const/4 v5, 0x0

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadRange;->getStart()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_2

    :cond_6
    move-object v4, v5

    :goto_2
    iget-object v6, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Lcom/transsion/baselib/db/download/DownloadRange;->getEnd()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    goto :goto_3

    :cond_7
    move-object v6, v5

    :goto_3
    iget-object v7, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    if-eqz v7, :cond_8

    invoke-virtual {v7}, Lcom/transsion/baselib/db/download/DownloadRange;->getProgress()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    goto :goto_4

    :cond_8
    move-object v7, v5

    :goto_4
    iget-object v8, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v8, :cond_9

    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v8

    goto :goto_5

    :cond_9
    move-object v8, v5

    :goto_5
    iget-object v9, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v9, :cond_a

    invoke-virtual {v9}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    move-result-object v5

    :cond_a
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "download&play set new download thread, offset="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ",index = "

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " \n                           currentRange.rangeId = "

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", start = "

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", end = "

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",\n                           progress = "

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",resourceId="

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",name="

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n                    "

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/text/StringsKt;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "download"

    invoke-virtual {v0, p2, p1, v1}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_b
    :goto_6
    return-void
.end method

.method public F(Lcom/danikula/videocache/m;)V
    .locals 1

    const-string v0, "proxyCache"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->m:Lcom/danikula/videocache/m;

    return-void
.end method

.method public G()J
    .locals 2

    iget-object v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadRange;->getEnd()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsnet/downloader/proxy/DownloadFileCache;->A()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public H(JILjava/lang/String;)Z
    .locals 3

    const-string v0, "url"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-wide p1, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->l:J

    iget-object p4, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz p4, :cond_0

    invoke-virtual {p4, p1, p2}, Lcom/transsion/baselib/db/download/DownloadBean;->setCurrentOffset(J)V

    :cond_0
    iget-object p4, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    const/4 v0, 0x0

    if-nez p4, :cond_1

    return v0

    :cond_1
    iget-object p4, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->d:Ljava/io/RandomAccessFile;

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    goto :goto_0

    :cond_2
    const-wide/16 v1, 0x0

    :goto_0
    cmp-long p4, v1, p1

    if-gez p4, :cond_3

    return v0

    :cond_3
    iget-object p4, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p4}, Lcom/transsion/baselib/db/download/DownloadRange;->isRangeDownloadSuccess()Z

    move-result p4

    const/4 v1, 0x1

    if-eqz p4, :cond_4

    return v1

    :cond_4
    int-to-long p3, p3

    add-long/2addr p1, p3

    iget-object p3, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p3}, Lcom/transsion/baselib/db/download/DownloadRange;->totalProgress()J

    move-result-wide p3

    cmp-long p1, p1, p3

    if-lez p1, :cond_5

    goto :goto_1

    :cond_5
    move v0, v1

    :goto_1
    return v0
.end method

.method public close()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->d:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->k:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final f(Ljava/lang/String;Lcom/transsnet/downloader/proxy/c;)V
    .locals 1

    const-string v0, "resourceId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final i()Lcom/transsion/baselib/db/download/DownloadBean;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    return-object v0
.end method

.method public isCompleted()Z
    .locals 3

    iget-object v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final j()Lny/d;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->o:Lny/d;

    return-object v0
.end method

.method public final l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->n:Z

    return v0
.end method

.method public final n(Ljava/lang/String;)V
    .locals 1

    const-string v0, "resourceId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final o()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    const/4 v1, 0x0

    iput v1, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->j:I

    const-string v1, ""

    iput-object v1, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->k:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsnet/downloader/proxy/DownloadFileCache;->close()V

    iput-object v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->d:Ljava/io/RandomAccessFile;

    iput-object v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->m:Lcom/danikula/videocache/m;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->n:Z

    return-void
.end method

.method public final p(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->f:Ljava/lang/String;

    return-void
.end method

.method public final q(Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 5

    const-string v0, "downloadBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->n:Z

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set new video =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/danikula/videocache/q;->e(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/16 v2, 0x78

    int-to-long v2, v2

    div-long/2addr v0, v2

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->a:J

    :goto_0
    iget-wide v2, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->a:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    move-wide v0, v2

    :cond_1
    iput-wide v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->b:J

    sget-object v0, Lcom/transsnet/downloader/util/DownloadUtil;->a:Lcom/transsnet/downloader/util/DownloadUtil;

    invoke-virtual {v0, p1}, Lcom/transsnet/downloader/util/DownloadUtil;->B(Lcom/transsion/baselib/db/download/DownloadBean;)V

    return-void
.end method

.method public z()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->f:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "audio/mpeg"

    goto :goto_0

    :cond_0
    const-string v0, "video/mp4"

    :cond_1
    :goto_0
    return-object v0
.end method
