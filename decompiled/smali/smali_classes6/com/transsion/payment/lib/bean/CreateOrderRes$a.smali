.class public final Lcom/transsion/payment/lib/bean/CreateOrderRes$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/payment/lib/bean/CreateOrderRes;
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
.method public final a(Landroid/os/Parcel;)Lcom/transsion/payment/lib/bean/CreateOrderRes;
    .locals 5

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/payment/lib/bean/CreateOrderRes;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-nez v4, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    sget-object v4, Lcom/transsion/payment/lib/bean/PrePayInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/transsion/payment/lib/bean/PrePayInfo;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/transsion/payment/lib/bean/CreateOrderRes;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/payment/lib/bean/PrePayInfo;)V

    return-object v0
.end method

.method public final b(I)[Lcom/transsion/payment/lib/bean/CreateOrderRes;
    .locals 0

    new-array p1, p1, [Lcom/transsion/payment/lib/bean/CreateOrderRes;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/payment/lib/bean/CreateOrderRes$a;->a(Landroid/os/Parcel;)Lcom/transsion/payment/lib/bean/CreateOrderRes;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/payment/lib/bean/CreateOrderRes$a;->b(I)[Lcom/transsion/payment/lib/bean/CreateOrderRes;

    move-result-object p1

    return-object p1
.end method
