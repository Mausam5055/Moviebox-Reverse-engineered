.class public final Lcom/transsion/commercialization/aha/AhaGameQuery;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u001b\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\u001d\u0010\u000f\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u00d6\u0003J\t\u0010\u0014\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001R\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001e\u0010\u0004\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u0008\"\u0004\u0008\u000c\u0010\n\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/transsion/commercialization/aha/AhaGameQuery;",
        "Ljava/io/Serializable;",
        "pageNum",
        "",
        "pageSize",
        "<init>",
        "(II)V",
        "getPageNum",
        "()I",
        "setPageNum",
        "(I)V",
        "getPageSize",
        "setPageSize",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "",
        "Commercialization_psRelease"
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
.field private pageNum:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pageNum"
    .end annotation
.end field

.field private pageSize:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pageSize"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v2, v0, v1}, Lcom/transsion/commercialization/aha/AhaGameQuery;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/transsion/commercialization/aha/AhaGameQuery;->pageNum:I

    iput p2, p0, Lcom/transsion/commercialization/aha/AhaGameQuery;->pageSize:I

    return-void
.end method

.method public synthetic constructor <init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/16 p2, 0xa

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/transsion/commercialization/aha/AhaGameQuery;-><init>(II)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/commercialization/aha/AhaGameQuery;IIILjava/lang/Object;)Lcom/transsion/commercialization/aha/AhaGameQuery;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lcom/transsion/commercialization/aha/AhaGameQuery;->pageNum:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget p2, p0, Lcom/transsion/commercialization/aha/AhaGameQuery;->pageSize:I

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/commercialization/aha/AhaGameQuery;->copy(II)Lcom/transsion/commercialization/aha/AhaGameQuery;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/transsion/commercialization/aha/AhaGameQuery;->pageNum:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/transsion/commercialization/aha/AhaGameQuery;->pageSize:I

    return v0
.end method

.method public final copy(II)Lcom/transsion/commercialization/aha/AhaGameQuery;
    .locals 1

    new-instance v0, Lcom/transsion/commercialization/aha/AhaGameQuery;

    invoke-direct {v0, p1, p2}, Lcom/transsion/commercialization/aha/AhaGameQuery;-><init>(II)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/commercialization/aha/AhaGameQuery;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/commercialization/aha/AhaGameQuery;

    iget v1, p0, Lcom/transsion/commercialization/aha/AhaGameQuery;->pageNum:I

    iget v3, p1, Lcom/transsion/commercialization/aha/AhaGameQuery;->pageNum:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/transsion/commercialization/aha/AhaGameQuery;->pageSize:I

    iget p1, p1, Lcom/transsion/commercialization/aha/AhaGameQuery;->pageSize:I

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getPageNum()I
    .locals 1

    iget v0, p0, Lcom/transsion/commercialization/aha/AhaGameQuery;->pageNum:I

    return v0
.end method

.method public final getPageSize()I
    .locals 1

    iget v0, p0, Lcom/transsion/commercialization/aha/AhaGameQuery;->pageSize:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/transsion/commercialization/aha/AhaGameQuery;->pageNum:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/commercialization/aha/AhaGameQuery;->pageSize:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final setPageNum(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/commercialization/aha/AhaGameQuery;->pageNum:I

    return-void
.end method

.method public final setPageSize(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/commercialization/aha/AhaGameQuery;->pageSize:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/transsion/commercialization/aha/AhaGameQuery;->pageNum:I

    iget v1, p0, Lcom/transsion/commercialization/aha/AhaGameQuery;->pageSize:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AhaGameQuery(pageNum="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", pageSize="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
