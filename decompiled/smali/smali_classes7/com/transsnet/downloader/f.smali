.class public final synthetic Lcom/transsnet/downloader/f;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/FragmentActivity;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/transsion/baselib/db/download/DownloadBean;

.field public final synthetic e:Lcom/transsnet/downloader/DownloadManagerApi;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsnet/downloader/DownloadManagerApi;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/f;->a:Landroidx/fragment/app/FragmentActivity;

    iput-object p2, p0, Lcom/transsnet/downloader/f;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsnet/downloader/f;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/transsnet/downloader/f;->d:Lcom/transsion/baselib/db/download/DownloadBean;

    iput-object p5, p0, Lcom/transsnet/downloader/f;->e:Lcom/transsnet/downloader/DownloadManagerApi;

    iput-object p6, p0, Lcom/transsnet/downloader/f;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/transsnet/downloader/f;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/transsnet/downloader/f;->a:Landroidx/fragment/app/FragmentActivity;

    iget-object v1, p0, Lcom/transsnet/downloader/f;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsnet/downloader/f;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsnet/downloader/f;->d:Lcom/transsion/baselib/db/download/DownloadBean;

    iget-object v4, p0, Lcom/transsnet/downloader/f;->e:Lcom/transsnet/downloader/DownloadManagerApi;

    iget-object v5, p0, Lcom/transsnet/downloader/f;->f:Ljava/lang/String;

    iget-object v6, p0, Lcom/transsnet/downloader/f;->g:Ljava/lang/String;

    move-object v7, p1

    check-cast v7, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-static/range {v0 .. v7}, Lcom/transsnet/downloader/DownloadManagerApi;->r(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsnet/downloader/DownloadManagerApi;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
