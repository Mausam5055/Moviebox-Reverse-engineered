.class public final enum Lcom/google/android/libraries/places/internal/zzkr;
.super Ljava/lang/Enum;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/libraries/places/internal/zzkr;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/libraries/places/internal/zzkr;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum zza:Lcom/google/android/libraries/places/internal/zzkr;

.field public static final enum zzb:Lcom/google/android/libraries/places/internal/zzkr;

.field private static final synthetic zzc:[Lcom/google/android/libraries/places/internal/zzkr;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/google/android/libraries/places/internal/zzkr;

    const-string v1, "FRAGMENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzkr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzkr;->zza:Lcom/google/android/libraries/places/internal/zzkr;

    new-instance v1, Lcom/google/android/libraries/places/internal/zzkr;

    const-string v3, "INTENT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/android/libraries/places/internal/zzkr;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/libraries/places/internal/zzkr;->zzb:Lcom/google/android/libraries/places/internal/zzkr;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/android/libraries/places/internal/zzkr;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/google/android/libraries/places/internal/zzkr;->zzc:[Lcom/google/android/libraries/places/internal/zzkr;

    new-instance v0, Lcom/google/android/libraries/places/internal/zzkq;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzkq;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzkr;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzkr;
    .locals 1

    const-class v0, Lcom/google/android/libraries/places/internal/zzkr;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/places/internal/zzkr;

    return-object p0
.end method

.method public static values()[Lcom/google/android/libraries/places/internal/zzkr;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzkr;->zzc:[Lcom/google/android/libraries/places/internal/zzkr;

    invoke-virtual {v0}, [Lcom/google/android/libraries/places/internal/zzkr;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/libraries/places/internal/zzkr;

    return-object v0
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
