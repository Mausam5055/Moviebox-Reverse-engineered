.class public final Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadList;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B+\u0012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0011\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J3\u0010\u001a\u001a\u00020\u00002\u0010\u0008\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u00c6\u0001J\u0013\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u00d6\u0003J\t\u0010\u001f\u001a\u00020 H\u00d6\u0001J\t\u0010!\u001a\u00020\"H\u00d6\u0001R&\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR \u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016\u00a8\u0006#"
    }
    d2 = {
        "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadList;",
        "Ljava/io/Serializable;",
        "items",
        "",
        "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownload;",
        "pager",
        "Lcom/transsion/moviedetailapi/bean/Pager;",
        "collection",
        "Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;",
        "<init>",
        "(Ljava/util/List;Lcom/transsion/moviedetailapi/bean/Pager;Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;)V",
        "getItems",
        "()Ljava/util/List;",
        "setItems",
        "(Ljava/util/List;)V",
        "getPager",
        "()Lcom/transsion/moviedetailapi/bean/Pager;",
        "setPager",
        "(Lcom/transsion/moviedetailapi/bean/Pager;)V",
        "getCollection",
        "()Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;",
        "setCollection",
        "(Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;)V",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
        "UGCVideoDetailApi_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private collection:Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;

.field private items:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "items"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownload;",
            ">;"
        }
    .end annotation
.end field

.field private pager:Lcom/transsion/moviedetailapi/bean/Pager;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pager"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/transsion/moviedetailapi/bean/Pager;Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownload;",
            ">;",
            "Lcom/transsion/moviedetailapi/bean/Pager;",
            "Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadList;->items:Ljava/util/List;

    iput-object p2, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadList;->pager:Lcom/transsion/moviedetailapi/bean/Pager;

    iput-object p3, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadList;->collection:Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadList;Ljava/util/List;Lcom/transsion/moviedetailapi/bean/Pager;Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;ILjava/lang/Object;)Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadList;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadList;->items:Ljava/util/List;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadList;->pager:Lcom/transsion/moviedetailapi/bean/Pager;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadList;->collection:Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadList;->copy(Ljava/util/List;Lcom/transsion/moviedetailapi/bean/Pager;Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;)Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadList;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownload;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadList;->items:Ljava/util/List;

    return-object v0
.end method

.method public final component2()Lcom/transsion/moviedetailapi/bean/Pager;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadList;->pager:Lcom/transsion/moviedetailapi/bean/Pager;

    return-object v0
.end method

.method public final component3()Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadList;->collection:Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;

    return-object v0
.end method

.method public final copy(Ljava/util/List;Lcom/transsion/moviedetailapi/bean/Pager;Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;)Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownload;",
            ">;",
            "Lcom/transsion/moviedetailapi/bean/Pager;",
            "Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;",
            ")",
            "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadList;"
        }
    .end annotation

    new-instance v0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadList;

    invoke-direct {v0, p1, p2, p3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadList;-><init>(Ljava/util/List;Lcom/transsion/moviedetailapi/bean/Pager;Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadList;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadList;

    iget-object v1, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadList;->items:Ljava/util/List;

    iget-object v3, p1, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadList;->items:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadList;->pager:Lcom/transsion/moviedetailapi/bean/Pager;

    iget-object v3, p1, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadList;->pager:Lcom/transsion/moviedetailapi/bean/Pager;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadList;->collection:Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;

    iget-object p1, p1, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadList;->collection:Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getCollection()Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadList;->collection:Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;

    return-object v0
.end method

.method public final getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownload;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadList;->items:Ljava/util/List;

    return-object v0
.end method

.method public final getPager()Lcom/transsion/moviedetailapi/bean/Pager;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadList;->pager:Lcom/transsion/moviedetailapi/bean/Pager;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadList;->items:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadList;->pager:Lcom/transsion/moviedetailapi/bean/Pager;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Pager;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadList;->collection:Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public final setCollection(Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadList;->collection:Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;

    return-void
.end method

.method public final setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownload;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadList;->items:Ljava/util/List;

    return-void
.end method

.method public final setPager(Lcom/transsion/moviedetailapi/bean/Pager;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadList;->pager:Lcom/transsion/moviedetailapi/bean/Pager;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadList;->items:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadList;->pager:Lcom/transsion/moviedetailapi/bean/Pager;

    iget-object v2, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadList;->collection:Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UGCVideoDownloadList(items="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", pager="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", collection="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
