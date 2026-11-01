.class public Lcom/transsnet/launcherlib/PalmStoreDownLoadTaskInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsnet/launcherlib/PalmStoreDownLoadTaskInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private fromPage:Ljava/lang/String;

.field private iconUrl:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private pkgName:Ljava/lang/String;

.field private progress:F

.field private status:I

.field private taskId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsnet/launcherlib/PalmStoreDownLoadTaskInfo$a;

    invoke-direct {v0}, Lcom/transsnet/launcherlib/PalmStoreDownLoadTaskInfo$a;-><init>()V

    sput-object v0, Lcom/transsnet/launcherlib/PalmStoreDownLoadTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsnet/launcherlib/PalmStoreDownLoadTaskInfo;->taskId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsnet/launcherlib/PalmStoreDownLoadTaskInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsnet/launcherlib/PalmStoreDownLoadTaskInfo;->iconUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsnet/launcherlib/PalmStoreDownLoadTaskInfo;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/transsnet/launcherlib/PalmStoreDownLoadTaskInfo;->progress:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/transsnet/launcherlib/PalmStoreDownLoadTaskInfo;->status:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFromPage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/launcherlib/PalmStoreDownLoadTaskInfo;->fromPage:Ljava/lang/String;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/launcherlib/PalmStoreDownLoadTaskInfo;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/launcherlib/PalmStoreDownLoadTaskInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/launcherlib/PalmStoreDownLoadTaskInfo;->pkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getProgress()F
    .locals 1

    iget v0, p0, Lcom/transsnet/launcherlib/PalmStoreDownLoadTaskInfo;->progress:F

    return v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/transsnet/launcherlib/PalmStoreDownLoadTaskInfo;->status:I

    return v0
.end method

.method public getTaskId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/launcherlib/PalmStoreDownLoadTaskInfo;->taskId:Ljava/lang/String;

    return-object v0
.end method

.method public setFromPage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/launcherlib/PalmStoreDownLoadTaskInfo;->fromPage:Ljava/lang/String;

    return-void
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/launcherlib/PalmStoreDownLoadTaskInfo;->iconUrl:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/launcherlib/PalmStoreDownLoadTaskInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public setPkgName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/launcherlib/PalmStoreDownLoadTaskInfo;->pkgName:Ljava/lang/String;

    return-void
.end method

.method public setProgress(F)V
    .locals 0

    iput p1, p0, Lcom/transsnet/launcherlib/PalmStoreDownLoadTaskInfo;->progress:F

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/transsnet/launcherlib/PalmStoreDownLoadTaskInfo;->status:I

    return-void
.end method

.method public setTaskId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/launcherlib/PalmStoreDownLoadTaskInfo;->taskId:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/transsnet/launcherlib/PalmStoreDownLoadTaskInfo;->taskId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsnet/launcherlib/PalmStoreDownLoadTaskInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsnet/launcherlib/PalmStoreDownLoadTaskInfo;->iconUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsnet/launcherlib/PalmStoreDownLoadTaskInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/transsnet/launcherlib/PalmStoreDownLoadTaskInfo;->progress:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/transsnet/launcherlib/PalmStoreDownLoadTaskInfo;->status:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
