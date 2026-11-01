.class public final Lcom/transsion/subtitle/bean/SubtitleSearchListBean;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0018\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B5\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0011\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005H\u00c6\u0003J\t\u0010\u001e\u001a\u00020\u0008H\u00c6\u0003J\t\u0010\u001f\u001a\u00020\nH\u00c6\u0003J;\u0010 \u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0010\u0008\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\nH\u00c6\u0001J\u0013\u0010!\u001a\u00020\n2\u0008\u0010\"\u001a\u0004\u0018\u00010#H\u00d6\u0003J\t\u0010$\u001a\u00020\u0008H\u00d6\u0001J\t\u0010%\u001a\u00020&H\u00d6\u0001R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\"\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0007\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\u0019\"\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/transsion/subtitle/bean/SubtitleSearchListBean;",
        "Ljava/io/Serializable;",
        "pager",
        "Lcom/transsion/moviedetailapi/bean/Pager;",
        "items",
        "",
        "Lcom/transsion/moviedetailapi/bean/SubtitleItem;",
        "searchType",
        "",
        "isRefresh",
        "",
        "<init>",
        "(Lcom/transsion/moviedetailapi/bean/Pager;Ljava/util/List;IZ)V",
        "getPager",
        "()Lcom/transsion/moviedetailapi/bean/Pager;",
        "setPager",
        "(Lcom/transsion/moviedetailapi/bean/Pager;)V",
        "getItems",
        "()Ljava/util/List;",
        "setItems",
        "(Ljava/util/List;)V",
        "getSearchType",
        "()I",
        "setSearchType",
        "(I)V",
        "()Z",
        "setRefresh",
        "(Z)V",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
        "",
        "VideoSubtitle_psRelease"
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
.field private transient isRefresh:Z

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/SubtitleItem;",
            ">;"
        }
    .end annotation
.end field

.field private pager:Lcom/transsion/moviedetailapi/bean/Pager;

.field private transient searchType:I


# direct methods
.method public constructor <init>(Lcom/transsion/moviedetailapi/bean/Pager;Ljava/util/List;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/moviedetailapi/bean/Pager;",
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/SubtitleItem;",
            ">;IZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;->pager:Lcom/transsion/moviedetailapi/bean/Pager;

    iput-object p2, p0, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;->items:Ljava/util/List;

    iput p3, p0, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;->searchType:I

    iput-boolean p4, p0, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;->isRefresh:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/moviedetailapi/bean/Pager;Ljava/util/List;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, -0x1

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;-><init>(Lcom/transsion/moviedetailapi/bean/Pager;Ljava/util/List;IZ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/subtitle/bean/SubtitleSearchListBean;Lcom/transsion/moviedetailapi/bean/Pager;Ljava/util/List;IZILjava/lang/Object;)Lcom/transsion/subtitle/bean/SubtitleSearchListBean;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;->pager:Lcom/transsion/moviedetailapi/bean/Pager;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;->items:Ljava/util/List;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;->searchType:I

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-boolean p4, p0, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;->isRefresh:Z

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;->copy(Lcom/transsion/moviedetailapi/bean/Pager;Ljava/util/List;IZ)Lcom/transsion/subtitle/bean/SubtitleSearchListBean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/transsion/moviedetailapi/bean/Pager;
    .locals 1

    iget-object v0, p0, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;->pager:Lcom/transsion/moviedetailapi/bean/Pager;

    return-object v0
.end method

.method public final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/SubtitleItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;->items:Ljava/util/List;

    return-object v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;->searchType:I

    return v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;->isRefresh:Z

    return v0
.end method

.method public final copy(Lcom/transsion/moviedetailapi/bean/Pager;Ljava/util/List;IZ)Lcom/transsion/subtitle/bean/SubtitleSearchListBean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/moviedetailapi/bean/Pager;",
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/SubtitleItem;",
            ">;IZ)",
            "Lcom/transsion/subtitle/bean/SubtitleSearchListBean;"
        }
    .end annotation

    new-instance v0, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;-><init>(Lcom/transsion/moviedetailapi/bean/Pager;Ljava/util/List;IZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;

    iget-object v1, p0, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;->pager:Lcom/transsion/moviedetailapi/bean/Pager;

    iget-object v3, p1, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;->pager:Lcom/transsion/moviedetailapi/bean/Pager;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;->items:Ljava/util/List;

    iget-object v3, p1, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;->items:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;->searchType:I

    iget v3, p1, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;->searchType:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;->isRefresh:Z

    iget-boolean p1, p1, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;->isRefresh:Z

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/SubtitleItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;->items:Ljava/util/List;

    return-object v0
.end method

.method public final getPager()Lcom/transsion/moviedetailapi/bean/Pager;
    .locals 1

    iget-object v0, p0, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;->pager:Lcom/transsion/moviedetailapi/bean/Pager;

    return-object v0
.end method

.method public final getSearchType()I
    .locals 1

    iget v0, p0, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;->searchType:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;->pager:Lcom/transsion/moviedetailapi/bean/Pager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Pager;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;->items:Ljava/util/List;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;->searchType:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;->isRefresh:Z

    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isRefresh()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;->isRefresh:Z

    return v0
.end method

.method public final setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/SubtitleItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;->items:Ljava/util/List;

    return-void
.end method

.method public final setPager(Lcom/transsion/moviedetailapi/bean/Pager;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;->pager:Lcom/transsion/moviedetailapi/bean/Pager;

    return-void
.end method

.method public final setRefresh(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;->isRefresh:Z

    return-void
.end method

.method public final setSearchType(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;->searchType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;->pager:Lcom/transsion/moviedetailapi/bean/Pager;

    iget-object v1, p0, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;->items:Ljava/util/List;

    iget v2, p0, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;->searchType:I

    iget-boolean v3, p0, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;->isRefresh:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SubtitleSearchListBean(pager="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", items="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", searchType="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", isRefresh="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
