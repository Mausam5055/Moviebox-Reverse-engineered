.class public final synthetic Lcom/transsnet/downloader/i;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/FragmentActivity;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/transsion/moviedetailapi/bean/Subject;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Lcom/transsnet/downloader/DownloadManagerApi;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsnet/downloader/DownloadManagerApi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/i;->a:Landroidx/fragment/app/FragmentActivity;

    iput-object p2, p0, Lcom/transsnet/downloader/i;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsnet/downloader/i;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/transsnet/downloader/i;->d:Lcom/transsion/moviedetailapi/bean/Subject;

    iput-object p5, p0, Lcom/transsnet/downloader/i;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/transsnet/downloader/i;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/transsnet/downloader/i;->g:Ljava/lang/String;

    iput-object p8, p0, Lcom/transsnet/downloader/i;->h:Ljava/lang/String;

    iput-object p9, p0, Lcom/transsnet/downloader/i;->i:Lcom/transsnet/downloader/DownloadManagerApi;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lcom/transsnet/downloader/i;->a:Landroidx/fragment/app/FragmentActivity;

    iget-object v1, p0, Lcom/transsnet/downloader/i;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsnet/downloader/i;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsnet/downloader/i;->d:Lcom/transsion/moviedetailapi/bean/Subject;

    iget-object v4, p0, Lcom/transsnet/downloader/i;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/transsnet/downloader/i;->f:Ljava/lang/String;

    iget-object v6, p0, Lcom/transsnet/downloader/i;->g:Ljava/lang/String;

    iget-object v7, p0, Lcom/transsnet/downloader/i;->h:Ljava/lang/String;

    iget-object v8, p0, Lcom/transsnet/downloader/i;->i:Lcom/transsnet/downloader/DownloadManagerApi;

    invoke-static/range {v0 .. v8}, Lcom/transsnet/downloader/DownloadManagerApi;->c(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsnet/downloader/DownloadManagerApi;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
