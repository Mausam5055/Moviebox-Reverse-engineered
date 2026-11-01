.class public final Lcom/cloud/tmc/kernel/model/permission/ScopesV2Bean;
.super Lcom/cloud/tmc/kernel/model/BaseBean;

# interfaces
.implements Ljava/io/Serializable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/kernel/model/permission/ScopesV2Bean$CREATOR;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u0000  2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001 B\u000f\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006B\u0005\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\u001a\u001a\u00020\u001bH\u0016J\u0008\u0010\u001c\u001a\u00020\tH\u0016J\u0018\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\u001bH\u0016R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u00020\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019\u00a8\u0006!"
    }
    d2 = {
        "Lcom/cloud/tmc/kernel/model/permission/ScopesV2Bean;",
        "Lcom/cloud/tmc/kernel/model/BaseBean;",
        "Ljava/io/Serializable;",
        "Landroid/os/Parcelable;",
        "parcel",
        "Landroid/os/Parcel;",
        "(Landroid/os/Parcel;)V",
        "()V",
        "scopeName",
        "",
        "getScopeName",
        "()Ljava/lang/String;",
        "setScopeName",
        "(Ljava/lang/String;)V",
        "userAuthorization",
        "",
        "getUserAuthorization",
        "()Z",
        "setUserAuthorization",
        "(Z)V",
        "validityTime",
        "",
        "getValidityTime",
        "()J",
        "setValidityTime",
        "(J)V",
        "describeContents",
        "",
        "toString",
        "writeToParcel",
        "",
        "flags",
        "CREATOR",
        "com.cloud.tmc.kernel"
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
.field public static final CREATOR:Lcom/cloud/tmc/kernel/model/permission/ScopesV2Bean$CREATOR;


# instance fields
.field private scopeName:Ljava/lang/String;

.field private userAuthorization:Z

.field private validityTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/tmc/kernel/model/permission/ScopesV2Bean$CREATOR;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/tmc/kernel/model/permission/ScopesV2Bean$CREATOR;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/tmc/kernel/model/permission/ScopesV2Bean;->CREATOR:Lcom/cloud/tmc/kernel/model/permission/ScopesV2Bean$CREATOR;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/cloud/tmc/kernel/model/BaseBean;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cloud/tmc/kernel/model/permission/ScopesV2Bean;->userAuthorization:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cloud/tmc/kernel/model/permission/ScopesV2Bean;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cloud/tmc/kernel/model/permission/ScopesV2Bean;->validityTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/kernel/model/permission/ScopesV2Bean;->scopeName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/cloud/tmc/kernel/model/permission/ScopesV2Bean;->userAuthorization:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getScopeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/model/permission/ScopesV2Bean;->scopeName:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserAuthorization()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/kernel/model/permission/ScopesV2Bean;->userAuthorization:Z

    return v0
.end method

.method public final getValidityTime()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/tmc/kernel/model/permission/ScopesV2Bean;->validityTime:J

    return-wide v0
.end method

.method public final setScopeName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/kernel/model/permission/ScopesV2Bean;->scopeName:Ljava/lang/String;

    return-void
.end method

.method public final setUserAuthorization(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tmc/kernel/model/permission/ScopesV2Bean;->userAuthorization:Z

    return-void
.end method

.method public final setValidityTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/cloud/tmc/kernel/model/permission/ScopesV2Bean;->validityTime:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScopesV2Bean(validityTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/cloud/tmc/kernel/model/permission/ScopesV2Bean;->validityTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", scopeName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/tmc/kernel/model/permission/ScopesV2Bean;->scopeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", userAuthorization="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/cloud/tmc/kernel/model/permission/ScopesV2Bean;->userAuthorization:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/cloud/tmc/kernel/model/permission/ScopesV2Bean;->validityTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/cloud/tmc/kernel/model/permission/ScopesV2Bean;->scopeName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/cloud/tmc/kernel/model/permission/ScopesV2Bean;->userAuthorization:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
