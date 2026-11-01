.class public final synthetic Lcom/transsnet/downloader/core/h;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/core/thread/f;

.field public final synthetic b:Lcom/transsnet/downloader/core/DownloadTaskImpl2;

.field public final synthetic c:Lcom/transsion/baselib/db/download/DownloadRange;

.field public final synthetic d:Lcom/transsion/baselib/db/download/DownloadRange;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/core/thread/f;Lcom/transsnet/downloader/core/DownloadTaskImpl2;Lcom/transsion/baselib/db/download/DownloadRange;Lcom/transsion/baselib/db/download/DownloadRange;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/core/h;->a:Lcom/transsnet/downloader/core/thread/f;

    iput-object p2, p0, Lcom/transsnet/downloader/core/h;->b:Lcom/transsnet/downloader/core/DownloadTaskImpl2;

    iput-object p3, p0, Lcom/transsnet/downloader/core/h;->c:Lcom/transsion/baselib/db/download/DownloadRange;

    iput-object p4, p0, Lcom/transsnet/downloader/core/h;->d:Lcom/transsion/baselib/db/download/DownloadRange;

    iput p5, p0, Lcom/transsnet/downloader/core/h;->e:I

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/transsnet/downloader/core/h;->a:Lcom/transsnet/downloader/core/thread/f;

    iget-object v1, p0, Lcom/transsnet/downloader/core/h;->b:Lcom/transsnet/downloader/core/DownloadTaskImpl2;

    iget-object v2, p0, Lcom/transsnet/downloader/core/h;->c:Lcom/transsion/baselib/db/download/DownloadRange;

    iget-object v3, p0, Lcom/transsnet/downloader/core/h;->d:Lcom/transsion/baselib/db/download/DownloadRange;

    iget v4, p0, Lcom/transsnet/downloader/core/h;->e:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/transsnet/downloader/core/DownloadTaskImpl2$c;->b(Lcom/transsnet/downloader/core/thread/f;Lcom/transsnet/downloader/core/DownloadTaskImpl2;Lcom/transsion/baselib/db/download/DownloadRange;Lcom/transsion/baselib/db/download/DownloadRange;I)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
