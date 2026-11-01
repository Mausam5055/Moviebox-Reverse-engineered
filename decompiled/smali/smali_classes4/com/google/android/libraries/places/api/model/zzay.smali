.class final Lcom/google/android/libraries/places/api/model/zzay;
.super Lcom/google/android/libraries/places/api/model/zzl;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/libraries/places/api/model/zzay;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/libraries/places/api/model/zzax;

    invoke-direct {v0}, Lcom/google/android/libraries/places/api/model/zzax;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/api/model/zzay;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/maps/model/LatLng;D)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/libraries/places/api/model/zzl;-><init>(Lcom/google/android/gms/maps/model/LatLng;D)V

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/model/zzl;->getCenter()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/model/zzl;->getRadius()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    return-void
.end method
