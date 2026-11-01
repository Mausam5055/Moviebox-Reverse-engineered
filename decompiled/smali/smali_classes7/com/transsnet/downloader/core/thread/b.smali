.class public abstract Lcom/transsnet/downloader/core/thread/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsnet/downloader/core/thread/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsnet/downloader/core/thread/b$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/transsnet/downloader/core/thread/b$a;

.field private static final MAX_SPEED_LIMIT_SLEEP_MS:J = 0xc8L

.field private static final MIN_TARGET_SPEED_RATIO:D = 0.01

.field private static final NANOS_PER_MILLISECOND:J = 0xf4240L

.field public static final SPEED_THRESHOLD:I = 0xc800

.field public static final TAG:Ljava/lang/String; = "download"


# instance fields
.field private breakCallback:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private bufferSize:I

.field private final config:Loy/c;

.field private final downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

.field private final downloadProgressListener:Lcom/transsnet/downloader/core/thread/d;

.field private final downloadRange:Lcom/transsion/baselib/db/download/DownloadRange;

.field private final downloadResponse:Lcom/transsnet/downloader/core/c;

.field private isBreak:Z

.field private final proxyHelper:Lcom/transsnet/downloader/proxy/b;

.field private retryDownloadCount:I

.field private final threadIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsnet/downloader/core/thread/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsnet/downloader/core/thread/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsnet/downloader/core/thread/b;->Companion:Lcom/transsnet/downloader/core/thread/b$a;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/baselib/db/download/DownloadRange;Lcom/transsnet/downloader/proxy/b;ILcom/transsnet/downloader/core/c;Loy/c;Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsnet/downloader/core/thread/d;)V
    .locals 1

    const-string v0, "downloadRange"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proxyHelper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadResponse"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadInfo"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadProgressListener"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/core/thread/b;->downloadRange:Lcom/transsion/baselib/db/download/DownloadRange;

    iput-object p2, p0, Lcom/transsnet/downloader/core/thread/b;->proxyHelper:Lcom/transsnet/downloader/proxy/b;

    iput p3, p0, Lcom/transsnet/downloader/core/thread/b;->threadIndex:I

    iput-object p4, p0, Lcom/transsnet/downloader/core/thread/b;->downloadResponse:Lcom/transsnet/downloader/core/c;

    iput-object p5, p0, Lcom/transsnet/downloader/core/thread/b;->config:Loy/c;

    iput-object p6, p0, Lcom/transsnet/downloader/core/thread/b;->downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    iput-object p7, p0, Lcom/transsnet/downloader/core/thread/b;->downloadProgressListener:Lcom/transsnet/downloader/core/thread/d;

    sget-object p1, Llj/b;->a:Llj/b$a;

    invoke-virtual {p1}, Llj/b$a;->d()I

    move-result p1

    iput p1, p0, Lcom/transsnet/downloader/core/thread/b;->bufferSize:I

    return-void
.end method

.method public static synthetic a(Lcom/transsnet/downloader/core/thread/b;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsnet/downloader/core/thread/b;->c(Lcom/transsnet/downloader/core/thread/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final b()V
    .locals 3

    sget-object v0, Lcom/transsnet/downloader/util/DownloadUtil;->a:Lcom/transsnet/downloader/util/DownloadUtil;

    iget-object v1, p0, Lcom/transsnet/downloader/core/thread/b;->downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v0, v1}, Lcom/transsnet/downloader/util/DownloadUtil;->i(Lcom/transsion/baselib/db/download/DownloadBean;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsnet/downloader/core/thread/b;->config:Loy/c;

    invoke-virtual {v0}, Loy/c;->h()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    const/4 v2, 0x1

    add-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    sget-object v0, Lry/e;->c:Lry/e$a;

    invoke-virtual {v0}, Lry/e$a;->a()Lry/e;

    move-result-object v0

    iget-object v1, p0, Lcom/transsnet/downloader/core/thread/b;->downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    new-instance v2, Lcom/transsnet/downloader/core/thread/a;

    invoke-direct {v2, p0}, Lcom/transsnet/downloader/core/thread/a;-><init>(Lcom/transsnet/downloader/core/thread/b;)V

    invoke-virtual {v0, v1, v2}, Lry/e;->k(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lry/e;->c:Lry/e$a;

    invoke-virtual {v0}, Lry/e$a;->a()Lry/e;

    move-result-object v0

    iget-object v2, p0, Lcom/transsnet/downloader/core/thread/b;->downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v0, v2, v1}, Lry/e;->k(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/jvm/functions/Function0;)V

    invoke-direct {p0}, Lcom/transsnet/downloader/core/thread/b;->j()V

    goto :goto_0

    :cond_1
    sget-object v0, Lry/e;->c:Lry/e$a;

    invoke-virtual {v0}, Lry/e$a;->a()Lry/e;

    move-result-object v0

    iget-object v2, p0, Lcom/transsnet/downloader/core/thread/b;->downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v0, v2, v1}, Lry/e;->k(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/jvm/functions/Function0;)V

    invoke-direct {p0}, Lcom/transsnet/downloader/core/thread/b;->j()V

    :cond_2
    :goto_0
    return-void
.end method

.method private static final c(Lcom/transsnet/downloader/core/thread/b;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0}, Lcom/transsnet/downloader/core/thread/b;->j()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final d()V
    .locals 2

    iget-object v0, p0, Lcom/transsnet/downloader/core/thread/b;->downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->isPause()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/transsnet/downloader/exception/DownloadPauseException;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/transsnet/downloader/exception/DownloadPauseException;-><init>(I)V

    throw v0
.end method

.method private final e()V
    .locals 5

    iget-object v0, p0, Lcom/transsnet/downloader/core/thread/b;->downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/transsnet/downloader/core/thread/b;->downloadRange:Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadRange;->getEnd()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-ltz v2, :cond_1

    iget-object v2, p0, Lcom/transsnet/downloader/core/thread/b;->downloadRange:Lcom/transsion/baselib/db/download/DownloadRange;

    const-wide/16 v3, 0x1

    sub-long/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Lcom/transsion/baselib/db/download/DownloadRange;->setEnd(J)V

    :cond_1
    return-void
.end method

.method private final f()V
    .locals 62

    move-object/from16 v8, p0

    const/4 v9, 0x1

    const-string v1, "UnSupported response code:"

    const-string v2, ", rangeId = "

    const-string v3, " e = "

    const-string v10, "inputStream close fail, e = "

    const-string v11, "RandomAccessFile close fail, e = "

    const-string v4, "\uff0c status = "

    const-string v5, " message:"

    const-string v6, " headers: "

    const-string v12, "download"

    const-string v7, ""

    iget-object v13, v8, Lcom/transsnet/downloader/core/thread/b;->downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v13}, Lcom/transsion/baselib/db/download/DownloadBean;->getTotalTitleName()Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v14

    :try_start_0
    iget-object v15, v8, Lcom/transsnet/downloader/core/thread/b;->downloadRange:Lcom/transsion/baselib/db/download/DownloadRange;
    :try_end_0
    .catch Lcom/transsnet/downloader/exception/DownloadPauseException; {:try_start_0 .. :try_end_0} :catch_fd
    .catch Lcom/transsion/baselib/db/download/DownloadException; {:try_start_0 .. :try_end_0} :catch_fc
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_fb
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_fa
    .catch Lcom/transsnet/downloader/core/thread/RestartException; {:try_start_0 .. :try_end_0} :catch_f9
    .catch Lcom/transsnet/downloader/core/thread/ReDownloadException; {:try_start_0 .. :try_end_0} :catch_f8
    .catch Lcom/transsnet/downloader/core/thread/QuitDPRestartException; {:try_start_0 .. :try_end_0} :catch_f7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_f3
    .catchall {:try_start_0 .. :try_end_0} :catchall_19

    :try_start_1
    invoke-virtual {v15, v9}, Lcom/transsion/baselib/db/download/DownloadRange;->setDownloading(Z)V

    sget-object v15, Llg/a;->a:Llg/a$a;

    iget-object v9, v8, Lcom/transsnet/downloader/core/thread/b;->downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v9}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v9
    :try_end_1
    .catch Lcom/transsnet/downloader/exception/DownloadPauseException; {:try_start_1 .. :try_end_1} :catch_ef
    .catch Lcom/transsion/baselib/db/download/DownloadException; {:try_start_1 .. :try_end_1} :catch_f6
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_f5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_f4
    .catch Lcom/transsnet/downloader/core/thread/RestartException; {:try_start_1 .. :try_end_1} :catch_ee
    .catch Lcom/transsnet/downloader/core/thread/ReDownloadException; {:try_start_1 .. :try_end_1} :catch_ed
    .catch Lcom/transsnet/downloader/core/thread/QuitDPRestartException; {:try_start_1 .. :try_end_1} :catch_ec
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_f3
    .catchall {:try_start_1 .. :try_end_1} :catchall_19

    move-object/from16 v17, v7

    :try_start_2
    iget-object v7, v8, Lcom/transsnet/downloader/core/thread/b;->downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v7}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v7
    :try_end_2
    .catch Lcom/transsnet/downloader/exception/DownloadPauseException; {:try_start_2 .. :try_end_2} :catch_ef
    .catch Lcom/transsion/baselib/db/download/DownloadException; {:try_start_2 .. :try_end_2} :catch_e9
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_f2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_f1
    .catch Lcom/transsnet/downloader/core/thread/RestartException; {:try_start_2 .. :try_end_2} :catch_ee
    .catch Lcom/transsnet/downloader/core/thread/ReDownloadException; {:try_start_2 .. :try_end_2} :catch_ed
    .catch Lcom/transsnet/downloader/core/thread/QuitDPRestartException; {:try_start_2 .. :try_end_2} :catch_ec
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_f0
    .catchall {:try_start_2 .. :try_end_2} :catchall_19

    move-object/from16 v24, v3

    :try_start_3
    iget-object v3, v8, Lcom/transsnet/downloader/core/thread/b;->downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v3
    :try_end_3
    .catch Lcom/transsnet/downloader/exception/DownloadPauseException; {:try_start_3 .. :try_end_3} :catch_ef
    .catch Lcom/transsion/baselib/db/download/DownloadException; {:try_start_3 .. :try_end_3} :catch_e9
    .catch Ljava/net/ProtocolException; {:try_start_3 .. :try_end_3} :catch_e8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_e7
    .catch Lcom/transsnet/downloader/core/thread/RestartException; {:try_start_3 .. :try_end_3} :catch_ee
    .catch Lcom/transsnet/downloader/core/thread/ReDownloadException; {:try_start_3 .. :try_end_3} :catch_ed
    .catch Lcom/transsnet/downloader/core/thread/QuitDPRestartException; {:try_start_3 .. :try_end_3} :catch_ec
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_eb
    .catchall {:try_start_3 .. :try_end_3} :catchall_19

    move-object/from16 v25, v4

    :try_start_4
    iget-object v4, v8, Lcom/transsnet/downloader/core/thread/b;->downloadRange:Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadRange;->getThreadId()I

    move-result v4
    :try_end_4
    .catch Lcom/transsnet/downloader/exception/DownloadPauseException; {:try_start_4 .. :try_end_4} :catch_ea
    .catch Lcom/transsion/baselib/db/download/DownloadException; {:try_start_4 .. :try_end_4} :catch_e9
    .catch Ljava/net/ProtocolException; {:try_start_4 .. :try_end_4} :catch_e8
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_e7
    .catch Lcom/transsnet/downloader/core/thread/RestartException; {:try_start_4 .. :try_end_4} :catch_e6
    .catch Lcom/transsnet/downloader/core/thread/ReDownloadException; {:try_start_4 .. :try_end_4} :catch_e5
    .catch Lcom/transsnet/downloader/core/thread/QuitDPRestartException; {:try_start_4 .. :try_end_4} :catch_e4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_e3
    .catchall {:try_start_4 .. :try_end_4} :catchall_19

    move-object/from16 v26, v10

    :try_start_5
    iget-object v10, v8, Lcom/transsnet/downloader/core/thread/b;->downloadRange:Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-virtual {v10}, Lcom/transsion/baselib/db/download/DownloadRange;->getRangeId()I

    move-result v10
    :try_end_5
    .catch Lcom/transsnet/downloader/exception/DownloadPauseException; {:try_start_5 .. :try_end_5} :catch_e2
    .catch Lcom/transsion/baselib/db/download/DownloadException; {:try_start_5 .. :try_end_5} :catch_e1
    .catch Ljava/net/ProtocolException; {:try_start_5 .. :try_end_5} :catch_e0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_df
    .catch Lcom/transsnet/downloader/core/thread/RestartException; {:try_start_5 .. :try_end_5} :catch_de
    .catch Lcom/transsnet/downloader/core/thread/ReDownloadException; {:try_start_5 .. :try_end_5} :catch_dd
    .catch Lcom/transsnet/downloader/core/thread/QuitDPRestartException; {:try_start_5 .. :try_end_5} :catch_dc
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_db
    .catchall {:try_start_5 .. :try_end_5} :catchall_18

    move-object/from16 v27, v11

    :try_start_6
    iget-object v11, v8, Lcom/transsnet/downloader/core/thread/b;->downloadRange:Lcom/transsion/baselib/db/download/DownloadRange;
    :try_end_6
    .catch Lcom/transsnet/downloader/exception/DownloadPauseException; {:try_start_6 .. :try_end_6} :catch_d6
    .catch Lcom/transsion/baselib/db/download/DownloadException; {:try_start_6 .. :try_end_6} :catch_da
    .catch Ljava/net/ProtocolException; {:try_start_6 .. :try_end_6} :catch_d9
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_d8
    .catch Lcom/transsnet/downloader/core/thread/RestartException; {:try_start_6 .. :try_end_6} :catch_d2
    .catch Lcom/transsnet/downloader/core/thread/ReDownloadException; {:try_start_6 .. :try_end_6} :catch_d1
    .catch Lcom/transsnet/downloader/core/thread/QuitDPRestartException; {:try_start_6 .. :try_end_6} :catch_d0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_d7
    .catchall {:try_start_6 .. :try_end_6} :catchall_17

    move-object/from16 v28, v5

    move-object/from16 v29, v6

    :try_start_7
    invoke-virtual {v11}, Lcom/transsion/baselib/db/download/DownloadRange;->getStart()J

    move-result-wide v5

    iget-object v11, v8, Lcom/transsnet/downloader/core/thread/b;->downloadRange:Lcom/transsion/baselib/db/download/DownloadRange;
    :try_end_7
    .catch Lcom/transsnet/downloader/exception/DownloadPauseException; {:try_start_7 .. :try_end_7} :catch_d6
    .catch Lcom/transsion/baselib/db/download/DownloadException; {:try_start_7 .. :try_end_7} :catch_d5
    .catch Ljava/net/ProtocolException; {:try_start_7 .. :try_end_7} :catch_d4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_d3
    .catch Lcom/transsnet/downloader/core/thread/RestartException; {:try_start_7 .. :try_end_7} :catch_d2
    .catch Lcom/transsnet/downloader/core/thread/ReDownloadException; {:try_start_7 .. :try_end_7} :catch_d1
    .catch Lcom/transsnet/downloader/core/thread/QuitDPRestartException; {:try_start_7 .. :try_end_7} :catch_d0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_cf
    .catchall {:try_start_7 .. :try_end_7} :catchall_17

    move-object/from16 v30, v12

    :try_start_8
    invoke-virtual {v11}, Lcom/transsion/baselib/db/download/DownloadRange;->getProgress()J

    move-result-wide v11
    :try_end_8
    .catch Lcom/transsnet/downloader/exception/DownloadPauseException; {:try_start_8 .. :try_end_8} :catch_c9
    .catch Lcom/transsion/baselib/db/download/DownloadException; {:try_start_8 .. :try_end_8} :catch_ce
    .catch Ljava/net/ProtocolException; {:try_start_8 .. :try_end_8} :catch_cc
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_cb
    .catch Lcom/transsnet/downloader/core/thread/RestartException; {:try_start_8 .. :try_end_8} :catch_c4
    .catch Lcom/transsnet/downloader/core/thread/ReDownloadException; {:try_start_8 .. :try_end_8} :catch_c2
    .catch Lcom/transsnet/downloader/core/thread/QuitDPRestartException; {:try_start_8 .. :try_end_8} :catch_c0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_ca
    .catchall {:try_start_8 .. :try_end_8} :catchall_16

    move-object/from16 v31, v1

    :try_start_9
    iget-object v1, v8, Lcom/transsnet/downloader/core/thread/b;->downloadRange:Lcom/transsion/baselib/db/download/DownloadRange;

    move-wide/from16 v18, v11

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadRange;->getEnd()J

    move-result-wide v11

    iget v1, v8, Lcom/transsnet/downloader/core/thread/b;->bufferSize:I

    move-object/from16 v20, v15

    iget-object v15, v8, Lcom/transsnet/downloader/core/thread/b;->downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v15}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    move-result-object v15
    :try_end_9
    .catch Lcom/transsnet/downloader/exception/DownloadPauseException; {:try_start_9 .. :try_end_9} :catch_c9
    .catch Lcom/transsion/baselib/db/download/DownloadException; {:try_start_9 .. :try_end_9} :catch_cd
    .catch Ljava/net/ProtocolException; {:try_start_9 .. :try_end_9} :catch_cc
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_cb
    .catch Lcom/transsnet/downloader/core/thread/RestartException; {:try_start_9 .. :try_end_9} :catch_c4
    .catch Lcom/transsnet/downloader/core/thread/ReDownloadException; {:try_start_9 .. :try_end_9} :catch_c2
    .catch Lcom/transsnet/downloader/core/thread/QuitDPRestartException; {:try_start_9 .. :try_end_9} :catch_c0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_ca
    .catchall {:try_start_9 .. :try_end_9} :catchall_16

    :try_start_a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v15

    const-string v15, "\n                OkHttp executeDownload----name = "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "\uff0cresourceId = "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\uff0csubjectId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\uff0c\n                thread = "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " , url = "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n                threadId = "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " \n                range.start = "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", range.progress = "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, v18

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", range.end ="

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ",buffer_size = "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n                path = "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v21

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n            "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/text/StringsKt;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1
    :try_end_a
    .catch Lcom/transsnet/downloader/exception/DownloadPauseException; {:try_start_a .. :try_end_a} :catch_c8
    .catch Lcom/transsion/baselib/db/download/DownloadException; {:try_start_a .. :try_end_a} :catch_c7
    .catch Ljava/net/ProtocolException; {:try_start_a .. :try_end_a} :catch_c6
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_c5
    .catch Lcom/transsnet/downloader/core/thread/RestartException; {:try_start_a .. :try_end_a} :catch_c3
    .catch Lcom/transsnet/downloader/core/thread/ReDownloadException; {:try_start_a .. :try_end_a} :catch_c1
    .catch Lcom/transsnet/downloader/core/thread/QuitDPRestartException; {:try_start_a .. :try_end_a} :catch_bf
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_be
    .catchall {:try_start_a .. :try_end_a} :catchall_15

    move-object/from16 v3, v20

    move-object/from16 v8, v30

    const/4 v4, 0x1

    :try_start_b
    invoke-virtual {v3, v8, v1, v4}, Llg/a$a;->p(Ljava/lang/String;[Ljava/lang/String;Z)V

    invoke-direct/range {p0 .. p0}, Lcom/transsnet/downloader/core/thread/b;->e()V

    sget-object v1, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    invoke-virtual {v1}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->h()Ljava/io/File;
    :try_end_b
    .catch Lcom/transsnet/downloader/exception/DownloadPauseException; {:try_start_b .. :try_end_b} :catch_bd
    .catch Lcom/transsion/baselib/db/download/DownloadException; {:try_start_b .. :try_end_b} :catch_bc
    .catch Ljava/net/ProtocolException; {:try_start_b .. :try_end_b} :catch_bb
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_ba
    .catch Lcom/transsnet/downloader/core/thread/RestartException; {:try_start_b .. :try_end_b} :catch_b9
    .catch Lcom/transsnet/downloader/core/thread/ReDownloadException; {:try_start_b .. :try_end_b} :catch_b8
    .catch Lcom/transsnet/downloader/core/thread/QuitDPRestartException; {:try_start_b .. :try_end_b} :catch_b7
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b6
    .catchall {:try_start_b .. :try_end_b} :catchall_14

    move-object/from16 v9, p0

    :try_start_c
    iget-object v1, v9, Lcom/transsnet/downloader/core/thread/b;->downloadRange:Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadRange;->getStart()J

    move-result-wide v4

    iget-object v1, v9, Lcom/transsnet/downloader/core/thread/b;->downloadRange:Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadRange;->getEnd()J

    move-result-wide v6

    iget-object v1, v9, Lcom/transsnet/downloader/core/thread/b;->downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    move-result-object v1
    :try_end_c
    .catch Lcom/transsnet/downloader/exception/DownloadPauseException; {:try_start_c .. :try_end_c} :catch_b1
    .catch Lcom/transsion/baselib/db/download/DownloadException; {:try_start_c .. :try_end_c} :catch_b5
    .catch Ljava/net/ProtocolException; {:try_start_c .. :try_end_c} :catch_b4
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b3
    .catch Lcom/transsnet/downloader/core/thread/RestartException; {:try_start_c .. :try_end_c} :catch_ad
    .catch Lcom/transsnet/downloader/core/thread/ReDownloadException; {:try_start_c .. :try_end_c} :catch_ac
    .catch Lcom/transsnet/downloader/core/thread/QuitDPRestartException; {:try_start_c .. :try_end_c} :catch_ab
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_b2
    .catchall {:try_start_c .. :try_end_c} :catchall_13

    const-wide/16 v10, 0x1

    if-eqz v1, :cond_0

    :try_start_d
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    goto/16 :goto_a

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object/from16 v4, v26

    move-object/from16 v10, v27

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v45, 0x0

    :goto_0
    move-object/from16 v61, v9

    move-object v9, v8

    move-object/from16 v8, v61

    goto/16 :goto_ab

    :catch_0
    move-exception v0

    move-object v2, v0

    move-object/from16 v22, v17

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v44, v28

    move-object/from16 v43, v29

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x0

    const/16 v17, 0x0

    const/16 v45, 0x0

    const/16 v56, 0x0

    :goto_1
    move-object/from16 v61, v9

    move-object v9, v8

    move-object/from16 v8, v61

    goto/16 :goto_98

    :catch_1
    move-object/from16 v5, v25

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v56, 0x0

    :goto_2
    move-object/from16 v61, v9

    move-object v9, v8

    move-object/from16 v8, v61

    goto/16 :goto_9b

    :catch_2
    move-object/from16 v5, v25

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v56, 0x0

    :goto_3
    move-object/from16 v61, v9

    move-object v9, v8

    move-object/from16 v8, v61

    goto/16 :goto_9c

    :catch_3
    move-object/from16 v5, v25

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v56, 0x0

    :goto_4
    move-object/from16 v61, v9

    move-object v9, v8

    move-object/from16 v8, v61

    goto/16 :goto_9d

    :catch_4
    move-exception v0

    move-object v2, v0

    move-object/from16 v22, v17

    move-object/from16 v5, v24

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v6, v28

    move-object/from16 v14, v29

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x0

    const/16 v17, 0x0

    const/16 v45, 0x0

    const/16 v56, 0x0

    :goto_5
    move-object/from16 v61, v9

    move-object v9, v8

    move-object/from16 v8, v61

    goto/16 :goto_9e

    :catch_5
    move-exception v0

    move-object v2, v0

    move-object/from16 v22, v17

    move-object/from16 v5, v24

    move-object/from16 v10, v27

    move-object/from16 v14, v29

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v17, 0x0

    const/16 v45, 0x0

    const/16 v56, 0x0

    :goto_6
    move-object/from16 v61, v9

    move-object v9, v8

    move-object/from16 v8, v61

    goto/16 :goto_a3

    :catch_6
    move-exception v0

    move-object v2, v0

    move-object/from16 v7, v17

    move-object/from16 v10, v27

    move-object/from16 v6, v28

    move-object/from16 v14, v29

    const/4 v4, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v45, 0x0

    const/16 v56, 0x0

    :goto_7
    move-object/from16 v61, v9

    move-object v9, v8

    move-object/from16 v8, v61

    goto/16 :goto_a6

    :catch_7
    move-object/from16 v5, v25

    move-object/from16 v10, v27

    const/4 v15, 0x0

    :goto_8
    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_9
    move-object/from16 v61, v9

    move-object v9, v8

    move-object/from16 v8, v61

    goto/16 :goto_a7

    :cond_0
    move-wide/from16 v18, v10

    :goto_a
    cmp-long v1, v6, v18

    if-ltz v1, :cond_2

    iget-object v1, v9, Lcom/transsnet/downloader/core/thread/b;->downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6
    :try_end_d
    .catch Lcom/transsnet/downloader/exception/DownloadPauseException; {:try_start_d .. :try_end_d} :catch_7
    .catch Lcom/transsion/baselib/db/download/DownloadException; {:try_start_d .. :try_end_d} :catch_6
    .catch Ljava/net/ProtocolException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4
    .catch Lcom/transsnet/downloader/core/thread/RestartException; {:try_start_d .. :try_end_d} :catch_3
    .catch Lcom/transsnet/downloader/core/thread/ReDownloadException; {:try_start_d .. :try_end_d} :catch_2
    .catch Lcom/transsnet/downloader/core/thread/QuitDPRestartException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_b

    :cond_1
    move-wide v6, v10

    :goto_b
    sub-long/2addr v6, v10

    goto :goto_c

    :cond_2
    :try_start_e
    iget-object v1, v9, Lcom/transsnet/downloader/core/thread/b;->downloadRange:Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadRange;->getEnd()J

    move-result-wide v6

    :goto_c
    iget-object v1, v9, Lcom/transsnet/downloader/core/thread/b;->downloadRange:Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadRange;->getProgress()J

    move-result-wide v18

    add-long v4, v4, v18

    sget-object v1, Lcom/transsnet/downloader/core/b;->c:Lcom/transsnet/downloader/core/b$a;

    invoke-virtual {v1}, Lcom/transsnet/downloader/core/b$a;->a()Lcom/transsnet/downloader/core/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsnet/downloader/core/b;->c()Lokhttp3/OkHttpClient;

    move-result-object v1

    new-instance v12, Lokhttp3/Request$Builder;

    invoke-direct {v12}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v15, v9, Lcom/transsnet/downloader/core/thread/b;->downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v15}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, "-"

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_e
    .catch Lcom/transsnet/downloader/exception/DownloadPauseException; {:try_start_e .. :try_end_e} :catch_b1
    .catch Lcom/transsion/baselib/db/download/DownloadException; {:try_start_e .. :try_end_e} :catch_b5
    .catch Ljava/net/ProtocolException; {:try_start_e .. :try_end_e} :catch_b4
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_b3
    .catch Lcom/transsnet/downloader/core/thread/RestartException; {:try_start_e .. :try_end_e} :catch_ad
    .catch Lcom/transsnet/downloader/core/thread/ReDownloadException; {:try_start_e .. :try_end_e} :catch_ac
    .catch Lcom/transsnet/downloader/core/thread/QuitDPRestartException; {:try_start_e .. :try_end_e} :catch_ab
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_b2
    .catchall {:try_start_e .. :try_end_e} :catchall_13

    :try_start_f
    const-string v7, "Range"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bytes="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v7, v10}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    invoke-virtual {v12}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v7

    invoke-virtual {v1, v7}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1
    :try_end_f
    .catch Lcom/transsnet/downloader/exception/DownloadPauseException; {:try_start_f .. :try_end_f} :catch_b1
    .catch Lcom/transsion/baselib/db/download/DownloadException; {:try_start_f .. :try_end_f} :catch_b0
    .catch Ljava/net/ProtocolException; {:try_start_f .. :try_end_f} :catch_af
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_ae
    .catch Lcom/transsnet/downloader/core/thread/RestartException; {:try_start_f .. :try_end_f} :catch_ad
    .catch Lcom/transsnet/downloader/core/thread/ReDownloadException; {:try_start_f .. :try_end_f} :catch_ac
    .catch Lcom/transsnet/downloader/core/thread/QuitDPRestartException; {:try_start_f .. :try_end_f} :catch_ab
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_aa
    .catchall {:try_start_f .. :try_end_f} :catchall_13

    :try_start_10
    invoke-static {v1}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->execute(Lokhttp3/Call;)Lokhttp3/Response;

    move-result-object v7
    :try_end_10
    .catch Lcom/transsnet/downloader/exception/DownloadPauseException; {:try_start_10 .. :try_end_10} :catch_92
    .catch Lcom/transsion/baselib/db/download/DownloadException; {:try_start_10 .. :try_end_10} :catch_a6
    .catch Ljava/net/ProtocolException; {:try_start_10 .. :try_end_10} :catch_a9
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_a8
    .catch Lcom/transsnet/downloader/core/thread/RestartException; {:try_start_10 .. :try_end_10} :catch_8e
    .catch Lcom/transsnet/downloader/core/thread/ReDownloadException; {:try_start_10 .. :try_end_10} :catch_8d
    .catch Lcom/transsnet/downloader/core/thread/QuitDPRestartException; {:try_start_10 .. :try_end_10} :catch_8c
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_a7
    .catchall {:try_start_10 .. :try_end_10} :catchall_12

    :try_start_11
    invoke-virtual {v7}, Lokhttp3/Response;->code()I

    move-result v10
    :try_end_11
    .catch Lcom/transsnet/downloader/exception/DownloadPauseException; {:try_start_11 .. :try_end_11} :catch_92
    .catch Lcom/transsion/baselib/db/download/DownloadException; {:try_start_11 .. :try_end_11} :catch_a6
    .catch Ljava/net/ProtocolException; {:try_start_11 .. :try_end_11} :catch_a5
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_a4
    .catch Lcom/transsnet/downloader/core/thread/RestartException; {:try_start_11 .. :try_end_11} :catch_8e
    .catch Lcom/transsnet/downloader/core/thread/ReDownloadException; {:try_start_11 .. :try_end_11} :catch_8d
    .catch Lcom/transsnet/downloader/core/thread/QuitDPRestartException; {:try_start_11 .. :try_end_11} :catch_8c
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_a3
    .catchall {:try_start_11 .. :try_end_11} :catchall_12

    :try_start_12
    invoke-virtual {v7}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v11
    :try_end_12
    .catch Lcom/transsnet/downloader/exception/DownloadPauseException; {:try_start_12 .. :try_end_12} :catch_92
    .catch Lcom/transsion/baselib/db/download/DownloadException; {:try_start_12 .. :try_end_12} :catch_a2
    .catch Ljava/net/ProtocolException; {:try_start_12 .. :try_end_12} :catch_a1
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_a0
    .catch Lcom/transsnet/downloader/core/thread/RestartException; {:try_start_12 .. :try_end_12} :catch_8e
    .catch Lcom/transsnet/downloader/core/thread/ReDownloadException; {:try_start_12 .. :try_end_12} :catch_8d
    .catch Lcom/transsnet/downloader/core/thread/QuitDPRestartException; {:try_start_12 .. :try_end_12} :catch_8c
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_9f
    .catchall {:try_start_12 .. :try_end_12} :catchall_12

    :try_start_13
    invoke-virtual {v7}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v12
    :try_end_13
    .catch Lcom/transsnet/downloader/exception/DownloadPauseException; {:try_start_13 .. :try_end_13} :catch_92
    .catch Lcom/transsion/baselib/db/download/DownloadException; {:try_start_13 .. :try_end_13} :catch_9e
    .catch Ljava/net/ProtocolException; {:try_start_13 .. :try_end_13} :catch_9d
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_9c
    .catch Lcom/transsnet/downloader/core/thread/RestartException; {:try_start_13 .. :try_end_13} :catch_8e
    .catch Lcom/transsnet/downloader/core/thread/ReDownloadException; {:try_start_13 .. :try_end_13} :catch_8d
    .catch Lcom/transsnet/downloader/core/thread/QuitDPRestartException; {:try_start_13 .. :try_end_13} :catch_8c
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_9b
    .catchall {:try_start_13 .. :try_end_13} :catchall_12

    const/16 v15, 0xce

    if-eq v10, v15, :cond_3

    const/16 v15, 0xc8

    if-ne v10, v15, :cond_4

    :cond_3
    move-object/from16 v22, v6

    move-object/from16 v3, v28

    move-object/from16 v6, v29

    move-object/from16 v15, v31

    move/from16 v28, v10

    goto/16 :goto_16

    :cond_4
    :try_start_14
    const-string v18, "download"

    iget-object v2, v9, Lcom/transsnet/downloader/core/thread/b;->downloadRange:Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadRange;->getRangeId()I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "----download error, rangeId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v21, 0x4

    const/16 v22, 0x0

    const/16 v20, 0x0

    move-object/from16 v17, v3

    invoke-static/range {v17 .. v22}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    new-instance v2, Lcom/transsion/baselib/db/download/DownloadException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_14
    .catch Lcom/transsnet/downloader/exception/DownloadPauseException; {:try_start_14 .. :try_end_14} :catch_f
    .catch Lcom/transsion/baselib/db/download/DownloadException; {:try_start_14 .. :try_end_14} :catch_17
    .catch Ljava/net/ProtocolException; {:try_start_14 .. :try_end_14} :catch_12
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_15
    .catch Lcom/transsnet/downloader/core/thread/RestartException; {:try_start_14 .. :try_end_14} :catch_b
    .catch Lcom/transsnet/downloader/core/thread/ReDownloadException; {:try_start_14 .. :try_end_14} :catch_a
    .catch Lcom/transsnet/downloader/core/thread/QuitDPRestartException; {:try_start_14 .. :try_end_14} :catch_9
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    move-object/from16 v15, v31

    :try_start_15
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_15
    .catch Lcom/transsnet/downloader/exception/DownloadPauseException; {:try_start_15 .. :try_end_15} :catch_f
    .catch Lcom/transsion/baselib/db/download/DownloadException; {:try_start_15 .. :try_end_15} :catch_16
    .catch Ljava/net/ProtocolException; {:try_start_15 .. :try_end_15} :catch_12
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_15
    .catch Lcom/transsnet/downloader/core/thread/RestartException; {:try_start_15 .. :try_end_15} :catch_b
    .catch Lcom/transsnet/downloader/core/thread/ReDownloadException; {:try_start_15 .. :try_end_15} :catch_a
    .catch Lcom/transsnet/downloader/core/thread/QuitDPRestartException; {:try_start_15 .. :try_end_15} :catch_9
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_14
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    move-object/from16 v4, v28

    :try_start_16
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_16
    .catch Lcom/transsnet/downloader/exception/DownloadPauseException; {:try_start_16 .. :try_end_16} :catch_f
    .catch Lcom/transsion/baselib/db/download/DownloadException; {:try_start_16 .. :try_end_16} :catch_13
    .catch Ljava/net/ProtocolException; {:try_start_16 .. :try_end_16} :catch_12
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_11
    .catch Lcom/transsnet/downloader/core/thread/RestartException; {:try_start_16 .. :try_end_16} :catch_b
    .catch Lcom/transsnet/downloader/core/thread/ReDownloadException; {:try_start_16 .. :try_end_16} :catch_a
    .catch Lcom/transsnet/downloader/core/thread/QuitDPRestartException; {:try_start_16 .. :try_end_16} :catch_9
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_10
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    move-object/from16 v5, v29

    :try_start_17
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v13, 0x8

    invoke-direct {v2, v13, v3}, Lcom/transsion/baselib/db/download/DownloadException;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_17
    .catch Lcom/transsnet/downloader/exception/DownloadPauseException; {:try_start_17 .. :try_end_17} :catch_f
    .catch Lcom/transsion/baselib/db/download/DownloadException; {:try_start_17 .. :try_end_17} :catch_e
    .catch Ljava/net/ProtocolException; {:try_start_17 .. :try_end_17} :catch_d
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_c
    .catch Lcom/transsnet/downloader/core/thread/RestartException; {:try_start_17 .. :try_end_17} :catch_b
    .catch Lcom/transsnet/downloader/core/thread/ReDownloadException; {:try_start_17 .. :try_end_17} :catch_a
    .catch Lcom/transsnet/downloader/core/thread/QuitDPRestartException; {:try_start_17 .. :try_end_17} :catch_9
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_8
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    :catchall_1
    move-exception v0

    move-object v15, v1

    move-object/from16 v4, v26

    move-object/from16 v10, v27

    const/16 v17, 0x0

    const/16 v45, 0x0

    :goto_d
    move-object v1, v0

    goto/16 :goto_0

    :catch_8
    move-exception v0

    :goto_e
    move-object v2, v0

    move-object/from16 v56, v1

    move-object/from16 v44, v4

    move-object/from16 v43, v5

    move-object/from16 v22, v6

    move v4, v10

    move-object v1, v11

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    const/16 v17, 0x0

    const/16 v45, 0x0

    goto/16 :goto_1

    :catch_9
    move-object/from16 v56, v1

    move-object/from16 v5, v25

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    const/4 v15, 0x0

    const/16 v16, 0x0

    goto/16 :goto_2

    :catch_a
    move-object/from16 v56, v1

    move-object/from16 v5, v25

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    const/4 v15, 0x0

    const/16 v16, 0x0

    goto/16 :goto_3

    :catch_b
    move-object/from16 v56, v1

    move-object/from16 v5, v25

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    const/4 v15, 0x0

    const/16 v16, 0x0

    goto/16 :goto_4

    :catch_c
    move-exception v0

    :goto_f
    move-object v2, v0

    move-object/from16 v56, v1

    move-object v14, v5

    move-object/from16 v22, v6

    move-object v1, v11

    move-object/from16 v5, v24

    move-object/from16 v11, v26

    const/16 v17, 0x0

    const/16 v45, 0x0

    move-object v6, v4

    move v4, v10

    move-object/from16 v10, v27

    goto/16 :goto_5

    :catch_d
    move-exception v0

    :goto_10
    move-object v2, v0

    move-object/from16 v56, v1

    move-object v14, v5

    move-object/from16 v22, v6

    move v4, v10

    move-object/from16 v5, v24

    move-object/from16 v10, v27

    const/16 v17, 0x0

    const/16 v45, 0x0

    goto/16 :goto_6

    :catch_e
    move-exception v0

    :goto_11
    move-object v2, v0

    move-object/from16 v56, v1

    move-object v14, v5

    move-object v7, v6

    move-object/from16 v31, v15

    :goto_12
    const/16 v16, 0x0

    const/16 v45, 0x0

    move-object v6, v4

    move v4, v10

    move-object v15, v11

    move-object/from16 v10, v27

    goto/16 :goto_7

    :catch_f
    move-object v15, v1

    move-object/from16 v5, v25

    move-object/from16 v10, v27

    goto/16 :goto_8

    :catch_10
    move-exception v0

    :goto_13
    move-object/from16 v5, v29

    goto/16 :goto_e

    :catch_11
    move-exception v0

    :goto_14
    move-object/from16 v5, v29

    goto :goto_f

    :catch_12
    move-exception v0

    move-object/from16 v5, v29

    goto :goto_10

    :catch_13
    move-exception v0

    :goto_15
    move-object/from16 v5, v29

    goto :goto_11

    :catch_14
    move-exception v0

    move-object/from16 v4, v28

    goto :goto_13

    :catch_15
    move-exception v0

    move-object/from16 v4, v28

    goto :goto_14

    :catch_16
    move-exception v0

    move-object/from16 v4, v28

    goto :goto_15

    :catch_17
    move-exception v0

    move-object/from16 v4, v28

    move-object/from16 v5, v29

    move-object/from16 v15, v31

    move-object v2, v0

    move-object/from16 v56, v1

    move-object v14, v5

    move-object v7, v6

    goto :goto_12

    :goto_16
    :try_start_18
    iget-object v10, v9, Lcom/transsnet/downloader/core/thread/b;->proxyHelper:Lcom/transsnet/downloader/proxy/b;
    :try_end_18
    .catch Lcom/transsnet/downloader/exception/DownloadPauseException; {:try_start_18 .. :try_end_18} :catch_92
    .catch Lcom/transsion/baselib/db/download/DownloadException; {:try_start_18 .. :try_end_18} :catch_9a
    .catch Ljava/net/ProtocolException; {:try_start_18 .. :try_end_18} :catch_99
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_98
    .catch Lcom/transsnet/downloader/core/thread/RestartException; {:try_start_18 .. :try_end_18} :catch_8e
    .catch Lcom/transsnet/downloader/core/thread/ReDownloadException; {:try_start_18 .. :try_end_18} :catch_8d
    .catch Lcom/transsnet/downloader/core/thread/QuitDPRestartException; {:try_start_18 .. :try_end_18} :catch_8c
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_97
    .catchall {:try_start_18 .. :try_end_18} :catchall_12

    move-object/from16 v29, v11

    :try_start_19
    const-string v11, "content-type"
    :try_end_19
    .catch Lcom/transsnet/downloader/exception/DownloadPauseException; {:try_start_19 .. :try_end_19} :catch_92
    .catch Lcom/transsion/baselib/db/download/DownloadException; {:try_start_19 .. :try_end_19} :catch_96
    .catch Ljava/net/ProtocolException; {:try_start_19 .. :try_end_19} :catch_95
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_94
    .catch Lcom/transsnet/downloader/core/thread/RestartException; {:try_start_19 .. :try_end_19} :catch_8e
    .catch Lcom/transsnet/downloader/core/thread/ReDownloadException; {:try_start_19 .. :try_end_19} :catch_8d
    .catch Lcom/transsnet/downloader/core/thread/QuitDPRestartException; {:try_start_19 .. :try_end_19} :catch_8c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_93
    .catchall {:try_start_19 .. :try_end_19} :catchall_12

    move-object/from16 v30, v12

    const/4 v12, 0x2

    move-object/from16 v31, v15

    const/4 v15, 0x0

    :try_start_1a
    invoke-static {v7, v11, v15, v12, v15}, Lokhttp3/Response;->header$default(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v11
    :try_end_1a
    .catch Lcom/transsnet/downloader/exception/DownloadPauseException; {:try_start_1a .. :try_end_1a} :catch_92
    .catch Lcom/transsion/baselib/db/download/DownloadException; {:try_start_1a .. :try_end_1a} :catch_91
    .catch Ljava/net/ProtocolException; {:try_start_1a .. :try_end_1a} :catch_90
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_8f
    .catch Lcom/transsnet/downloader/core/thread/RestartException; {:try_start_1a .. :try_end_1a} :catch_8e
    .catch Lcom/transsnet/downloader/core/thread/ReDownloadException; {:try_start_1a .. :try_end_1a} :catch_8d
    .catch Lcom/transsnet/downloader/core/thread/QuitDPRestartException; {:try_start_1a .. :try_end_1a} :catch_8c
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_8b
    .catchall {:try_start_1a .. :try_end_1a} :catchall_12

    if-nez v11, :cond_5

    :try_start_1b
    const-string v11, "video/mp4"
    :try_end_1b
    .catch Lcom/transsnet/downloader/exception/DownloadPauseException; {:try_start_1b .. :try_end_1b} :catch_1f
    .catch Lcom/transsion/baselib/db/download/DownloadException; {:try_start_1b .. :try_end_1b} :catch_1e
    .catch Ljava/net/ProtocolException; {:try_start_1b .. :try_end_1b} :catch_1d
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_1c
    .catch Lcom/transsnet/downloader/core/thread/RestartException; {:try_start_1b .. :try_end_1b} :catch_1b
    .catch Lcom/transsnet/downloader/core/thread/ReDownloadException; {:try_start_1b .. :try_end_1b} :catch_1a
    .catch Lcom/transsnet/downloader/core/thread/QuitDPRestartException; {:try_start_1b .. :try_end_1b} :catch_19
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_18
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    goto/16 :goto_1a

    :catchall_2
    move-exception v0

    move-object/from16 v17, v15

    move-object/from16 v45, v17

    move-object/from16 v4, v26

    move-object/from16 v10, v27

    move-object v15, v1

    goto/16 :goto_d

    :catch_18
    move-exception v0

    move-object v2, v0

    move-object/from16 v56, v1

    move-object/from16 v44, v3

    move-object/from16 v43, v6

    move-object/from16 v17, v15

    move-object/from16 v45, v17

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move/from16 v4, v28

    move-object/from16 v1, v29

    move-object/from16 v12, v30

    goto/16 :goto_1

    :catch_19
    move-object/from16 v56, v1

    move-object/from16 v16, v15

    :goto_17
    move-object/from16 v5, v25

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    goto/16 :goto_2

    :catch_1a
    move-object/from16 v56, v1

    move-object/from16 v16, v15

    :goto_18
    move-object/from16 v5, v25

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    goto/16 :goto_3

    :catch_1b
    move-object/from16 v56, v1

    move-object/from16 v16, v15

    :goto_19
    move-object/from16 v5, v25

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    goto/16 :goto_4

    :catch_1c
    move-exception v0

    move-object v2, v0

    move-object/from16 v56, v1

    move-object v14, v6

    move-object/from16 v17, v15

    move-object/from16 v45, v17

    move-object/from16 v5, v24

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move/from16 v4, v28

    move-object/from16 v1, v29

    move-object/from16 v12, v30

    move-object v6, v3

    goto/16 :goto_5

    :catch_1d
    move-exception v0

    move-object v2, v0

    move-object/from16 v56, v1

    move-object v14, v6

    move-object/from16 v17, v15

    move-object/from16 v45, v17

    move-object/from16 v5, v24

    move-object/from16 v10, v27

    move/from16 v4, v28

    move-object/from16 v11, v29

    move-object/from16 v12, v30

    goto/16 :goto_6

    :catch_1e
    move-exception v0

    move-object v2, v0

    move-object/from16 v56, v1

    move-object v14, v6

    move-object/from16 v16, v15

    move-object/from16 v45, v16

    move-object/from16 v7, v22

    move-object/from16 v10, v27

    move/from16 v4, v28

    move-object/from16 v15, v29

    move-object/from16 v12, v30

    move-object v6, v3

    goto/16 :goto_7

    :catch_1f
    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v5, v25

    move-object/from16 v10, v27

    move-object v15, v1

    goto/16 :goto_9

    :cond_5
    :goto_1a
    :try_start_1c
    iget-object v12, v9, Lcom/transsnet/downloader/core/thread/b;->downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v12}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_6

    move-object/from16 v12, v17

    :cond_6
    invoke-virtual {v10, v11, v12}, Lcom/transsnet/downloader/proxy/b;->j(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/transsnet/downloader/core/thread/b;->b()V

    invoke-virtual {v7}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v10
    :try_end_1c
    .catch Lcom/transsnet/downloader/exception/DownloadPauseException; {:try_start_1c .. :try_end_1c} :catch_92
    .catch Lcom/transsion/baselib/db/download/DownloadException; {:try_start_1c .. :try_end_1c} :catch_91
    .catch Ljava/net/ProtocolException; {:try_start_1c .. :try_end_1c} :catch_90
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_8f
    .catch Lcom/transsnet/downloader/core/thread/RestartException; {:try_start_1c .. :try_end_1c} :catch_8e
    .catch Lcom/transsnet/downloader/core/thread/ReDownloadException; {:try_start_1c .. :try_end_1c} :catch_8d
    .catch Lcom/transsnet/downloader/core/thread/QuitDPRestartException; {:try_start_1c .. :try_end_1c} :catch_8c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_8b
    .catchall {:try_start_1c .. :try_end_1c} :catchall_12

    if-eqz v10, :cond_7

    :try_start_1d
    invoke-virtual {v10}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v10
    :try_end_1d
    .catch Lcom/transsnet/downloader/exception/DownloadPauseException; {:try_start_1d .. :try_end_1d} :catch_1f
    .catch Lcom/transsion/baselib/db/download/DownloadException; {:try_start_1d .. :try_end_1d} :catch_1e
    .catch Ljava/net/ProtocolException; {:try_start_1d .. :try_end_1d} :catch_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_1c
    .catch Lcom/transsnet/downloader/core/thread/RestartException; {:try_start_1d .. :try_end_1d} :catch_1b
    .catch Lcom/transsnet/downloader/core/thread/ReDownloadException; {:try_start_1d .. :try_end_1d} :catch_1a
    .catch Lcom/transsnet/downloader/core/thread/QuitDPRestartException; {:try_start_1d .. :try_end_1d} :catch_19
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_18
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2

    goto :goto_1b

    :cond_7
    move-object v10, v15

    :goto_1b
    :try_start_1e
    new-instance v11, Ljava/io/RandomAccessFile;

    iget-object v12, v9, Lcom/transsnet/downloader/core/thread/b;->downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v12}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    move-result-object v12

    const-string v15, "rwd"

    invoke-direct {v11, v12, v15}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catch Lcom/transsnet/downloader/exception/DownloadPauseException; {:try_start_1e .. :try_end_1e} :catch_8a
    .catch Lcom/transsion/baselib/db/download/DownloadException; {:try_start_1e .. :try_end_1e} :catch_89
    .catch Ljava/net/ProtocolException; {:try_start_1e .. :try_end_1e} :catch_88
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_87
    .catch Lcom/transsnet/downloader/core/thread/RestartException; {:try_start_1e .. :try_end_1e} :catch_86
    .catch Lcom/transsnet/downloader/core/thread/ReDownloadException; {:try_start_1e .. :try_end_1e} :catch_85
    .catch Lcom/transsnet/downloader/core/thread/QuitDPRestartException; {:try_start_1e .. :try_end_1e} :catch_84
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_83
    .catchall {:try_start_1e .. :try_end_1e} :catchall_11

    :try_start_1f
    invoke-virtual {v11, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    iget v4, v9, Lcom/transsnet/downloader/core/thread/b;->bufferSize:I

    new-array v4, v4, [B
    :try_end_1f
    .catch Lcom/transsnet/downloader/exception/DownloadPauseException; {:try_start_1f .. :try_end_1f} :catch_7f
    .catch Lcom/transsion/baselib/db/download/DownloadException; {:try_start_1f .. :try_end_1f} :catch_7e
    .catch Ljava/net/ProtocolException; {:try_start_1f .. :try_end_1f} :catch_82
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_81
    .catch Lcom/transsnet/downloader/core/thread/RestartException; {:try_start_1f .. :try_end_1f} :catch_7b
    .catch Lcom/transsnet/downloader/core/thread/ReDownloadException; {:try_start_1f .. :try_end_1f} :catch_7a
    .catch Lcom/transsnet/downloader/core/thread/QuitDPRestartException; {:try_start_1f .. :try_end_1f} :catch_79
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_80
    .catchall {:try_start_1f .. :try_end_1f} :catchall_10

    const-wide/16 v32, 0x0

    move-object/from16 v42, v7

    move-wide/from16 v34, v32

    move-wide/from16 v36, v34

    move-wide/from16 v38, v36

    move-wide/from16 v40, v38

    const/4 v5, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    :goto_1c
    :try_start_20
    iget-boolean v7, v9, Lcom/transsnet/downloader/core/thread/b;->isBreak:Z
    :try_end_20
    .catch Lcom/transsnet/downloader/exception/DownloadPauseException; {:try_start_20 .. :try_end_20} :catch_7f
    .catch Lcom/transsion/baselib/db/download/DownloadException; {:try_start_20 .. :try_end_20} :catch_7e
    .catch Ljava/net/ProtocolException; {:try_start_20 .. :try_end_20} :catch_7d
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_7c
    .catch Lcom/transsnet/downloader/core/thread/RestartException; {:try_start_20 .. :try_end_20} :catch_7b
    .catch Lcom/transsnet/downloader/core/thread/ReDownloadException; {:try_start_20 .. :try_end_20} :catch_7a
    .catch Lcom/transsnet/downloader/core/thread/QuitDPRestartException; {:try_start_20 .. :try_end_20} :catch_79
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_78
    .catchall {:try_start_20 .. :try_end_20} :catchall_10

    if-nez v7, :cond_17

    move-object/from16 v43, v6

    :try_start_21
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6
    :try_end_21
    .catch Lcom/transsnet/downloader/exception/DownloadPauseException; {:try_start_21 .. :try_end_21} :catch_67
    .catch Lcom/transsion/baselib/db/download/DownloadException; {:try_start_21 .. :try_end_21} :catch_66
    .catch Ljava/net/ProtocolException; {:try_start_21 .. :try_end_21} :catch_65
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_64
    .catch Lcom/transsnet/downloader/core/thread/RestartException; {:try_start_21 .. :try_end_21} :catch_63
    .catch Lcom/transsnet/downloader/core/thread/ReDownloadException; {:try_start_21 .. :try_end_21} :catch_62
    .catch Lcom/transsnet/downloader/core/thread/QuitDPRestartException; {:try_start_21 .. :try_end_21} :catch_61
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_60
    .catchall {:try_start_21 .. :try_end_21} :catchall_b

    move-object/from16 v44, v3

    const/4 v3, -0x1

    if-eqz v10, :cond_8

    :try_start_22
    invoke-virtual {v10, v4}, Ljava/io/InputStream;->read([B)I

    move-result v17
    :try_end_22
    .catch Lcom/transsnet/downloader/exception/DownloadPauseException; {:try_start_22 .. :try_end_22} :catch_27
    .catch Lcom/transsion/baselib/db/download/DownloadException; {:try_start_22 .. :try_end_22} :catch_26
    .catch Ljava/net/ProtocolException; {:try_start_22 .. :try_end_22} :catch_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_24
    .catch Lcom/transsnet/downloader/core/thread/RestartException; {:try_start_22 .. :try_end_22} :catch_23
    .catch Lcom/transsnet/downloader/core/thread/ReDownloadException; {:try_start_22 .. :try_end_22} :catch_22
    .catch Lcom/transsnet/downloader/core/thread/QuitDPRestartException; {:try_start_22 .. :try_end_22} :catch_21
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_20
    .catchall {:try_start_22 .. :try_end_22} :catchall_3

    move/from16 v61, v17

    move-object/from16 v17, v10

    move/from16 v10, v61

    goto/16 :goto_22

    :catchall_3
    move-exception v0

    move-object v15, v1

    move-object/from16 v17, v10

    move-object/from16 v45, v11

    :goto_1d
    move-object/from16 v4, v26

    move-object/from16 v10, v27

    goto/16 :goto_d

    :catch_20
    move-exception v0

    move-object v2, v0

    move-object/from16 v56, v1

    move-object/from16 v17, v10

    move-object/from16 v45, v11

    :goto_1e
    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move/from16 v4, v28

    move-object/from16 v1, v29

    move-object/from16 v12, v30

    move-object/from16 v7, v42

    goto/16 :goto_1

    :catch_21
    move-object/from16 v56, v1

    move-object v15, v10

    move-object/from16 v16, v11

    goto/16 :goto_17

    :catch_22
    move-object/from16 v56, v1

    move-object v15, v10

    move-object/from16 v16, v11

    goto/16 :goto_18

    :catch_23
    move-object/from16 v56, v1

    move-object v15, v10

    move-object/from16 v16, v11

    goto/16 :goto_19

    :catch_24
    move-exception v0

    move-object v2, v0

    move-object/from16 v56, v1

    move-object/from16 v17, v10

    move-object/from16 v45, v11

    :goto_1f
    move-object/from16 v5, v24

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move/from16 v4, v28

    move-object/from16 v1, v29

    move-object/from16 v12, v30

    move-object/from16 v7, v42

    move-object/from16 v14, v43

    move-object/from16 v6, v44

    goto/16 :goto_5

    :catch_25
    move-exception v0

    move-object v2, v0

    move-object/from16 v56, v1

    move-object/from16 v17, v10

    move-object/from16 v45, v11

    :goto_20
    move-object/from16 v5, v24

    move-object/from16 v10, v27

    move/from16 v4, v28

    move-object/from16 v11, v29

    move-object/from16 v12, v30

    move-object/from16 v7, v42

    move-object/from16 v14, v43

    goto/16 :goto_6

    :catch_26
    move-exception v0

    move-object v2, v0

    move-object/from16 v56, v1

    move-object/from16 v16, v10

    move-object/from16 v45, v11

    :goto_21
    move-object/from16 v7, v22

    move-object/from16 v10, v27

    move/from16 v4, v28

    move-object/from16 v15, v29

    move-object/from16 v12, v30

    move-object/from16 v14, v43

    move-object/from16 v6, v44

    goto/16 :goto_7

    :catch_27
    move-object v15, v1

    move-object/from16 v17, v10

    move-object/from16 v16, v11

    move-object/from16 v5, v25

    move-object/from16 v10, v27

    goto/16 :goto_9

    :cond_8
    move-object/from16 v17, v10

    move v10, v3

    :goto_22
    if-ne v10, v3, :cond_9

    move-object/from16 v56, v1

    move-object/from16 v57, v2

    move-object/from16 v60, v8

    move-object v8, v9

    :goto_23
    move-object/from16 v45, v11

    goto/16 :goto_4c

    :cond_9
    const/4 v3, 0x0

    :try_start_23
    invoke-virtual {v11, v4, v3, v10}, Ljava/io/RandomAccessFile;->write([BII)V

    add-int/2addr v5, v10

    iget-object v3, v9, Lcom/transsnet/downloader/core/thread/b;->downloadRange:Lcom/transsion/baselib/db/download/DownloadRange;
    :try_end_23
    .catch Lcom/transsnet/downloader/exception/DownloadPauseException; {:try_start_23 .. :try_end_23} :catch_5f
    .catch Lcom/transsion/baselib/db/download/DownloadException; {:try_start_23 .. :try_end_23} :catch_5e
    .catch Ljava/net/ProtocolException; {:try_start_23 .. :try_end_23} :catch_5d
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_5c
    .catch Lcom/transsnet/downloader/core/thread/RestartException; {:try_start_23 .. :try_end_23} :catch_5b
    .catch Lcom/transsnet/downloader/core/thread/ReDownloadException; {:try_start_23 .. :try_end_23} :catch_5a
    .catch Lcom/transsnet/downloader/core/thread/QuitDPRestartException; {:try_start_23 .. :try_end_23} :catch_59
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_58
    .catchall {:try_start_23 .. :try_end_23} :catchall_a

    move-object/from16 v45, v11

    int-to-long v10, v5

    add-long v10, v18, v10

    :try_start_24
    invoke-virtual {v3, v10, v11}, Lcom/transsion/baselib/db/download/DownloadRange;->setProgress(J)V

    iget-object v3, v9, Lcom/transsnet/downloader/core/thread/b;->downloadProgressListener:Lcom/transsnet/downloader/core/thread/d;

    invoke-interface {v3}, Lcom/transsnet/downloader/core/thread/d;->d()V

    invoke-direct/range {p0 .. p0}, Lcom/transsnet/downloader/core/thread/b;->d()V

    iget-object v3, v9, Lcom/transsnet/downloader/core/thread/b;->downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result v3

    const/4 v10, 0x5

    if-ne v3, v10, :cond_a

    move-object/from16 v56, v1

    move-object/from16 v57, v2

    move-object/from16 v60, v8

    move-object v8, v9

    goto/16 :goto_4c

    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v46
    :try_end_24
    .catch Lcom/transsnet/downloader/exception/DownloadPauseException; {:try_start_24 .. :try_end_24} :catch_57
    .catch Lcom/transsion/baselib/db/download/DownloadException; {:try_start_24 .. :try_end_24} :catch_56
    .catch Ljava/net/ProtocolException; {:try_start_24 .. :try_end_24} :catch_55
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_54
    .catch Lcom/transsnet/downloader/core/thread/RestartException; {:try_start_24 .. :try_end_24} :catch_53
    .catch Lcom/transsnet/downloader/core/thread/ReDownloadException; {:try_start_24 .. :try_end_24} :catch_52
    .catch Lcom/transsnet/downloader/core/thread/QuitDPRestartException; {:try_start_24 .. :try_end_24} :catch_51
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_50
    .catchall {:try_start_24 .. :try_end_24} :catchall_9

    sub-long v48, v46, v34

    const-wide/16 v50, 0x7530

    cmp-long v3, v48, v50

    if-ltz v3, :cond_b

    :try_start_25
    invoke-direct/range {p0 .. p0}, Lcom/transsnet/downloader/core/thread/b;->b()V
    :try_end_25
    .catch Lcom/transsnet/downloader/exception/DownloadPauseException; {:try_start_25 .. :try_end_25} :catch_2f
    .catch Lcom/transsion/baselib/db/download/DownloadException; {:try_start_25 .. :try_end_25} :catch_2e
    .catch Ljava/net/ProtocolException; {:try_start_25 .. :try_end_25} :catch_2d
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_2c
    .catch Lcom/transsnet/downloader/core/thread/RestartException; {:try_start_25 .. :try_end_25} :catch_2b
    .catch Lcom/transsnet/downloader/core/thread/ReDownloadException; {:try_start_25 .. :try_end_25} :catch_2a
    .catch Lcom/transsnet/downloader/core/thread/QuitDPRestartException; {:try_start_25 .. :try_end_25} :catch_29
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_28
    .catchall {:try_start_25 .. :try_end_25} :catchall_4

    move-wide/from16 v34, v46

    goto/16 :goto_24

    :catchall_4
    move-exception v0

    move-object v15, v1

    goto/16 :goto_1d

    :catch_28
    move-exception v0

    move-object v2, v0

    move-object/from16 v56, v1

    goto/16 :goto_1e

    :catch_29
    move-object/from16 v56, v1

    move-object/from16 v15, v17

    move-object/from16 v5, v25

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v16, v45

    goto/16 :goto_2

    :catch_2a
    move-object/from16 v56, v1

    move-object/from16 v15, v17

    move-object/from16 v5, v25

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v16, v45

    goto/16 :goto_3

    :catch_2b
    move-object/from16 v56, v1

    move-object/from16 v15, v17

    move-object/from16 v5, v25

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v16, v45

    goto/16 :goto_4

    :catch_2c
    move-exception v0

    move-object v2, v0

    move-object/from16 v56, v1

    goto/16 :goto_1f

    :catch_2d
    move-exception v0

    move-object v2, v0

    move-object/from16 v56, v1

    goto/16 :goto_20

    :catch_2e
    move-exception v0

    move-object v2, v0

    move-object/from16 v56, v1

    move-object/from16 v16, v17

    goto/16 :goto_21

    :catch_2f
    move-object v15, v1

    move-object/from16 v5, v25

    move-object/from16 v10, v27

    move-object/from16 v16, v45

    goto/16 :goto_9

    :cond_b
    :goto_24
    sub-long v48, v46, v36

    const-wide/16 v50, 0x3e8

    cmp-long v3, v48, v50

    if-ltz v3, :cond_15

    const/16 v3, 0x3e8

    int-to-long v10, v3

    :try_start_26
    div-long v48, v48, v10

    cmp-long v3, v48, v32

    if-gtz v3, :cond_c

    const-wide/16 v48, 0x1

    :cond_c
    sub-int v3, v5, v12

    int-to-long v10, v3

    div-long v10, v10, v48
    :try_end_26
    .catch Lcom/transsnet/downloader/exception/DownloadPauseException; {:try_start_26 .. :try_end_26} :catch_4b
    .catch Lcom/transsion/baselib/db/download/DownloadException; {:try_start_26 .. :try_end_26} :catch_4a
    .catch Ljava/net/ProtocolException; {:try_start_26 .. :try_end_26} :catch_49
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_48
    .catch Lcom/transsnet/downloader/core/thread/RestartException; {:try_start_26 .. :try_end_26} :catch_47
    .catch Lcom/transsnet/downloader/core/thread/ReDownloadException; {:try_start_26 .. :try_end_26} :catch_46
    .catch Lcom/transsnet/downloader/core/thread/QuitDPRestartException; {:try_start_26 .. :try_end_26} :catch_45
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_44
    .catchall {:try_start_26 .. :try_end_26} :catchall_7

    cmp-long v3, v10, v32

    if-gtz v3, :cond_d

    :try_start_27
    const-string v3, "0B"
    :try_end_27
    .catch Lcom/transsnet/downloader/exception/DownloadPauseException; {:try_start_27 .. :try_end_27} :catch_2f
    .catch Lcom/transsion/baselib/db/download/DownloadException; {:try_start_27 .. :try_end_27} :catch_2e
    .catch Ljava/net/ProtocolException; {:try_start_27 .. :try_end_27} :catch_2d
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_2c
    .catch Lcom/transsnet/downloader/core/thread/RestartException; {:try_start_27 .. :try_end_27} :catch_2b
    .catch Lcom/transsnet/downloader/core/thread/ReDownloadException; {:try_start_27 .. :try_end_27} :catch_2a
    .catch Lcom/transsnet/downloader/core/thread/QuitDPRestartException; {:try_start_27 .. :try_end_27} :catch_29
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_28
    .catchall {:try_start_27 .. :try_end_27} :catchall_4

    goto :goto_25

    :cond_d
    const/4 v3, 0x1

    :try_start_28
    invoke-static {v10, v11, v3}, Loh/b;->a(JI)Ljava/lang/String;

    move-result-object v12

    move-object v3, v12

    :goto_25
    cmp-long v12, v38, v10

    move-object/from16 v48, v4

    move/from16 v49, v5

    if-gez v12, :cond_e

    move-wide v4, v10

    goto :goto_26

    :cond_e
    move-wide/from16 v4, v38

    :goto_26
    add-long v10, v40, v10

    iget-object v12, v9, Lcom/transsnet/downloader/core/thread/b;->downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v12}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    move-result-object v12
    :try_end_28
    .catch Lcom/transsnet/downloader/exception/DownloadPauseException; {:try_start_28 .. :try_end_28} :catch_4b
    .catch Lcom/transsion/baselib/db/download/DownloadException; {:try_start_28 .. :try_end_28} :catch_4a
    .catch Ljava/net/ProtocolException; {:try_start_28 .. :try_end_28} :catch_49
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_48
    .catch Lcom/transsnet/downloader/core/thread/RestartException; {:try_start_28 .. :try_end_28} :catch_47
    .catch Lcom/transsnet/downloader/core/thread/ReDownloadException; {:try_start_28 .. :try_end_28} :catch_46
    .catch Lcom/transsnet/downloader/core/thread/QuitDPRestartException; {:try_start_28 .. :try_end_28} :catch_45
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_44
    .catchall {:try_start_28 .. :try_end_28} :catchall_7

    if-eqz v12, :cond_f

    :try_start_29
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v36

    goto :goto_27

    :cond_f
    const-wide/16 v36, 0x1

    :goto_27
    const-wide/32 v38, 0x300000

    cmp-long v12, v36, v38

    if-gez v12, :cond_10

    const/4 v12, 0x5

    :goto_28
    const/16 v23, 0x1

    goto :goto_29

    :cond_10
    const/16 v12, 0xa

    goto :goto_28

    :goto_29
    add-int/lit8 v36, v15, 0x1

    if-lt v15, v12, :cond_14

    long-to-float v10, v10

    const/high16 v11, 0x3f800000    # 1.0f

    mul-float/2addr v10, v11

    int-to-float v12, v12

    div-float/2addr v10, v12

    long-to-float v12, v4

    mul-float/2addr v12, v11

    const/4 v11, 0x5

    int-to-float v11, v11

    div-float/2addr v12, v11

    cmpg-float v10, v10, v12

    if-ltz v10, :cond_11

    invoke-direct/range {p0 .. p0}, Lcom/transsnet/downloader/core/thread/b;->g()J

    move-result-wide v10

    cmp-long v10, v4, v10

    if-gez v10, :cond_12

    :cond_11
    iget-object v10, v9, Lcom/transsnet/downloader/core/thread/b;->downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v10}, Lcom/transsion/baselib/db/download/DownloadBean;->getRestartDownloadCount()I

    move-result v10

    iget-object v11, v9, Lcom/transsnet/downloader/core/thread/b;->config:Loy/c;

    invoke-virtual {v11}, Loy/c;->i()I

    move-result v11

    if-lt v10, v11, :cond_13

    :cond_12
    move-wide/from16 v40, v32

    const/16 v36, 0x0

    goto :goto_2a

    :cond_13
    iget-object v2, v9, Lcom/transsnet/downloader/core/thread/b;->downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getRestartDownloadCount()I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setRestartDownloadCount(I)V

    new-instance v2, Lcom/transsnet/downloader/core/thread/RestartException;

    invoke-direct {v2}, Lcom/transsnet/downloader/core/thread/RestartException;-><init>()V

    throw v2
    :try_end_29
    .catch Lcom/transsnet/downloader/exception/DownloadPauseException; {:try_start_29 .. :try_end_29} :catch_2f
    .catch Lcom/transsion/baselib/db/download/DownloadException; {:try_start_29 .. :try_end_29} :catch_2e
    .catch Ljava/net/ProtocolException; {:try_start_29 .. :try_end_29} :catch_2d
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_29} :catch_2c
    .catch Lcom/transsnet/downloader/core/thread/RestartException; {:try_start_29 .. :try_end_29} :catch_2b
    .catch Lcom/transsnet/downloader/core/thread/ReDownloadException; {:try_start_29 .. :try_end_29} :catch_2a
    .catch Lcom/transsnet/downloader/core/thread/QuitDPRestartException; {:try_start_29 .. :try_end_29} :catch_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_28
    .catchall {:try_start_29 .. :try_end_29} :catchall_4

    :cond_14
    move-wide/from16 v40, v10

    :goto_2a
    :try_start_2a
    sget-object v50, Llg/a;->a:Llg/a$a;

    const-string v51, "download"

    iget-object v10, v9, Lcom/transsnet/downloader/core/thread/b;->downloadRange:Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-virtual {v10}, Lcom/transsion/baselib/db/download/DownloadRange;->getRangeId()I

    move-result v10

    iget-object v11, v9, Lcom/transsnet/downloader/core/thread/b;->downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v11}, Lcom/transsion/baselib/db/download/DownloadBean;->getProgress()J

    move-result-wide v11

    iget-object v15, v9, Lcom/transsnet/downloader/core/thread/b;->downloadRange:Lcom/transsion/baselib/db/download/DownloadRange;

    move-wide/from16 v37, v4

    invoke-virtual {v15}, Lcom/transsion/baselib/db/download/DownloadRange;->getProgress()J

    move-result-wide v4

    iget-object v15, v9, Lcom/transsnet/downloader/core/thread/b;->downloadRange:Lcom/transsion/baselib/db/download/DownloadRange;
    :try_end_2a
    .catch Lcom/transsnet/downloader/exception/DownloadPauseException; {:try_start_2a .. :try_end_2a} :catch_4b
    .catch Lcom/transsion/baselib/db/download/DownloadException; {:try_start_2a .. :try_end_2a} :catch_4a
    .catch Ljava/net/ProtocolException; {:try_start_2a .. :try_end_2a} :catch_49
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2a} :catch_48
    .catch Lcom/transsnet/downloader/core/thread/RestartException; {:try_start_2a .. :try_end_2a} :catch_47
    .catch Lcom/transsnet/downloader/core/thread/ReDownloadException; {:try_start_2a .. :try_end_2a} :catch_46
    .catch Lcom/transsnet/downloader/core/thread/QuitDPRestartException; {:try_start_2a .. :try_end_2a} :catch_45
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_44
    .catchall {:try_start_2a .. :try_end_2a} :catchall_7

    move-object/from16 v56, v1

    move-object/from16 v57, v2

    :try_start_2b
    invoke-virtual {v15}, Lcom/transsion/baselib/db/download/DownloadRange;->getStart()J

    move-result-wide v1

    iget-object v15, v9, Lcom/transsnet/downloader/core/thread/b;->downloadRange:Lcom/transsion/baselib/db/download/DownloadRange;

    move-wide/from16 v58, v6

    invoke-virtual {v15}, Lcom/transsion/baselib/db/download/DownloadRange;->getEnd()J

    move-result-wide v6

    iget-object v15, v9, Lcom/transsnet/downloader/core/thread/b;->config:Loy/c;
    :try_end_2b
    .catch Lcom/transsnet/downloader/exception/DownloadPauseException; {:try_start_2b .. :try_end_2b} :catch_43
    .catch Lcom/transsion/baselib/db/download/DownloadException; {:try_start_2b .. :try_end_2b} :catch_42
    .catch Ljava/net/ProtocolException; {:try_start_2b .. :try_end_2b} :catch_41
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2b} :catch_40
    .catch Lcom/transsnet/downloader/core/thread/RestartException; {:try_start_2b .. :try_end_2b} :catch_3f
    .catch Lcom/transsnet/downloader/core/thread/ReDownloadException; {:try_start_2b .. :try_end_2b} :catch_3e
    .catch Lcom/transsnet/downloader/core/thread/QuitDPRestartException; {:try_start_2b .. :try_end_2b} :catch_3d
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_3c
    .catchall {:try_start_2b .. :try_end_2b} :catchall_6

    move-object/from16 v60, v8

    :try_start_2c
    invoke-virtual {v15}, Loy/c;->d()D

    move-result-wide v8

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v52, v8

    const-string v8, "downloading ---thread = "

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", name = "

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", speed = "

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/s\uff0c rangeId = "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", totalProgress = "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ,rangeProgress = "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", start = "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", end = "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", speedLimitRatio = "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v52

    invoke-virtual {v15, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    const/16 v54, 0x4

    const/16 v55, 0x0

    const/16 v53, 0x0

    invoke-static/range {v50 .. v55}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V
    :try_end_2c
    .catch Lcom/transsnet/downloader/exception/DownloadPauseException; {:try_start_2c .. :try_end_2c} :catch_3a
    .catch Lcom/transsion/baselib/db/download/DownloadException; {:try_start_2c .. :try_end_2c} :catch_39
    .catch Ljava/net/ProtocolException; {:try_start_2c .. :try_end_2c} :catch_38
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2c} :catch_37
    .catch Lcom/transsnet/downloader/core/thread/RestartException; {:try_start_2c .. :try_end_2c} :catch_35
    .catch Lcom/transsnet/downloader/core/thread/ReDownloadException; {:try_start_2c .. :try_end_2c} :catch_33
    .catch Lcom/transsnet/downloader/core/thread/QuitDPRestartException; {:try_start_2c .. :try_end_2c} :catch_31
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_30
    .catchall {:try_start_2c .. :try_end_2c} :catchall_5

    move-object/from16 v8, p0

    move/from16 v15, v36

    move-wide/from16 v38, v37

    move-wide/from16 v36, v46

    move/from16 v12, v49

    move-wide/from16 v1, v58

    goto/16 :goto_42

    :catchall_5
    move-exception v0

    :goto_2b
    move-object/from16 v8, p0

    :goto_2c
    move-object v1, v0

    move-object/from16 v4, v26

    move-object/from16 v10, v27

    move-object/from16 v15, v56

    move-object/from16 v9, v60

    goto/16 :goto_ab

    :catch_30
    move-exception v0

    :goto_2d
    move-object/from16 v8, p0

    :goto_2e
    move-object v2, v0

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move/from16 v4, v28

    move-object/from16 v1, v29

    move-object/from16 v12, v30

    move-object/from16 v7, v42

    move-object/from16 v9, v60

    goto/16 :goto_98

    :catch_31
    move-object/from16 v8, p0

    :catch_32
    :goto_2f
    move-object/from16 v15, v17

    move-object/from16 v5, v25

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v16, v45

    move-object/from16 v9, v60

    goto/16 :goto_9b

    :catch_33
    move-object/from16 v8, p0

    :catch_34
    :goto_30
    move-object/from16 v15, v17

    move-object/from16 v5, v25

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v16, v45

    move-object/from16 v9, v60

    goto/16 :goto_9c

    :catch_35
    move-object/from16 v8, p0

    :catch_36
    :goto_31
    move-object/from16 v15, v17

    move-object/from16 v5, v25

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v16, v45

    move-object/from16 v9, v60

    goto/16 :goto_9d

    :catch_37
    move-exception v0

    :goto_32
    move-object/from16 v8, p0

    :goto_33
    move-object v2, v0

    move-object/from16 v5, v24

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move/from16 v4, v28

    move-object/from16 v1, v29

    move-object/from16 v12, v30

    move-object/from16 v7, v42

    move-object/from16 v14, v43

    move-object/from16 v6, v44

    move-object/from16 v9, v60

    goto/16 :goto_9e

    :catch_38
    move-exception v0

    :goto_34
    move-object/from16 v8, p0

    :goto_35
    move-object v2, v0

    move-object/from16 v5, v24

    move-object/from16 v10, v27

    move/from16 v4, v28

    move-object/from16 v11, v29

    move-object/from16 v12, v30

    move-object/from16 v7, v42

    move-object/from16 v14, v43

    move-object/from16 v9, v60

    goto/16 :goto_a3

    :catch_39
    move-exception v0

    :goto_36
    move-object/from16 v8, p0

    :goto_37
    move-object v2, v0

    move-object/from16 v16, v17

    move-object/from16 v7, v22

    move-object/from16 v10, v27

    move/from16 v4, v28

    move-object/from16 v15, v29

    move-object/from16 v12, v30

    move-object/from16 v14, v43

    move-object/from16 v6, v44

    move-object/from16 v9, v60

    goto/16 :goto_a6

    :catch_3a
    move-object/from16 v8, p0

    :catch_3b
    :goto_38
    move-object/from16 v5, v25

    move-object/from16 v10, v27

    move-object/from16 v16, v45

    move-object/from16 v15, v56

    move-object/from16 v9, v60

    goto/16 :goto_a7

    :catchall_6
    move-exception v0

    :goto_39
    move-object/from16 v60, v8

    goto/16 :goto_2b

    :catch_3c
    move-exception v0

    :goto_3a
    move-object/from16 v60, v8

    goto/16 :goto_2d

    :catch_3d
    :goto_3b
    move-object v9, v8

    move-object/from16 v15, v17

    move-object/from16 v5, v25

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v16, v45

    move-object/from16 v8, p0

    goto/16 :goto_9b

    :catch_3e
    :goto_3c
    move-object v9, v8

    move-object/from16 v15, v17

    move-object/from16 v5, v25

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v16, v45

    move-object/from16 v8, p0

    goto/16 :goto_9c

    :catch_3f
    :goto_3d
    move-object v9, v8

    move-object/from16 v15, v17

    move-object/from16 v5, v25

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v16, v45

    move-object/from16 v8, p0

    goto/16 :goto_9d

    :catch_40
    move-exception v0

    :goto_3e
    move-object/from16 v60, v8

    goto/16 :goto_32

    :catch_41
    move-exception v0

    :goto_3f
    move-object/from16 v60, v8

    goto :goto_34

    :catch_42
    move-exception v0

    :goto_40
    move-object/from16 v60, v8

    goto :goto_36

    :catch_43
    :goto_41
    move-object v9, v8

    move-object/from16 v5, v25

    move-object/from16 v10, v27

    move-object/from16 v16, v45

    move-object/from16 v15, v56

    move-object/from16 v8, p0

    goto/16 :goto_a7

    :catchall_7
    move-exception v0

    move-object/from16 v56, v1

    goto :goto_39

    :catch_44
    move-exception v0

    move-object/from16 v56, v1

    goto :goto_3a

    :catch_45
    move-object/from16 v56, v1

    goto :goto_3b

    :catch_46
    move-object/from16 v56, v1

    goto :goto_3c

    :catch_47
    move-object/from16 v56, v1

    goto :goto_3d

    :catch_48
    move-exception v0

    move-object/from16 v56, v1

    goto :goto_3e

    :catch_49
    move-exception v0

    move-object/from16 v56, v1

    goto :goto_3f

    :catch_4a
    move-exception v0

    move-object/from16 v56, v1

    goto :goto_40

    :catch_4b
    move-object/from16 v56, v1

    goto :goto_41

    :cond_15
    move-object/from16 v56, v1

    move-object/from16 v57, v2

    move-object/from16 v48, v4

    move/from16 v49, v5

    move-object/from16 v60, v8

    move-object/from16 v8, p0

    move-wide v1, v6

    :goto_42
    :try_start_2d
    invoke-direct {v8, v1, v2}, Lcom/transsnet/downloader/core/thread/b;->k(J)V

    iget-object v1, v8, Lcom/transsnet/downloader/core/thread/b;->downloadRange:Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadRange;->isRangeDownloadSuccess()Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, v8, Lcom/transsnet/downloader/core/thread/b;->downloadRange:Lcom/transsion/baselib/db/download/DownloadRange;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/transsion/baselib/db/download/DownloadRange;->setDownloading(Z)V

    iget-object v1, v8, Lcom/transsnet/downloader/core/thread/b;->downloadProgressListener:Lcom/transsnet/downloader/core/thread/d;

    iget v2, v8, Lcom/transsnet/downloader/core/thread/b;->threadIndex:I

    iget-object v3, v8, Lcom/transsnet/downloader/core/thread/b;->downloadRange:Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-interface {v1, v8, v2, v3}, Lcom/transsnet/downloader/core/thread/d;->f(Lcom/transsnet/downloader/core/thread/f;ILcom/transsion/baselib/db/download/DownloadRange;)V
    :try_end_2d
    .catch Lcom/transsnet/downloader/exception/DownloadPauseException; {:try_start_2d .. :try_end_2d} :catch_3b
    .catch Lcom/transsion/baselib/db/download/DownloadException; {:try_start_2d .. :try_end_2d} :catch_4f
    .catch Ljava/net/ProtocolException; {:try_start_2d .. :try_end_2d} :catch_4e
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_2d} :catch_4d
    .catch Lcom/transsnet/downloader/core/thread/RestartException; {:try_start_2d .. :try_end_2d} :catch_36
    .catch Lcom/transsnet/downloader/core/thread/ReDownloadException; {:try_start_2d .. :try_end_2d} :catch_34
    .catch Lcom/transsnet/downloader/core/thread/QuitDPRestartException; {:try_start_2d .. :try_end_2d} :catch_32
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_4c
    .catchall {:try_start_2d .. :try_end_2d} :catchall_8

    goto/16 :goto_4c

    :catchall_8
    move-exception v0

    goto/16 :goto_2c

    :catch_4c
    move-exception v0

    goto/16 :goto_2e

    :catch_4d
    move-exception v0

    goto/16 :goto_33

    :catch_4e
    move-exception v0

    goto/16 :goto_35

    :catch_4f
    move-exception v0

    goto/16 :goto_37

    :cond_16
    move-object v9, v8

    move-object/from16 v10, v17

    move-object/from16 v6, v43

    move-object/from16 v3, v44

    move-object/from16 v11, v45

    move-object/from16 v4, v48

    move/from16 v5, v49

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    move-object/from16 v8, v60

    goto/16 :goto_1c

    :catchall_9
    move-exception v0

    move-object/from16 v56, v1

    move-object/from16 v60, v8

    move-object v8, v9

    goto/16 :goto_2c

    :catch_50
    move-exception v0

    move-object/from16 v56, v1

    move-object/from16 v60, v8

    move-object v8, v9

    goto/16 :goto_2e

    :catch_51
    move-object/from16 v56, v1

    move-object/from16 v60, v8

    move-object v8, v9

    goto/16 :goto_2f

    :catch_52
    move-object/from16 v56, v1

    move-object/from16 v60, v8

    move-object v8, v9

    goto/16 :goto_30

    :catch_53
    move-object/from16 v56, v1

    move-object/from16 v60, v8

    move-object v8, v9

    goto/16 :goto_31

    :catch_54
    move-exception v0

    move-object/from16 v56, v1

    move-object/from16 v60, v8

    move-object v8, v9

    goto/16 :goto_33

    :catch_55
    move-exception v0

    move-object/from16 v56, v1

    move-object/from16 v60, v8

    move-object v8, v9

    goto/16 :goto_35

    :catch_56
    move-exception v0

    move-object/from16 v56, v1

    move-object/from16 v60, v8

    move-object v8, v9

    goto/16 :goto_37

    :catch_57
    move-object/from16 v56, v1

    move-object/from16 v60, v8

    move-object v8, v9

    goto/16 :goto_38

    :catchall_a
    move-exception v0

    move-object/from16 v56, v1

    move-object/from16 v60, v8

    move-object v8, v9

    :goto_43
    move-object/from16 v45, v11

    goto/16 :goto_2c

    :catch_58
    move-exception v0

    move-object/from16 v56, v1

    move-object/from16 v60, v8

    move-object v8, v9

    :goto_44
    move-object/from16 v45, v11

    goto/16 :goto_2e

    :catch_59
    move-object/from16 v56, v1

    move-object/from16 v60, v8

    move-object v8, v9

    :goto_45
    move-object/from16 v45, v11

    goto/16 :goto_2f

    :catch_5a
    move-object/from16 v56, v1

    move-object/from16 v60, v8

    move-object v8, v9

    :goto_46
    move-object/from16 v45, v11

    goto/16 :goto_30

    :catch_5b
    move-object/from16 v56, v1

    move-object/from16 v60, v8

    move-object v8, v9

    :goto_47
    move-object/from16 v45, v11

    goto/16 :goto_31

    :catch_5c
    move-exception v0

    move-object/from16 v56, v1

    move-object/from16 v60, v8

    move-object v8, v9

    :goto_48
    move-object/from16 v45, v11

    goto/16 :goto_33

    :catch_5d
    move-exception v0

    move-object/from16 v56, v1

    move-object/from16 v60, v8

    move-object v8, v9

    :goto_49
    move-object/from16 v45, v11

    goto/16 :goto_35

    :catch_5e
    move-exception v0

    move-object/from16 v56, v1

    move-object/from16 v60, v8

    move-object v8, v9

    :goto_4a
    move-object/from16 v45, v11

    goto/16 :goto_37

    :catch_5f
    move-object/from16 v56, v1

    move-object/from16 v60, v8

    move-object v8, v9

    :goto_4b
    move-object/from16 v45, v11

    goto/16 :goto_38

    :catchall_b
    move-exception v0

    move-object/from16 v56, v1

    move-object/from16 v60, v8

    move-object v8, v9

    move-object/from16 v17, v10

    goto :goto_43

    :catch_60
    move-exception v0

    move-object/from16 v56, v1

    move-object/from16 v44, v3

    move-object/from16 v60, v8

    move-object v8, v9

    move-object/from16 v17, v10

    goto :goto_44

    :catch_61
    move-object/from16 v56, v1

    move-object/from16 v60, v8

    move-object v8, v9

    move-object/from16 v17, v10

    goto :goto_45

    :catch_62
    move-object/from16 v56, v1

    move-object/from16 v60, v8

    move-object v8, v9

    move-object/from16 v17, v10

    goto :goto_46

    :catch_63
    move-object/from16 v56, v1

    move-object/from16 v60, v8

    move-object v8, v9

    move-object/from16 v17, v10

    goto :goto_47

    :catch_64
    move-exception v0

    move-object/from16 v56, v1

    move-object/from16 v44, v3

    move-object/from16 v60, v8

    move-object v8, v9

    move-object/from16 v17, v10

    goto :goto_48

    :catch_65
    move-exception v0

    move-object/from16 v56, v1

    move-object/from16 v60, v8

    move-object v8, v9

    move-object/from16 v17, v10

    goto :goto_49

    :catch_66
    move-exception v0

    move-object/from16 v56, v1

    move-object/from16 v44, v3

    move-object/from16 v60, v8

    move-object v8, v9

    move-object/from16 v17, v10

    goto :goto_4a

    :catch_67
    move-object/from16 v56, v1

    move-object/from16 v60, v8

    move-object v8, v9

    move-object/from16 v17, v10

    goto :goto_4b

    :cond_17
    move-object/from16 v56, v1

    move-object/from16 v57, v2

    move-object/from16 v44, v3

    move-object/from16 v43, v6

    move-object/from16 v60, v8

    move-object v8, v9

    move-object/from16 v17, v10

    goto/16 :goto_23

    :goto_4c
    :try_start_2e
    sget-object v1, Llg/a;->a:Llg/a$a;

    iget-boolean v2, v8, Lcom/transsnet/downloader/core/thread/b;->isBreak:Z

    iget-object v3, v8, Lcom/transsnet/downloader/core/thread/b;->downloadRange:Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadRange;->getThreadId()I

    move-result v3

    iget-object v4, v8, Lcom/transsnet/downloader/core/thread/b;->downloadRange:Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadRange;->getRangeId()I

    move-result v4

    iget-object v5, v8, Lcom/transsnet/downloader/core/thread/b;->downloadRange:Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadRange;->getStart()J

    move-result-wide v5

    iget-object v7, v8, Lcom/transsnet/downloader/core/thread/b;->downloadRange:Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-virtual {v7}, Lcom/transsion/baselib/db/download/DownloadRange;->getEnd()J

    move-result-wide v9

    iget-object v7, v8, Lcom/transsnet/downloader/core/thread/b;->downloadRange:Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-virtual {v7}, Lcom/transsion/baselib/db/download/DownloadRange;->getProgress()J

    move-result-wide v11

    iget-object v7, v8, Lcom/transsnet/downloader/core/thread/b;->downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v7}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result v7

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "range success or break, isBreak = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", threadId = "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v2, v57

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", range.start\uff1a"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ",,range.end\uff1a"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " range.progress = "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", status:"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_2e
    .catch Lcom/transsnet/downloader/exception/DownloadPauseException; {:try_start_2e .. :try_end_2e} :catch_77
    .catch Lcom/transsion/baselib/db/download/DownloadException; {:try_start_2e .. :try_end_2e} :catch_76
    .catch Ljava/net/ProtocolException; {:try_start_2e .. :try_end_2e} :catch_75
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_2e} :catch_74
    .catch Lcom/transsnet/downloader/core/thread/RestartException; {:try_start_2e .. :try_end_2e} :catch_73
    .catch Lcom/transsnet/downloader/core/thread/ReDownloadException; {:try_start_2e .. :try_end_2e} :catch_72
    .catch Lcom/transsnet/downloader/core/thread/QuitDPRestartException; {:try_start_2e .. :try_end_2e} :catch_71
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_70
    .catchall {:try_start_2e .. :try_end_2e} :catchall_f

    move-object/from16 v9, v60

    const/4 v3, 0x1

    :try_start_2f
    invoke-virtual {v1, v9, v2, v3}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-boolean v3, v8, Lcom/transsnet/downloader/core/thread/b;->isBreak:Z

    iget-object v1, v8, Lcom/transsnet/downloader/core/thread/b;->downloadRange:Lcom/transsion/baselib/db/download/DownloadRange;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/transsion/baselib/db/download/DownloadRange;->setDownloading(Z)V

    iget-object v1, v8, Lcom/transsnet/downloader/core/thread/b;->downloadProgressListener:Lcom/transsnet/downloader/core/thread/d;

    invoke-interface {v1}, Lcom/transsnet/downloader/core/thread/d;->e()V
    :try_end_2f
    .catch Lcom/transsnet/downloader/exception/DownloadPauseException; {:try_start_2f .. :try_end_2f} :catch_6f
    .catch Lcom/transsion/baselib/db/download/DownloadException; {:try_start_2f .. :try_end_2f} :catch_6e
    .catch Ljava/net/ProtocolException; {:try_start_2f .. :try_end_2f} :catch_6d
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_2f} :catch_6c
    .catch Lcom/transsnet/downloader/core/thread/RestartException; {:try_start_2f .. :try_end_2f} :catch_6b
    .catch Lcom/transsnet/downloader/core/thread/ReDownloadException; {:try_start_2f .. :try_end_2f} :catch_6a
    .catch Lcom/transsnet/downloader/core/thread/QuitDPRestartException; {:try_start_2f .. :try_end_2f} :catch_69
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_68
    .catchall {:try_start_2f .. :try_end_2f} :catchall_e

    if-eqz v56, :cond_18

    invoke-interface/range {v56 .. v56}, Lokhttp3/Call;->cancel()V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_18
    iget-object v1, v8, Lcom/transsnet/downloader/core/thread/b;->downloadRange:Lcom/transsion/baselib/db/download/DownloadRange;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/transsion/baselib/db/download/DownloadRange;->setDownloading(Z)V

    :try_start_30
    invoke-virtual/range {v45 .. v45}, Ljava/io/RandomAccessFile;->close()V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_c

    goto :goto_4d

    :catchall_c
    move-exception v0

    move-object v1, v0

    sget-object v2, Llg/a;->a:Llg/a$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v10, v27

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v2, v9, v1, v3}, Llg/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_4d
    if-eqz v17, :cond_19

    :try_start_31
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_d

    goto :goto_4e

    :catchall_d
    move-exception v0

    move-object v1, v0

    sget-object v2, Llg/a;->a:Llg/a$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v11, v26

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v2, v9, v1, v3}, Llg/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_19
    :goto_4e
    iget-object v1, v8, Lcom/transsnet/downloader/core/thread/b;->breakCallback:Lkotlin/jvm/functions/Function0;

    if-eqz v1, :cond_20

    :goto_4f
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto/16 :goto_aa

    :catchall_e
    move-exception v0

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    :goto_50
    move-object v1, v0

    move-object v4, v11

    :goto_51
    move-object/from16 v15, v56

    goto/16 :goto_ab

    :catch_68
    move-exception v0

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    :goto_52
    move-object v2, v0

    move/from16 v4, v28

    move-object/from16 v1, v29

    move-object/from16 v12, v30

    move-object/from16 v7, v42

    goto/16 :goto_98

    :catch_69
    move-object/from16 v11, v26

    move-object/from16 v10, v27

    :goto_53
    move-object/from16 v15, v17

    move-object/from16 v5, v25

    move-object/from16 v16, v45

    goto/16 :goto_9b

    :catch_6a
    move-object/from16 v11, v26

    move-object/from16 v10, v27

    :goto_54
    move-object/from16 v15, v17

    move-object/from16 v5, v25

    move-object/from16 v16, v45

    goto/16 :goto_9c

    :catch_6b
    move-object/from16 v11, v26

    move-object/from16 v10, v27

    :goto_55
    move-object/from16 v15, v17

    move-object/from16 v5, v25

    move-object/from16 v16, v45

    goto/16 :goto_9d

    :catch_6c
    move-exception v0

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    :goto_56
    move-object v2, v0

    move-object/from16 v5, v24

    move/from16 v4, v28

    move-object/from16 v1, v29

    move-object/from16 v12, v30

    move-object/from16 v7, v42

    :goto_57
    move-object/from16 v14, v43

    move-object/from16 v6, v44

    goto/16 :goto_9e

    :catch_6d
    move-exception v0

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    :goto_58
    move-object v2, v0

    move-object/from16 v5, v24

    move/from16 v4, v28

    move-object/from16 v11, v29

    move-object/from16 v12, v30

    move-object/from16 v7, v42

    :goto_59
    move-object/from16 v14, v43

    goto/16 :goto_a3

    :catch_6e
    move-exception v0

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    :goto_5a
    move-object v2, v0

    move-object/from16 v16, v17

    move-object/from16 v7, v22

    move/from16 v4, v28

    move-object/from16 v15, v29

    move-object/from16 v12, v30

    move-object/from16 v14, v43

    move-object/from16 v6, v44

    goto/16 :goto_a6

    :catch_6f
    move-object/from16 v10, v27

    :goto_5b
    move-object/from16 v5, v25

    move-object/from16 v16, v45

    move-object/from16 v15, v56

    goto/16 :goto_a7

    :catchall_f
    move-exception v0

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v9, v60

    goto/16 :goto_50

    :catch_70
    move-exception v0

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v9, v60

    goto/16 :goto_52

    :catch_71
    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v9, v60

    goto/16 :goto_53

    :catch_72
    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v9, v60

    goto :goto_54

    :catch_73
    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v9, v60

    goto :goto_55

    :catch_74
    move-exception v0

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v9, v60

    goto :goto_56

    :catch_75
    move-exception v0

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v9, v60

    goto :goto_58

    :catch_76
    move-exception v0

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v9, v60

    goto :goto_5a

    :catch_77
    move-object/from16 v10, v27

    move-object/from16 v9, v60

    goto :goto_5b

    :catchall_10
    move-exception v0

    move-object/from16 v56, v1

    move-object/from16 v17, v10

    move-object/from16 v45, v11

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v61, v9

    move-object v9, v8

    move-object/from16 v8, v61

    goto/16 :goto_50

    :catch_78
    move-exception v0

    move-object/from16 v56, v1

    move-object/from16 v44, v3

    move-object/from16 v43, v6

    move-object/from16 v17, v10

    move-object/from16 v45, v11

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v61, v9

    move-object v9, v8

    move-object/from16 v8, v61

    goto/16 :goto_52

    :catch_79
    move-object/from16 v56, v1

    move-object/from16 v17, v10

    move-object/from16 v45, v11

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v61, v9

    move-object v9, v8

    move-object/from16 v8, v61

    goto/16 :goto_53

    :catch_7a
    move-object/from16 v56, v1

    move-object/from16 v17, v10

    move-object/from16 v45, v11

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v61, v9

    move-object v9, v8

    move-object/from16 v8, v61

    goto/16 :goto_54

    :catch_7b
    move-object/from16 v56, v1

    move-object/from16 v17, v10

    move-object/from16 v45, v11

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v61, v9

    move-object v9, v8

    move-object/from16 v8, v61

    goto/16 :goto_55

    :catch_7c
    move-exception v0

    move-object/from16 v56, v1

    move-object/from16 v44, v3

    move-object/from16 v43, v6

    move-object/from16 v17, v10

    move-object/from16 v45, v11

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v61, v9

    move-object v9, v8

    move-object/from16 v8, v61

    goto/16 :goto_56

    :catch_7d
    move-exception v0

    move-object/from16 v56, v1

    move-object/from16 v43, v6

    move-object/from16 v17, v10

    move-object/from16 v45, v11

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v61, v9

    move-object v9, v8

    move-object/from16 v8, v61

    goto/16 :goto_58

    :catch_7e
    move-exception v0

    move-object/from16 v56, v1

    move-object/from16 v44, v3

    move-object/from16 v43, v6

    move-object/from16 v17, v10

    move-object/from16 v45, v11

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v61, v9

    move-object v9, v8

    move-object/from16 v8, v61

    goto/16 :goto_5a

    :catch_7f
    move-object/from16 v56, v1

    move-object/from16 v17, v10

    move-object/from16 v45, v11

    move-object/from16 v10, v27

    move-object/from16 v61, v9

    move-object v9, v8

    move-object/from16 v8, v61

    goto/16 :goto_5b

    :catch_80
    move-exception v0

    move-object/from16 v56, v1

    move-object/from16 v44, v3

    move-object/from16 v43, v6

    move-object/from16 v42, v7

    move-object/from16 v17, v10

    move-object/from16 v45, v11

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v61, v9

    move-object v9, v8

    move-object/from16 v8, v61

    move-object v2, v0

    move/from16 v4, v28

    move-object/from16 v1, v29

    move-object/from16 v12, v30

    goto/16 :goto_98

    :catch_81
    move-exception v0

    move-object/from16 v56, v1

    move-object/from16 v44, v3

    move-object/from16 v43, v6

    move-object/from16 v42, v7

    move-object/from16 v17, v10

    move-object/from16 v45, v11

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v61, v9

    move-object v9, v8

    move-object/from16 v8, v61

    move-object v2, v0

    move-object/from16 v5, v24

    move/from16 v4, v28

    move-object/from16 v1, v29

    move-object/from16 v12, v30

    goto/16 :goto_57

    :catch_82
    move-exception v0

    move-object/from16 v56, v1

    move-object/from16 v43, v6

    move-object/from16 v42, v7

    move-object/from16 v17, v10

    move-object/from16 v45, v11

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v61, v9

    move-object v9, v8

    move-object/from16 v8, v61

    move-object v2, v0

    move-object/from16 v5, v24

    move/from16 v4, v28

    move-object/from16 v11, v29

    move-object/from16 v12, v30

    goto/16 :goto_59

    :catchall_11
    move-exception v0

    move-object/from16 v56, v1

    move-object/from16 v17, v10

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v61, v9

    move-object v9, v8

    move-object/from16 v8, v61

    move-object v1, v0

    move-object v4, v11

    move-object/from16 v15, v56

    :goto_5c
    const/16 v45, 0x0

    goto/16 :goto_ab

    :catch_83
    move-exception v0

    move-object/from16 v56, v1

    move-object/from16 v44, v3

    move-object/from16 v43, v6

    move-object/from16 v42, v7

    move-object/from16 v17, v10

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v61, v9

    move-object v9, v8

    move-object/from16 v8, v61

    move-object v2, v0

    move/from16 v4, v28

    move-object/from16 v1, v29

    move-object/from16 v12, v30

    :goto_5d
    const/16 v45, 0x0

    goto/16 :goto_98

    :catch_84
    move-object/from16 v56, v1

    move-object/from16 v17, v10

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v61, v9

    move-object v9, v8

    move-object/from16 v8, v61

    move-object/from16 v15, v17

    move-object/from16 v5, v25

    :goto_5e
    const/16 v16, 0x0

    goto/16 :goto_9b

    :catch_85
    move-object/from16 v56, v1

    move-object/from16 v17, v10

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v61, v9

    move-object v9, v8

    move-object/from16 v8, v61

    move-object/from16 v15, v17

    move-object/from16 v5, v25

    :goto_5f
    const/16 v16, 0x0

    goto/16 :goto_9c

    :catch_86
    move-object/from16 v56, v1

    move-object/from16 v17, v10

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v61, v9

    move-object v9, v8

    move-object/from16 v8, v61

    move-object/from16 v15, v17

    move-object/from16 v5, v25

    :goto_60
    const/16 v16, 0x0

    goto/16 :goto_9d

    :catch_87
    move-exception v0

    move-object/from16 v56, v1

    move-object/from16 v44, v3

    move-object/from16 v43, v6

    move-object/from16 v42, v7

    move-object/from16 v17, v10

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v61, v9

    move-object v9, v8

    move-object/from16 v8, v61

    move-object v2, v0

    move-object/from16 v5, v24

    move/from16 v4, v28

    move-object/from16 v1, v29

    move-object/from16 v12, v30

    move-object/from16 v14, v43

    move-object/from16 v6, v44

    :goto_61
    const/16 v45, 0x0

    goto/16 :goto_9e

    :catch_88
    move-exception v0

    move-object/from16 v56, v1

    move-object/from16 v43, v6

    move-object/from16 v42, v7

    move-object/from16 v17, v10

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v61, v9

    move-object v9, v8

    move-object/from16 v8, v61

    move-object v2, v0

    move-object/from16 v5, v24

    move/from16 v4, v28

    move-object/from16 v11, v29

    move-object/from16 v12, v30

    move-object/from16 v14, v43

    :goto_62
    const/16 v45, 0x0

    goto/16 :goto_a3

    :catch_89
    move-exception v0

    move-object/from16 v56, v1

    move-object/from16 v44, v3

    move-object/from16 v43, v6

    move-object/from16 v17, v10

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v61, v9

    move-object v9, v8

    move-object/from16 v8, v61

    move-object v2, v0

    move-object/from16 v16, v17

    move-object/from16 v7, v22

    move/from16 v4, v28

    move-object/from16 v15, v29

    move-object/from16 v12, v30

    move-object/from16 v14, v43

    move-object/from16 v6, v44

    :goto_63
    const/16 v45, 0x0

    goto/16 :goto_a6

    :catch_8a
    move-object/from16 v56, v1

    move-object/from16 v17, v10

    move-object/from16 v10, v27

    move-object/from16 v61, v9

    move-object v9, v8

    move-object/from16 v8, v61

    move-object/from16 v5, v25

    move-object/from16 v15, v56

    const/16 v16, 0x0

    goto/16 :goto_a7

    :catchall_12
    move-exception v0

    move-object/from16 v56, v1

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v61, v9

    move-object v9, v8

    move-object/from16 v8, v61

    move-object v1, v0

    move-object v4, v11

    move-object/from16 v15, v56

    :goto_64
    const/16 v17, 0x0

    goto/16 :goto_5c

    :catch_8b
    move-exception v0

    move-object/from16 v56, v1

    move-object/from16 v44, v3

    move-object/from16 v43, v6

    move-object/from16 v42, v7

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v61, v9

    move-object v9, v8

    move-object/from16 v8, v61

    move-object v2, v0

    move/from16 v4, v28

    move-object/from16 v1, v29

    move-object/from16 v12, v30

    :goto_65
    const/16 v17, 0x0

    goto/16 :goto_5d

    :catch_8c
    move-object/from16 v56, v1

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v61, v9

    move-object v9, v8

    move-object/from16 v8, v61

    move-object/from16 v5, v25

    const/4 v15, 0x0

    goto/16 :goto_5e

    :catch_8d
    move-object/from16 v56, v1

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v61, v9

    move-object v9, v8

    move-object/from16 v8, v61

    move-object/from16 v5, v25

    const/4 v15, 0x0

    goto/16 :goto_5f

    :catch_8e
    move-object/from16 v56, v1

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v61, v9

    move-object v9, v8

    move-object/from16 v8, v61

    move-object/from16 v5, v25

    const/4 v15, 0x0

    goto/16 :goto_60

    :catch_8f
    move-exception v0

    move-object/from16 v56, v1

    move-object/from16 v44, v3

    move-object/from16 v43, v6

    move-object/from16 v42, v7

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v61, v9

    move-object v9, v8

    move-object/from16 v8, v61

    move-object v2, v0

    move-object/from16 v5, v24

    move/from16 v4, v28

    move-object/from16 v1, v29

    move-object/from16 v12, v30

    :goto_66
    move-object/from16 v14, v43

    move-object/from16 v6, v44

    :goto_67
    const/16 v17, 0x0

    goto/16 :goto_61

    :catch_90
    move-exception v0

    move-object/from16 v56, v1

    move-object/from16 v43, v6

    move-object/from16 v42, v7

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v61, v9

    move-object v9, v8

    move-object/from16 v8, v61

    move-object v2, v0

    move-object/from16 v5, v24

    move/from16 v4, v28

    move-object/from16 v11, v29

    move-object/from16 v12, v30

    :goto_68
    move-object/from16 v14, v43

    :goto_69
    const/16 v17, 0x0

    goto/16 :goto_62

    :catch_91
    move-exception v0

    move-object/from16 v56, v1

    move-object/from16 v44, v3

    move-object/from16 v43, v6

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v61, v9

    move-object v9, v8

    move-object/from16 v8, v61

    move-object v2, v0

    move-object/from16 v7, v22

    move/from16 v4, v28

    move-object/from16 v15, v29

    move-object/from16 v12, v30

    :goto_6a
    move-object/from16 v14, v43

    move-object/from16 v6, v44

    :goto_6b
    const/16 v16, 0x0

    goto/16 :goto_63

    :catch_92
    move-object/from16 v56, v1

    move-object/from16 v10, v27

    move-object/from16 v61, v9

    move-object v9, v8

    move-object/from16 v8, v61

    move-object/from16 v5, v25

    move-object/from16 v15, v56

    :goto_6c
    const/16 v16, 0x0

    const/16 v17, 0x0

    goto/16 :goto_a7

    :catch_93
    move-exception v0

    move-object/from16 v56, v1

    move-object/from16 v44, v3

    move-object/from16 v43, v6

    move-object/from16 v42, v7

    :goto_6d
    move-object/from16 v30, v12

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v61, v9

    move-object v9, v8

    move-object/from16 v8, v61

    move-object v2, v0

    move/from16 v4, v28

    move-object/from16 v1, v29

    goto/16 :goto_65

    :catch_94
    move-exception v0

    move-object/from16 v56, v1

    move-object/from16 v44, v3

    move-object/from16 v43, v6

    move-object/from16 v42, v7

    :goto_6e
    move-object/from16 v30, v12

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v61, v9

    move-object v9, v8

    move-object/from16 v8, v61

    move-object v2, v0

    move-object/from16 v5, v24

    move/from16 v4, v28

    move-object/from16 v1, v29

    goto/16 :goto_66

    :catch_95
    move-exception v0

    move-object/from16 v56, v1

    move-object/from16 v43, v6

    move-object/from16 v42, v7

    :goto_6f
    move-object/from16 v30, v12

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v61, v9

    move-object v9, v8

    move-object/from16 v8, v61

    move-object v2, v0

    move-object/from16 v5, v24

    move/from16 v4, v28

    move-object/from16 v11, v29

    goto/16 :goto_68

    :catch_96
    move-exception v0

    move-object/from16 v56, v1

    move-object/from16 v44, v3

    move-object/from16 v43, v6

    :goto_70
    move-object/from16 v30, v12

    move-object/from16 v31, v15

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v61, v9

    move-object v9, v8

    move-object/from16 v8, v61

    move-object v2, v0

    move-object/from16 v7, v22

    move/from16 v4, v28

    move-object/from16 v15, v29

    goto/16 :goto_6a

    :catch_97
    move-exception v0

    move-object/from16 v56, v1

    move-object/from16 v44, v3

    move-object/from16 v43, v6

    move-object/from16 v42, v7

    move-object/from16 v29, v11

    goto :goto_6d

    :catch_98
    move-exception v0

    move-object/from16 v56, v1

    move-object/from16 v44, v3

    move-object/from16 v43, v6

    move-object/from16 v42, v7

    move-object/from16 v29, v11

    goto :goto_6e

    :catch_99
    move-exception v0

    move-object/from16 v56, v1

    move-object/from16 v43, v6

    move-object/from16 v42, v7

    move-object/from16 v29, v11

    goto :goto_6f

    :catch_9a
    move-exception v0

    move-object/from16 v56, v1

    move-object/from16 v44, v3

    move-object/from16 v43, v6

    move-object/from16 v29, v11

    goto :goto_70

    :catch_9b
    move-exception v0

    move-object/from16 v56, v1

    move-object/from16 v22, v6

    move-object/from16 v42, v7

    move-object/from16 v44, v28

    move-object/from16 v43, v29

    move/from16 v28, v10

    move-object/from16 v29, v11

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v61, v9

    move-object v9, v8

    move-object/from16 v8, v61

    move-object v2, v0

    move/from16 v4, v28

    move-object/from16 v1, v29

    :goto_71
    const/4 v12, 0x0

    goto/16 :goto_65

    :catch_9c
    move-exception v0

    move-object/from16 v56, v1

    move-object/from16 v22, v6

    move-object/from16 v42, v7

    move-object/from16 v44, v28

    move-object/from16 v43, v29

    move/from16 v28, v10

    move-object/from16 v29, v11

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v61, v9

    move-object v9, v8

    move-object/from16 v8, v61

    move-object v2, v0

    move-object/from16 v5, v24

    move/from16 v4, v28

    move-object/from16 v1, v29

    move-object/from16 v14, v43

    move-object/from16 v6, v44

    :goto_72
    const/4 v12, 0x0

    goto/16 :goto_67

    :catch_9d
    move-exception v0

    move-object/from16 v56, v1

    move-object/from16 v22, v6

    move-object/from16 v42, v7

    move/from16 v28, v10

    move-object/from16 v10, v27

    move-object/from16 v43, v29

    move-object/from16 v29, v11

    move-object/from16 v11, v26

    move-object/from16 v61, v9

    move-object v9, v8

    move-object/from16 v8, v61

    move-object v2, v0

    move-object/from16 v5, v24

    move/from16 v4, v28

    move-object/from16 v11, v29

    move-object/from16 v14, v43

    :goto_73
    const/4 v12, 0x0

    goto/16 :goto_69

    :catch_9e
    move-exception v0

    move-object/from16 v56, v1

    move-object/from16 v22, v6

    move-object/from16 v44, v28

    move-object/from16 v43, v29

    move/from16 v28, v10

    move-object/from16 v29, v11

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v61, v9

    move-object v9, v8

    move-object/from16 v8, v61

    move-object v2, v0

    move-object/from16 v7, v22

    move/from16 v4, v28

    move-object/from16 v15, v29

    move-object/from16 v14, v43

    move-object/from16 v6, v44

    const/4 v12, 0x0

    goto/16 :goto_6b

    :catch_9f
    move-exception v0

    move-object/from16 v56, v1

    move-object/from16 v22, v6

    move-object/from16 v42, v7

    move-object/from16 v11, v26

    move-object/from16 v44, v28

    move-object/from16 v43, v29

    move/from16 v28, v10

    move-object/from16 v10, v27

    move-object/from16 v61, v9

    move-object v9, v8

    move-object/from16 v8, v61

    move-object v2, v0

    move/from16 v4, v28

    const/4 v1, 0x0

    goto/16 :goto_71

    :catch_a0
    move-exception v0

    move-object/from16 v56, v1

    move-object/from16 v22, v6

    move-object/from16 v42, v7

    move-object/from16 v11, v26

    move-object/from16 v44, v28

    move-object/from16 v43, v29

    move/from16 v28, v10

    move-object/from16 v10, v27

    move-object/from16 v61, v9

    move-object v9, v8

    move-object/from16 v8, v61

    move-object v2, v0

    move-object/from16 v5, v24

    move/from16 v4, v28

    move-object/from16 v14, v43

    move-object/from16 v6, v44

    const/4 v1, 0x0

    goto/16 :goto_72

    :catch_a1
    move-exception v0

    move-object/from16 v56, v1

    move-object/from16 v22, v6

    move-object/from16 v42, v7

    move/from16 v28, v10

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v43, v29

    move-object/from16 v61, v9

    move-object v9, v8

    move-object/from16 v8, v61

    move-object v2, v0

    move-object/from16 v5, v24

    move/from16 v4, v28

    move-object/from16 v14, v43

    :goto_74
    const/4 v11, 0x0

    goto/16 :goto_73

    :catch_a2
    move-exception v0

    move-object/from16 v56, v1

    move-object/from16 v22, v6

    move-object/from16 v11, v26

    move-object/from16 v44, v28

    move-object/from16 v43, v29

    move/from16 v28, v10

    move-object/from16 v10, v27

    move-object/from16 v61, v9

    move-object v9, v8

    move-object/from16 v8, v61

    move-object v2, v0

    move-object/from16 v7, v22

    move/from16 v4, v28

    move-object/from16 v14, v43

    move-object/from16 v6, v44

    :goto_75
    const/4 v12, 0x0

    const/4 v15, 0x0

    goto/16 :goto_6b

    :catch_a3
    move-exception v0

    move-object/from16 v56, v1

    move-object/from16 v22, v6

    move-object/from16 v42, v7

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v44, v28

    move-object/from16 v43, v29

    move-object/from16 v61, v9

    move-object v9, v8

    move-object/from16 v8, v61

    move-object v2, v0

    const/4 v1, 0x0

    const/4 v4, 0x0

    goto/16 :goto_71

    :catch_a4
    move-exception v0

    move-object/from16 v56, v1

    move-object/from16 v22, v6

    move-object/from16 v42, v7

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v44, v28

    move-object/from16 v43, v29

    move-object/from16 v61, v9

    move-object v9, v8

    move-object/from16 v8, v61

    move-object v2, v0

    move-object/from16 v5, v24

    move-object/from16 v14, v43

    move-object/from16 v6, v44

    const/4 v1, 0x0

    const/4 v4, 0x0

    goto/16 :goto_72

    :catch_a5
    move-exception v0

    move-object/from16 v56, v1

    move-object/from16 v22, v6

    move-object/from16 v42, v7

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v43, v29

    move-object/from16 v61, v9

    move-object v9, v8

    move-object/from16 v8, v61

    move-object v2, v0

    move-object/from16 v5, v24

    move-object/from16 v14, v43

    const/4 v4, 0x0

    goto :goto_74

    :catch_a6
    move-exception v0

    move-object/from16 v56, v1

    move-object/from16 v22, v6

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v44, v28

    move-object/from16 v43, v29

    move-object/from16 v61, v9

    move-object v9, v8

    move-object/from16 v8, v61

    move-object v2, v0

    move-object/from16 v7, v22

    move-object/from16 v14, v43

    move-object/from16 v6, v44

    const/4 v4, 0x0

    goto :goto_75

    :catch_a7
    move-exception v0

    move-object/from16 v56, v1

    move-object/from16 v22, v6

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v44, v28

    move-object/from16 v43, v29

    move-object/from16 v61, v9

    move-object v9, v8

    move-object/from16 v8, v61

    move-object v2, v0

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    goto/16 :goto_71

    :catch_a8
    move-exception v0

    move-object/from16 v56, v1

    move-object/from16 v22, v6

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v44, v28

    move-object/from16 v43, v29

    move-object/from16 v61, v9

    move-object v9, v8

    move-object/from16 v8, v61

    move-object v2, v0

    move-object/from16 v5, v24

    move-object/from16 v14, v43

    move-object/from16 v6, v44

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    goto/16 :goto_72

    :catch_a9
    move-exception v0

    move-object/from16 v56, v1

    move-object/from16 v22, v6

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v43, v29

    move-object/from16 v61, v9

    move-object v9, v8

    move-object/from16 v8, v61

    move-object v2, v0

    move-object/from16 v5, v24

    move-object/from16 v14, v43

    const/4 v4, 0x0

    const/4 v7, 0x0

    goto/16 :goto_74

    :catchall_13
    move-exception v0

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v61, v9

    move-object v9, v8

    move-object/from16 v8, v61

    :goto_76
    move-object v1, v0

    move-object v4, v11

    const/4 v15, 0x0

    goto/16 :goto_64

    :catch_aa
    move-exception v0

    move-object/from16 v22, v6

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v44, v28

    move-object/from16 v43, v29

    move-object/from16 v61, v9

    move-object v9, v8

    move-object/from16 v8, v61

    move-object v2, v0

    :goto_77
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x0

    const/16 v17, 0x0

    const/16 v45, 0x0

    const/16 v56, 0x0

    goto/16 :goto_98

    :catch_ab
    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v61, v9

    move-object v9, v8

    move-object/from16 v8, v61

    :goto_78
    move-object/from16 v5, v25

    :goto_79
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v56, 0x0

    goto/16 :goto_9b

    :catch_ac
    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v61, v9

    move-object v9, v8

    move-object/from16 v8, v61

    :goto_7a
    move-object/from16 v5, v25

    :goto_7b
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v56, 0x0

    goto/16 :goto_9c

    :catch_ad
    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v61, v9

    move-object v9, v8

    move-object/from16 v8, v61

    :goto_7c
    move-object/from16 v5, v25

    :goto_7d
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v56, 0x0

    goto/16 :goto_9d

    :catch_ae
    move-exception v0

    move-object/from16 v22, v6

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v44, v28

    move-object/from16 v43, v29

    move-object/from16 v61, v9

    move-object v9, v8

    move-object/from16 v8, v61

    move-object v2, v0

    :goto_7e
    move-object/from16 v5, v24

    move-object/from16 v14, v43

    move-object/from16 v6, v44

    :goto_7f
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x0

    const/16 v17, 0x0

    const/16 v45, 0x0

    const/16 v56, 0x0

    goto/16 :goto_9e

    :catch_af
    move-exception v0

    move-object/from16 v22, v6

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v43, v29

    move-object/from16 v61, v9

    move-object v9, v8

    move-object/from16 v8, v61

    move-object v2, v0

    :goto_80
    move-object/from16 v5, v24

    move-object/from16 v14, v43

    :goto_81
    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v17, 0x0

    const/16 v45, 0x0

    const/16 v56, 0x0

    goto/16 :goto_a3

    :catch_b0
    move-exception v0

    move-object/from16 v22, v6

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v44, v28

    move-object/from16 v43, v29

    move-object/from16 v61, v9

    move-object v9, v8

    move-object/from16 v8, v61

    move-object v2, v0

    move-object/from16 v7, v22

    :goto_82
    move-object/from16 v14, v43

    move-object/from16 v6, v44

    :goto_83
    const/4 v4, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v45, 0x0

    const/16 v56, 0x0

    goto/16 :goto_a6

    :catch_b1
    move-object/from16 v10, v27

    move-object/from16 v61, v9

    move-object v9, v8

    move-object/from16 v8, v61

    :goto_84
    move-object/from16 v5, v25

    :goto_85
    const/4 v15, 0x0

    goto/16 :goto_6c

    :catch_b2
    move-exception v0

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v44, v28

    move-object/from16 v43, v29

    move-object/from16 v61, v9

    move-object v9, v8

    move-object/from16 v8, v61

    :goto_86
    move-object v2, v0

    move-object/from16 v22, v17

    goto/16 :goto_77

    :catch_b3
    move-exception v0

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v44, v28

    move-object/from16 v43, v29

    move-object/from16 v61, v9

    move-object v9, v8

    move-object/from16 v8, v61

    :goto_87
    move-object v2, v0

    move-object/from16 v22, v17

    goto/16 :goto_7e

    :catch_b4
    move-exception v0

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v43, v29

    move-object/from16 v61, v9

    move-object v9, v8

    move-object/from16 v8, v61

    :goto_88
    move-object v2, v0

    :goto_89
    move-object/from16 v22, v17

    goto :goto_80

    :catch_b5
    move-exception v0

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v44, v28

    move-object/from16 v43, v29

    move-object/from16 v61, v9

    move-object v9, v8

    move-object/from16 v8, v61

    :goto_8a
    move-object v2, v0

    :goto_8b
    move-object/from16 v7, v17

    goto :goto_82

    :catchall_14
    move-exception v0

    move-object v9, v8

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v8, p0

    goto/16 :goto_76

    :catch_b6
    move-exception v0

    move-object v9, v8

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v44, v28

    move-object/from16 v43, v29

    move-object/from16 v8, p0

    goto :goto_86

    :catch_b7
    move-object v9, v8

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v8, p0

    goto/16 :goto_78

    :catch_b8
    move-object v9, v8

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v8, p0

    goto/16 :goto_7a

    :catch_b9
    move-object v9, v8

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v8, p0

    goto/16 :goto_7c

    :catch_ba
    move-exception v0

    move-object v9, v8

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v44, v28

    move-object/from16 v43, v29

    move-object/from16 v8, p0

    goto :goto_87

    :catch_bb
    move-exception v0

    move-object v9, v8

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v43, v29

    move-object/from16 v8, p0

    goto :goto_88

    :catch_bc
    move-exception v0

    move-object v9, v8

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v44, v28

    move-object/from16 v43, v29

    move-object/from16 v8, p0

    goto :goto_8a

    :catch_bd
    move-object v9, v8

    move-object/from16 v10, v27

    move-object/from16 v8, p0

    goto/16 :goto_84

    :catchall_15
    move-exception v0

    move-object/from16 v8, p0

    :goto_8c
    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v9, v30

    goto/16 :goto_76

    :catch_be
    move-exception v0

    move-object/from16 v8, p0

    :goto_8d
    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v44, v28

    move-object/from16 v43, v29

    move-object/from16 v9, v30

    goto/16 :goto_86

    :catch_bf
    move-object/from16 v8, p0

    :catch_c0
    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v9, v30

    goto/16 :goto_78

    :catch_c1
    move-object/from16 v8, p0

    :catch_c2
    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v9, v30

    goto/16 :goto_7a

    :catch_c3
    move-object/from16 v8, p0

    :catch_c4
    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v9, v30

    goto/16 :goto_7c

    :catch_c5
    move-exception v0

    move-object/from16 v8, p0

    :goto_8e
    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v44, v28

    move-object/from16 v43, v29

    move-object/from16 v9, v30

    goto/16 :goto_87

    :catch_c6
    move-exception v0

    move-object/from16 v8, p0

    :goto_8f
    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v43, v29

    move-object/from16 v9, v30

    goto/16 :goto_88

    :catch_c7
    move-exception v0

    move-object/from16 v8, p0

    :goto_90
    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v44, v28

    move-object/from16 v43, v29

    move-object/from16 v9, v30

    goto/16 :goto_8a

    :catch_c8
    move-object/from16 v8, p0

    :catch_c9
    move-object/from16 v10, v27

    move-object/from16 v9, v30

    goto/16 :goto_84

    :catchall_16
    move-exception v0

    goto :goto_8c

    :catch_ca
    move-exception v0

    goto :goto_8d

    :catch_cb
    move-exception v0

    goto :goto_8e

    :catch_cc
    move-exception v0

    goto :goto_8f

    :catch_cd
    move-exception v0

    goto :goto_90

    :catch_ce
    move-exception v0

    move-object/from16 v31, v1

    goto :goto_90

    :catchall_17
    move-exception v0

    move-object v9, v12

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    goto/16 :goto_76

    :catch_cf
    move-exception v0

    move-object v9, v12

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v44, v28

    move-object/from16 v43, v29

    goto/16 :goto_86

    :catch_d0
    move-object v9, v12

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    goto/16 :goto_78

    :catch_d1
    move-object v9, v12

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    goto/16 :goto_7a

    :catch_d2
    move-object v9, v12

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    goto/16 :goto_7c

    :catch_d3
    move-exception v0

    move-object v9, v12

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v44, v28

    move-object/from16 v43, v29

    goto/16 :goto_87

    :catch_d4
    move-exception v0

    move-object v9, v12

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v43, v29

    goto/16 :goto_88

    :catch_d5
    move-exception v0

    move-object/from16 v31, v1

    move-object v9, v12

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object/from16 v44, v28

    move-object/from16 v43, v29

    goto/16 :goto_8a

    :catch_d6
    move-object v9, v12

    move-object/from16 v10, v27

    goto/16 :goto_84

    :catch_d7
    move-exception v0

    move-object/from16 v44, v5

    move-object/from16 v43, v6

    move-object v9, v12

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    goto/16 :goto_86

    :catch_d8
    move-exception v0

    move-object/from16 v44, v5

    move-object/from16 v43, v6

    move-object v9, v12

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    goto/16 :goto_87

    :catch_d9
    move-exception v0

    move-object/from16 v43, v6

    move-object v9, v12

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    goto/16 :goto_88

    :catch_da
    move-exception v0

    move-object/from16 v31, v1

    move-object/from16 v44, v5

    move-object/from16 v43, v6

    move-object v9, v12

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    goto/16 :goto_8a

    :catchall_18
    move-exception v0

    move-object v10, v11

    move-object v9, v12

    move-object/from16 v11, v26

    goto/16 :goto_76

    :catch_db
    move-exception v0

    move-object/from16 v44, v5

    move-object/from16 v43, v6

    move-object v10, v11

    move-object v9, v12

    move-object/from16 v11, v26

    goto/16 :goto_86

    :catch_dc
    move-object v10, v11

    move-object v9, v12

    move-object/from16 v11, v26

    goto/16 :goto_78

    :catch_dd
    move-object v10, v11

    move-object v9, v12

    move-object/from16 v11, v26

    goto/16 :goto_7a

    :catch_de
    move-object v10, v11

    move-object v9, v12

    move-object/from16 v11, v26

    goto/16 :goto_7c

    :catch_df
    move-exception v0

    move-object/from16 v44, v5

    move-object/from16 v43, v6

    move-object v10, v11

    move-object v9, v12

    move-object/from16 v11, v26

    goto/16 :goto_87

    :catch_e0
    move-exception v0

    move-object/from16 v43, v6

    move-object v10, v11

    move-object v9, v12

    move-object/from16 v11, v26

    goto/16 :goto_88

    :catch_e1
    move-exception v0

    move-object/from16 v31, v1

    move-object/from16 v44, v5

    move-object/from16 v43, v6

    move-object v10, v11

    move-object v9, v12

    move-object/from16 v11, v26

    goto/16 :goto_8a

    :catch_e2
    move-object v10, v11

    move-object v9, v12

    goto/16 :goto_84

    :catchall_19
    move-exception v0

    move-object v9, v12

    move-object/from16 v61, v11

    move-object v11, v10

    move-object/from16 v10, v61

    goto/16 :goto_76

    :catch_e3
    move-exception v0

    :goto_91
    move-object/from16 v44, v5

    move-object/from16 v43, v6

    :goto_92
    move-object v9, v12

    move-object/from16 v61, v11

    move-object v11, v10

    move-object/from16 v10, v61

    goto/16 :goto_86

    :catch_e4
    move-object v9, v12

    move-object/from16 v61, v11

    move-object v11, v10

    move-object/from16 v10, v61

    goto/16 :goto_78

    :catch_e5
    move-object v9, v12

    move-object/from16 v61, v11

    move-object v11, v10

    move-object/from16 v10, v61

    goto/16 :goto_7a

    :catch_e6
    move-object v9, v12

    move-object/from16 v61, v11

    move-object v11, v10

    move-object/from16 v10, v61

    goto/16 :goto_7c

    :catch_e7
    move-exception v0

    :goto_93
    move-object/from16 v44, v5

    move-object/from16 v43, v6

    :goto_94
    move-object v9, v12

    move-object/from16 v61, v11

    move-object v11, v10

    move-object/from16 v10, v61

    goto/16 :goto_87

    :catch_e8
    move-exception v0

    :goto_95
    move-object/from16 v43, v6

    :goto_96
    move-object v9, v12

    move-object/from16 v61, v11

    move-object v11, v10

    move-object/from16 v10, v61

    move-object v2, v0

    move-object/from16 v26, v11

    goto/16 :goto_89

    :catch_e9
    move-exception v0

    move-object/from16 v31, v1

    move-object/from16 v44, v5

    move-object/from16 v43, v6

    move-object v9, v12

    move-object/from16 v61, v11

    move-object v11, v10

    move-object/from16 v10, v61

    move-object v2, v0

    move-object/from16 v26, v11

    goto/16 :goto_8b

    :catch_ea
    move-object v9, v12

    move-object/from16 v61, v11

    move-object v11, v10

    move-object/from16 v10, v61

    move-object/from16 v26, v11

    goto/16 :goto_84

    :catch_eb
    move-exception v0

    :goto_97
    move-object/from16 v25, v4

    goto :goto_91

    :catch_ec
    move-object v9, v12

    move-object/from16 v61, v11

    move-object v11, v10

    move-object/from16 v10, v61

    move-object v5, v4

    goto/16 :goto_79

    :catch_ed
    move-object v9, v12

    move-object/from16 v61, v11

    move-object v11, v10

    move-object/from16 v10, v61

    move-object v5, v4

    goto/16 :goto_7b

    :catch_ee
    move-object v9, v12

    move-object/from16 v61, v11

    move-object v11, v10

    move-object/from16 v10, v61

    move-object v5, v4

    goto/16 :goto_7d

    :catch_ef
    move-object v9, v12

    move-object/from16 v61, v11

    move-object v11, v10

    move-object/from16 v10, v61

    move-object v5, v4

    move-object/from16 v26, v11

    goto/16 :goto_85

    :catch_f0
    move-exception v0

    move-object/from16 v24, v3

    goto :goto_97

    :catch_f1
    move-exception v0

    move-object/from16 v24, v3

    goto :goto_93

    :catch_f2
    move-exception v0

    move-object/from16 v24, v3

    goto :goto_95

    :catch_f3
    move-exception v0

    move-object/from16 v24, v3

    move-object/from16 v25, v4

    move-object/from16 v44, v5

    move-object/from16 v43, v6

    move-object/from16 v17, v7

    goto/16 :goto_92

    :catch_f4
    move-exception v0

    move-object/from16 v24, v3

    move-object/from16 v44, v5

    move-object/from16 v43, v6

    move-object/from16 v17, v7

    goto :goto_94

    :catch_f5
    move-exception v0

    move-object/from16 v24, v3

    move-object/from16 v43, v6

    move-object/from16 v17, v7

    goto :goto_96

    :catch_f6
    move-exception v0

    move-object/from16 v31, v1

    move-object/from16 v44, v5

    move-object/from16 v43, v6

    move-object/from16 v17, v7

    move-object v9, v12

    move-object/from16 v61, v11

    move-object v11, v10

    move-object/from16 v10, v61

    move-object v2, v0

    move-object/from16 v26, v11

    goto/16 :goto_82

    :goto_98
    :try_start_32
    sget-object v3, Llg/a;->a:Llg/a$a;

    iget-object v5, v8, Lcom/transsnet/downloader/core/thread/b;->downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v8, Lcom/transsnet/downloader/core/thread/b;->downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v6}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result v6

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception, name: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v25

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v5, v24

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v6, v44

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v14, v43

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v3, v9, v5, v6}, Llg/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_1b

    if-eqz v7, :cond_1a

    :try_start_33
    invoke-virtual {v7}, Lokhttp3/Response;->code()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_1a

    goto :goto_99

    :catchall_1a
    const/4 v3, 0x0

    :try_start_34
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_9a

    :catchall_1b
    move-exception v0

    goto/16 :goto_50

    :cond_1a
    const/4 v15, 0x0

    :goto_99
    move-object v5, v15

    :goto_9a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "other error message:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v3, 0x9

    move-object/from16 v1, p0

    move-object/from16 v7, v22

    invoke-direct/range {v1 .. v7}, Lcom/transsnet/downloader/core/thread/b;->i(Ljava/lang/Exception;IILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/baselib/db/download/DownloadException;

    move-result-object v1

    throw v1
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_1b

    :catch_f7
    move-object v5, v4

    move-object v9, v12

    move-object/from16 v61, v11

    move-object v11, v10

    move-object/from16 v10, v61

    goto/16 :goto_79

    :goto_9b
    :try_start_35
    sget-object v1, Llg/a;->a:Llg/a$a;

    iget-object v2, v8, Lcom/transsnet/downloader/core/thread/b;->downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v8, Lcom/transsnet/downloader/core/thread/b;->downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "QuitDPRestartException  name: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v9, v2, v3}, Llg/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v1, Lcom/transsnet/downloader/core/thread/QuitDPRestartException;

    invoke-direct {v1}, Lcom/transsnet/downloader/core/thread/QuitDPRestartException;-><init>()V

    throw v1

    :catchall_1c
    move-exception v0

    move-object v1, v0

    move-object v4, v11

    move-object/from16 v17, v15

    move-object/from16 v45, v16

    goto/16 :goto_51

    :catch_f8
    move-object v5, v4

    move-object v9, v12

    move-object/from16 v61, v11

    move-object v11, v10

    move-object/from16 v10, v61

    goto/16 :goto_7b

    :goto_9c
    sget-object v1, Llg/a;->a:Llg/a$a;

    iget-object v2, v8, Lcom/transsnet/downloader/core/thread/b;->downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v8, Lcom/transsnet/downloader/core/thread/b;->downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ReDownloadException size not match name: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v9, v2, v3}, Llg/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v1, Lcom/transsnet/downloader/core/thread/ReDownloadException;

    invoke-direct {v1}, Lcom/transsnet/downloader/core/thread/ReDownloadException;-><init>()V

    throw v1

    :catch_f9
    move-object v5, v4

    move-object v9, v12

    move-object/from16 v61, v11

    move-object v11, v10

    move-object/from16 v10, v61

    goto/16 :goto_7d

    :goto_9d
    sget-object v1, Llg/a;->a:Llg/a$a;

    iget-object v2, v8, Lcom/transsnet/downloader/core/thread/b;->downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v8, Lcom/transsnet/downloader/core/thread/b;->downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RestartException too slow name: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v9, v2, v3}, Llg/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v1, Lcom/transsnet/downloader/core/thread/RestartException;

    invoke-direct {v1}, Lcom/transsnet/downloader/core/thread/RestartException;-><init>()V

    throw v1
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_1c

    :catch_fa
    move-exception v0

    move-object v14, v6

    move-object/from16 v17, v7

    move-object v9, v12

    move-object v6, v5

    move-object v5, v3

    move-object/from16 v61, v11

    move-object v11, v10

    move-object/from16 v10, v61

    move-object v2, v0

    move-object/from16 v22, v17

    goto/16 :goto_7f

    :goto_9e
    :try_start_36
    sget-object v3, Llg/a;->a:Llg/a$a;

    sget-object v13, Lnh/m;->a:Lnh/m;

    invoke-virtual {v13}, Lnh/m;->b()I

    move-result v13

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_1f

    move-object/from16 v26, v11

    :try_start_37
    const-string v11, " IOException,netState="

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " responseCode="

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v3, v9, v5, v6}, Llg/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_1e

    if-eqz v7, :cond_1b

    :try_start_38
    invoke-virtual {v7}, Lokhttp3/Response;->code()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_1d

    goto :goto_a1

    :catchall_1d
    const/4 v3, 0x0

    :try_start_39
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_a2

    :catchall_1e
    move-exception v0

    :goto_9f
    move-object v1, v0

    :goto_a0
    move-object/from16 v4, v26

    goto/16 :goto_51

    :cond_1b
    const/4 v15, 0x0

    :goto_a1
    move-object v5, v15

    :goto_a2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IO error message:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x5

    move-object/from16 v1, p0

    move-object/from16 v7, v22

    invoke-direct/range {v1 .. v7}, Lcom/transsnet/downloader/core/thread/b;->i(Ljava/lang/Exception;IILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/baselib/db/download/DownloadException;

    move-result-object v1

    throw v1

    :catchall_1f
    move-exception v0

    move-object/from16 v26, v11

    goto :goto_9f

    :catch_fb
    move-exception v0

    move-object v5, v3

    move-object v14, v6

    move-object/from16 v17, v7

    move-object/from16 v26, v10

    move-object v10, v11

    move-object v9, v12

    move-object v2, v0

    move-object/from16 v22, v17

    goto/16 :goto_81

    :goto_a3
    sget-object v1, Llg/a;->a:Llg/a$a;

    sget-object v3, Lnh/m;->a:Lnh/m;

    invoke-virtual {v3}, Lnh/m;->b()I

    move-result v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " ProtocolException, netState="

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v1, v9, v3, v5}, Llg/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_1e

    if-eqz v7, :cond_1c

    :try_start_3a
    invoke-virtual {v7}, Lokhttp3/Response;->code()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_20

    goto :goto_a4

    :catchall_20
    const/4 v1, 0x0

    :try_start_3b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v5, v3

    goto :goto_a5

    :cond_1c
    const/4 v15, 0x0

    :goto_a4
    move-object v5, v15

    :goto_a5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Protocol error message:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x4

    move-object/from16 v1, p0

    move-object/from16 v7, v22

    invoke-direct/range {v1 .. v7}, Lcom/transsnet/downloader/core/thread/b;->i(Ljava/lang/Exception;IILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/baselib/db/download/DownloadException;

    move-result-object v1

    throw v1
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_1e

    :catch_fc
    move-exception v0

    move-object/from16 v31, v1

    move-object v14, v6

    move-object/from16 v17, v7

    move-object/from16 v26, v10

    move-object v10, v11

    move-object v9, v12

    move-object v6, v5

    move-object v2, v0

    goto/16 :goto_83

    :goto_a6
    :try_start_3c
    invoke-virtual {v2, v4}, Lcom/transsion/baselib/db/download/DownloadException;->setResponseCode(I)V

    sget-object v1, Llg/a;->a:Llg/a$a;

    sget-object v3, Lnh/m;->a:Lnh/m;

    invoke-virtual {v3}, Lnh/m;->b()I

    move-result v3

    iget-object v5, v8, Lcom/transsnet/downloader/core/thread/b;->downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getTotalTitleName()Ljava/lang/String;

    move-result-object v5

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " DownloadException, netState="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " name = "

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\uff0ccode = "

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", e = "

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v1, v9, v3, v5}, Llg/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadException;->getCode()I

    move-result v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v11, v31

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/transsnet/downloader/core/thread/b;->i(Ljava/lang/Exception;IILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/baselib/db/download/DownloadException;

    move-result-object v1

    throw v1
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_21

    :catchall_21
    move-exception v0

    move-object v1, v0

    move-object/from16 v17, v16

    goto/16 :goto_a0

    :catch_fd
    move-object v5, v4

    move-object/from16 v26, v10

    move-object v10, v11

    move-object v9, v12

    goto/16 :goto_85

    :goto_a7
    :try_start_3d
    iget-object v1, v8, Lcom/transsnet/downloader/core/thread/b;->downloadProgressListener:Lcom/transsnet/downloader/core/thread/d;

    invoke-interface {v1}, Lcom/transsnet/downloader/core/thread/d;->d()V

    sget-object v1, Llg/a;->a:Llg/a$a;

    iget-object v2, v8, Lcom/transsnet/downloader/core/thread/b;->downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getTotalTitleName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v8, Lcom/transsnet/downloader/core/thread/b;->downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "downloadPauseException name: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v9, v2, v3}, Llg/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_24

    if-eqz v15, :cond_1d

    invoke-interface {v15}, Lokhttp3/Call;->cancel()V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_1d
    iget-object v1, v8, Lcom/transsnet/downloader/core/thread/b;->downloadRange:Lcom/transsion/baselib/db/download/DownloadRange;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/transsion/baselib/db/download/DownloadRange;->setDownloading(Z)V

    if-eqz v16, :cond_1e

    :try_start_3e
    invoke-virtual/range {v16 .. v16}, Ljava/io/RandomAccessFile;->close()V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_22

    goto :goto_a8

    :catchall_22
    move-exception v0

    move-object v1, v0

    sget-object v2, Llg/a;->a:Llg/a$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v2, v9, v1, v3}, Llg/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1e
    :goto_a8
    if-eqz v17, :cond_1f

    :try_start_3f
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_23

    goto :goto_a9

    :catchall_23
    move-exception v0

    move-object v1, v0

    sget-object v2, Llg/a;->a:Llg/a$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, v26

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v2, v9, v1, v3}, Llg/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1f
    :goto_a9
    iget-object v1, v8, Lcom/transsnet/downloader/core/thread/b;->breakCallback:Lkotlin/jvm/functions/Function0;

    if-eqz v1, :cond_20

    goto/16 :goto_4f

    :cond_20
    :goto_aa
    return-void

    :catchall_24
    move-exception v0

    move-object/from16 v4, v26

    move-object v1, v0

    move-object/from16 v45, v16

    :goto_ab
    if-eqz v15, :cond_21

    invoke-interface {v15}, Lokhttp3/Call;->cancel()V

    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_21
    iget-object v2, v8, Lcom/transsnet/downloader/core/thread/b;->downloadRange:Lcom/transsion/baselib/db/download/DownloadRange;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/transsion/baselib/db/download/DownloadRange;->setDownloading(Z)V

    if-eqz v45, :cond_22

    :try_start_40
    invoke-virtual/range {v45 .. v45}, Ljava/io/RandomAccessFile;->close()V

    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_25

    goto :goto_ac

    :catchall_25
    move-exception v0

    move-object v2, v0

    sget-object v3, Llg/a;->a:Llg/a$a;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    invoke-virtual {v3, v9, v2, v5}, Llg/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_22
    :goto_ac
    if-eqz v17, :cond_23

    :try_start_41
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V

    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_26

    goto :goto_ad

    :catchall_26
    move-exception v0

    move-object v2, v0

    sget-object v3, Llg/a;->a:Llg/a$a;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v3, v9, v2, v4}, Llg/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_23
    :goto_ad
    iget-object v2, v8, Lcom/transsnet/downloader/core/thread/b;->breakCallback:Lkotlin/jvm/functions/Function0;

    if-eqz v2, :cond_24

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_24
    throw v1
.end method

.method private final g()J
    .locals 4

    invoke-direct {p0}, Lcom/transsnet/downloader/core/thread/b;->h()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const v2, 0xc800

    int-to-double v2, v2

    mul-double/2addr v2, v0

    double-to-long v0, v2

    const-wide/16 v2, 0x1

    invoke-static {v0, v1, v2, v3}, Lkotlin/ranges/RangesKt;->g(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/32 v0, 0xc800

    return-wide v0
.end method

.method private final h()Ljava/lang/Double;
    .locals 8

    sget-object v0, Lcom/transsnet/downloader/util/h;->a:Lcom/transsnet/downloader/util/h;

    invoke-virtual {v0}, Lcom/transsnet/downloader/util/h;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/transsnet/downloader/core/thread/b;->config:Loy/c;

    invoke-virtual {v0}, Loy/c;->d()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v2 .. v7}, Lkotlin/ranges/RangesKt;->k(DDD)D

    move-result-wide v2

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_1

    return-object v1

    :cond_1
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    invoke-static {v0, v1, v2, v3}, Lkotlin/ranges/RangesKt;->d(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method private final i(Ljava/lang/Exception;IILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/baselib/db/download/DownloadException;
    .locals 7

    sget-object v0, Lcom/transsion/baselib/db/download/DownloadException;->Companion:Lcom/transsion/baselib/db/download/DownloadException$a;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/baselib/db/download/DownloadException$a;->b(Ljava/lang/Exception;I)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p5, v1

    :goto_0
    const/4 v1, 0x5

    if-ne p2, v1, :cond_1

    sget-object v2, Lnh/m;->a:Lnh/m;

    invoke-virtual {v2}, Lnh/m;->e()Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v0, 0x9

    const-string p5, "noNetWork"

    :cond_1
    const/4 v2, 0x0

    if-ne p2, v1, :cond_3

    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p5, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "toLowerCase(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "ssl"

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v1, v4, v2, v5, v6}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p2, "ssl_error"

    goto :goto_1

    :cond_2
    invoke-virtual {p5, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "failed to connect to"

    invoke-static {p2, v1, v2, v5, v6}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "failed to connect to host"

    goto :goto_1

    :cond_3
    move-object p2, p5

    :goto_1
    new-instance v1, Lcom/transsion/baselib/db/download/DownloadException;

    invoke-direct {v1, v0, p5, p1}, Lcom/transsion/baselib/db/download/DownloadException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p4, :cond_4

    :try_start_0
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move p3, p1

    goto :goto_2

    :cond_4
    move p3, v2

    :catchall_0
    :goto_2
    invoke-virtual {v1, p3}, Lcom/transsion/baselib/db/download/DownloadException;->setResponseCode(I)V

    invoke-virtual {v1, p2}, Lcom/transsion/baselib/db/download/DownloadException;->setFormatMessage(Ljava/lang/String;)V

    invoke-virtual {v1, p6}, Lcom/transsion/baselib/db/download/DownloadException;->setRange(Ljava/lang/String;)V

    return-object v1
.end method

.method private final j()V
    .locals 6

    iget-object v0, p0, Lcom/transsnet/downloader/core/thread/b;->downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->setProgress(J)V

    iget-object v0, p0, Lcom/transsnet/downloader/core/thread/b;->downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getDownloadRanges()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-virtual {v3, v1, v2}, Lcom/transsion/baselib/db/download/DownloadRange;->setProgress(J)V

    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadRange;->getRangeId()I

    move-result v4

    iget-object v5, p0, Lcom/transsnet/downloader/core/thread/b;->downloadRange:Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadRange;->getRangeId()I

    move-result v5

    if-eq v4, v5, :cond_0

    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadRange;->isDownloading()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/transsion/baselib/db/download/DownloadRange;->setReDownload(Z)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/transsnet/downloader/core/thread/ReDownloadException;

    invoke-direct {v0}, Lcom/transsnet/downloader/core/thread/ReDownloadException;-><init>()V

    throw v0
.end method

.method private final k(J)V
    .locals 8

    invoke-direct {p0}, Lcom/transsnet/downloader/core/thread/b;->h()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, p1

    const-wide/16 p1, 0x0

    cmp-long v4, v2, p1

    if-gtz v4, :cond_0

    return-void

    :cond_0
    long-to-double v4, v2

    div-double/2addr v4, v0

    double-to-long v0, v4

    :goto_0
    sub-long/2addr v0, v2

    cmp-long v2, v0, p1

    if-lez v2, :cond_2

    iget-boolean v2, p0, Lcom/transsnet/downloader/core/thread/b;->isBreak:Z

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/transsnet/downloader/core/thread/b;->d()V

    const-wide/32 v2, 0xbebc200

    invoke-static {v0, v1, v2, v3}, Lkotlin/ranges/RangesKt;->j(JJ)J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    div-long v6, v2, v4

    rem-long v4, v2, v4

    long-to-int v4, v4

    cmp-long v5, v6, p1

    if-gtz v5, :cond_1

    if-gtz v4, :cond_1

    return-void

    :cond_1
    :try_start_0
    invoke-static {v6, v7, v4}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsnet/downloader/core/thread/b;->isBreak:Z

    :cond_2
    return-void
.end method


# virtual methods
.method public pause(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsnet/downloader/core/thread/b;->isBreak:Z

    iput-object p1, p0, Lcom/transsnet/downloader/core/thread/b;->breakCallback:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public removeBreakCallback()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsnet/downloader/core/thread/b;->breakCallback:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public startDownload()V
    .locals 17

    move-object/from16 v1, p0

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v2, v1, Lcom/transsnet/downloader/core/thread/b;->downloadRange:Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadRange;->getThreadId()I

    move-result v2

    iget-object v3, v1, Lcom/transsnet/downloader/core/thread/b;->downloadRange:Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadRange;->getRangeId()I

    move-result v3

    iget-object v4, v1, Lcom/transsnet/downloader/core/thread/b;->downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadBean;->isPause()Z

    move-result v4

    iget-object v5, v1, Lcom/transsnet/downloader/core/thread/b;->downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/transsnet/downloader/core/thread/b;->downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v6}, Lcom/transsion/baselib/db/download/DownloadBean;->getProgress()J

    move-result-wide v6

    iget-object v8, v1, Lcom/transsnet/downloader/core/thread/b;->downloadRange:Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadRange;->getStart()J

    move-result-wide v8

    iget-object v10, v1, Lcom/transsnet/downloader/core/thread/b;->downloadRange:Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-virtual {v10}, Lcom/transsion/baselib/db/download/DownloadRange;->getProgress()J

    move-result-wide v10

    iget-object v12, v1, Lcom/transsnet/downloader/core/thread/b;->downloadRange:Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-virtual {v12}, Lcom/transsion/baselib/db/download/DownloadRange;->getEnd()J

    move-result-wide v12

    iget-boolean v14, v1, Lcom/transsnet/downloader/core/thread/b;->isBreak:Z

    iget-object v15, v1, Lcom/transsnet/downloader/core/thread/b;->downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v15}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result v15

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    const-string v0, "start thread: threadId = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", rangeId = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isPause =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "   name =  "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " , progress = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", range.start = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", range.progress = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ",range.end = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", isBreak = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", status = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "download"

    const/4 v4, 0x1

    move-object/from16 v5, v16

    invoke-virtual {v5, v1, v0, v4}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v5, p0

    iget-object v0, v5, Lcom/transsnet/downloader/core/thread/b;->downloadRange:Lcom/transsion/baselib/db/download/DownloadRange;

    iget v6, v5, Lcom/transsnet/downloader/core/thread/b;->threadIndex:I

    invoke-virtual {v0, v6}, Lcom/transsion/baselib/db/download/DownloadRange;->setThreadIndex(I)V

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/transsnet/downloader/core/thread/b;->isBreak:Z

    :goto_0
    iget-object v0, v5, Lcom/transsnet/downloader/core/thread/b;->downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->isPause()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v5, Lcom/transsnet/downloader/core/thread/b;->downloadRange:Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadRange;->isRangeDownloadSuccess()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, v5, Lcom/transsnet/downloader/core/thread/b;->isBreak:Z

    if-nez v0, :cond_1

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/transsnet/downloader/core/thread/b;->d()V

    invoke-direct/range {p0 .. p0}, Lcom/transsnet/downloader/core/thread/b;->f()V
    :try_end_0
    .catch Lcom/transsnet/downloader/exception/DownloadPauseException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/transsnet/downloader/core/thread/DownloadPathException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/transsion/baselib/db/download/DownloadException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/transsnet/downloader/core/thread/RestartException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/transsnet/downloader/core/thread/ReDownloadException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/transsnet/downloader/core/thread/QuitDPRestartException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto/16 :goto_2

    :catch_2
    iget-object v0, v5, Lcom/transsnet/downloader/core/thread/b;->downloadRange:Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-virtual {v0, v6}, Lcom/transsion/baselib/db/download/DownloadRange;->setDownloading(Z)V

    iget-object v0, v5, Lcom/transsnet/downloader/core/thread/b;->downloadProgressListener:Lcom/transsnet/downloader/core/thread/d;

    iget v1, v5, Lcom/transsnet/downloader/core/thread/b;->threadIndex:I

    iget-object v2, v5, Lcom/transsnet/downloader/core/thread/b;->downloadRange:Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-interface {v0, v5, v1, v2}, Lcom/transsnet/downloader/core/thread/d;->c(Lcom/transsnet/downloader/core/thread/f;ILcom/transsion/baselib/db/download/DownloadRange;)V

    return-void

    :catch_3
    iget-object v0, v5, Lcom/transsnet/downloader/core/thread/b;->downloadProgressListener:Lcom/transsnet/downloader/core/thread/d;

    iget v1, v5, Lcom/transsnet/downloader/core/thread/b;->threadIndex:I

    iget-object v2, v5, Lcom/transsnet/downloader/core/thread/b;->downloadRange:Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-interface {v0, v5, v1, v2}, Lcom/transsnet/downloader/core/thread/d;->a(Lcom/transsnet/downloader/core/thread/f;ILcom/transsion/baselib/db/download/DownloadRange;)V

    return-void

    :catch_4
    iget-object v0, v5, Lcom/transsnet/downloader/core/thread/b;->downloadRange:Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadRange;->getRangeId()I

    move-result v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "restart download thread, rangeId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :goto_1
    iget v7, v5, Lcom/transsnet/downloader/core/thread/b;->retryDownloadCount:I

    iget-object v8, v5, Lcom/transsnet/downloader/core/thread/b;->config:Loy/c;

    invoke-virtual {v8}, Loy/c;->j()I

    move-result v8

    if-lt v7, v8, :cond_0

    iget-object v7, v5, Lcom/transsnet/downloader/core/thread/b;->downloadRange:Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-virtual {v7, v6}, Lcom/transsion/baselib/db/download/DownloadRange;->setDownloading(Z)V

    iget-object v6, v5, Lcom/transsnet/downloader/core/thread/b;->downloadResponse:Lcom/transsnet/downloader/core/c;

    iget-object v7, v5, Lcom/transsnet/downloader/core/thread/b;->downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-interface {v6, v7, v0}, Lcom/transsnet/downloader/core/c;->b(Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsion/baselib/db/download/DownloadException;)V

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v6, v5, Lcom/transsnet/downloader/core/thread/b;->downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v6}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v5, Lcom/transsnet/downloader/core/thread/b;->downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v7}, Lcom/transsion/baselib/db/download/DownloadBean;->isPause()Z

    move-result v7

    iget-object v8, v5, Lcom/transsnet/downloader/core/thread/b;->downloadRange:Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadRange;->isRangeDownloadSuccess()Z

    move-result v8

    iget-boolean v9, v5, Lcom/transsnet/downloader/core/thread/b;->isBreak:Z

    iget-object v10, v5, Lcom/transsnet/downloader/core/thread/b;->downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v10}, Lcom/transsion/baselib/db/download/DownloadBean;->getProgress()J

    move-result-wide v10

    iget-object v12, v5, Lcom/transsnet/downloader/core/thread/b;->downloadRange:Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-virtual {v12}, Lcom/transsion/baselib/db/download/DownloadRange;->getRangeId()I

    move-result v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\u5931\u8d25\u91cd\u8bd5\u5df2\u6ee1 retry thread: name = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isRangeDownloadSuccess=  "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", progress:  "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ,rangeId = "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Llg/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_0
    iget v0, v5, Lcom/transsnet/downloader/core/thread/b;->retryDownloadCount:I

    add-int/2addr v0, v4

    iput v0, v5, Lcom/transsnet/downloader/core/thread/b;->retryDownloadCount:I

    goto/16 :goto_0

    :goto_2
    iget-object v7, v5, Lcom/transsnet/downloader/core/thread/b;->downloadRange:Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-virtual {v7, v6}, Lcom/transsion/baselib/db/download/DownloadRange;->setDownloading(Z)V

    iget-object v7, v5, Lcom/transsnet/downloader/core/thread/b;->downloadResponse:Lcom/transsnet/downloader/core/c;

    iget-object v8, v5, Lcom/transsnet/downloader/core/thread/b;->downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-interface {v7, v8, v0}, Lcom/transsnet/downloader/core/c;->b(Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsion/baselib/db/download/DownloadException;)V

    goto/16 :goto_0

    :catch_5
    iget-object v0, v5, Lcom/transsnet/downloader/core/thread/b;->downloadRange:Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-virtual {v0, v6}, Lcom/transsion/baselib/db/download/DownloadRange;->setDownloading(Z)V

    goto/16 :goto_0

    :cond_1
    return-void
.end method
