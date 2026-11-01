.class public final Lcom/transsion/memberapi/LotteryDisableModule;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B/\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u000cJ\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J>\u0010\u0017\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u00c6\u0001\u00a2\u0006\u0002\u0010\u0018J\u0006\u0010\u0019\u001a\u00020\u001aJ\u0013\u0010\u001b\u001a\u00020\u00032\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u00d6\u0003J\t\u0010\u001e\u001a\u00020\u001aH\u00d6\u0001J\t\u0010\u001f\u001a\u00020\u0005H\u00d6\u0001J\u0016\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\u001aR\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010\r\u001a\u0004\u0008\u000b\u0010\u000cR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0013\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0011\u00a8\u0006%"
    }
    d2 = {
        "Lcom/transsion/memberapi/LotteryDisableModule;",
        "Landroid/os/Parcelable;",
        "enable",
        "",
        "bannerUrl",
        "",
        "firstTitle",
        "Lcom/transsion/memberapi/ThreeInOnePopupTitle;",
        "secondTitle",
        "<init>",
        "(Ljava/lang/Boolean;Ljava/lang/String;Lcom/transsion/memberapi/ThreeInOnePopupTitle;Lcom/transsion/memberapi/ThreeInOnePopupTitle;)V",
        "getEnable",
        "()Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "getBannerUrl",
        "()Ljava/lang/String;",
        "getFirstTitle",
        "()Lcom/transsion/memberapi/ThreeInOnePopupTitle;",
        "getSecondTitle",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "(Ljava/lang/Boolean;Ljava/lang/String;Lcom/transsion/memberapi/ThreeInOnePopupTitle;Lcom/transsion/memberapi/ThreeInOnePopupTitle;)Lcom/transsion/memberapi/LotteryDisableModule;",
        "describeContents",
        "",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
        "writeToParcel",
        "",
        "dest",
        "Landroid/os/Parcel;",
        "flags",
        "MemberApi_psRelease"
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
            "Lcom/transsion/memberapi/LotteryDisableModule;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final bannerUrl:Ljava/lang/String;

.field private final enable:Ljava/lang/Boolean;

.field private final firstTitle:Lcom/transsion/memberapi/ThreeInOnePopupTitle;

.field private final secondTitle:Lcom/transsion/memberapi/ThreeInOnePopupTitle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/memberapi/LotteryDisableModule$a;

    invoke-direct {v0}, Lcom/transsion/memberapi/LotteryDisableModule$a;-><init>()V

    sput-object v0, Lcom/transsion/memberapi/LotteryDisableModule;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/String;Lcom/transsion/memberapi/ThreeInOnePopupTitle;Lcom/transsion/memberapi/ThreeInOnePopupTitle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/memberapi/LotteryDisableModule;->enable:Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/transsion/memberapi/LotteryDisableModule;->bannerUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/memberapi/LotteryDisableModule;->firstTitle:Lcom/transsion/memberapi/ThreeInOnePopupTitle;

    iput-object p4, p0, Lcom/transsion/memberapi/LotteryDisableModule;->secondTitle:Lcom/transsion/memberapi/ThreeInOnePopupTitle;

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/memberapi/LotteryDisableModule;Ljava/lang/Boolean;Ljava/lang/String;Lcom/transsion/memberapi/ThreeInOnePopupTitle;Lcom/transsion/memberapi/ThreeInOnePopupTitle;ILjava/lang/Object;)Lcom/transsion/memberapi/LotteryDisableModule;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/transsion/memberapi/LotteryDisableModule;->enable:Ljava/lang/Boolean;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/transsion/memberapi/LotteryDisableModule;->bannerUrl:Ljava/lang/String;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/transsion/memberapi/LotteryDisableModule;->firstTitle:Lcom/transsion/memberapi/ThreeInOnePopupTitle;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/transsion/memberapi/LotteryDisableModule;->secondTitle:Lcom/transsion/memberapi/ThreeInOnePopupTitle;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/memberapi/LotteryDisableModule;->copy(Ljava/lang/Boolean;Ljava/lang/String;Lcom/transsion/memberapi/ThreeInOnePopupTitle;Lcom/transsion/memberapi/ThreeInOnePopupTitle;)Lcom/transsion/memberapi/LotteryDisableModule;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/transsion/memberapi/LotteryDisableModule;->enable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/memberapi/LotteryDisableModule;->bannerUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Lcom/transsion/memberapi/ThreeInOnePopupTitle;
    .locals 1

    iget-object v0, p0, Lcom/transsion/memberapi/LotteryDisableModule;->firstTitle:Lcom/transsion/memberapi/ThreeInOnePopupTitle;

    return-object v0
.end method

.method public final component4()Lcom/transsion/memberapi/ThreeInOnePopupTitle;
    .locals 1

    iget-object v0, p0, Lcom/transsion/memberapi/LotteryDisableModule;->secondTitle:Lcom/transsion/memberapi/ThreeInOnePopupTitle;

    return-object v0
.end method

.method public final copy(Ljava/lang/Boolean;Ljava/lang/String;Lcom/transsion/memberapi/ThreeInOnePopupTitle;Lcom/transsion/memberapi/ThreeInOnePopupTitle;)Lcom/transsion/memberapi/LotteryDisableModule;
    .locals 1

    new-instance v0, Lcom/transsion/memberapi/LotteryDisableModule;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/transsion/memberapi/LotteryDisableModule;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Lcom/transsion/memberapi/ThreeInOnePopupTitle;Lcom/transsion/memberapi/ThreeInOnePopupTitle;)V

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
    instance-of v1, p1, Lcom/transsion/memberapi/LotteryDisableModule;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/memberapi/LotteryDisableModule;

    iget-object v1, p0, Lcom/transsion/memberapi/LotteryDisableModule;->enable:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/transsion/memberapi/LotteryDisableModule;->enable:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsion/memberapi/LotteryDisableModule;->bannerUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/memberapi/LotteryDisableModule;->bannerUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/transsion/memberapi/LotteryDisableModule;->firstTitle:Lcom/transsion/memberapi/ThreeInOnePopupTitle;

    iget-object v3, p1, Lcom/transsion/memberapi/LotteryDisableModule;->firstTitle:Lcom/transsion/memberapi/ThreeInOnePopupTitle;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/transsion/memberapi/LotteryDisableModule;->secondTitle:Lcom/transsion/memberapi/ThreeInOnePopupTitle;

    iget-object p1, p1, Lcom/transsion/memberapi/LotteryDisableModule;->secondTitle:Lcom/transsion/memberapi/ThreeInOnePopupTitle;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getBannerUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/memberapi/LotteryDisableModule;->bannerUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getEnable()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/transsion/memberapi/LotteryDisableModule;->enable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getFirstTitle()Lcom/transsion/memberapi/ThreeInOnePopupTitle;
    .locals 1

    iget-object v0, p0, Lcom/transsion/memberapi/LotteryDisableModule;->firstTitle:Lcom/transsion/memberapi/ThreeInOnePopupTitle;

    return-object v0
.end method

.method public final getSecondTitle()Lcom/transsion/memberapi/ThreeInOnePopupTitle;
    .locals 1

    iget-object v0, p0, Lcom/transsion/memberapi/LotteryDisableModule;->secondTitle:Lcom/transsion/memberapi/ThreeInOnePopupTitle;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/transsion/memberapi/LotteryDisableModule;->enable:Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/memberapi/LotteryDisableModule;->bannerUrl:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/memberapi/LotteryDisableModule;->firstTitle:Lcom/transsion/memberapi/ThreeInOnePopupTitle;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lcom/transsion/memberapi/ThreeInOnePopupTitle;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/memberapi/LotteryDisableModule;->secondTitle:Lcom/transsion/memberapi/ThreeInOnePopupTitle;

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Lcom/transsion/memberapi/ThreeInOnePopupTitle;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/transsion/memberapi/LotteryDisableModule;->enable:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/transsion/memberapi/LotteryDisableModule;->bannerUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/memberapi/LotteryDisableModule;->firstTitle:Lcom/transsion/memberapi/ThreeInOnePopupTitle;

    iget-object v3, p0, Lcom/transsion/memberapi/LotteryDisableModule;->secondTitle:Lcom/transsion/memberapi/ThreeInOnePopupTitle;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LotteryDisableModule(enable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", bannerUrl="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", firstTitle="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", secondTitle="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const-string v0, "dest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/memberapi/LotteryDisableModule;->enable:Ljava/lang/Boolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object v0, p0, Lcom/transsion/memberapi/LotteryDisableModule;->bannerUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/memberapi/LotteryDisableModule;->firstTitle:Lcom/transsion/memberapi/ThreeInOnePopupTitle;

    if-nez v0, :cond_1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1, p2}, Lcom/transsion/memberapi/ThreeInOnePopupTitle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    iget-object v0, p0, Lcom/transsion/memberapi/LotteryDisableModule;->secondTitle:Lcom/transsion/memberapi/ThreeInOnePopupTitle;

    if-nez v0, :cond_2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1, p2}, Lcom/transsion/memberapi/ThreeInOnePopupTitle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    return-void
.end method
