.class public final Lcom/transsion/mb/config/download/UserPreferRequest$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/mb/config/download/UserPreferRequest;
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
.method public final a(Landroid/os/Parcel;)Lcom/transsion/mb/config/download/UserPreferRequest;
    .locals 1

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/mb/config/download/UserPreferRequest;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/transsion/mb/config/download/UserPreferRequest;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final b(I)[Lcom/transsion/mb/config/download/UserPreferRequest;
    .locals 0

    new-array p1, p1, [Lcom/transsion/mb/config/download/UserPreferRequest;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/mb/config/download/UserPreferRequest$a;->a(Landroid/os/Parcel;)Lcom/transsion/mb/config/download/UserPreferRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/mb/config/download/UserPreferRequest$a;->b(I)[Lcom/transsion/mb/config/download/UserPreferRequest;

    move-result-object p1

    return-object p1
.end method
