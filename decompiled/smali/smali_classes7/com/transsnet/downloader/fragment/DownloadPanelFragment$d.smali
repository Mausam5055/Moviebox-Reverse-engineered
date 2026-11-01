.class public final Lcom/transsnet/downloader/fragment/DownloadPanelFragment$d;
.super Ljava/lang/Object;

# interfaces
.implements Lsj/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/fragment/DownloadPanelFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsnet/downloader/fragment/DownloadPanelFragment;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/fragment/DownloadPanelFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadPanelFragment$d;->a:Lcom/transsnet/downloader/fragment/DownloadPanelFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IJLandroid/view/View;)V
    .locals 6

    iget-object p4, p0, Lcom/transsnet/downloader/fragment/DownloadPanelFragment$d;->a:Lcom/transsnet/downloader/fragment/DownloadPanelFragment;

    invoke-static {p4}, Lcom/transsnet/downloader/fragment/DownloadPanelFragment;->y0(Lcom/transsnet/downloader/fragment/DownloadPanelFragment;)Lcom/transsnet/downloader/adapter/v0;

    move-result-object p4

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p4

    if-eqz p4, :cond_0

    invoke-static {p4, p1}, Lkotlin/collections/CollectionsKt;->l0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/transsion/moviedetailapi/bean/Subject;

    :goto_0
    move-object v2, p4

    goto :goto_1

    :cond_0
    const/4 p4, 0x0

    goto :goto_0

    :goto_1
    if-eqz v2, :cond_1

    iget-object p4, p0, Lcom/transsnet/downloader/fragment/DownloadPanelFragment$d;->a:Lcom/transsnet/downloader/fragment/DownloadPanelFragment;

    invoke-static {p4}, Lcom/transsnet/downloader/fragment/DownloadPanelFragment;->w0(Lcom/transsnet/downloader/fragment/DownloadPanelFragment;)Lry/a;

    move-result-object v0

    iget-object p4, p0, Lcom/transsnet/downloader/fragment/DownloadPanelFragment$d;->a:Lcom/transsnet/downloader/fragment/DownloadPanelFragment;

    invoke-static {p4}, Lcom/transsnet/downloader/fragment/DownloadPanelFragment;->A0(Lcom/transsnet/downloader/fragment/DownloadPanelFragment;)Ljava/lang/String;

    move-result-object v1

    move v3, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lry/a;->a(Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Subject;IJ)V

    :cond_1
    return-void
.end method
