.class public final Lcom/transsion/memberapi/PremiumV2CheckAccessDto;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/memberapi/PremiumV2CheckAccessDto$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u000c\u0008\u0087\u0008\u0018\u0000 \'2\u00020\u0001:\u0001(B!\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u001d\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\r\u0010\u0011\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0010\u0010\u0015\u001a\u00020\u0004H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0010\u0010\u0017\u001a\u00020\u0006H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J0\u0010\u0019\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006H\u00c6\u0001\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0010\u0010\u001b\u001a\u00020\u0004H\u00d6\u0001\u00a2\u0006\u0004\u0008\u001b\u0010\u0016J\u0010\u0010\u001c\u001a\u00020\u000cH\u00d6\u0001\u00a2\u0006\u0004\u0008\u001c\u0010\u0012J\u001a\u0010\u001f\u001a\u00020\u00022\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001dH\u00d6\u0003\u00a2\u0006\u0004\u0008\u001f\u0010 R\u0019\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010!\u001a\u0004\u0008\"\u0010\u0014R\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010#\u001a\u0004\u0008$\u0010\u0016R\u0017\u0010\u0007\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010%\u001a\u0004\u0008&\u0010\u0018\u00a8\u0006)"
    }
    d2 = {
        "Lcom/transsion/memberapi/PremiumV2CheckAccessDto;",
        "Landroid/os/Parcelable;",
        "",
        "hasAccess",
        "",
        "action",
        "Lcom/transsion/memberapi/ThreeInOnePopup;",
        "popup",
        "<init>",
        "(Ljava/lang/Boolean;Ljava/lang/String;Lcom/transsion/memberapi/ThreeInOnePopup;)V",
        "Landroid/os/Parcel;",
        "dest",
        "",
        "flags",
        "",
        "writeToParcel",
        "(Landroid/os/Parcel;I)V",
        "describeContents",
        "()I",
        "component1",
        "()Ljava/lang/Boolean;",
        "component2",
        "()Ljava/lang/String;",
        "component3",
        "()Lcom/transsion/memberapi/ThreeInOnePopup;",
        "copy",
        "(Ljava/lang/Boolean;Ljava/lang/String;Lcom/transsion/memberapi/ThreeInOnePopup;)Lcom/transsion/memberapi/PremiumV2CheckAccessDto;",
        "toString",
        "hashCode",
        "",
        "other",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Ljava/lang/Boolean;",
        "getHasAccess",
        "Ljava/lang/String;",
        "getAction",
        "Lcom/transsion/memberapi/ThreeInOnePopup;",
        "getPopup",
        "Companion",
        "a",
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
.field public static final ACTION_ACCESS_ACTION_LOTTERY:Ljava/lang/String; = "ACCESS_ACTION_LOTTERY"

.field public static final ACTION_ACCESS_ACTION_VIP:Ljava/lang/String; = "ACCESS_ACTION_VIP"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/memberapi/PremiumV2CheckAccessDto;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/transsion/memberapi/PremiumV2CheckAccessDto$a;


# instance fields
.field private final action:Ljava/lang/String;

.field private final hasAccess:Ljava/lang/Boolean;

.field private final popup:Lcom/transsion/memberapi/ThreeInOnePopup;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/memberapi/PremiumV2CheckAccessDto$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/memberapi/PremiumV2CheckAccessDto$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/memberapi/PremiumV2CheckAccessDto;->Companion:Lcom/transsion/memberapi/PremiumV2CheckAccessDto$a;

    new-instance v0, Lcom/transsion/memberapi/PremiumV2CheckAccessDto$b;

    invoke-direct {v0}, Lcom/transsion/memberapi/PremiumV2CheckAccessDto$b;-><init>()V

    sput-object v0, Lcom/transsion/memberapi/PremiumV2CheckAccessDto;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/String;Lcom/transsion/memberapi/ThreeInOnePopup;)V
    .locals 1

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "popup"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/memberapi/PremiumV2CheckAccessDto;->hasAccess:Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/transsion/memberapi/PremiumV2CheckAccessDto;->action:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/memberapi/PremiumV2CheckAccessDto;->popup:Lcom/transsion/memberapi/ThreeInOnePopup;

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/memberapi/PremiumV2CheckAccessDto;Ljava/lang/Boolean;Ljava/lang/String;Lcom/transsion/memberapi/ThreeInOnePopup;ILjava/lang/Object;)Lcom/transsion/memberapi/PremiumV2CheckAccessDto;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/transsion/memberapi/PremiumV2CheckAccessDto;->hasAccess:Ljava/lang/Boolean;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/transsion/memberapi/PremiumV2CheckAccessDto;->action:Ljava/lang/String;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/transsion/memberapi/PremiumV2CheckAccessDto;->popup:Lcom/transsion/memberapi/ThreeInOnePopup;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/memberapi/PremiumV2CheckAccessDto;->copy(Ljava/lang/Boolean;Ljava/lang/String;Lcom/transsion/memberapi/ThreeInOnePopup;)Lcom/transsion/memberapi/PremiumV2CheckAccessDto;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final native component1()Ljava/lang/Boolean;
.end method

.method public final native component2()Ljava/lang/String;
.end method

.method public final native component3()Lcom/transsion/memberapi/ThreeInOnePopup;
.end method

.method public final native copy(Ljava/lang/Boolean;Ljava/lang/String;Lcom/transsion/memberapi/ThreeInOnePopup;)Lcom/transsion/memberapi/PremiumV2CheckAccessDto;
.end method

.method public final native describeContents()I
.end method

.method public native equals(Ljava/lang/Object;)Z
.end method

.method public final native getAction()Ljava/lang/String;
.end method

.method public final native getHasAccess()Ljava/lang/Boolean;
.end method

.method public final native getPopup()Lcom/transsion/memberapi/ThreeInOnePopup;
.end method

.method public native hashCode()I
.end method

.method public native toString()Ljava/lang/String;
.end method

.method public final native writeToParcel(Landroid/os/Parcel;I)V
.end method
