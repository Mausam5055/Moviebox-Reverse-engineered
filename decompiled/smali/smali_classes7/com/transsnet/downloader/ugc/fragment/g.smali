.class public final synthetic Lcom/transsnet/downloader/ugc/fragment/g;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/ugc/fragment/g;->a:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/ugc/fragment/g;->a:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment;

    check-cast p1, Lcom/transsnet/flow/event/sync/event/AddToDownloadEvent;

    invoke-static {v0, p1}, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment;->b0(Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment;Lcom/transsnet/flow/event/sync/event/AddToDownloadEvent;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
