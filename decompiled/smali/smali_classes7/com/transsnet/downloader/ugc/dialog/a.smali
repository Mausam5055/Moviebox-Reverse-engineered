.class public final synthetic Lcom/transsnet/downloader/ugc/dialog/a;
.super Ljava/lang/Object;

# interfaces
.implements Lp6/d;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/ugc/dialog/UGCDownloadDialog;

.field public final synthetic b:Lcom/transsnet/downloader/ugc/adapter/b;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/ugc/dialog/UGCDownloadDialog;Lcom/transsnet/downloader/ugc/adapter/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/ugc/dialog/a;->a:Lcom/transsnet/downloader/ugc/dialog/UGCDownloadDialog;

    iput-object p2, p0, Lcom/transsnet/downloader/ugc/dialog/a;->b:Lcom/transsnet/downloader/ugc/adapter/b;

    return-void
.end method


# virtual methods
.method public final a(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    iget-object v0, p0, Lcom/transsnet/downloader/ugc/dialog/a;->a:Lcom/transsnet/downloader/ugc/dialog/UGCDownloadDialog;

    iget-object v1, p0, Lcom/transsnet/downloader/ugc/dialog/a;->b:Lcom/transsnet/downloader/ugc/adapter/b;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/transsnet/downloader/ugc/dialog/UGCDownloadDialog;->H0(Lcom/transsnet/downloader/ugc/dialog/UGCDownloadDialog;Lcom/transsnet/downloader/ugc/adapter/b;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
