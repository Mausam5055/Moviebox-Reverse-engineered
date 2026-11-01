.class public final Lcom/transsion/subtitle/bean/OpenSubtitleResponse;
.super Ljava/lang/Object;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0003H\u00c6\u0003J\u0011\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008H\u00c6\u0003JC\u0010\u0018\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0010\u0008\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008H\u00c6\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001c\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u001d\u001a\u00020\u001eH\u00d6\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\rR\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\rR\u0019\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/transsion/subtitle/bean/OpenSubtitleResponse;",
        "",
        "totalPages",
        "",
        "totalCount",
        "perPage",
        "page",
        "data",
        "",
        "Lcom/transsion/subtitle/bean/OpenSubtitleData;",
        "<init>",
        "(IIIILjava/util/List;)V",
        "getTotalPages",
        "()I",
        "getTotalCount",
        "getPerPage",
        "getPage",
        "getData",
        "()Ljava/util/List;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "",
        "other",
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
.field private final data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/subtitle/bean/OpenSubtitleData;",
            ">;"
        }
    .end annotation
.end field

.field private final page:I

.field private final perPage:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "per_page"
    .end annotation
.end field

.field private final totalCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "total_count"
    .end annotation
.end field

.field private final totalPages:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "total_pages"
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIIILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/List<",
            "Lcom/transsion/subtitle/bean/OpenSubtitleData;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/transsion/subtitle/bean/OpenSubtitleResponse;->totalPages:I

    iput p2, p0, Lcom/transsion/subtitle/bean/OpenSubtitleResponse;->totalCount:I

    iput p3, p0, Lcom/transsion/subtitle/bean/OpenSubtitleResponse;->perPage:I

    iput p4, p0, Lcom/transsion/subtitle/bean/OpenSubtitleResponse;->page:I

    iput-object p5, p0, Lcom/transsion/subtitle/bean/OpenSubtitleResponse;->data:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/subtitle/bean/OpenSubtitleResponse;IIIILjava/util/List;ILjava/lang/Object;)Lcom/transsion/subtitle/bean/OpenSubtitleResponse;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget p1, p0, Lcom/transsion/subtitle/bean/OpenSubtitleResponse;->totalPages:I

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget p2, p0, Lcom/transsion/subtitle/bean/OpenSubtitleResponse;->totalCount:I

    :cond_1
    move p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget p3, p0, Lcom/transsion/subtitle/bean/OpenSubtitleResponse;->perPage:I

    :cond_2
    move v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget p4, p0, Lcom/transsion/subtitle/bean/OpenSubtitleResponse;->page:I

    :cond_3
    move v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/transsion/subtitle/bean/OpenSubtitleResponse;->data:Ljava/util/List;

    :cond_4
    move-object v2, p5

    move-object p2, p0

    move p3, p1

    move p4, p7

    move p5, v0

    move p6, v1

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/transsion/subtitle/bean/OpenSubtitleResponse;->copy(IIIILjava/util/List;)Lcom/transsion/subtitle/bean/OpenSubtitleResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/transsion/subtitle/bean/OpenSubtitleResponse;->totalPages:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/transsion/subtitle/bean/OpenSubtitleResponse;->totalCount:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/transsion/subtitle/bean/OpenSubtitleResponse;->perPage:I

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/transsion/subtitle/bean/OpenSubtitleResponse;->page:I

    return v0
.end method

.method public final component5()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/subtitle/bean/OpenSubtitleData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/subtitle/bean/OpenSubtitleResponse;->data:Ljava/util/List;

    return-object v0
.end method

.method public final copy(IIIILjava/util/List;)Lcom/transsion/subtitle/bean/OpenSubtitleResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/List<",
            "Lcom/transsion/subtitle/bean/OpenSubtitleData;",
            ">;)",
            "Lcom/transsion/subtitle/bean/OpenSubtitleResponse;"
        }
    .end annotation

    new-instance v6, Lcom/transsion/subtitle/bean/OpenSubtitleResponse;

    move-object v0, v6

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/transsion/subtitle/bean/OpenSubtitleResponse;-><init>(IIIILjava/util/List;)V

    return-object v6
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/subtitle/bean/OpenSubtitleResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/subtitle/bean/OpenSubtitleResponse;

    iget v1, p0, Lcom/transsion/subtitle/bean/OpenSubtitleResponse;->totalPages:I

    iget v3, p1, Lcom/transsion/subtitle/bean/OpenSubtitleResponse;->totalPages:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/transsion/subtitle/bean/OpenSubtitleResponse;->totalCount:I

    iget v3, p1, Lcom/transsion/subtitle/bean/OpenSubtitleResponse;->totalCount:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/transsion/subtitle/bean/OpenSubtitleResponse;->perPage:I

    iget v3, p1, Lcom/transsion/subtitle/bean/OpenSubtitleResponse;->perPage:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/transsion/subtitle/bean/OpenSubtitleResponse;->page:I

    iget v3, p1, Lcom/transsion/subtitle/bean/OpenSubtitleResponse;->page:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/transsion/subtitle/bean/OpenSubtitleResponse;->data:Ljava/util/List;

    iget-object p1, p1, Lcom/transsion/subtitle/bean/OpenSubtitleResponse;->data:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/subtitle/bean/OpenSubtitleData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/subtitle/bean/OpenSubtitleResponse;->data:Ljava/util/List;

    return-object v0
.end method

.method public final getPage()I
    .locals 1

    iget v0, p0, Lcom/transsion/subtitle/bean/OpenSubtitleResponse;->page:I

    return v0
.end method

.method public final getPerPage()I
    .locals 1

    iget v0, p0, Lcom/transsion/subtitle/bean/OpenSubtitleResponse;->perPage:I

    return v0
.end method

.method public final getTotalCount()I
    .locals 1

    iget v0, p0, Lcom/transsion/subtitle/bean/OpenSubtitleResponse;->totalCount:I

    return v0
.end method

.method public final getTotalPages()I
    .locals 1

    iget v0, p0, Lcom/transsion/subtitle/bean/OpenSubtitleResponse;->totalPages:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/transsion/subtitle/bean/OpenSubtitleResponse;->totalPages:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/subtitle/bean/OpenSubtitleResponse;->totalCount:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/subtitle/bean/OpenSubtitleResponse;->perPage:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/subtitle/bean/OpenSubtitleResponse;->page:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/subtitle/bean/OpenSubtitleResponse;->data:Ljava/util/List;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget v0, p0, Lcom/transsion/subtitle/bean/OpenSubtitleResponse;->totalPages:I

    iget v1, p0, Lcom/transsion/subtitle/bean/OpenSubtitleResponse;->totalCount:I

    iget v2, p0, Lcom/transsion/subtitle/bean/OpenSubtitleResponse;->perPage:I

    iget v3, p0, Lcom/transsion/subtitle/bean/OpenSubtitleResponse;->page:I

    iget-object v4, p0, Lcom/transsion/subtitle/bean/OpenSubtitleResponse;->data:Ljava/util/List;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OpenSubtitleResponse(totalPages="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", totalCount="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", perPage="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", page="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", data="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
