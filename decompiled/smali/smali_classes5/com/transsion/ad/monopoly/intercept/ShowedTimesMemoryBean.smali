.class public final Lcom/transsion/ad/monopoly/intercept/ShowedTimesMemoryBean;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u00012\u00020\u0002B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\t\u0010\u0011\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0006H\u00c6\u0003J\u001d\u0010\u0013\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006H\u00c6\u0001J\u0006\u0010\u0014\u001a\u00020\u0004J\u0013\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u00d6\u0003J\t\u0010\u0019\u001a\u00020\u0004H\u00d6\u0001J\t\u0010\u001a\u001a\u00020\u0006H\u00d6\u0001J\u0016\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u0004R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006 "
    }
    d2 = {
        "Lcom/transsion/ad/monopoly/intercept/ShowedTimesMemoryBean;",
        "Landroid/os/Parcelable;",
        "Ljava/io/Serializable;",
        "showedTimes",
        "",
        "date",
        "",
        "<init>",
        "(ILjava/lang/String;)V",
        "getShowedTimes",
        "()I",
        "setShowedTimes",
        "(I)V",
        "getDate",
        "()Ljava/lang/String;",
        "setDate",
        "(Ljava/lang/String;)V",
        "component1",
        "component2",
        "copy",
        "describeContents",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "writeToParcel",
        "",
        "dest",
        "Landroid/os/Parcel;",
        "flags",
        "lib_ad_gpRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/ad/monopoly/intercept/ShowedTimesMemoryBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private date:Ljava/lang/String;

.field private showedTimes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/ad/monopoly/intercept/ShowedTimesMemoryBean$a;

    invoke-direct {v0}, Lcom/transsion/ad/monopoly/intercept/ShowedTimesMemoryBean$a;-><init>()V

    sput-object v0, Lcom/transsion/ad/monopoly/intercept/ShowedTimesMemoryBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const-string v0, "date"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/transsion/ad/monopoly/intercept/ShowedTimesMemoryBean;->showedTimes:I

    iput-object p2, p0, Lcom/transsion/ad/monopoly/intercept/ShowedTimesMemoryBean;->date:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/ad/monopoly/intercept/ShowedTimesMemoryBean;ILjava/lang/String;ILjava/lang/Object;)Lcom/transsion/ad/monopoly/intercept/ShowedTimesMemoryBean;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lcom/transsion/ad/monopoly/intercept/ShowedTimesMemoryBean;->showedTimes:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/transsion/ad/monopoly/intercept/ShowedTimesMemoryBean;->date:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/monopoly/intercept/ShowedTimesMemoryBean;->copy(ILjava/lang/String;)Lcom/transsion/ad/monopoly/intercept/ShowedTimesMemoryBean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/transsion/ad/monopoly/intercept/ShowedTimesMemoryBean;->showedTimes:I

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/monopoly/intercept/ShowedTimesMemoryBean;->date:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(ILjava/lang/String;)Lcom/transsion/ad/monopoly/intercept/ShowedTimesMemoryBean;
    .locals 1

    const-string v0, "date"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/ad/monopoly/intercept/ShowedTimesMemoryBean;

    invoke-direct {v0, p1, p2}, Lcom/transsion/ad/monopoly/intercept/ShowedTimesMemoryBean;-><init>(ILjava/lang/String;)V

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
    instance-of v1, p1, Lcom/transsion/ad/monopoly/intercept/ShowedTimesMemoryBean;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/ad/monopoly/intercept/ShowedTimesMemoryBean;

    iget v1, p0, Lcom/transsion/ad/monopoly/intercept/ShowedTimesMemoryBean;->showedTimes:I

    iget v3, p1, Lcom/transsion/ad/monopoly/intercept/ShowedTimesMemoryBean;->showedTimes:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsion/ad/monopoly/intercept/ShowedTimesMemoryBean;->date:Ljava/lang/String;

    iget-object p1, p1, Lcom/transsion/ad/monopoly/intercept/ShowedTimesMemoryBean;->date:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/monopoly/intercept/ShowedTimesMemoryBean;->date:Ljava/lang/String;

    return-object v0
.end method

.method public final getShowedTimes()I
    .locals 1

    iget v0, p0, Lcom/transsion/ad/monopoly/intercept/ShowedTimesMemoryBean;->showedTimes:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/transsion/ad/monopoly/intercept/ShowedTimesMemoryBean;->showedTimes:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/ad/monopoly/intercept/ShowedTimesMemoryBean;->date:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setDate(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/ad/monopoly/intercept/ShowedTimesMemoryBean;->date:Ljava/lang/String;

    return-void
.end method

.method public final setShowedTimes(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/ad/monopoly/intercept/ShowedTimesMemoryBean;->showedTimes:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/transsion/ad/monopoly/intercept/ShowedTimesMemoryBean;->showedTimes:I

    iget-object v1, p0, Lcom/transsion/ad/monopoly/intercept/ShowedTimesMemoryBean;->date:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ShowedTimesMemoryBean(showedTimes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", date="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "dest"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p0, Lcom/transsion/ad/monopoly/intercept/ShowedTimesMemoryBean;->showedTimes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/transsion/ad/monopoly/intercept/ShowedTimesMemoryBean;->date:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
