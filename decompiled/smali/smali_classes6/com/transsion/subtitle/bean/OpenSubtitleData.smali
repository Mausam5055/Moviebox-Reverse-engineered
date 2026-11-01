.class public final Lcom/transsion/subtitle/bean/OpenSubtitleData;
.super Ljava/lang/Object;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fJ\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0005H\u00c6\u0003J\'\u0010\u0013\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001J\t\u0010\u0019\u001a\u00020\u0005H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000c\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/transsion/subtitle/bean/OpenSubtitleData;",
        "",
        "attributes",
        "Lcom/transsion/subtitle/bean/OpenSubtitleDataAttributes;",
        "id",
        "",
        "type",
        "<init>",
        "(Lcom/transsion/subtitle/bean/OpenSubtitleDataAttributes;Ljava/lang/String;Ljava/lang/String;)V",
        "getAttributes",
        "()Lcom/transsion/subtitle/bean/OpenSubtitleDataAttributes;",
        "getId",
        "()Ljava/lang/String;",
        "getType",
        "toSubtitleBean",
        "Lcom/transsion/moviedetailapi/bean/SubtitleItem;",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
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
.field private final attributes:Lcom/transsion/subtitle/bean/OpenSubtitleDataAttributes;

.field private final id:Ljava/lang/String;

.field private final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/transsion/subtitle/bean/OpenSubtitleDataAttributes;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "attributes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/subtitle/bean/OpenSubtitleData;->attributes:Lcom/transsion/subtitle/bean/OpenSubtitleDataAttributes;

    iput-object p2, p0, Lcom/transsion/subtitle/bean/OpenSubtitleData;->id:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/subtitle/bean/OpenSubtitleData;->type:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/subtitle/bean/OpenSubtitleData;Lcom/transsion/subtitle/bean/OpenSubtitleDataAttributes;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/transsion/subtitle/bean/OpenSubtitleData;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/transsion/subtitle/bean/OpenSubtitleData;->attributes:Lcom/transsion/subtitle/bean/OpenSubtitleDataAttributes;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/transsion/subtitle/bean/OpenSubtitleData;->id:Ljava/lang/String;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/transsion/subtitle/bean/OpenSubtitleData;->type:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/subtitle/bean/OpenSubtitleData;->copy(Lcom/transsion/subtitle/bean/OpenSubtitleDataAttributes;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/subtitle/bean/OpenSubtitleData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/transsion/subtitle/bean/OpenSubtitleDataAttributes;
    .locals 1

    iget-object v0, p0, Lcom/transsion/subtitle/bean/OpenSubtitleData;->attributes:Lcom/transsion/subtitle/bean/OpenSubtitleDataAttributes;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/subtitle/bean/OpenSubtitleData;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/subtitle/bean/OpenSubtitleData;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Lcom/transsion/subtitle/bean/OpenSubtitleDataAttributes;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/subtitle/bean/OpenSubtitleData;
    .locals 1

    const-string v0, "attributes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/subtitle/bean/OpenSubtitleData;

    invoke-direct {v0, p1, p2, p3}, Lcom/transsion/subtitle/bean/OpenSubtitleData;-><init>(Lcom/transsion/subtitle/bean/OpenSubtitleDataAttributes;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/subtitle/bean/OpenSubtitleData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/subtitle/bean/OpenSubtitleData;

    iget-object v1, p0, Lcom/transsion/subtitle/bean/OpenSubtitleData;->attributes:Lcom/transsion/subtitle/bean/OpenSubtitleDataAttributes;

    iget-object v3, p1, Lcom/transsion/subtitle/bean/OpenSubtitleData;->attributes:Lcom/transsion/subtitle/bean/OpenSubtitleDataAttributes;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsion/subtitle/bean/OpenSubtitleData;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/subtitle/bean/OpenSubtitleData;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/transsion/subtitle/bean/OpenSubtitleData;->type:Ljava/lang/String;

    iget-object p1, p1, Lcom/transsion/subtitle/bean/OpenSubtitleData;->type:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getAttributes()Lcom/transsion/subtitle/bean/OpenSubtitleDataAttributes;
    .locals 1

    iget-object v0, p0, Lcom/transsion/subtitle/bean/OpenSubtitleData;->attributes:Lcom/transsion/subtitle/bean/OpenSubtitleDataAttributes;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/subtitle/bean/OpenSubtitleData;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/subtitle/bean/OpenSubtitleData;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/transsion/subtitle/bean/OpenSubtitleData;->attributes:Lcom/transsion/subtitle/bean/OpenSubtitleDataAttributes;

    invoke-virtual {v0}, Lcom/transsion/subtitle/bean/OpenSubtitleDataAttributes;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/subtitle/bean/OpenSubtitleData;->id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/subtitle/bean/OpenSubtitleData;->type:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/transsion/subtitle/bean/OpenSubtitleData;->attributes:Lcom/transsion/subtitle/bean/OpenSubtitleDataAttributes;

    iget-object v1, p0, Lcom/transsion/subtitle/bean/OpenSubtitleData;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/subtitle/bean/OpenSubtitleData;->type:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OpenSubtitleData(attributes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", id="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", type="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toSubtitleBean()Lcom/transsion/moviedetailapi/bean/SubtitleItem;
    .locals 15

    iget-object v0, p0, Lcom/transsion/subtitle/bean/OpenSubtitleData;->attributes:Lcom/transsion/subtitle/bean/OpenSubtitleDataAttributes;

    invoke-virtual {v0}, Lcom/transsion/subtitle/bean/OpenSubtitleDataAttributes;->getFiles()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/subtitle/bean/OpenSubtitleDataFile;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance v14, Lcom/transsion/moviedetailapi/bean/SubtitleItem;

    iget-object v3, p0, Lcom/transsion/subtitle/bean/OpenSubtitleData;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/subtitle/bean/OpenSubtitleData;->attributes:Lcom/transsion/subtitle/bean/OpenSubtitleDataAttributes;

    invoke-virtual {v2}, Lcom/transsion/subtitle/bean/OpenSubtitleDataAttributes;->getLanguage()Ljava/lang/String;

    move-result-object v4

    sget-object v2, Lcom/transsion/subtitle/helper/d;->a:Lcom/transsion/subtitle/helper/d;

    iget-object v5, p0, Lcom/transsion/subtitle/bean/OpenSubtitleData;->attributes:Lcom/transsion/subtitle/bean/OpenSubtitleDataAttributes;

    invoke-virtual {v5}, Lcom/transsion/subtitle/bean/OpenSubtitleDataAttributes;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/transsion/subtitle/helper/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/transsion/subtitle/bean/OpenSubtitleDataFile;->getFileName()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iget-object v2, p0, Lcom/transsion/subtitle/bean/OpenSubtitleData;->attributes:Lcom/transsion/subtitle/bean/OpenSubtitleDataAttributes;

    invoke-virtual {v2}, Lcom/transsion/subtitle/bean/OpenSubtitleDataAttributes;->getFeatureDetails()Lcom/transsion/subtitle/bean/OpenSubtitleFeatureDetails;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/transsion/subtitle/bean/OpenSubtitleFeatureDetails;->getSe()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v11, v2

    goto :goto_0

    :cond_1
    move-object v11, v1

    :goto_0
    iget-object v2, p0, Lcom/transsion/subtitle/bean/OpenSubtitleData;->attributes:Lcom/transsion/subtitle/bean/OpenSubtitleDataAttributes;

    invoke-virtual {v2}, Lcom/transsion/subtitle/bean/OpenSubtitleDataAttributes;->getFeatureDetails()Lcom/transsion/subtitle/bean/OpenSubtitleFeatureDetails;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/transsion/subtitle/bean/OpenSubtitleFeatureDetails;->getEp()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_2
    iget-object v2, p0, Lcom/transsion/subtitle/bean/OpenSubtitleData;->attributes:Lcom/transsion/subtitle/bean/OpenSubtitleDataAttributes;

    invoke-virtual {v2}, Lcom/transsion/subtitle/bean/OpenSubtitleDataAttributes;->getDownloadCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v7, 0x0

    move-object v2, v14

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v1

    invoke-direct/range {v2 .. v13}, Lcom/transsion/moviedetailapi/bean/SubtitleItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0}, Lcom/transsion/subtitle/bean/OpenSubtitleDataFile;->getFileId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/transsion/moviedetailapi/bean/SubtitleItem;->setFileId(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v14, v0}, Lcom/transsion/moviedetailapi/bean/SubtitleItem;->setOpenSubNewApi(Z)V

    return-object v14

    :cond_3
    :goto_1
    return-object v1
.end method
