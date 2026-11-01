.class public final Lcom/transsnet/downloader/viewmodel/DownloadViewModel$sortTabsByOrder$$inlined$sortedBy$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->t0(Ljava/util/Map;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsnet/downloader/viewmodel/DownloadViewModel;


# direct methods
.method public constructor <init>(Lcom/transsnet/downloader/viewmodel/DownloadViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$sortTabsByOrder$$inlined$sortedBy$1;->this$0:Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$sortTabsByOrder$$inlined$sortedBy$1;->this$0:Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    invoke-static {v0}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->z(Lcom/transsnet/downloader/viewmodel/DownloadViewModel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const v0, 0x7fffffff

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p2, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$sortTabsByOrder$$inlined$sortedBy$1;->this$0:Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    invoke-static {v1}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->z(Lcom/transsnet/downloader/viewmodel/DownloadViewModel;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    if-ltz p2, :cond_1

    move v0, p2

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/comparisons/ComparisonsKt;->d(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p1

    return p1
.end method
