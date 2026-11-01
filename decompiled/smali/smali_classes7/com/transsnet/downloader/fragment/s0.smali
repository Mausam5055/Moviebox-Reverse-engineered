.class public final synthetic Lcom/transsnet/downloader/fragment/s0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function5;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/fragment/DownloadPanelFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/fragment/DownloadPanelFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/fragment/s0;->a:Lcom/transsnet/downloader/fragment/DownloadPanelFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/transsnet/downloader/fragment/s0;->a:Lcom/transsnet/downloader/fragment/DownloadPanelFragment;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move-object v2, p2

    check-cast v2, Landroid/view/View;

    move-object v3, p3

    check-cast v3, Lcom/transsion/baselib/db/download/DownloadBean;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object v5, p5

    check-cast v5, Lcom/transsnet/downloader/adapter/u0$b;

    invoke-static/range {v0 .. v5}, Lcom/transsnet/downloader/fragment/DownloadPanelFragment;->l0(Lcom/transsnet/downloader/fragment/DownloadPanelFragment;ILandroid/view/View;Lcom/transsion/baselib/db/download/DownloadBean;ILcom/transsnet/downloader/adapter/u0$b;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
