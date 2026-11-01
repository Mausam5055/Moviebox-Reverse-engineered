.class public final Lcom/transsion/ad/db/pslink/AttributionPoint$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/ad/db/pslink/AttributionPoint;
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
.method public final a(Landroid/os/Parcel;)Lcom/transsion/ad/db/pslink/AttributionPoint;
    .locals 9

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/ad/db/pslink/AttributionPoint;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;->valueOf(Ljava/lang/String;)Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;

    move-result-object v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/transsion/ad/db/pslink/AttributionPoint;-><init>(ILjava/lang/String;ILjava/lang/String;Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;J)V

    return-object v0
.end method

.method public final b(I)[Lcom/transsion/ad/db/pslink/AttributionPoint;
    .locals 0

    new-array p1, p1, [Lcom/transsion/ad/db/pslink/AttributionPoint;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/ad/db/pslink/AttributionPoint$a;->a(Landroid/os/Parcel;)Lcom/transsion/ad/db/pslink/AttributionPoint;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/ad/db/pslink/AttributionPoint$a;->b(I)[Lcom/transsion/ad/db/pslink/AttributionPoint;

    move-result-object p1

    return-object p1
.end method
