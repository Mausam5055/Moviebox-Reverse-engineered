.class public final synthetic Lcom/transsnet/downloader/manager/m;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lkotlin/jvm/functions/Function1;

.field public final synthetic b:Lcom/transsnet/downloader/manager/DownloadManagerImpl;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/transsnet/downloader/manager/DownloadManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/manager/m;->a:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/transsnet/downloader/manager/m;->b:Lcom/transsnet/downloader/manager/DownloadManagerImpl;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsnet/downloader/manager/m;->a:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lcom/transsnet/downloader/manager/m;->b:Lcom/transsnet/downloader/manager/DownloadManagerImpl;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/transsnet/downloader/manager/DownloadManagerImpl;->M(Lkotlin/jvm/functions/Function1;Lcom/transsnet/downloader/manager/DownloadManagerImpl;Z)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
