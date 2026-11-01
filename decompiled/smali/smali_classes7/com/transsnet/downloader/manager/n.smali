.class public final synthetic Lcom/transsnet/downloader/manager/n;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/manager/DownloadManagerImpl;

.field public final synthetic b:Lcom/transsion/baselib/db/download/DownloadBean;

.field public final synthetic c:Lkotlin/jvm/functions/Function1;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/manager/DownloadManagerImpl;Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/manager/n;->a:Lcom/transsnet/downloader/manager/DownloadManagerImpl;

    iput-object p2, p0, Lcom/transsnet/downloader/manager/n;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    iput-object p3, p0, Lcom/transsnet/downloader/manager/n;->c:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/transsnet/downloader/manager/n;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/transsnet/downloader/manager/n;->a:Lcom/transsnet/downloader/manager/DownloadManagerImpl;

    iget-object v1, p0, Lcom/transsnet/downloader/manager/n;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    iget-object v2, p0, Lcom/transsnet/downloader/manager/n;->c:Lkotlin/jvm/functions/Function1;

    iget-object v3, p0, Lcom/transsnet/downloader/manager/n;->d:Ljava/lang/String;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, v1, v2, v3, p1}, Lcom/transsnet/downloader/manager/DownloadManagerImpl;->P(Lcom/transsnet/downloader/manager/DownloadManagerImpl;Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Z)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
