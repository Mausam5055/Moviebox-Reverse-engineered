.class public final Lcom/transsnet/downloader/core/DownloadResponseImpl$b;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/core/DownloadResponseImpl;-><init>(Lcom/transsnet/downloader/manager/g;Ljava/util/Set;Loy/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsnet/downloader/core/DownloadResponseImpl;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/core/DownloadResponseImpl;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/downloader/core/DownloadResponseImpl$b;->a:Lcom/transsnet/downloader/core/DownloadResponseImpl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const-string v1, "null cannot be cast to non-null type com.transsion.baselib.db.download.DownloadBean"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/transsion/baselib/db/download/DownloadBean;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/transsnet/downloader/core/DownloadResponseImpl$b;->a:Lcom/transsnet/downloader/core/DownloadResponseImpl;

    iget v2, p1, Landroid/os/Message;->what:I

    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-static {v1, v0, v2, v3}, Lcom/transsnet/downloader/core/DownloadResponseImpl;->f(Lcom/transsnet/downloader/core/DownloadResponseImpl;Lcom/transsion/baselib/db/download/DownloadBean;IZ)V

    return-void
.end method
