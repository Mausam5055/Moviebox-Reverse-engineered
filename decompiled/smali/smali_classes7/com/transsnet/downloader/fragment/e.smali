.class public final synthetic Lcom/transsnet/downloader/fragment/e;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/chad/library/adapter/base/BaseQuickAdapter;

.field public final synthetic c:Lcom/transsnet/downloader/fragment/AllHistoricalPlayRecordFragment;


# direct methods
.method public synthetic constructor <init>(ILcom/chad/library/adapter/base/BaseQuickAdapter;Lcom/transsnet/downloader/fragment/AllHistoricalPlayRecordFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/transsnet/downloader/fragment/e;->a:I

    iput-object p2, p0, Lcom/transsnet/downloader/fragment/e;->b:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    iput-object p3, p0, Lcom/transsnet/downloader/fragment/e;->c:Lcom/transsnet/downloader/fragment/AllHistoricalPlayRecordFragment;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/transsnet/downloader/fragment/e;->a:I

    iget-object v1, p0, Lcom/transsnet/downloader/fragment/e;->b:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    iget-object v2, p0, Lcom/transsnet/downloader/fragment/e;->c:Lcom/transsnet/downloader/fragment/AllHistoricalPlayRecordFragment;

    invoke-static {v0, v1, v2}, Lcom/transsnet/downloader/fragment/AllHistoricalPlayRecordFragment;->y0(ILcom/chad/library/adapter/base/BaseQuickAdapter;Lcom/transsnet/downloader/fragment/AllHistoricalPlayRecordFragment;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
