.class public final synthetic Lcom/transsnet/downloader/fragment/w7;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/fragment/TransferReceivedListFragment;

.field public final synthetic b:Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/fragment/TransferReceivedListFragment;Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/fragment/w7;->a:Lcom/transsnet/downloader/fragment/TransferReceivedListFragment;

    iput-object p2, p0, Lcom/transsnet/downloader/fragment/w7;->b:Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;

    iput p3, p0, Lcom/transsnet/downloader/fragment/w7;->c:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/transsnet/downloader/fragment/w7;->a:Lcom/transsnet/downloader/fragment/TransferReceivedListFragment;

    iget-object v1, p0, Lcom/transsnet/downloader/fragment/w7;->b:Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;

    iget v2, p0, Lcom/transsnet/downloader/fragment/w7;->c:I

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, v1, v2, p1}, Lcom/transsnet/downloader/fragment/TransferReceivedListFragment;->r1(Lcom/transsnet/downloader/fragment/TransferReceivedListFragment;Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;IZ)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
