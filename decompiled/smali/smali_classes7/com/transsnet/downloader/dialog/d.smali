.class public final synthetic Lcom/transsnet/downloader/dialog/d;
.super Ljava/lang/Object;

# interfaces
.implements Lp6/d;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/dialog/DownloadAudioTrackSelectDialog;

.field public final synthetic b:Lcom/transsnet/downloader/adapter/e;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/dialog/DownloadAudioTrackSelectDialog;Lcom/transsnet/downloader/adapter/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/dialog/d;->a:Lcom/transsnet/downloader/dialog/DownloadAudioTrackSelectDialog;

    iput-object p2, p0, Lcom/transsnet/downloader/dialog/d;->b:Lcom/transsnet/downloader/adapter/e;

    return-void
.end method


# virtual methods
.method public final a(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    iget-object v0, p0, Lcom/transsnet/downloader/dialog/d;->a:Lcom/transsnet/downloader/dialog/DownloadAudioTrackSelectDialog;

    iget-object v1, p0, Lcom/transsnet/downloader/dialog/d;->b:Lcom/transsnet/downloader/adapter/e;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/transsnet/downloader/dialog/DownloadAudioTrackSelectDialog;->I0(Lcom/transsnet/downloader/dialog/DownloadAudioTrackSelectDialog;Lcom/transsnet/downloader/adapter/e;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
