.class public final synthetic Lcom/transsnet/downloader/adapter/e0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/adapter/DownloadedHolder;

.field public final synthetic b:I

.field public final synthetic c:Ln6/a;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/adapter/DownloadedHolder;ILn6/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/adapter/e0;->a:Lcom/transsnet/downloader/adapter/DownloadedHolder;

    iput p2, p0, Lcom/transsnet/downloader/adapter/e0;->b:I

    iput-object p3, p0, Lcom/transsnet/downloader/adapter/e0;->c:Ln6/a;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 3

    iget-object v0, p0, Lcom/transsnet/downloader/adapter/e0;->a:Lcom/transsnet/downloader/adapter/DownloadedHolder;

    iget v1, p0, Lcom/transsnet/downloader/adapter/e0;->b:I

    iget-object v2, p0, Lcom/transsnet/downloader/adapter/e0;->c:Ln6/a;

    invoke-static {v0, v1, v2, p1}, Lcom/transsnet/downloader/adapter/DownloadedHolder;->p(Lcom/transsnet/downloader/adapter/DownloadedHolder;ILn6/a;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
