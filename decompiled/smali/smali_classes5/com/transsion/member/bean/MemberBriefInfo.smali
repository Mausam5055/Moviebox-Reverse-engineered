.class public final Lcom/transsion/member/bean/MemberBriefInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0014\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0007H\u00c6\u0003J\'\u0010\u0018\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0006\u0010\u0019\u001a\u00020\u0005J\u0013\u0010\u001a\u001a\u00020\u00032\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u00d6\u0003J\t\u0010\u001d\u001a\u00020\u0005H\u00d6\u0001J\t\u0010\u001e\u001a\u00020\u0007H\u00d6\u0001J\u0016\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u0005R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0002\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006$"
    }
    d2 = {
        "Lcom/transsion/member/bean/MemberBriefInfo;",
        "Landroid/os/Parcelable;",
        "isActive",
        "",
        "memberType",
        "",
        "expiryDate",
        "",
        "<init>",
        "(ZILjava/lang/String;)V",
        "()Z",
        "setActive",
        "(Z)V",
        "getMemberType",
        "()I",
        "setMemberType",
        "(I)V",
        "getExpiryDate",
        "()Ljava/lang/String;",
        "setExpiryDate",
        "(Ljava/lang/String;)V",
        "component1",
        "component2",
        "component3",
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
        "Member_psRelease"
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
.field public static final $stable:I

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/member/bean/MemberBriefInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private expiryDate:Ljava/lang/String;

.field private isActive:Z

.field private memberType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/member/bean/MemberBriefInfo$a;

    invoke-direct {v0}, Lcom/transsion/member/bean/MemberBriefInfo$a;-><init>()V

    sput-object v0, Lcom/transsion/member/bean/MemberBriefInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    const/16 v0, 0x8

    sput v0, Lcom/transsion/member/bean/MemberBriefInfo;->$stable:I

    return-void
.end method

.method public constructor <init>(ZILjava/lang/String;)V
    .locals 1

    const-string v0, "expiryDate"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/transsion/member/bean/MemberBriefInfo;->isActive:Z

    iput p2, p0, Lcom/transsion/member/bean/MemberBriefInfo;->memberType:I

    iput-object p3, p0, Lcom/transsion/member/bean/MemberBriefInfo;->expiryDate:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/member/bean/MemberBriefInfo;ZILjava/lang/String;ILjava/lang/Object;)Lcom/transsion/member/bean/MemberBriefInfo;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-boolean p1, p0, Lcom/transsion/member/bean/MemberBriefInfo;->isActive:Z

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Lcom/transsion/member/bean/MemberBriefInfo;->memberType:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/transsion/member/bean/MemberBriefInfo;->expiryDate:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/member/bean/MemberBriefInfo;->copy(ZILjava/lang/String;)Lcom/transsion/member/bean/MemberBriefInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final native component1()Z
.end method

.method public final native component2()I
.end method

.method public final native component3()Ljava/lang/String;
.end method

.method public final native copy(ZILjava/lang/String;)Lcom/transsion/member/bean/MemberBriefInfo;
.end method

.method public final native describeContents()I
.end method

.method public native equals(Ljava/lang/Object;)Z
.end method

.method public final native getExpiryDate()Ljava/lang/String;
.end method

.method public final native getMemberType()I
.end method

.method public native hashCode()I
.end method

.method public final native isActive()Z
.end method

.method public final native setActive(Z)V
.end method

.method public final native setExpiryDate(Ljava/lang/String;)V
.end method

.method public final native setMemberType(I)V
.end method

.method public native toString()Ljava/lang/String;
.end method

.method public final native writeToParcel(Landroid/os/Parcel;I)V
.end method
