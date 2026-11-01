.class public final Lcom/wecloud/load/lib/SoDownloadRequest;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B!\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0006\u0010\r\u001a\u00020\u000eJ\u000f\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u00c6\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J%\u0010\u0011\u001a\u00020\u00002\u000e\u0008\u0002\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u00c6\u0001J\u0006\u0010\u0012\u001a\u00020\u0013J\u0013\u0010\u0014\u001a\u00020\u000e2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u00d6\u0003J\t\u0010\u0017\u001a\u00020\u0013H\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001J\u0016\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u0013R\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/wecloud/load/lib/SoDownloadRequest;",
        "Landroid/os/Parcelable;",
        "soZipList",
        "",
        "Lcom/wecloud/load/lib/bean/SoZipInfo;",
        "controlConfig",
        "Lcom/wecloud/load/lib/bean/SoLoadControlConfig;",
        "<init>",
        "(Ljava/util/List;Lcom/wecloud/load/lib/bean/SoLoadControlConfig;)V",
        "getSoZipList",
        "()Ljava/util/List;",
        "getControlConfig",
        "()Lcom/wecloud/load/lib/bean/SoLoadControlConfig;",
        "isValid",
        "",
        "component1",
        "component2",
        "copy",
        "describeContents",
        "",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
        "",
        "writeToParcel",
        "",
        "dest",
        "Landroid/os/Parcel;",
        "flags",
        "lib_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/wecloud/load/lib/SoDownloadRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final controlConfig:Lcom/wecloud/load/lib/bean/SoLoadControlConfig;

.field private final soZipList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wecloud/load/lib/bean/SoZipInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/wecloud/load/lib/SoDownloadRequest$a;

    invoke-direct {v0}, Lcom/wecloud/load/lib/SoDownloadRequest$a;-><init>()V

    sput-object v0, Lcom/wecloud/load/lib/SoDownloadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/wecloud/load/lib/bean/SoLoadControlConfig;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wecloud/load/lib/bean/SoZipInfo;",
            ">;",
            "Lcom/wecloud/load/lib/bean/SoLoadControlConfig;",
            ")V"
        }
    .end annotation

    const-string v0, "soZipList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wecloud/load/lib/SoDownloadRequest;->soZipList:Ljava/util/List;

    iput-object p2, p0, Lcom/wecloud/load/lib/SoDownloadRequest;->controlConfig:Lcom/wecloud/load/lib/bean/SoLoadControlConfig;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Lcom/wecloud/load/lib/bean/SoLoadControlConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/wecloud/load/lib/SoDownloadRequest;-><init>(Ljava/util/List;Lcom/wecloud/load/lib/bean/SoLoadControlConfig;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/wecloud/load/lib/SoDownloadRequest;Ljava/util/List;Lcom/wecloud/load/lib/bean/SoLoadControlConfig;ILjava/lang/Object;)Lcom/wecloud/load/lib/SoDownloadRequest;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/wecloud/load/lib/SoDownloadRequest;->soZipList:Ljava/util/List;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/wecloud/load/lib/SoDownloadRequest;->controlConfig:Lcom/wecloud/load/lib/bean/SoLoadControlConfig;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/wecloud/load/lib/SoDownloadRequest;->copy(Ljava/util/List;Lcom/wecloud/load/lib/bean/SoLoadControlConfig;)Lcom/wecloud/load/lib/SoDownloadRequest;

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
            "Lcom/wecloud/load/lib/bean/SoZipInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/wecloud/load/lib/SoDownloadRequest;->soZipList:Ljava/util/List;

    return-object v0
.end method

.method public final component2()Lcom/wecloud/load/lib/bean/SoLoadControlConfig;
    .locals 1

    iget-object v0, p0, Lcom/wecloud/load/lib/SoDownloadRequest;->controlConfig:Lcom/wecloud/load/lib/bean/SoLoadControlConfig;

    return-object v0
.end method

.method public final copy(Ljava/util/List;Lcom/wecloud/load/lib/bean/SoLoadControlConfig;)Lcom/wecloud/load/lib/SoDownloadRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wecloud/load/lib/bean/SoZipInfo;",
            ">;",
            "Lcom/wecloud/load/lib/bean/SoLoadControlConfig;",
            ")",
            "Lcom/wecloud/load/lib/SoDownloadRequest;"
        }
    .end annotation

    const-string v0, "soZipList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/wecloud/load/lib/SoDownloadRequest;

    invoke-direct {v0, p1, p2}, Lcom/wecloud/load/lib/SoDownloadRequest;-><init>(Ljava/util/List;Lcom/wecloud/load/lib/bean/SoLoadControlConfig;)V

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/wecloud/load/lib/SoDownloadRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/wecloud/load/lib/SoDownloadRequest;

    iget-object v1, p0, Lcom/wecloud/load/lib/SoDownloadRequest;->soZipList:Ljava/util/List;

    iget-object v3, p1, Lcom/wecloud/load/lib/SoDownloadRequest;->soZipList:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/wecloud/load/lib/SoDownloadRequest;->controlConfig:Lcom/wecloud/load/lib/bean/SoLoadControlConfig;

    iget-object p1, p1, Lcom/wecloud/load/lib/SoDownloadRequest;->controlConfig:Lcom/wecloud/load/lib/bean/SoLoadControlConfig;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getControlConfig()Lcom/wecloud/load/lib/bean/SoLoadControlConfig;
    .locals 1

    iget-object v0, p0, Lcom/wecloud/load/lib/SoDownloadRequest;->controlConfig:Lcom/wecloud/load/lib/bean/SoLoadControlConfig;

    return-object v0
.end method

.method public final getSoZipList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wecloud/load/lib/bean/SoZipInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/wecloud/load/lib/SoDownloadRequest;->soZipList:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/wecloud/load/lib/SoDownloadRequest;->soZipList:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/wecloud/load/lib/SoDownloadRequest;->controlConfig:Lcom/wecloud/load/lib/bean/SoLoadControlConfig;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/wecloud/load/lib/bean/SoLoadControlConfig;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final isValid()Z
    .locals 5

    iget-object v0, p0, Lcom/wecloud/load/lib/SoDownloadRequest;->soZipList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/wecloud/load/lib/SoDownloadRequest;->soZipList:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    instance-of v2, v0, Ljava/util/Collection;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wecloud/load/lib/bean/SoZipInfo;

    invoke-virtual {v2}, Lcom/wecloud/load/lib/bean/SoZipInfo;->getZip_url()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v2}, Lcom/wecloud/load/lib/bean/SoZipInfo;->getSo_names()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_4
    :goto_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/wecloud/load/lib/SoDownloadRequest;->soZipList:Ljava/util/List;

    iget-object v1, p0, Lcom/wecloud/load/lib/SoDownloadRequest;->controlConfig:Lcom/wecloud/load/lib/bean/SoLoadControlConfig;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SoDownloadRequest(soZipList="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", controlConfig="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string v0, "dest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/wecloud/load/lib/SoDownloadRequest;->soZipList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wecloud/load/lib/bean/SoZipInfo;

    invoke-virtual {v1, p1, p2}, Lcom/wecloud/load/lib/bean/SoZipInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/wecloud/load/lib/SoDownloadRequest;->controlConfig:Lcom/wecloud/load/lib/bean/SoLoadControlConfig;

    if-nez v0, :cond_1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1, p2}, Lcom/wecloud/load/lib/bean/SoLoadControlConfig;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    return-void
.end method
