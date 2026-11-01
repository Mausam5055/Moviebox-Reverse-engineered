.class public final synthetic Lcom/transsnet/downloader/fragment/r6;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/fragment/HistoricalPlayRecordFragment;

.field public final synthetic b:Lcom/chad/library/adapter/base/BaseQuickAdapter;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/fragment/HistoricalPlayRecordFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/fragment/r6;->a:Lcom/transsnet/downloader/fragment/HistoricalPlayRecordFragment;

    iput-object p2, p0, Lcom/transsnet/downloader/fragment/r6;->b:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    iput p3, p0, Lcom/transsnet/downloader/fragment/r6;->c:I

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/transsnet/downloader/fragment/r6;->a:Lcom/transsnet/downloader/fragment/HistoricalPlayRecordFragment;

    iget-object v1, p0, Lcom/transsnet/downloader/fragment/r6;->b:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    iget v2, p0, Lcom/transsnet/downloader/fragment/r6;->c:I

    invoke-static {v0, v1, v2}, Lcom/transsnet/downloader/fragment/HistoricalPlayRecordFragment;->p0(Lcom/transsnet/downloader/fragment/HistoricalPlayRecordFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;I)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
