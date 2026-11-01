.class public final synthetic Lcom/transsnet/downloader/j;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/DownloadManagerApi;

.field public final synthetic b:Landroidx/fragment/app/FragmentActivity;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/j;->a:Lcom/transsnet/downloader/DownloadManagerApi;

    iput-object p2, p0, Lcom/transsnet/downloader/j;->b:Landroidx/fragment/app/FragmentActivity;

    iput-object p3, p0, Lcom/transsnet/downloader/j;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/transsnet/downloader/j;->a:Lcom/transsnet/downloader/DownloadManagerApi;

    iget-object v1, p0, Lcom/transsnet/downloader/j;->b:Landroidx/fragment/app/FragmentActivity;

    iget-object v2, p0, Lcom/transsnet/downloader/j;->c:Ljava/lang/String;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object v4, p2

    check-cast v4, Ljava/lang/String;

    move-object v5, p3

    check-cast v5, Lcom/transsion/baselib/db/download/DownloadBean;

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-static/range {v0 .. v6}, Lcom/transsnet/downloader/DownloadManagerApi;->m(Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;ILjava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;Z)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
