.class final enum Lcom/google/android/libraries/places/internal/zzbic;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzbhz;


# static fields
.field public static final enum zza:Lcom/google/android/libraries/places/internal/zzbic;

.field private static final synthetic zzb:[Lcom/google/android/libraries/places/internal/zzbic;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbic;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzbic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbic;->zza:Lcom/google/android/libraries/places/internal/zzbic;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/libraries/places/internal/zzbic;

    aput-object v0, v1, v2

    sput-object v1, Lcom/google/android/libraries/places/internal/zzbic;->zzb:[Lcom/google/android/libraries/places/internal/zzbic;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    const-string p1, "INSTANCE"

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/libraries/places/internal/zzbic;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbic;->zzb:[Lcom/google/android/libraries/places/internal/zzbic;

    invoke-virtual {v0}, [Lcom/google/android/libraries/places/internal/zzbic;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/libraries/places/internal/zzbic;

    return-object v0
.end method
