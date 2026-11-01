.class public final synthetic Lcom/transsnet/downloader/ugc/fragment/b1;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/dialog/DownloadMoreDialog;

.field public final synthetic b:Lcom/transsion/baselib/db/download/DownloadBean;

.field public final synthetic c:Lcom/transsnet/downloader/ugc/fragment/UGCTransferReceivedFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/dialog/DownloadMoreDialog;Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsnet/downloader/ugc/fragment/UGCTransferReceivedFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/ugc/fragment/b1;->a:Lcom/transsnet/downloader/dialog/DownloadMoreDialog;

    iput-object p2, p0, Lcom/transsnet/downloader/ugc/fragment/b1;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    iput-object p3, p0, Lcom/transsnet/downloader/ugc/fragment/b1;->c:Lcom/transsnet/downloader/ugc/fragment/UGCTransferReceivedFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/transsnet/downloader/ugc/fragment/b1;->a:Lcom/transsnet/downloader/dialog/DownloadMoreDialog;

    iget-object v1, p0, Lcom/transsnet/downloader/ugc/fragment/b1;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    iget-object v2, p0, Lcom/transsnet/downloader/ugc/fragment/b1;->c:Lcom/transsnet/downloader/ugc/fragment/UGCTransferReceivedFragment;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object v4, p2

    check-cast v4, Ljava/lang/String;

    move-object v5, p3

    check-cast v5, Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/transsnet/downloader/ugc/fragment/UGCTransferReceivedFragment;->m1(Lcom/transsnet/downloader/dialog/DownloadMoreDialog;Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsnet/downloader/ugc/fragment/UGCTransferReceivedFragment;ILjava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
