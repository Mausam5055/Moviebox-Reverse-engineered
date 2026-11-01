.class public final synthetic Lcom/transsnet/downloader/ugc/fragment/m0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment;

.field public final synthetic b:Lcom/transsion/baselib/db/download/DownloadBean;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment;Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/ugc/fragment/m0;->a:Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment;

    iput-object p2, p0, Lcom/transsnet/downloader/ugc/fragment/m0;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsnet/downloader/ugc/fragment/m0;->a:Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment;

    iget-object v1, p0, Lcom/transsnet/downloader/ugc/fragment/m0;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment;->l1(Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment;Lcom/transsion/baselib/db/download/DownloadBean;Z)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
