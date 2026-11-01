.class public final synthetic Lcom/transsnet/downloader/widget/t0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/widget/TransferSelectSeriesListView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/widget/TransferSelectSeriesListView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/widget/t0;->a:Lcom/transsnet/downloader/widget/TransferSelectSeriesListView;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/widget/t0;->a:Lcom/transsnet/downloader/widget/TransferSelectSeriesListView;

    check-cast p1, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-static {v0, p1}, Lcom/transsnet/downloader/widget/TransferSelectSeriesListView;->c(Lcom/transsnet/downloader/widget/TransferSelectSeriesListView;Lcom/transsion/baselib/db/download/DownloadBean;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
