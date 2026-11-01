.class public final Lcom/cloud/tmc/offline/download/model/ZipFileInfo;
.super Lcom/cloud/tmc/kernel/model/BaseBean;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B)\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J-\u0010\u0015\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u00c6\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u00d6\u0003J\t\u0010\u001a\u001a\u00020\u001bH\u00d6\u0001J\t\u0010\u001c\u001a\u00020\u0003H\u00d6\u0001R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\r\"\u0004\u0008\u0011\u0010\u000f\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/cloud/tmc/offline/download/model/ZipFileInfo;",
        "Lcom/cloud/tmc/kernel/model/BaseBean;",
        "zipUnCompressPath",
        "",
        "url",
        "manifest",
        "Lcom/cloud/tmc/offline/download/model/OffPkgConfig;",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/offline/download/model/OffPkgConfig;)V",
        "getManifest",
        "()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;",
        "setManifest",
        "(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;)V",
        "getUrl",
        "()Ljava/lang/String;",
        "setUrl",
        "(Ljava/lang/String;)V",
        "getZipUnCompressPath",
        "setZipUnCompressPath",
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
        "com.cloud.tmc.offline_download"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private manifest:Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

.field private url:Ljava/lang/String;

.field private zipUnCompressPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/cloud/tmc/offline/download/model/ZipFileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/offline/download/model/OffPkgConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/offline/download/model/OffPkgConfig;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/tmc/kernel/model/BaseBean;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/offline/download/model/ZipFileInfo;->zipUnCompressPath:Ljava/lang/String;

    iput-object p2, p0, Lcom/cloud/tmc/offline/download/model/ZipFileInfo;->url:Ljava/lang/String;

    iput-object p3, p0, Lcom/cloud/tmc/offline/download/model/ZipFileInfo;->manifest:Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/offline/download/model/OffPkgConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move-object p3, v0

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/tmc/offline/download/model/ZipFileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/offline/download/model/OffPkgConfig;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/cloud/tmc/offline/download/model/ZipFileInfo;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/offline/download/model/OffPkgConfig;ILjava/lang/Object;)Lcom/cloud/tmc/offline/download/model/ZipFileInfo;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/cloud/tmc/offline/download/model/ZipFileInfo;->zipUnCompressPath:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/cloud/tmc/offline/download/model/ZipFileInfo;->url:Ljava/lang/String;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/cloud/tmc/offline/download/model/ZipFileInfo;->manifest:Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/cloud/tmc/offline/download/model/ZipFileInfo;->copy(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/offline/download/model/OffPkgConfig;)Lcom/cloud/tmc/offline/download/model/ZipFileInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/offline/download/model/ZipFileInfo;->zipUnCompressPath:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/offline/download/model/ZipFileInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/offline/download/model/ZipFileInfo;->manifest:Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/offline/download/model/OffPkgConfig;)Lcom/cloud/tmc/offline/download/model/ZipFileInfo;
    .locals 1

    new-instance v0, Lcom/cloud/tmc/offline/download/model/ZipFileInfo;

    invoke-direct {v0, p1, p2, p3}, Lcom/cloud/tmc/offline/download/model/ZipFileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/offline/download/model/OffPkgConfig;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/cloud/tmc/offline/download/model/ZipFileInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/cloud/tmc/offline/download/model/ZipFileInfo;

    iget-object v1, p0, Lcom/cloud/tmc/offline/download/model/ZipFileInfo;->zipUnCompressPath:Ljava/lang/String;

    iget-object v3, p1, Lcom/cloud/tmc/offline/download/model/ZipFileInfo;->zipUnCompressPath:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/cloud/tmc/offline/download/model/ZipFileInfo;->url:Ljava/lang/String;

    iget-object v3, p1, Lcom/cloud/tmc/offline/download/model/ZipFileInfo;->url:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/cloud/tmc/offline/download/model/ZipFileInfo;->manifest:Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    iget-object p1, p1, Lcom/cloud/tmc/offline/download/model/ZipFileInfo;->manifest:Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getManifest()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/offline/download/model/ZipFileInfo;->manifest:Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/offline/download/model/ZipFileInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final getZipUnCompressPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/offline/download/model/ZipFileInfo;->zipUnCompressPath:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/offline/download/model/ZipFileInfo;->zipUnCompressPath:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/cloud/tmc/offline/download/model/ZipFileInfo;->url:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/cloud/tmc/offline/download/model/ZipFileInfo;->manifest:Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public final setManifest(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/offline/download/model/ZipFileInfo;->manifest:Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/offline/download/model/ZipFileInfo;->url:Ljava/lang/String;

    return-void
.end method

.method public final setZipUnCompressPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/offline/download/model/ZipFileInfo;->zipUnCompressPath:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/cloud/tmc/offline/download/model/ZipFileInfo;->zipUnCompressPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/cloud/tmc/offline/download/model/ZipFileInfo;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/cloud/tmc/offline/download/model/ZipFileInfo;->manifest:Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ZipFileInfo(zipUnCompressPath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", url="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", manifest="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
