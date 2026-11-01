.class public final synthetic Lcom/transsnet/downloader/widget/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/widget/DownloadInfoExtendView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/widget/DownloadInfoExtendView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/widget/h;->a:Lcom/transsnet/downloader/widget/DownloadInfoExtendView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/widget/h;->a:Lcom/transsnet/downloader/widget/DownloadInfoExtendView;

    invoke-static {v0}, Lcom/transsnet/downloader/widget/DownloadInfoExtendView;->h(Lcom/transsnet/downloader/widget/DownloadInfoExtendView;)V

    return-void
.end method
