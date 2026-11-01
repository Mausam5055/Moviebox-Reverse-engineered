.class public final Lcom/transsion/mpush/core/config/PermanentConfig;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0019\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B1\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\t\u0010\nJ\t\u0010\u0019\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\u0007H\u00c6\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J5\u0010\u001d\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001J\u0006\u0010\u001e\u001a\u00020\u0007J\u0013\u0010\u001f\u001a\u00020\u00032\u0008\u0010 \u001a\u0004\u0018\u00010!H\u00d6\u0003J\t\u0010\"\u001a\u00020\u0007H\u00d6\u0001J\t\u0010#\u001a\u00020\u0005H\u00d6\u0001J\u0016\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020\u0007R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0010\"\u0004\u0008\u0018\u0010\u0012\u00a8\u0006)"
    }
    d2 = {
        "Lcom/transsion/mpush/core/config/PermanentConfig;",
        "Landroid/os/Parcelable;",
        "enable",
        "",
        "startTime",
        "",
        "interval",
        "",
        "title",
        "<init>",
        "(ZLjava/lang/String;ILjava/lang/String;)V",
        "getEnable",
        "()Z",
        "setEnable",
        "(Z)V",
        "getStartTime",
        "()Ljava/lang/String;",
        "setStartTime",
        "(Ljava/lang/String;)V",
        "getInterval",
        "()I",
        "setInterval",
        "(I)V",
        "getTitle",
        "setTitle",
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
        "writeToParcel",
        "",
        "dest",
        "Landroid/os/Parcel;",
        "flags",
        "MBPush_psRelease"
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
            "Lcom/transsion/mpush/core/config/PermanentConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private enable:Z

.field private interval:I

.field private startTime:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/mpush/core/config/PermanentConfig$Creator;

    invoke-direct {v0}, Lcom/transsion/mpush/core/config/PermanentConfig$Creator;-><init>()V

    sput-object v0, Lcom/transsion/mpush/core/config/PermanentConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/transsion/mpush/core/config/PermanentConfig;->enable:Z

    iput-object p2, p0, Lcom/transsion/mpush/core/config/PermanentConfig;->startTime:Ljava/lang/String;

    iput p3, p0, Lcom/transsion/mpush/core/config/PermanentConfig;->interval:I

    iput-object p4, p0, Lcom/transsion/mpush/core/config/PermanentConfig;->title:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/String;ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    const/4 p1, 0x1

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    const/4 p3, 0x0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const/4 p4, 0x0

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/mpush/core/config/PermanentConfig;-><init>(ZLjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/mpush/core/config/PermanentConfig;ZLjava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Lcom/transsion/mpush/core/config/PermanentConfig;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-boolean p1, p0, Lcom/transsion/mpush/core/config/PermanentConfig;->enable:Z

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/transsion/mpush/core/config/PermanentConfig;->startTime:Ljava/lang/String;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Lcom/transsion/mpush/core/config/PermanentConfig;->interval:I

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/transsion/mpush/core/config/PermanentConfig;->title:Ljava/lang/String;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/mpush/core/config/PermanentConfig;->copy(ZLjava/lang/String;ILjava/lang/String;)Lcom/transsion/mpush/core/config/PermanentConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final native component1()Z
.end method

.method public final native component2()Ljava/lang/String;
.end method

.method public final native component3()I
.end method

.method public final native component4()Ljava/lang/String;
.end method

.method public final native copy(ZLjava/lang/String;ILjava/lang/String;)Lcom/transsion/mpush/core/config/PermanentConfig;
.end method

.method public final native describeContents()I
.end method

.method public native equals(Ljava/lang/Object;)Z
.end method

.method public final native getEnable()Z
.end method

.method public final native getInterval()I
.end method

.method public final native getStartTime()Ljava/lang/String;
.end method

.method public final native getTitle()Ljava/lang/String;
.end method

.method public native hashCode()I
.end method

.method public final native setEnable(Z)V
.end method

.method public final native setInterval(I)V
.end method

.method public final native setStartTime(Ljava/lang/String;)V
.end method

.method public final native setTitle(Ljava/lang/String;)V
.end method

.method public native toString()Ljava/lang/String;
.end method

.method public final native writeToParcel(Landroid/os/Parcel;I)V
.end method
