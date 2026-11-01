.class public final Lcom/transsion/home/fragment/dialog/CategoryDiscoverDialog$CategorySelectEvent$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/home/fragment/dialog/CategoryDiscoverDialog$CategorySelectEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Parcel;)Lcom/transsion/home/fragment/dialog/CategoryDiscoverDialog$CategorySelectEvent;
    .locals 1

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/home/fragment/dialog/CategoryDiscoverDialog$CategorySelectEvent;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/transsion/home/fragment/dialog/CategoryDiscoverDialog$CategorySelectEvent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final b(I)[Lcom/transsion/home/fragment/dialog/CategoryDiscoverDialog$CategorySelectEvent;
    .locals 0

    new-array p1, p1, [Lcom/transsion/home/fragment/dialog/CategoryDiscoverDialog$CategorySelectEvent;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/home/fragment/dialog/CategoryDiscoverDialog$CategorySelectEvent$a;->a(Landroid/os/Parcel;)Lcom/transsion/home/fragment/dialog/CategoryDiscoverDialog$CategorySelectEvent;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/home/fragment/dialog/CategoryDiscoverDialog$CategorySelectEvent$a;->b(I)[Lcom/transsion/home/fragment/dialog/CategoryDiscoverDialog$CategorySelectEvent;

    move-result-object p1

    return-object p1
.end method
