.class public Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$DialogJson;,
        Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$OfflineJson;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private dialogJson:Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$DialogJson;

.field private dialogType:Ljava/lang/Integer;

.field private formPath:Ljava/lang/String;

.field private offline:Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$OfflineJson;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$1;

    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$1;-><init>()V

    sput-object v0, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;->CREATOR:Landroid/os/Parcelable$Creator;

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

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;->dialogType:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;->dialogType:Ljava/lang/Integer;

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;->formPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDialogJson()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$DialogJson;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;->dialogJson:Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$DialogJson;

    return-object v0
.end method

.method public getDialogType()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;->dialogType:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getFormPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;->formPath:Ljava/lang/String;

    return-object v0
.end method

.method public getOffline()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$OfflineJson;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;->offline:Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$OfflineJson;

    return-object v0
.end method

.method public setDialogJson(Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$DialogJson;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;->dialogJson:Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$DialogJson;

    return-void
.end method

.method public setDialogType(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;->dialogType:Ljava/lang/Integer;

    return-void
.end method

.method public setFormPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;->formPath:Ljava/lang/String;

    return-void
.end method

.method public setOffline(Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$OfflineJson;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;->offline:Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$OfflineJson;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;->dialogType:Ljava/lang/Integer;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;->dialogType:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;->formPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
