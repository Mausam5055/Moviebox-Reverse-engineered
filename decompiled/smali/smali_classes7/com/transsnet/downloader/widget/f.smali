.class public final synthetic Lcom/transsnet/downloader/widget/f;
.super Ljava/lang/Object;

# interfaces
.implements Lp6/d;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/widget/d;

.field public final synthetic b:Lcom/transsnet/downloader/widget/DownloadGridTabView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/widget/d;Lcom/transsnet/downloader/widget/DownloadGridTabView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/widget/f;->a:Lcom/transsnet/downloader/widget/d;

    iput-object p2, p0, Lcom/transsnet/downloader/widget/f;->b:Lcom/transsnet/downloader/widget/DownloadGridTabView;

    return-void
.end method


# virtual methods
.method public final a(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    iget-object v0, p0, Lcom/transsnet/downloader/widget/f;->a:Lcom/transsnet/downloader/widget/d;

    iget-object v1, p0, Lcom/transsnet/downloader/widget/f;->b:Lcom/transsnet/downloader/widget/DownloadGridTabView;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/transsnet/downloader/widget/DownloadGridTabView;->a(Lcom/transsnet/downloader/widget/d;Lcom/transsnet/downloader/widget/DownloadGridTabView;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
