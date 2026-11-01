.class final Lcom/google/android/libraries/places/api/model/zzbw;
.super Lcom/google/android/libraries/places/api/model/zzai;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/libraries/places/api/model/zzbw;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/libraries/places/api/model/zzbv;

    invoke-direct {v0}, Lcom/google/android/libraries/places/api/model/zzbv;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/api/model/zzbw;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Lcom/google/android/libraries/places/api/model/LocalDate;Lcom/google/android/libraries/places/api/model/DayOfWeek;Lcom/google/android/libraries/places/api/model/LocalTime;Z)V
    .locals 0
    .param p1    # Lcom/google/android/libraries/places/api/model/LocalDate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/libraries/places/api/model/zzai;-><init>(Lcom/google/android/libraries/places/api/model/LocalDate;Lcom/google/android/libraries/places/api/model/DayOfWeek;Lcom/google/android/libraries/places/api/model/LocalTime;Z)V

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/model/zzai;->getDate()Lcom/google/android/libraries/places/api/model/LocalDate;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/model/zzai;->getDay()Lcom/google/android/libraries/places/api/model/DayOfWeek;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/model/zzai;->getTime()Lcom/google/android/libraries/places/api/model/LocalTime;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/model/zzai;->isTruncated()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
