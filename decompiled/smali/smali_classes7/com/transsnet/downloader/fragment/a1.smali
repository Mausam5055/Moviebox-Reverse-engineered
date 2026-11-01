.class public final synthetic Lcom/transsnet/downloader/fragment/a1;
.super Ljava/lang/Object;

# interfaces
.implements Lp6/b;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/fragment/DownloadPanelFragment;

.field public final synthetic b:Lcom/transsnet/downloader/adapter/v0;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/fragment/DownloadPanelFragment;Lcom/transsnet/downloader/adapter/v0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/fragment/a1;->a:Lcom/transsnet/downloader/fragment/DownloadPanelFragment;

    iput-object p2, p0, Lcom/transsnet/downloader/fragment/a1;->b:Lcom/transsnet/downloader/adapter/v0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    iget-object v0, p0, Lcom/transsnet/downloader/fragment/a1;->a:Lcom/transsnet/downloader/fragment/DownloadPanelFragment;

    iget-object v1, p0, Lcom/transsnet/downloader/fragment/a1;->b:Lcom/transsnet/downloader/adapter/v0;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/transsnet/downloader/fragment/DownloadPanelFragment;->f0(Lcom/transsnet/downloader/fragment/DownloadPanelFragment;Lcom/transsnet/downloader/adapter/v0;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
