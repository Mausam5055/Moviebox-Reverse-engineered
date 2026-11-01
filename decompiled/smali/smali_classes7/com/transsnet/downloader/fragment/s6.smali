.class public final synthetic Lcom/transsnet/downloader/fragment/s6;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/chad/library/adapter/base/BaseQuickAdapter;

.field public final synthetic c:Lcom/transsnet/downloader/fragment/HistoricalPlayRecordFragment;


# direct methods
.method public synthetic constructor <init>(ILcom/chad/library/adapter/base/BaseQuickAdapter;Lcom/transsnet/downloader/fragment/HistoricalPlayRecordFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/transsnet/downloader/fragment/s6;->a:I

    iput-object p2, p0, Lcom/transsnet/downloader/fragment/s6;->b:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    iput-object p3, p0, Lcom/transsnet/downloader/fragment/s6;->c:Lcom/transsnet/downloader/fragment/HistoricalPlayRecordFragment;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/transsnet/downloader/fragment/s6;->a:I

    iget-object v1, p0, Lcom/transsnet/downloader/fragment/s6;->b:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    iget-object v2, p0, Lcom/transsnet/downloader/fragment/s6;->c:Lcom/transsnet/downloader/fragment/HistoricalPlayRecordFragment;

    invoke-static {v0, v1, v2}, Lcom/transsnet/downloader/fragment/HistoricalPlayRecordFragment;->q0(ILcom/chad/library/adapter/base/BaseQuickAdapter;Lcom/transsnet/downloader/fragment/HistoricalPlayRecordFragment;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
