.class public final synthetic Lcom/transsnet/downloader/fragment/c;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/fragment/AllHistoricalPlayRecordFragment;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/fragment/AllHistoricalPlayRecordFragment;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/fragment/c;->a:Lcom/transsnet/downloader/fragment/AllHistoricalPlayRecordFragment;

    iput p2, p0, Lcom/transsnet/downloader/fragment/c;->b:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsnet/downloader/fragment/c;->a:Lcom/transsnet/downloader/fragment/AllHistoricalPlayRecordFragment;

    iget v1, p0, Lcom/transsnet/downloader/fragment/c;->b:I

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/String;

    check-cast p3, Ljava/lang/String;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/transsnet/downloader/fragment/AllHistoricalPlayRecordFragment;->k0(Lcom/transsnet/downloader/fragment/AllHistoricalPlayRecordFragment;IILjava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
