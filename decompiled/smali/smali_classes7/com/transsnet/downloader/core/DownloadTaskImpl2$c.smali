.class public final Lcom/transsnet/downloader/core/DownloadTaskImpl2$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsnet/downloader/proxy/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/core/DownloadTaskImpl2;-><init>(Lcom/transsnet/downloader/core/c;Lcom/transsnet/downloader/proxy/b;Lcom/transsion/baselib/db/download/DownloadBean;Loy/c;Lcom/transsnet/downloader/core/task/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsnet/downloader/core/DownloadTaskImpl2;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/core/DownloadTaskImpl2;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl2$c;->a:Lcom/transsnet/downloader/core/DownloadTaskImpl2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcom/transsnet/downloader/core/thread/f;Lcom/transsnet/downloader/core/DownloadTaskImpl2;Lcom/transsion/baselib/db/download/DownloadRange;Lcom/transsion/baselib/db/download/DownloadRange;I)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsnet/downloader/core/DownloadTaskImpl2$c;->c(Lcom/transsnet/downloader/core/thread/f;Lcom/transsnet/downloader/core/DownloadTaskImpl2;Lcom/transsion/baselib/db/download/DownloadRange;Lcom/transsion/baselib/db/download/DownloadRange;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final c(Lcom/transsnet/downloader/core/thread/f;Lcom/transsnet/downloader/core/DownloadTaskImpl2;Lcom/transsion/baselib/db/download/DownloadRange;Lcom/transsion/baselib/db/download/DownloadRange;I)Lkotlin/Unit;
    .locals 16

    invoke-interface/range {p0 .. p0}, Lcom/transsnet/downloader/core/thread/f;->removeBreakCallback()V

    invoke-static/range {p1 .. p1}, Lcom/transsnet/downloader/core/DownloadTaskImpl2;->l(Lcom/transsnet/downloader/core/DownloadTaskImpl2;)Ljava/util/List;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    sget-object v0, Llg/a;->a:Llg/a$a;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "DownloadThread"

    const-string v3, "beak success, start new thread"

    const/4 v4, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Llg/a$a;->v(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-static/range {p1 .. p1}, Lcom/transsnet/downloader/core/DownloadTaskImpl2;->i(Lcom/transsnet/downloader/core/DownloadTaskImpl2;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getProgress()J

    move-result-wide v1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/download/DownloadRange;->getRangeId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/download/DownloadRange;->getStart()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v3

    :goto_1
    if-eqz p2, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/download/DownloadRange;->getEnd()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    goto :goto_2

    :cond_2
    move-object v6, v3

    :goto_2
    if-eqz p2, :cond_3

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/download/DownloadRange;->getProgress()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :cond_3
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/baselib/db/download/DownloadRange;->getRangeId()I

    move-result v7

    invoke-virtual/range {p3 .. p3}, Lcom/transsion/baselib/db/download/DownloadRange;->getStart()J

    move-result-wide v8

    invoke-virtual/range {p3 .. p3}, Lcom/transsion/baselib/db/download/DownloadRange;->getEnd()J

    move-result-wide v10

    invoke-virtual/range {p3 .. p3}, Lcom/transsion/baselib/db/download/DownloadRange;->getProgress()J

    move-result-wide v12

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "download&play start new thread, totalProgress = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\n                        oldRangeId:"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", start:"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", end:"

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", progress:"

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " \n                        newRangeId:"

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " \n                    "

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/text/StringsKt;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "download"

    invoke-virtual {v0, v3, v1, v2}, Llg/a$a;->u(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move/from16 v2, p4

    invoke-static {v0, v1, v2}, Lcom/transsnet/downloader/core/DownloadTaskImpl2;->p(Lcom/transsnet/downloader/core/DownloadTaskImpl2;Lcom/transsion/baselib/db/download/DownloadRange;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;ILcom/transsion/baselib/db/download/DownloadRange;Lcom/transsion/baselib/db/download/DownloadRange;)V
    .locals 7

    const-string v0, "range"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl2$c;->a:Lcom/transsnet/downloader/core/DownloadTaskImpl2;

    invoke-static {v0}, Lcom/transsnet/downloader/core/DownloadTaskImpl2;->i(Lcom/transsnet/downloader/core/DownloadTaskImpl2;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p4}, Lcom/transsion/baselib/db/download/DownloadRange;->isRangeDownloadSuccess()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    sget-object p1, Llg/a;->a:Llg/a$a;

    const-string p2, "download"

    const-string p3, "download&play, range download success\uff0c do nothing"

    invoke-virtual {p1, p2, p3, v0}, Llg/a$a;->u(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl2$c;->a:Lcom/transsnet/downloader/core/DownloadTaskImpl2;

    invoke-static {p1}, Lcom/transsnet/downloader/core/DownloadTaskImpl2;->l(Lcom/transsnet/downloader/core/DownloadTaskImpl2;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object v1, Llg/a;->a:Llg/a$a;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "DownloadThread"

    const-string v3, "download&play, thread null"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->v(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl2$c;->a:Lcom/transsnet/downloader/core/DownloadTaskImpl2;

    invoke-static {p1}, Lcom/transsnet/downloader/core/DownloadTaskImpl2;->l(Lcom/transsnet/downloader/core/DownloadTaskImpl2;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl2$c;->a:Lcom/transsnet/downloader/core/DownloadTaskImpl2;

    invoke-static {v1}, Lcom/transsnet/downloader/core/DownloadTaskImpl2;->l(Lcom/transsnet/downloader/core/DownloadTaskImpl2;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsnet/downloader/core/thread/f;

    iget-object v2, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl2$c;->a:Lcom/transsnet/downloader/core/DownloadTaskImpl2;

    new-instance v6, Lcom/transsnet/downloader/core/h;

    move-object v0, v6

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/transsnet/downloader/core/h;-><init>(Lcom/transsnet/downloader/core/thread/f;Lcom/transsnet/downloader/core/DownloadTaskImpl2;Lcom/transsion/baselib/db/download/DownloadRange;Lcom/transsion/baselib/db/download/DownloadRange;I)V

    invoke-interface {p1, v6}, Lcom/transsnet/downloader/core/thread/f;->pause(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
