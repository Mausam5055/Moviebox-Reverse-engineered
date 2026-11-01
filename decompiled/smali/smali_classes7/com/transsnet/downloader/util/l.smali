.class public final synthetic Lcom/transsnet/downloader/util/l;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:I

.field public final synthetic c:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;ILkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/util/l;->a:Ljava/util/List;

    iput p2, p0, Lcom/transsnet/downloader/util/l;->b:I

    iput-object p3, p0, Lcom/transsnet/downloader/util/l;->c:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/transsnet/downloader/util/l;->a:Ljava/util/List;

    iget v1, p0, Lcom/transsnet/downloader/util/l;->b:I

    iget-object v2, p0, Lcom/transsnet/downloader/util/l;->c:Lkotlin/jvm/functions/Function1;

    check-cast p1, Ljava/util/Map;

    invoke-static {v0, v1, v2, p1}, Lcom/transsnet/downloader/util/DownloadTransferUtils;->a(Ljava/util/List;ILkotlin/jvm/functions/Function1;Ljava/util/Map;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
