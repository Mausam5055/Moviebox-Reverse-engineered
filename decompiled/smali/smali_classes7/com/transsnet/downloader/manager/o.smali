.class public final synthetic Lcom/transsnet/downloader/manager/o;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/baselib/db/download/DownloadBean;

.field public final synthetic b:Lcom/transsnet/downloader/manager/DownloadManagerImpl;

.field public final synthetic c:I

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Lkotlin/jvm/functions/Function1;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsnet/downloader/manager/DownloadManagerImpl;ILjava/util/List;Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/manager/o;->a:Lcom/transsion/baselib/db/download/DownloadBean;

    iput-object p2, p0, Lcom/transsnet/downloader/manager/o;->b:Lcom/transsnet/downloader/manager/DownloadManagerImpl;

    iput p3, p0, Lcom/transsnet/downloader/manager/o;->c:I

    iput-object p4, p0, Lcom/transsnet/downloader/manager/o;->d:Ljava/util/List;

    iput-object p5, p0, Lcom/transsnet/downloader/manager/o;->e:Lkotlin/jvm/functions/Function1;

    iput-object p6, p0, Lcom/transsnet/downloader/manager/o;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/transsnet/downloader/manager/o;->a:Lcom/transsion/baselib/db/download/DownloadBean;

    iget-object v1, p0, Lcom/transsnet/downloader/manager/o;->b:Lcom/transsnet/downloader/manager/DownloadManagerImpl;

    iget v2, p0, Lcom/transsnet/downloader/manager/o;->c:I

    iget-object v3, p0, Lcom/transsnet/downloader/manager/o;->d:Ljava/util/List;

    iget-object v4, p0, Lcom/transsnet/downloader/manager/o;->e:Lkotlin/jvm/functions/Function1;

    iget-object v5, p0, Lcom/transsnet/downloader/manager/o;->f:Ljava/lang/String;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-static/range {v0 .. v6}, Lcom/transsnet/downloader/manager/DownloadManagerImpl;->N(Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsnet/downloader/manager/DownloadManagerImpl;ILjava/util/List;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Z)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
