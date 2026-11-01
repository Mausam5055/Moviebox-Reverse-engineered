.class public Lcom/transsnet/launcherlib/CommonAppInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsnet/launcherlib/CommonAppInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private category:I

.field private descVersion:I

.field private description:Ljava/lang/String;

.field private downloadUrl:Ljava/lang/String;

.field private iconUrl:Ljava/lang/String;

.field private pkgName:Ljava/lang/String;

.field private size:J

.field private starLevel:Ljava/lang/String;

.field private subDescription:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private versionCode:I

.field private versionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsnet/launcherlib/CommonAppInfo$a;

    invoke-direct {v0}, Lcom/transsnet/launcherlib/CommonAppInfo$a;-><init>()V

    sput-object v0, Lcom/transsnet/launcherlib/CommonAppInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsnet/launcherlib/CommonAppInfo;->title:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsnet/launcherlib/CommonAppInfo;->descVersion:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsnet/launcherlib/CommonAppInfo;->description:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsnet/launcherlib/CommonAppInfo;->subDescription:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsnet/launcherlib/CommonAppInfo;->iconUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsnet/launcherlib/CommonAppInfo;->category:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsnet/launcherlib/CommonAppInfo;->downloadUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsnet/launcherlib/CommonAppInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsnet/launcherlib/CommonAppInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsnet/launcherlib/CommonAppInfo;->versionCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsnet/launcherlib/CommonAppInfo;->size:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsnet/launcherlib/CommonAppInfo;->starLevel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCategory()I
    .locals 1

    iget v0, p0, Lcom/transsnet/launcherlib/CommonAppInfo;->category:I

    return v0
.end method

.method public getDescVersion()I
    .locals 1

    iget v0, p0, Lcom/transsnet/launcherlib/CommonAppInfo;->descVersion:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/launcherlib/CommonAppInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/launcherlib/CommonAppInfo;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/launcherlib/CommonAppInfo;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/launcherlib/CommonAppInfo;->pkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    iget-wide v0, p0, Lcom/transsnet/launcherlib/CommonAppInfo;->size:J

    return-wide v0
.end method

.method public getStarLevel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/launcherlib/CommonAppInfo;->starLevel:Ljava/lang/String;

    return-object v0
.end method

.method public getSubDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/launcherlib/CommonAppInfo;->subDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/launcherlib/CommonAppInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/transsnet/launcherlib/CommonAppInfo;->versionCode:I

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/launcherlib/CommonAppInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public setCategory(I)V
    .locals 0

    iput p1, p0, Lcom/transsnet/launcherlib/CommonAppInfo;->category:I

    return-void
.end method

.method public setDescVersion(I)V
    .locals 0

    iput p1, p0, Lcom/transsnet/launcherlib/CommonAppInfo;->descVersion:I

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/launcherlib/CommonAppInfo;->description:Ljava/lang/String;

    return-void
.end method

.method public setDownloadUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/launcherlib/CommonAppInfo;->downloadUrl:Ljava/lang/String;

    return-void
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/launcherlib/CommonAppInfo;->iconUrl:Ljava/lang/String;

    return-void
.end method

.method public setPkgName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/launcherlib/CommonAppInfo;->pkgName:Ljava/lang/String;

    return-void
.end method

.method public setSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsnet/launcherlib/CommonAppInfo;->size:J

    return-void
.end method

.method public setStarLevel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/launcherlib/CommonAppInfo;->starLevel:Ljava/lang/String;

    return-void
.end method

.method public setSubDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/launcherlib/CommonAppInfo;->subDescription:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/launcherlib/CommonAppInfo;->title:Ljava/lang/String;

    return-void
.end method

.method public setVersionCode(I)V
    .locals 0

    iput p1, p0, Lcom/transsnet/launcherlib/CommonAppInfo;->versionCode:I

    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/launcherlib/CommonAppInfo;->versionName:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Lcom/transsnet/launcherlib/CommonAppInfo;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/transsnet/launcherlib/CommonAppInfo;->descVersion:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/transsnet/launcherlib/CommonAppInfo;->description:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsnet/launcherlib/CommonAppInfo;->subDescription:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsnet/launcherlib/CommonAppInfo;->iconUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/transsnet/launcherlib/CommonAppInfo;->category:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/transsnet/launcherlib/CommonAppInfo;->downloadUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsnet/launcherlib/CommonAppInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsnet/launcherlib/CommonAppInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/transsnet/launcherlib/CommonAppInfo;->versionCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/transsnet/launcherlib/CommonAppInfo;->size:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/transsnet/launcherlib/CommonAppInfo;->starLevel:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
