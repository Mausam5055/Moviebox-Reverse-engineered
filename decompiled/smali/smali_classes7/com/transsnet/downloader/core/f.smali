.class public final synthetic Lcom/transsnet/downloader/core/f;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/core/thread/f;

.field public final synthetic b:Lcom/transsnet/downloader/core/DownloadTaskImpl;

.field public final synthetic c:Lcom/transsion/baselib/db/download/DownloadRange;

.field public final synthetic d:I

.field public final synthetic e:Loy/c;

.field public final synthetic f:Lcom/transsion/baselib/db/download/DownloadBean;

.field public final synthetic g:Lcom/transsion/baselib/db/download/DownloadRange;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/core/thread/f;Lcom/transsnet/downloader/core/DownloadTaskImpl;Lcom/transsion/baselib/db/download/DownloadRange;ILoy/c;Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsion/baselib/db/download/DownloadRange;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/core/f;->a:Lcom/transsnet/downloader/core/thread/f;

    iput-object p2, p0, Lcom/transsnet/downloader/core/f;->b:Lcom/transsnet/downloader/core/DownloadTaskImpl;

    iput-object p3, p0, Lcom/transsnet/downloader/core/f;->c:Lcom/transsion/baselib/db/download/DownloadRange;

    iput p4, p0, Lcom/transsnet/downloader/core/f;->d:I

    iput-object p5, p0, Lcom/transsnet/downloader/core/f;->e:Loy/c;

    iput-object p6, p0, Lcom/transsnet/downloader/core/f;->f:Lcom/transsion/baselib/db/download/DownloadBean;

    iput-object p7, p0, Lcom/transsnet/downloader/core/f;->g:Lcom/transsion/baselib/db/download/DownloadRange;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/transsnet/downloader/core/f;->a:Lcom/transsnet/downloader/core/thread/f;

    iget-object v1, p0, Lcom/transsnet/downloader/core/f;->b:Lcom/transsnet/downloader/core/DownloadTaskImpl;

    iget-object v2, p0, Lcom/transsnet/downloader/core/f;->c:Lcom/transsion/baselib/db/download/DownloadRange;

    iget v3, p0, Lcom/transsnet/downloader/core/f;->d:I

    iget-object v4, p0, Lcom/transsnet/downloader/core/f;->e:Loy/c;

    iget-object v5, p0, Lcom/transsnet/downloader/core/f;->f:Lcom/transsion/baselib/db/download/DownloadBean;

    iget-object v6, p0, Lcom/transsnet/downloader/core/f;->g:Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-static/range {v0 .. v6}, Lcom/transsnet/downloader/core/DownloadTaskImpl$a;->b(Lcom/transsnet/downloader/core/thread/f;Lcom/transsnet/downloader/core/DownloadTaskImpl;Lcom/transsion/baselib/db/download/DownloadRange;ILoy/c;Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsion/baselib/db/download/DownloadRange;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
