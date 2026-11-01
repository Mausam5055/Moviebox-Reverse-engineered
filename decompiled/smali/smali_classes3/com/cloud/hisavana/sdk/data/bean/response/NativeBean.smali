.class public Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$TitleDTO;,
        Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$DescriptDTO;,
        Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$ButtonDTO;,
        Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$LogoDTO;,
        Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$MainImagesDTO;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private button:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$ButtonDTO;

.field private descript:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$DescriptDTO;

.field private logo:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$LogoDTO;

.field private mainImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$MainImagesDTO;",
            ">;"
        }
    .end annotation
.end field

.field private rating:Ljava/lang/Integer;

.field private title:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$TitleDTO;

.field private version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$1;

    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$1;-><init>()V

    sput-object v0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->CREATOR:Landroid/os/Parcelable$Creator;

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

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->version:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->rating:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->rating:Ljava/lang/Integer;

    :goto_0
    const-class v0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$TitleDTO;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$TitleDTO;

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->title:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$TitleDTO;

    const-class v0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$DescriptDTO;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$DescriptDTO;

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->descript:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$DescriptDTO;

    const-class v0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$ButtonDTO;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$ButtonDTO;

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->button:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$ButtonDTO;

    const-class v0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$LogoDTO;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$LogoDTO;

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->logo:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$LogoDTO;

    sget-object v0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$MainImagesDTO;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->mainImages:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getButton()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$ButtonDTO;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->button:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$ButtonDTO;

    return-object v0
.end method

.method public getButtonTxt(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->button:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$ButtonDTO;

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$ButtonDTO;->getText()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_1
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/cloud/hisavana/sdk/R$string;->install:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/cloud/hisavana/sdk/R$string;->open:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDescriptionTxt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->descript:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$DescriptDTO;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$DescriptDTO;->getText()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getLogo()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$LogoDTO;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->logo:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$LogoDTO;

    return-object v0
.end method

.method public getLogoUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->logo:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$LogoDTO;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$LogoDTO;->getUrl()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getMainImages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$MainImagesDTO;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->mainImages:Ljava/util/List;

    return-object v0
.end method

.method public getRating()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->rating:Ljava/lang/Integer;

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

.method public getTitleTxt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->title:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$TitleDTO;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$TitleDTO;->getText()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->version:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public setButton(Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$ButtonDTO;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->button:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$ButtonDTO;

    return-void
.end method

.method public setDescript(Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$DescriptDTO;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->descript:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$DescriptDTO;

    return-void
.end method

.method public setLogo(Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$LogoDTO;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->logo:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$LogoDTO;

    return-void
.end method

.method public setMainImages(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$MainImagesDTO;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->mainImages:Ljava/util/List;

    return-void
.end method

.method public setRating(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->rating:Ljava/lang/Integer;

    return-void
.end method

.method public setTitle(Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$TitleDTO;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->title:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$TitleDTO;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->version:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NativeBean{version=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", rating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->rating:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->title:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$TitleDTO;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", descript="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->descript:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$DescriptDTO;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", button="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->button:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$ButtonDTO;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", logo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->logo:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$LogoDTO;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mainImages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->mainImages:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->version:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->rating:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->rating:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->title:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$TitleDTO;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->descript:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$DescriptDTO;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->button:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$ButtonDTO;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->logo:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$LogoDTO;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->mainImages:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
