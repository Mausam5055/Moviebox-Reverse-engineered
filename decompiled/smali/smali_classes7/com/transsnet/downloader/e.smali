.class public final synthetic Lcom/transsnet/downloader/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/baselib/db/download/DownloadBean;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:I

.field public final synthetic d:Landroidx/fragment/app/FragmentActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;ILandroidx/fragment/app/FragmentActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/e;->a:Lcom/transsion/baselib/db/download/DownloadBean;

    iput-object p2, p0, Lcom/transsnet/downloader/e;->b:Ljava/lang/String;

    iput p3, p0, Lcom/transsnet/downloader/e;->c:I

    iput-object p4, p0, Lcom/transsnet/downloader/e;->d:Landroidx/fragment/app/FragmentActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/transsnet/downloader/e;->a:Lcom/transsion/baselib/db/download/DownloadBean;

    iget-object v1, p0, Lcom/transsnet/downloader/e;->b:Ljava/lang/String;

    iget v2, p0, Lcom/transsnet/downloader/e;->c:I

    iget-object v3, p0, Lcom/transsnet/downloader/e;->d:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0, v1, v2, v3}, Lcom/transsnet/downloader/DownloadManagerApi;->j(Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;ILandroidx/fragment/app/FragmentActivity;)V

    return-void
.end method
