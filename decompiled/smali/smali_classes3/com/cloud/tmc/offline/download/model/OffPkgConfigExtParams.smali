.class public final Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;
.super Lcom/cloud/tmc/kernel/model/BaseBean;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams$CREATOR;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u0000 \'2\u00020\u00012\u00020\u0002:\u0001\'B\u000f\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005B?\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007\u0012\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0007\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u000fJ\u0011\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007H\u00c6\u0003J\u0011\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0007H\u00c6\u0003J\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u000cH\u00c6\u0003\u00a2\u0006\u0002\u0010\u0014J\u0011\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0007H\u00c6\u0003JP\u0010\u001b\u001a\u00020\u00002\u0010\u0008\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u00072\u0010\u0008\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u00072\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0010\u0008\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0007H\u00c6\u0001\u00a2\u0006\u0002\u0010\u001cJ\u0008\u0010\u001d\u001a\u00020\u001eH\u0016J\u0013\u0010\u001f\u001a\u00020\u000c2\u0008\u0010 \u001a\u0004\u0018\u00010!H\u00d6\u0003J\t\u0010\"\u001a\u00020\u001eH\u00d6\u0001J\t\u0010#\u001a\u00020\u0008H\u00d6\u0001J\u0018\u0010$\u001a\u00020%2\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010&\u001a\u00020\u001eH\u0016R\u0019\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0019\u0010\t\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0011R\u0015\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\n\n\u0002\u0010\u0015\u001a\u0004\u0008\u0013\u0010\u0014R\u0019\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0011\u00a8\u0006("
    }
    d2 = {
        "Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;",
        "Lcom/cloud/tmc/kernel/model/BaseBean;",
        "Landroid/os/Parcelable;",
        "parcel",
        "Landroid/os/Parcel;",
        "(Landroid/os/Parcel;)V",
        "authorizedMiniApp",
        "",
        "",
        "packageInclude",
        "Lcom/cloud/tmc/offline/download/model/PackageInclude;",
        "verifyServerFile",
        "",
        "verifyServerFileMetadata",
        "Lcom/cloud/tmc/offline/download/model/VerifyServerFileMetadata;",
        "(Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;)V",
        "getAuthorizedMiniApp",
        "()Ljava/util/List;",
        "getPackageInclude",
        "getVerifyServerFile",
        "()Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "getVerifyServerFileMetadata",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "(Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;)Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;",
        "describeContents",
        "",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
        "writeToParcel",
        "",
        "flags",
        "CREATOR",
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


# static fields
.field public static final CREATOR:Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams$CREATOR;


# instance fields
.field private final authorizedMiniApp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final packageInclude:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloud/tmc/offline/download/model/PackageInclude;",
            ">;"
        }
    .end annotation
.end field

.field private final verifyServerFile:Ljava/lang/Boolean;

.field private final verifyServerFileMetadata:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloud/tmc/offline/download/model/VerifyServerFileMetadata;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams$CREATOR;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams$CREATOR;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;->CREATOR:Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams$CREATOR;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Lcom/cloud/tmc/offline/download/model/PackageInclude;->CREATOR:Lcom/cloud/tmc/offline/download/model/PackageInclude$CREATOR;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    check-cast v2, Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lcom/cloud/tmc/offline/download/model/VerifyServerFileMetadata;->CREATOR:Lcom/cloud/tmc/offline/download/model/VerifyServerFileMetadata$CREATOR;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/offline/download/model/PackageInclude;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/offline/download/model/VerifyServerFileMetadata;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/cloud/tmc/kernel/model/BaseBean;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;->authorizedMiniApp:Ljava/util/List;

    iput-object p2, p0, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;->packageInclude:Ljava/util/List;

    iput-object p3, p0, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;->verifyServerFile:Ljava/lang/Boolean;

    iput-object p4, p0, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;->verifyServerFileMetadata:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;ILjava/lang/Object;)Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;->authorizedMiniApp:Ljava/util/List;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;->packageInclude:Ljava/util/List;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;->verifyServerFile:Ljava/lang/Boolean;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;->verifyServerFileMetadata:Ljava/util/List;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;->copy(Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;)Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;

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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;->authorizedMiniApp:Ljava/util/List;

    return-object v0
.end method

.method public final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/offline/download/model/PackageInclude;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;->packageInclude:Ljava/util/List;

    return-object v0
.end method

.method public final component3()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;->verifyServerFile:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component4()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/offline/download/model/VerifyServerFileMetadata;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;->verifyServerFileMetadata:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;)Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/offline/download/model/PackageInclude;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/offline/download/model/VerifyServerFileMetadata;",
            ">;)",
            "Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;"
        }
    .end annotation

    new-instance v0, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;)V

    return-object v0
.end method

.method public describeContents()I
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
    instance-of v1, p1, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;

    iget-object v1, p0, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;->authorizedMiniApp:Ljava/util/List;

    iget-object v3, p1, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;->authorizedMiniApp:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;->packageInclude:Ljava/util/List;

    iget-object v3, p1, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;->packageInclude:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;->verifyServerFile:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;->verifyServerFile:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;->verifyServerFileMetadata:Ljava/util/List;

    iget-object p1, p1, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;->verifyServerFileMetadata:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getAuthorizedMiniApp()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;->authorizedMiniApp:Ljava/util/List;

    return-object v0
.end method

.method public final getPackageInclude()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/offline/download/model/PackageInclude;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;->packageInclude:Ljava/util/List;

    return-object v0
.end method

.method public final getVerifyServerFile()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;->verifyServerFile:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getVerifyServerFileMetadata()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/offline/download/model/VerifyServerFileMetadata;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;->verifyServerFileMetadata:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;->authorizedMiniApp:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;->packageInclude:Ljava/util/List;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;->verifyServerFile:Ljava/lang/Boolean;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;->verifyServerFileMetadata:Ljava/util/List;

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;->authorizedMiniApp:Ljava/util/List;

    iget-object v1, p0, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;->packageInclude:Ljava/util/List;

    iget-object v2, p0, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;->verifyServerFile:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;->verifyServerFileMetadata:Ljava/util/List;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OffPkgConfigExtParams(authorizedMiniApp="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", packageInclude="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", verifyServerFile="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", verifyServerFileMetadata="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;->authorizedMiniApp:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object p2, p0, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;->packageInclude:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object p2, p0, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;->verifyServerFile:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;->verifyServerFileMetadata:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
