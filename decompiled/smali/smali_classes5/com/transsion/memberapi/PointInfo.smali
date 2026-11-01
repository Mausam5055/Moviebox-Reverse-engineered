.class public final Lcom/transsion/memberapi/PointInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\t\u0010\t\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\n\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u00d6\u0003J\t\u0010\u000f\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0010\u001a\u00020\u0011H\u00d6\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\u0005\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/transsion/memberapi/PointInfo;",
        "Ljava/io/Serializable;",
        "point",
        "",
        "<init>",
        "(I)V",
        "getPoint",
        "()I",
        "setPoint",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "",
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


# instance fields
.field private point:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/transsion/memberapi/PointInfo;->point:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/memberapi/PointInfo;IILjava/lang/Object;)Lcom/transsion/memberapi/PointInfo;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget p1, p0, Lcom/transsion/memberapi/PointInfo;->point:I

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/memberapi/PointInfo;->copy(I)Lcom/transsion/memberapi/PointInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final native component1()I
.end method

.method public final native copy(I)Lcom/transsion/memberapi/PointInfo;
.end method

.method public native equals(Ljava/lang/Object;)Z
.end method

.method public final native getPoint()I
.end method

.method public native hashCode()I
.end method

.method public final native setPoint(I)V
.end method

.method public native toString()Ljava/lang/String;
.end method
