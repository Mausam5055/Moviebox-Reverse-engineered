.class public final synthetic Lcom/transsnet/downloader/k;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/DownloadManagerApi;

.field public final synthetic b:Landroidx/fragment/app/FragmentActivity;

.field public final synthetic c:Lcom/transsion/baselib/db/download/DownloadBean;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/k;->a:Lcom/transsnet/downloader/DownloadManagerApi;

    iput-object p2, p0, Lcom/transsnet/downloader/k;->b:Landroidx/fragment/app/FragmentActivity;

    iput-object p3, p0, Lcom/transsnet/downloader/k;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    iput-object p4, p0, Lcom/transsnet/downloader/k;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/transsnet/downloader/k;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p6, p0, Lcom/transsnet/downloader/k;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/transsnet/downloader/k;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/transsnet/downloader/k;->a:Lcom/transsnet/downloader/DownloadManagerApi;

    iget-object v1, p0, Lcom/transsnet/downloader/k;->b:Landroidx/fragment/app/FragmentActivity;

    iget-object v2, p0, Lcom/transsnet/downloader/k;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    iget-object v3, p0, Lcom/transsnet/downloader/k;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsnet/downloader/k;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, p0, Lcom/transsnet/downloader/k;->f:Ljava/lang/String;

    iget-object v6, p0, Lcom/transsnet/downloader/k;->g:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/transsnet/downloader/DownloadManagerApi;->h(Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
