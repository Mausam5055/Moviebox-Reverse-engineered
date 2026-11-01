.class public final Lcom/transsnet/downloader/adapter/DownloadedHolder$b;
.super Laq/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/adapter/DownloadedHolder;->T(Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsion/baselib/db/audio/AudioBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/transsion/baselib/db/audio/AudioBean;

.field final synthetic c:Lcom/transsion/baselib/db/download/DownloadBean;

.field final synthetic d:Lcom/transsnet/downloader/adapter/DownloadedHolder;


# direct methods
.method constructor <init>(Lcom/transsion/baselib/db/audio/AudioBean;Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsnet/downloader/adapter/DownloadedHolder;Ljava/lang/ref/SoftReference;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/downloader/adapter/DownloadedHolder$b;->b:Lcom/transsion/baselib/db/audio/AudioBean;

    iput-object p2, p0, Lcom/transsnet/downloader/adapter/DownloadedHolder$b;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    iput-object p3, p0, Lcom/transsnet/downloader/adapter/DownloadedHolder$b;->d:Lcom/transsnet/downloader/adapter/DownloadedHolder;

    invoke-direct {p0, p4}, Laq/e;-><init>(Ljava/lang/ref/SoftReference;)V

    return-void
.end method


# virtual methods
.method public onCompletion(Lao/e;)V
    .locals 3

    iget-object p1, p0, Lcom/transsnet/downloader/adapter/DownloadedHolder$b;->b:Lcom/transsion/baselib/db/audio/AudioBean;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/transsion/baselib/db/audio/AudioBean;->setStatus(I)V

    iget-object p1, p0, Lcom/transsnet/downloader/adapter/DownloadedHolder$b;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {p1, v0}, Lcom/transsion/baselib/db/download/DownloadBean;->setAudioStatus(I)V

    iget-object p1, p0, Lcom/transsnet/downloader/adapter/DownloadedHolder$b;->d:Lcom/transsnet/downloader/adapter/DownloadedHolder;

    invoke-virtual {p0}, Laq/e;->a()Ljava/lang/ref/SoftReference;

    move-result-object v0

    iget-object v1, p0, Lcom/transsnet/downloader/adapter/DownloadedHolder$b;->b:Lcom/transsion/baselib/db/audio/AudioBean;

    iget-object v2, p0, Lcom/transsnet/downloader/adapter/DownloadedHolder$b;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/transsnet/downloader/adapter/DownloadedHolder$b;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-static {p1, v0, v1, v2}, Lcom/transsnet/downloader/adapter/DownloadedHolder;->x(Lcom/transsnet/downloader/adapter/DownloadedHolder;Ljava/lang/ref/SoftReference;Lcom/transsion/baselib/db/audio/AudioBean;Ljava/lang/String;)V

    return-void
.end method

.method public onProgress(JLao/e;)V
    .locals 1

    iget-object p3, p0, Lcom/transsnet/downloader/adapter/DownloadedHolder$b;->b:Lcom/transsion/baselib/db/audio/AudioBean;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/transsion/baselib/db/audio/AudioBean;->setReadProcess(Ljava/lang/Long;)V

    iget-object p1, p0, Lcom/transsnet/downloader/adapter/DownloadedHolder$b;->d:Lcom/transsnet/downloader/adapter/DownloadedHolder;

    invoke-virtual {p0}, Laq/e;->a()Ljava/lang/ref/SoftReference;

    move-result-object p2

    iget-object p3, p0, Lcom/transsnet/downloader/adapter/DownloadedHolder$b;->b:Lcom/transsion/baselib/db/audio/AudioBean;

    iget-object v0, p0, Lcom/transsnet/downloader/adapter/DownloadedHolder$b;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsnet/downloader/adapter/DownloadedHolder$b;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {p1, p2, p3, v0}, Lcom/transsnet/downloader/adapter/DownloadedHolder;->x(Lcom/transsnet/downloader/adapter/DownloadedHolder;Ljava/lang/ref/SoftReference;Lcom/transsion/baselib/db/audio/AudioBean;Ljava/lang/String;)V

    return-void
.end method

.method public onVideoPause(Lao/e;)V
    .locals 3

    iget-object p1, p0, Lcom/transsnet/downloader/adapter/DownloadedHolder$b;->b:Lcom/transsion/baselib/db/audio/AudioBean;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/transsion/baselib/db/audio/AudioBean;->setStatus(I)V

    iget-object p1, p0, Lcom/transsnet/downloader/adapter/DownloadedHolder$b;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {p1, v0}, Lcom/transsion/baselib/db/download/DownloadBean;->setAudioStatus(I)V

    iget-object p1, p0, Lcom/transsnet/downloader/adapter/DownloadedHolder$b;->d:Lcom/transsnet/downloader/adapter/DownloadedHolder;

    invoke-virtual {p0}, Laq/e;->a()Ljava/lang/ref/SoftReference;

    move-result-object v0

    iget-object v1, p0, Lcom/transsnet/downloader/adapter/DownloadedHolder$b;->b:Lcom/transsion/baselib/db/audio/AudioBean;

    iget-object v2, p0, Lcom/transsnet/downloader/adapter/DownloadedHolder$b;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/transsnet/downloader/adapter/DownloadedHolder$b;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-static {p1, v0, v1, v2}, Lcom/transsnet/downloader/adapter/DownloadedHolder;->x(Lcom/transsnet/downloader/adapter/DownloadedHolder;Ljava/lang/ref/SoftReference;Lcom/transsion/baselib/db/audio/AudioBean;Ljava/lang/String;)V

    return-void
.end method

.method public onVideoStart(Lao/e;)V
    .locals 4

    iget-object p1, p0, Lcom/transsnet/downloader/adapter/DownloadedHolder$b;->b:Lcom/transsion/baselib/db/audio/AudioBean;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/transsion/baselib/db/audio/AudioBean;->setStatus(I)V

    iget-object p1, p0, Lcom/transsnet/downloader/adapter/DownloadedHolder$b;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {p1, v0}, Lcom/transsion/baselib/db/download/DownloadBean;->setAudioStatus(I)V

    iget-object p1, p0, Lcom/transsnet/downloader/adapter/DownloadedHolder$b;->b:Lcom/transsion/baselib/db/audio/AudioBean;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/audio/AudioBean;->getDuration()Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/transsnet/downloader/adapter/DownloadedHolder$b;->b:Lcom/transsion/baselib/db/audio/AudioBean;

    iget-object v0, p0, Lcom/transsnet/downloader/adapter/DownloadedHolder$b;->d:Lcom/transsnet/downloader/adapter/DownloadedHolder;

    invoke-static {v0}, Lcom/transsnet/downloader/adapter/DownloadedHolder;->t(Lcom/transsnet/downloader/adapter/DownloadedHolder;)Lcom/transsion/room/api/IAudioApi;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/transsion/room/api/IAudioApi;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/transsion/baselib/db/audio/AudioBean;->setDuration(Ljava/lang/Long;)V

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/transsnet/downloader/adapter/DownloadedHolder$b;->d:Lcom/transsnet/downloader/adapter/DownloadedHolder;

    invoke-virtual {p0}, Laq/e;->a()Ljava/lang/ref/SoftReference;

    move-result-object v0

    iget-object v1, p0, Lcom/transsnet/downloader/adapter/DownloadedHolder$b;->b:Lcom/transsion/baselib/db/audio/AudioBean;

    iget-object v2, p0, Lcom/transsnet/downloader/adapter/DownloadedHolder$b;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/transsnet/downloader/adapter/DownloadedHolder$b;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v2

    :cond_3
    invoke-static {p1, v0, v1, v2}, Lcom/transsnet/downloader/adapter/DownloadedHolder;->x(Lcom/transsnet/downloader/adapter/DownloadedHolder;Ljava/lang/ref/SoftReference;Lcom/transsion/baselib/db/audio/AudioBean;Ljava/lang/String;)V

    return-void
.end method
