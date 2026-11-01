.class public final synthetic Lcom/transsnet/downloader/fragment/t6;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/fragment/HistoricalPlayRecordFragment;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/fragment/HistoricalPlayRecordFragment;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/fragment/t6;->a:Lcom/transsnet/downloader/fragment/HistoricalPlayRecordFragment;

    iput p2, p0, Lcom/transsnet/downloader/fragment/t6;->b:I

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsnet/downloader/fragment/t6;->a:Lcom/transsnet/downloader/fragment/HistoricalPlayRecordFragment;

    iget v1, p0, Lcom/transsnet/downloader/fragment/t6;->b:I

    invoke-static {v0, v1}, Lcom/transsnet/downloader/fragment/HistoricalPlayRecordFragment;->s0(Lcom/transsnet/downloader/fragment/HistoricalPlayRecordFragment;I)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
