.class public final Lcom/transsion/home/fragment/dialog/CategoryDiscoverDialog$CategorySelectEvent;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/home/fragment/dialog/CategoryDiscoverDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CategorySelectEvent"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\t\u0010\u0008\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\t\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0006\u0010\n\u001a\u00020\u000bJ\u0013\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u00d6\u0003J\t\u0010\u0010\u001a\u00020\u000bH\u00d6\u0001J\t\u0010\u0011\u001a\u00020\u0003H\u00d6\u0001J\u0016\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u000bR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/transsion/home/fragment/dialog/CategoryDiscoverDialog$CategorySelectEvent;",
        "Landroid/os/Parcelable;",
        "categoryName",
        "",
        "<init>",
        "(Ljava/lang/String;)V",
        "getCategoryName",
        "()Ljava/lang/String;",
        "component1",
        "copy",
        "describeContents",
        "",
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
        "Home_psRelease"
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
            "Lcom/transsion/home/fragment/dialog/CategoryDiscoverDialog$CategorySelectEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final categoryName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/home/fragment/dialog/CategoryDiscoverDialog$CategorySelectEvent$a;

    invoke-direct {v0}, Lcom/transsion/home/fragment/dialog/CategoryDiscoverDialog$CategorySelectEvent$a;-><init>()V

    sput-object v0, Lcom/transsion/home/fragment/dialog/CategoryDiscoverDialog$CategorySelectEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    const/16 v0, 0x8

    sput v0, Lcom/transsion/home/fragment/dialog/CategoryDiscoverDialog$CategorySelectEvent;->$stable:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "categoryName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/fragment/dialog/CategoryDiscoverDialog$CategorySelectEvent;->categoryName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/home/fragment/dialog/CategoryDiscoverDialog$CategorySelectEvent;Ljava/lang/String;ILjava/lang/Object;)Lcom/transsion/home/fragment/dialog/CategoryDiscoverDialog$CategorySelectEvent;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/transsion/home/fragment/dialog/CategoryDiscoverDialog$CategorySelectEvent;->categoryName:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/home/fragment/dialog/CategoryDiscoverDialog$CategorySelectEvent;->copy(Ljava/lang/String;)Lcom/transsion/home/fragment/dialog/CategoryDiscoverDialog$CategorySelectEvent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/fragment/dialog/CategoryDiscoverDialog$CategorySelectEvent;->categoryName:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;)Lcom/transsion/home/fragment/dialog/CategoryDiscoverDialog$CategorySelectEvent;
    .locals 1

    const-string v0, "categoryName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/home/fragment/dialog/CategoryDiscoverDialog$CategorySelectEvent;

    invoke-direct {v0, p1}, Lcom/transsion/home/fragment/dialog/CategoryDiscoverDialog$CategorySelectEvent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/home/fragment/dialog/CategoryDiscoverDialog$CategorySelectEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/home/fragment/dialog/CategoryDiscoverDialog$CategorySelectEvent;

    iget-object v1, p0, Lcom/transsion/home/fragment/dialog/CategoryDiscoverDialog$CategorySelectEvent;->categoryName:Ljava/lang/String;

    iget-object p1, p1, Lcom/transsion/home/fragment/dialog/CategoryDiscoverDialog$CategorySelectEvent;->categoryName:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getCategoryName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/fragment/dialog/CategoryDiscoverDialog$CategorySelectEvent;->categoryName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/fragment/dialog/CategoryDiscoverDialog$CategorySelectEvent;->categoryName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/transsion/home/fragment/dialog/CategoryDiscoverDialog$CategorySelectEvent;->categoryName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CategorySelectEvent(categoryName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "dest"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/home/fragment/dialog/CategoryDiscoverDialog$CategorySelectEvent;->categoryName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
