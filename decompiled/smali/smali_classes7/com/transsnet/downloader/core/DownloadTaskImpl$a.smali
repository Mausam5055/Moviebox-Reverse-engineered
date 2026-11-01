.class public final Lcom/transsnet/downloader/core/DownloadTaskImpl$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsnet/downloader/proxy/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/core/DownloadTaskImpl;-><init>(Lcom/transsnet/downloader/core/c;Lcom/transsnet/downloader/proxy/b;Lcom/transsion/baselib/db/download/DownloadBean;Loy/c;Lcom/transsnet/downloader/core/task/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/baselib/db/download/DownloadBean;

.field final synthetic b:Lcom/transsnet/downloader/core/DownloadTaskImpl;

.field final synthetic c:Loy/c;


# direct methods
.method constructor <init>(Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsnet/downloader/core/DownloadTaskImpl;Loy/c;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl$a;->a:Lcom/transsion/baselib/db/download/DownloadBean;

    iput-object p2, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl$a;->b:Lcom/transsnet/downloader/core/DownloadTaskImpl;

    iput-object p3, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl$a;->c:Loy/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcom/transsnet/downloader/core/thread/f;Lcom/transsnet/downloader/core/DownloadTaskImpl;Lcom/transsion/baselib/db/download/DownloadRange;ILoy/c;Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsion/baselib/db/download/DownloadRange;)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/transsnet/downloader/core/DownloadTaskImpl$a;->c(Lcom/transsnet/downloader/core/thread/f;Lcom/transsnet/downloader/core/DownloadTaskImpl;Lcom/transsion/baselib/db/download/DownloadRange;ILoy/c;Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsion/baselib/db/download/DownloadRange;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final c(Lcom/transsnet/downloader/core/thread/f;Lcom/transsnet/downloader/core/DownloadTaskImpl;Lcom/transsion/baselib/db/download/DownloadRange;ILoy/c;Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsion/baselib/db/download/DownloadRange;)Lkotlin/Unit;
    .locals 13

    invoke-interface {p0}, Lcom/transsnet/downloader/core/thread/f;->removeBreakCallback()V

    invoke-static {p1}, Lcom/transsnet/downloader/core/DownloadTaskImpl;->l(Lcom/transsnet/downloader/core/DownloadTaskImpl;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    move-object v1, p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    sget-object v0, Llg/a;->a:Llg/a$a;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "DownloadThread"

    const-string v3, "beak success, start new thread"

    const/4 v4, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Llg/a$a;->v(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const/4 v1, 0x1

    move-object v10, p2

    invoke-virtual {p2, v1}, Lcom/transsion/baselib/db/download/DownloadRange;->setDownloading(Z)V

    new-instance v11, Lcom/transsnet/downloader/core/thread/DownloadRunnable;

    invoke-static {p1}, Lcom/transsnet/downloader/core/DownloadTaskImpl;->m(Lcom/transsnet/downloader/core/DownloadTaskImpl;)Lcom/transsnet/downloader/proxy/b;

    move-result-object v4

    invoke-static {p1}, Lcom/transsnet/downloader/core/DownloadTaskImpl;->k(Lcom/transsnet/downloader/core/DownloadTaskImpl;)Lcom/transsnet/downloader/core/c;

    move-result-object v6

    move-object v2, v11

    move-object v3, p2

    move/from16 v5, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object v9, p1

    invoke-direct/range {v2 .. v9}, Lcom/transsnet/downloader/core/thread/DownloadRunnable;-><init>(Lcom/transsion/baselib/db/download/DownloadRange;Lcom/transsnet/downloader/proxy/b;ILcom/transsnet/downloader/core/c;Loy/c;Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsnet/downloader/core/thread/d;)V

    invoke-static {p1}, Lcom/transsnet/downloader/core/DownloadTaskImpl;->l(Lcom/transsnet/downloader/core/DownloadTaskImpl;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    if-eqz p6, :cond_0

    invoke-virtual/range {p6 .. p6}, Lcom/transsion/baselib/db/download/DownloadRange;->getRangeId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    if-eqz p6, :cond_1

    invoke-virtual/range {p6 .. p6}, Lcom/transsion/baselib/db/download/DownloadRange;->getStart()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v2

    :goto_1
    if-eqz p6, :cond_2

    invoke-virtual/range {p6 .. p6}, Lcom/transsion/baselib/db/download/DownloadRange;->getEnd()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :cond_2
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadRange;->getRangeId()I

    move-result v5

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadRange;->getStart()J

    move-result-wide v6

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadRange;->getEnd()J

    move-result-wide v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "download&play start new thread,oldRangeId:"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",start:"

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",end:"

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", rangeId: "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", start:"

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "download"

    invoke-virtual {v0, v3, v2, v1}, Llg/a$a;->u(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v0, Lcom/transsnet/downloader/core/thread/DownloadExecutor;->a:Lcom/transsnet/downloader/core/thread/DownloadExecutor$b;

    invoke-virtual {v0}, Lcom/transsnet/downloader/core/thread/DownloadExecutor$b;->b()Lcom/transsnet/downloader/core/thread/DownloadExecutor;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/transsnet/downloader/core/thread/DownloadExecutor;->e(Ljava/lang/Runnable;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;ILcom/transsion/baselib/db/download/DownloadRange;Lcom/transsion/baselib/db/download/DownloadRange;)V
    .locals 9

    const-string v0, "range"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl$a;->a:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p4}, Lcom/transsion/baselib/db/download/DownloadRange;->isRangeDownloadSuccess()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl$a;->b:Lcom/transsnet/downloader/core/DownloadTaskImpl;

    invoke-static {p1}, Lcom/transsnet/downloader/core/DownloadTaskImpl;->l(Lcom/transsnet/downloader/core/DownloadTaskImpl;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl$a;->b:Lcom/transsnet/downloader/core/DownloadTaskImpl;

    invoke-static {p1}, Lcom/transsnet/downloader/core/DownloadTaskImpl;->l(Lcom/transsnet/downloader/core/DownloadTaskImpl;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl$a;->b:Lcom/transsnet/downloader/core/DownloadTaskImpl;

    invoke-static {v0}, Lcom/transsnet/downloader/core/DownloadTaskImpl;->l(Lcom/transsnet/downloader/core/DownloadTaskImpl;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "get(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/transsnet/downloader/core/thread/f;

    iget-object v3, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl$a;->b:Lcom/transsnet/downloader/core/DownloadTaskImpl;

    iget-object v6, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl$a;->c:Loy/c;

    iget-object v7, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl$a;->a:Lcom/transsion/baselib/db/download/DownloadBean;

    new-instance v0, Lcom/transsnet/downloader/core/f;

    move-object v1, v0

    move-object v2, p1

    move-object v4, p4

    move v5, p2

    move-object v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/transsnet/downloader/core/f;-><init>(Lcom/transsnet/downloader/core/thread/f;Lcom/transsnet/downloader/core/DownloadTaskImpl;Lcom/transsion/baselib/db/download/DownloadRange;ILoy/c;Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsion/baselib/db/download/DownloadRange;)V

    invoke-interface {p1, v0}, Lcom/transsnet/downloader/core/thread/f;->pause(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
