.class public final Lcom/transsion/fission/FissionConfig;
.super Lcom/transsion/fission/WebViewCacheConfigData;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0016\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u00012\u00020\u0002B\'\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\t\u0010\u0017\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0008H\u00c6\u0003J1\u0010\u001b\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u00c6\u0001J\u0006\u0010\u001c\u001a\u00020\u0004J\u0013\u0010\u001d\u001a\u00020\u00082\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u00d6\u0003J\t\u0010 \u001a\u00020\u0004H\u00d6\u0001J\t\u0010!\u001a\u00020\"H\u00d6\u0001J\u0016\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020\u0004R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u0005\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u000c\"\u0004\u0008\u0010\u0010\u000eR\u001a\u0010\u0006\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u000c\"\u0004\u0008\u0012\u0010\u000eR\u001a\u0010\u0007\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016\u00a8\u0006("
    }
    d2 = {
        "Lcom/transsion/fission/FissionConfig;",
        "Lcom/transsion/fission/WebViewCacheConfigData;",
        "Landroid/os/Parcelable;",
        "inviteNum",
        "",
        "moneyNum",
        "intervalDays",
        "inviteCodeReg",
        "",
        "<init>",
        "(IIIZ)V",
        "getInviteNum",
        "()I",
        "setInviteNum",
        "(I)V",
        "getMoneyNum",
        "setMoneyNum",
        "getIntervalDays",
        "setIntervalDays",
        "getInviteCodeReg",
        "()Z",
        "setInviteCodeReg",
        "(Z)V",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "describeContents",
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
        "Fission_psRelease"
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
            "Lcom/transsion/fission/FissionConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private intervalDays:I

.field private inviteCodeReg:Z

.field private inviteNum:I

.field private moneyNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/fission/FissionConfig$a;

    invoke-direct {v0}, Lcom/transsion/fission/FissionConfig$a;-><init>()V

    sput-object v0, Lcom/transsion/fission/FissionConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIZ)V
    .locals 6

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/transsion/fission/WebViewCacheConfigData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p1, p0, Lcom/transsion/fission/FissionConfig;->inviteNum:I

    iput p2, p0, Lcom/transsion/fission/FissionConfig;->moneyNum:I

    iput p3, p0, Lcom/transsion/fission/FissionConfig;->intervalDays:I

    iput-boolean p4, p0, Lcom/transsion/fission/FissionConfig;->inviteCodeReg:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/fission/FissionConfig;IIIZILjava/lang/Object;)Lcom/transsion/fission/FissionConfig;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lcom/transsion/fission/FissionConfig;->inviteNum:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lcom/transsion/fission/FissionConfig;->moneyNum:I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Lcom/transsion/fission/FissionConfig;->intervalDays:I

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-boolean p4, p0, Lcom/transsion/fission/FissionConfig;->inviteCodeReg:Z

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/fission/FissionConfig;->copy(IIIZ)Lcom/transsion/fission/FissionConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/transsion/fission/FissionConfig;->inviteNum:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/transsion/fission/FissionConfig;->moneyNum:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/transsion/fission/FissionConfig;->intervalDays:I

    return v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/fission/FissionConfig;->inviteCodeReg:Z

    return v0
.end method

.method public final copy(IIIZ)Lcom/transsion/fission/FissionConfig;
    .locals 1

    new-instance v0, Lcom/transsion/fission/FissionConfig;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/transsion/fission/FissionConfig;-><init>(IIIZ)V

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
    instance-of v1, p1, Lcom/transsion/fission/FissionConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/fission/FissionConfig;

    iget v1, p0, Lcom/transsion/fission/FissionConfig;->inviteNum:I

    iget v3, p1, Lcom/transsion/fission/FissionConfig;->inviteNum:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/transsion/fission/FissionConfig;->moneyNum:I

    iget v3, p1, Lcom/transsion/fission/FissionConfig;->moneyNum:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/transsion/fission/FissionConfig;->intervalDays:I

    iget v3, p1, Lcom/transsion/fission/FissionConfig;->intervalDays:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/transsion/fission/FissionConfig;->inviteCodeReg:Z

    iget-boolean p1, p1, Lcom/transsion/fission/FissionConfig;->inviteCodeReg:Z

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getIntervalDays()I
    .locals 1

    iget v0, p0, Lcom/transsion/fission/FissionConfig;->intervalDays:I

    return v0
.end method

.method public final getInviteCodeReg()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/fission/FissionConfig;->inviteCodeReg:Z

    return v0
.end method

.method public final getInviteNum()I
    .locals 1

    iget v0, p0, Lcom/transsion/fission/FissionConfig;->inviteNum:I

    return v0
.end method

.method public final getMoneyNum()I
    .locals 1

    iget v0, p0, Lcom/transsion/fission/FissionConfig;->moneyNum:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/transsion/fission/FissionConfig;->inviteNum:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/fission/FissionConfig;->moneyNum:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/fission/FissionConfig;->intervalDays:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/transsion/fission/FissionConfig;->inviteCodeReg:Z

    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setIntervalDays(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/fission/FissionConfig;->intervalDays:I

    return-void
.end method

.method public final setInviteCodeReg(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/fission/FissionConfig;->inviteCodeReg:Z

    return-void
.end method

.method public final setInviteNum(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/fission/FissionConfig;->inviteNum:I

    return-void
.end method

.method public final setMoneyNum(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/fission/FissionConfig;->moneyNum:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lcom/transsion/fission/FissionConfig;->inviteNum:I

    iget v1, p0, Lcom/transsion/fission/FissionConfig;->moneyNum:I

    iget v2, p0, Lcom/transsion/fission/FissionConfig;->intervalDays:I

    iget-boolean v3, p0, Lcom/transsion/fission/FissionConfig;->inviteCodeReg:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FissionConfig(inviteNum="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", moneyNum="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", intervalDays="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", inviteCodeReg="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "dest"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p0, Lcom/transsion/fission/FissionConfig;->inviteNum:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/transsion/fission/FissionConfig;->moneyNum:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/transsion/fission/FissionConfig;->intervalDays:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/transsion/fission/FissionConfig;->inviteCodeReg:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
