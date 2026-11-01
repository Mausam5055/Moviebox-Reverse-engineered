.class public final synthetic Lcom/transsnet/downloader/fragment/z2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/fragment/DownloadReDetectorMainDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/fragment/DownloadReDetectorMainDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/fragment/z2;->a:Lcom/transsnet/downloader/fragment/DownloadReDetectorMainDialog;

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/fragment/z2;->a:Lcom/transsnet/downloader/fragment/DownloadReDetectorMainDialog;

    invoke-static {v0, p1, p2, p3}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMainDialog;->p0(Lcom/transsnet/downloader/fragment/DownloadReDetectorMainDialog;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
