.class public final synthetic Lcom/transsnet/downloader/d;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic a:Lkotlin/jvm/functions/Function4;

.field public final synthetic b:Lcom/transsnet/downloader/DownloadManagerApi;

.field public final synthetic c:Landroidx/fragment/app/FragmentActivity;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function4;Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/d;->a:Lkotlin/jvm/functions/Function4;

    iput-object p2, p0, Lcom/transsnet/downloader/d;->b:Lcom/transsnet/downloader/DownloadManagerApi;

    iput-object p3, p0, Lcom/transsnet/downloader/d;->c:Landroidx/fragment/app/FragmentActivity;

    iput-object p4, p0, Lcom/transsnet/downloader/d;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/transsnet/downloader/d;->a:Lkotlin/jvm/functions/Function4;

    iget-object v1, p0, Lcom/transsnet/downloader/d;->b:Lcom/transsnet/downloader/DownloadManagerApi;

    iget-object v2, p0, Lcom/transsnet/downloader/d;->c:Landroidx/fragment/app/FragmentActivity;

    iget-object v3, p0, Lcom/transsnet/downloader/d;->d:Ljava/lang/String;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object v5, p2

    check-cast v5, Ljava/lang/String;

    move-object v6, p3

    check-cast v6, Lcom/transsion/baselib/db/download/DownloadBean;

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-static/range {v0 .. v7}, Lcom/transsnet/downloader/DownloadManagerApi;->k(Lkotlin/jvm/functions/Function4;Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;ILjava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;Z)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
