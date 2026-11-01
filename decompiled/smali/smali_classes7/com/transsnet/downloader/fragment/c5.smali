.class public final synthetic Lcom/transsnet/downloader/fragment/c5;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/fragment/c5;->a:Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/fragment/c5;->a:Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;

    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    invoke-static {v0, p1}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->J0(Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;Lcom/tn/lib/net/bean/BaseDto;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
