.class public final synthetic Lcom/transsnet/downloader/s;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/transsion/moviedetailapi/bean/Subject;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:I

.field public final synthetic j:Z

.field public final synthetic k:Landroidx/fragment/app/FragmentManager;

.field public final synthetic l:Lcom/transsnet/downloader/DownloadManagerApi;

.field public final synthetic m:Landroidx/fragment/app/FragmentActivity;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLandroidx/fragment/app/FragmentManager;Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/s;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsnet/downloader/s;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsnet/downloader/s;->c:Lcom/transsion/moviedetailapi/bean/Subject;

    iput-object p4, p0, Lcom/transsnet/downloader/s;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/transsnet/downloader/s;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/transsnet/downloader/s;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/transsnet/downloader/s;->g:Ljava/lang/String;

    iput-object p8, p0, Lcom/transsnet/downloader/s;->h:Ljava/lang/String;

    iput p9, p0, Lcom/transsnet/downloader/s;->i:I

    iput-boolean p10, p0, Lcom/transsnet/downloader/s;->j:Z

    iput-object p11, p0, Lcom/transsnet/downloader/s;->k:Landroidx/fragment/app/FragmentManager;

    iput-object p12, p0, Lcom/transsnet/downloader/s;->l:Lcom/transsnet/downloader/DownloadManagerApi;

    iput-object p13, p0, Lcom/transsnet/downloader/s;->m:Landroidx/fragment/app/FragmentActivity;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 13

    iget-object v0, p0, Lcom/transsnet/downloader/s;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsnet/downloader/s;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsnet/downloader/s;->c:Lcom/transsion/moviedetailapi/bean/Subject;

    iget-object v3, p0, Lcom/transsnet/downloader/s;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsnet/downloader/s;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/transsnet/downloader/s;->f:Ljava/lang/String;

    iget-object v6, p0, Lcom/transsnet/downloader/s;->g:Ljava/lang/String;

    iget-object v7, p0, Lcom/transsnet/downloader/s;->h:Ljava/lang/String;

    iget v8, p0, Lcom/transsnet/downloader/s;->i:I

    iget-boolean v9, p0, Lcom/transsnet/downloader/s;->j:Z

    iget-object v10, p0, Lcom/transsnet/downloader/s;->k:Landroidx/fragment/app/FragmentManager;

    iget-object v11, p0, Lcom/transsnet/downloader/s;->l:Lcom/transsnet/downloader/DownloadManagerApi;

    iget-object v12, p0, Lcom/transsnet/downloader/s;->m:Landroidx/fragment/app/FragmentActivity;

    invoke-static/range {v0 .. v12}, Lcom/transsnet/downloader/DownloadManagerApi;->e(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLandroidx/fragment/app/FragmentManager;Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
