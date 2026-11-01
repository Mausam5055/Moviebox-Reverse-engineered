.class public final Lcom/transsion/bean/HomePopupEntity;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0017\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\t\u0010\u0019\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0008H\u00c6\u0003J1\u0010\u001d\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u00c6\u0001J\u0006\u0010\u001e\u001a\u00020\u0006J\u0013\u0010\u001f\u001a\u00020 2\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u00d6\u0003J\t\u0010#\u001a\u00020\u0006H\u00d6\u0001J\t\u0010$\u001a\u00020%H\u00d6\u0001J\u0016\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\u0006R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u000c\"\u0004\u0008\u0010\u0010\u000eR\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0007\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018\u00a8\u0006+"
    }
    d2 = {
        "Lcom/transsion/bean/HomePopupEntity;",
        "Landroid/os/Parcelable;",
        "popup",
        "Lcom/transsion/bean/HomePopupInfo;",
        "widget",
        "requestInterval",
        "",
        "ts",
        "",
        "<init>",
        "(Lcom/transsion/bean/HomePopupInfo;Lcom/transsion/bean/HomePopupInfo;IJ)V",
        "getPopup",
        "()Lcom/transsion/bean/HomePopupInfo;",
        "setPopup",
        "(Lcom/transsion/bean/HomePopupInfo;)V",
        "getWidget",
        "setWidget",
        "getRequestInterval",
        "()I",
        "setRequestInterval",
        "(I)V",
        "getTs",
        "()J",
        "setTs",
        "(J)V",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "describeContents",
        "equals",
        "",
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
        "CommercializationApi_psRelease"
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
            "Lcom/transsion/bean/HomePopupEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private popup:Lcom/transsion/bean/HomePopupInfo;

.field private requestInterval:I

.field private ts:J

.field private widget:Lcom/transsion/bean/HomePopupInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/bean/HomePopupEntity$a;

    invoke-direct {v0}, Lcom/transsion/bean/HomePopupEntity$a;-><init>()V

    sput-object v0, Lcom/transsion/bean/HomePopupEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/bean/HomePopupInfo;Lcom/transsion/bean/HomePopupInfo;IJ)V
    .locals 1

    const-string v0, "popup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "widget"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/bean/HomePopupEntity;->popup:Lcom/transsion/bean/HomePopupInfo;

    iput-object p2, p0, Lcom/transsion/bean/HomePopupEntity;->widget:Lcom/transsion/bean/HomePopupInfo;

    iput p3, p0, Lcom/transsion/bean/HomePopupEntity;->requestInterval:I

    iput-wide p4, p0, Lcom/transsion/bean/HomePopupEntity;->ts:J

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/bean/HomePopupEntity;Lcom/transsion/bean/HomePopupInfo;Lcom/transsion/bean/HomePopupInfo;IJILjava/lang/Object;)Lcom/transsion/bean/HomePopupEntity;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/transsion/bean/HomePopupEntity;->popup:Lcom/transsion/bean/HomePopupInfo;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/transsion/bean/HomePopupEntity;->widget:Lcom/transsion/bean/HomePopupInfo;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget p3, p0, Lcom/transsion/bean/HomePopupEntity;->requestInterval:I

    :cond_2
    move v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-wide p4, p0, Lcom/transsion/bean/HomePopupEntity;->ts:J

    :cond_3
    move-wide v1, p4

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move p5, v0

    move-wide p6, v1

    invoke-virtual/range {p2 .. p7}, Lcom/transsion/bean/HomePopupEntity;->copy(Lcom/transsion/bean/HomePopupInfo;Lcom/transsion/bean/HomePopupInfo;IJ)Lcom/transsion/bean/HomePopupEntity;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/transsion/bean/HomePopupInfo;
    .locals 1

    iget-object v0, p0, Lcom/transsion/bean/HomePopupEntity;->popup:Lcom/transsion/bean/HomePopupInfo;

    return-object v0
.end method

.method public final component2()Lcom/transsion/bean/HomePopupInfo;
    .locals 1

    iget-object v0, p0, Lcom/transsion/bean/HomePopupEntity;->widget:Lcom/transsion/bean/HomePopupInfo;

    return-object v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/transsion/bean/HomePopupEntity;->requestInterval:I

    return v0
.end method

.method public final component4()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/bean/HomePopupEntity;->ts:J

    return-wide v0
.end method

.method public final copy(Lcom/transsion/bean/HomePopupInfo;Lcom/transsion/bean/HomePopupInfo;IJ)Lcom/transsion/bean/HomePopupEntity;
    .locals 7

    const-string v0, "popup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "widget"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/bean/HomePopupEntity;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/transsion/bean/HomePopupEntity;-><init>(Lcom/transsion/bean/HomePopupInfo;Lcom/transsion/bean/HomePopupInfo;IJ)V

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/bean/HomePopupEntity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/bean/HomePopupEntity;

    iget-object v1, p0, Lcom/transsion/bean/HomePopupEntity;->popup:Lcom/transsion/bean/HomePopupInfo;

    iget-object v3, p1, Lcom/transsion/bean/HomePopupEntity;->popup:Lcom/transsion/bean/HomePopupInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsion/bean/HomePopupEntity;->widget:Lcom/transsion/bean/HomePopupInfo;

    iget-object v3, p1, Lcom/transsion/bean/HomePopupEntity;->widget:Lcom/transsion/bean/HomePopupInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/transsion/bean/HomePopupEntity;->requestInterval:I

    iget v3, p1, Lcom/transsion/bean/HomePopupEntity;->requestInterval:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/transsion/bean/HomePopupEntity;->ts:J

    iget-wide v5, p1, Lcom/transsion/bean/HomePopupEntity;->ts:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getPopup()Lcom/transsion/bean/HomePopupInfo;
    .locals 1

    iget-object v0, p0, Lcom/transsion/bean/HomePopupEntity;->popup:Lcom/transsion/bean/HomePopupInfo;

    return-object v0
.end method

.method public final getRequestInterval()I
    .locals 1

    iget v0, p0, Lcom/transsion/bean/HomePopupEntity;->requestInterval:I

    return v0
.end method

.method public final getTs()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/bean/HomePopupEntity;->ts:J

    return-wide v0
.end method

.method public final getWidget()Lcom/transsion/bean/HomePopupInfo;
    .locals 1

    iget-object v0, p0, Lcom/transsion/bean/HomePopupEntity;->widget:Lcom/transsion/bean/HomePopupInfo;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/transsion/bean/HomePopupEntity;->popup:Lcom/transsion/bean/HomePopupInfo;

    invoke-virtual {v0}, Lcom/transsion/bean/HomePopupInfo;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/bean/HomePopupEntity;->widget:Lcom/transsion/bean/HomePopupInfo;

    invoke-virtual {v1}, Lcom/transsion/bean/HomePopupInfo;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/bean/HomePopupEntity;->requestInterval:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/transsion/bean/HomePopupEntity;->ts:J

    invoke-static {v1, v2}, Landroidx/collection/s;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setPopup(Lcom/transsion/bean/HomePopupInfo;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/bean/HomePopupEntity;->popup:Lcom/transsion/bean/HomePopupInfo;

    return-void
.end method

.method public final setRequestInterval(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/bean/HomePopupEntity;->requestInterval:I

    return-void
.end method

.method public final setTs(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/bean/HomePopupEntity;->ts:J

    return-void
.end method

.method public final setWidget(Lcom/transsion/bean/HomePopupInfo;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/bean/HomePopupEntity;->widget:Lcom/transsion/bean/HomePopupInfo;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/transsion/bean/HomePopupEntity;->popup:Lcom/transsion/bean/HomePopupInfo;

    iget-object v1, p0, Lcom/transsion/bean/HomePopupEntity;->widget:Lcom/transsion/bean/HomePopupInfo;

    iget v2, p0, Lcom/transsion/bean/HomePopupEntity;->requestInterval:I

    iget-wide v3, p0, Lcom/transsion/bean/HomePopupEntity;->ts:J

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HomePopupEntity(popup="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", widget="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", requestInterval="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", ts="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string v0, "dest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/bean/HomePopupEntity;->popup:Lcom/transsion/bean/HomePopupInfo;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/bean/HomePopupInfo;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/transsion/bean/HomePopupEntity;->widget:Lcom/transsion/bean/HomePopupInfo;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/bean/HomePopupInfo;->writeToParcel(Landroid/os/Parcel;I)V

    iget p2, p0, Lcom/transsion/bean/HomePopupEntity;->requestInterval:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/transsion/bean/HomePopupEntity;->ts:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
