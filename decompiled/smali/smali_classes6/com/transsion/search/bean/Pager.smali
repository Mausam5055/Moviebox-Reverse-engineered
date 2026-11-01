.class public final Lcom/transsion/search/bean/Pager;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0014\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\t\u0010\nJ\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0005H\u00c6\u0003J;\u0010\u0017\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0018\u001a\u00020\u00032\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u00d6\u0003J\t\u0010\u001b\u001a\u00020\u0005H\u00d6\u0001J\t\u0010\u001c\u001a\u00020\u001dH\u00d6\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0016\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000eR\u0016\u0010\u0007\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000eR\u0016\u0010\u0008\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000e\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/transsion/search/bean/Pager;",
        "Ljava/io/Serializable;",
        "hasMore",
        "",
        "nextPage",
        "",
        "page",
        "perPage",
        "totalCount",
        "<init>",
        "(ZIIII)V",
        "getHasMore",
        "()Z",
        "getNextPage",
        "()I",
        "getPage",
        "getPerPage",
        "getTotalCount",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
        "",
        "Search_psRelease"
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
.field private final hasMore:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hasMore"
    .end annotation
.end field

.field private final nextPage:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "nextPage"
    .end annotation
.end field

.field private final page:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "page"
    .end annotation
.end field

.field private final perPage:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "perPage"
    .end annotation
.end field

.field private final totalCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "totalCount"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/transsion/search/bean/Pager;->hasMore:Z

    iput p2, p0, Lcom/transsion/search/bean/Pager;->nextPage:I

    iput p3, p0, Lcom/transsion/search/bean/Pager;->page:I

    iput p4, p0, Lcom/transsion/search/bean/Pager;->perPage:I

    iput p5, p0, Lcom/transsion/search/bean/Pager;->totalCount:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/search/bean/Pager;ZIIIIILjava/lang/Object;)Lcom/transsion/search/bean/Pager;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-boolean p1, p0, Lcom/transsion/search/bean/Pager;->hasMore:Z

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget p2, p0, Lcom/transsion/search/bean/Pager;->nextPage:I

    :cond_1
    move p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget p3, p0, Lcom/transsion/search/bean/Pager;->page:I

    :cond_2
    move v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget p4, p0, Lcom/transsion/search/bean/Pager;->perPage:I

    :cond_3
    move v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget p5, p0, Lcom/transsion/search/bean/Pager;->totalCount:I

    :cond_4
    move v2, p5

    move-object p2, p0

    move p3, p1

    move p4, p7

    move p5, v0

    move p6, v1

    move p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/transsion/search/bean/Pager;->copy(ZIIII)Lcom/transsion/search/bean/Pager;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/search/bean/Pager;->hasMore:Z

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/transsion/search/bean/Pager;->nextPage:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/transsion/search/bean/Pager;->page:I

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/transsion/search/bean/Pager;->perPage:I

    return v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/transsion/search/bean/Pager;->totalCount:I

    return v0
.end method

.method public final copy(ZIIII)Lcom/transsion/search/bean/Pager;
    .locals 7

    new-instance v6, Lcom/transsion/search/bean/Pager;

    move-object v0, v6

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/transsion/search/bean/Pager;-><init>(ZIIII)V

    return-object v6
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/search/bean/Pager;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/search/bean/Pager;

    iget-boolean v1, p0, Lcom/transsion/search/bean/Pager;->hasMore:Z

    iget-boolean v3, p1, Lcom/transsion/search/bean/Pager;->hasMore:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/transsion/search/bean/Pager;->nextPage:I

    iget v3, p1, Lcom/transsion/search/bean/Pager;->nextPage:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/transsion/search/bean/Pager;->page:I

    iget v3, p1, Lcom/transsion/search/bean/Pager;->page:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/transsion/search/bean/Pager;->perPage:I

    iget v3, p1, Lcom/transsion/search/bean/Pager;->perPage:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/transsion/search/bean/Pager;->totalCount:I

    iget p1, p1, Lcom/transsion/search/bean/Pager;->totalCount:I

    if-eq v1, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getHasMore()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/search/bean/Pager;->hasMore:Z

    return v0
.end method

.method public final getNextPage()I
    .locals 1

    iget v0, p0, Lcom/transsion/search/bean/Pager;->nextPage:I

    return v0
.end method

.method public final getPage()I
    .locals 1

    iget v0, p0, Lcom/transsion/search/bean/Pager;->page:I

    return v0
.end method

.method public final getPerPage()I
    .locals 1

    iget v0, p0, Lcom/transsion/search/bean/Pager;->perPage:I

    return v0
.end method

.method public final getTotalCount()I
    .locals 1

    iget v0, p0, Lcom/transsion/search/bean/Pager;->totalCount:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/search/bean/Pager;->hasMore:Z

    invoke-static {v0}, Landroidx/compose/foundation/e;->a(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/search/bean/Pager;->nextPage:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/search/bean/Pager;->page:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/search/bean/Pager;->perPage:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/search/bean/Pager;->totalCount:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget-boolean v0, p0, Lcom/transsion/search/bean/Pager;->hasMore:Z

    iget v1, p0, Lcom/transsion/search/bean/Pager;->nextPage:I

    iget v2, p0, Lcom/transsion/search/bean/Pager;->page:I

    iget v3, p0, Lcom/transsion/search/bean/Pager;->perPage:I

    iget v4, p0, Lcom/transsion/search/bean/Pager;->totalCount:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Pager(hasMore="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", nextPage="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", page="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", perPage="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", totalCount="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
