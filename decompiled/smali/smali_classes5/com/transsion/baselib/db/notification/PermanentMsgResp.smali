.class public final Lcom/transsion/baselib/db/notification/PermanentMsgResp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B#\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0010\u0010\u0004\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\nJ\u0013\u0010\u0013\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\u0005H\u00c6\u0003J.\u0010\u0014\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0012\u0008\u0002\u0010\u0004\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\u0005H\u00c6\u0001\u00a2\u0006\u0002\u0010\u0015J\u0006\u0010\u0016\u001a\u00020\u0017J\u0013\u0010\u0018\u001a\u00020\u00032\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u00d6\u0003J\t\u0010\u001b\u001a\u00020\u0017H\u00d6\u0001J\t\u0010\u001c\u001a\u00020\u001dH\u00d6\u0001J\u0016\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\u0017R\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\r\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR$\u0010\u0004\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011\u00a8\u0006#"
    }
    d2 = {
        "Lcom/transsion/baselib/db/notification/PermanentMsgResp;",
        "Landroid/os/Parcelable;",
        "enable",
        "",
        "items",
        "",
        "Lcom/transsion/baselib/db/notification/PermanentMsgBean;",
        "<init>",
        "(Ljava/lang/Boolean;Ljava/util/List;)V",
        "getEnable",
        "()Ljava/lang/Boolean;",
        "setEnable",
        "(Ljava/lang/Boolean;)V",
        "Ljava/lang/Boolean;",
        "getItems",
        "()Ljava/util/List;",
        "setItems",
        "(Ljava/util/List;)V",
        "component1",
        "component2",
        "copy",
        "(Ljava/lang/Boolean;Ljava/util/List;)Lcom/transsion/baselib/db/notification/PermanentMsgResp;",
        "describeContents",
        "",
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
        "BaseLib_psRelease"
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
            "Lcom/transsion/baselib/db/notification/PermanentMsgResp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private enable:Ljava/lang/Boolean;

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/baselib/db/notification/PermanentMsgBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/baselib/db/notification/PermanentMsgResp$a;

    invoke-direct {v0}, Lcom/transsion/baselib/db/notification/PermanentMsgResp$a;-><init>()V

    sput-object v0, Lcom/transsion/baselib/db/notification/PermanentMsgResp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "Lcom/transsion/baselib/db/notification/PermanentMsgBean;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/baselib/db/notification/PermanentMsgResp;->enable:Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/transsion/baselib/db/notification/PermanentMsgResp;->items:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/baselib/db/notification/PermanentMsgResp;Ljava/lang/Boolean;Ljava/util/List;ILjava/lang/Object;)Lcom/transsion/baselib/db/notification/PermanentMsgResp;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/transsion/baselib/db/notification/PermanentMsgResp;->enable:Ljava/lang/Boolean;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/transsion/baselib/db/notification/PermanentMsgResp;->items:Ljava/util/List;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/baselib/db/notification/PermanentMsgResp;->copy(Ljava/lang/Boolean;Ljava/util/List;)Lcom/transsion/baselib/db/notification/PermanentMsgResp;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final native component1()Ljava/lang/Boolean;
.end method

.method public final native component2()Ljava/util/List;
.end method

.method public final native copy(Ljava/lang/Boolean;Ljava/util/List;)Lcom/transsion/baselib/db/notification/PermanentMsgResp;
.end method

.method public final native describeContents()I
.end method

.method public native equals(Ljava/lang/Object;)Z
.end method

.method public final native getEnable()Ljava/lang/Boolean;
.end method

.method public final native getItems()Ljava/util/List;
.end method

.method public native hashCode()I
.end method

.method public final native setEnable(Ljava/lang/Boolean;)V
.end method

.method public final native setItems(Ljava/util/List;)V
.end method

.method public native toString()Ljava/lang/String;
.end method

.method public final native writeToParcel(Landroid/os/Parcel;I)V
.end method
