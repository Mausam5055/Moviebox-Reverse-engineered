.class public final enum Lcom/google/android/libraries/places/internal/zzps;
.super Ljava/lang/Enum;


# static fields
.field public static final enum zza:Lcom/google/android/libraries/places/internal/zzps;

.field public static final enum zzb:Lcom/google/android/libraries/places/internal/zzps;

.field public static final enum zzc:Lcom/google/android/libraries/places/internal/zzps;

.field public static final enum zzd:Lcom/google/android/libraries/places/internal/zzps;

.field public static final enum zze:Lcom/google/android/libraries/places/internal/zzps;

.field private static final synthetic zzf:[Lcom/google/android/libraries/places/internal/zzps;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/google/android/libraries/places/internal/zzps;

    const/16 v1, 0xa

    const-string v2, "SMALL"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/libraries/places/internal/zzps;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzps;->zza:Lcom/google/android/libraries/places/internal/zzps;

    new-instance v1, Lcom/google/android/libraries/places/internal/zzps;

    const/4 v2, 0x1

    const/16 v4, 0x14

    const-string v5, "MEDIUM"

    invoke-direct {v1, v5, v2, v4}, Lcom/google/android/libraries/places/internal/zzps;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/libraries/places/internal/zzps;->zzb:Lcom/google/android/libraries/places/internal/zzps;

    new-instance v4, Lcom/google/android/libraries/places/internal/zzps;

    const/4 v5, 0x2

    const/16 v6, 0x32

    const-string v7, "LARGE"

    invoke-direct {v4, v7, v5, v6}, Lcom/google/android/libraries/places/internal/zzps;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/libraries/places/internal/zzps;->zzc:Lcom/google/android/libraries/places/internal/zzps;

    new-instance v6, Lcom/google/android/libraries/places/internal/zzps;

    const/4 v7, 0x3

    const/4 v8, -0x1

    const-string v9, "FULL"

    invoke-direct {v6, v9, v7, v8}, Lcom/google/android/libraries/places/internal/zzps;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/android/libraries/places/internal/zzps;->zzd:Lcom/google/android/libraries/places/internal/zzps;

    new-instance v8, Lcom/google/android/libraries/places/internal/zzps;

    const-string v9, "NONE"

    const/4 v10, 0x4

    invoke-direct {v8, v9, v10, v3}, Lcom/google/android/libraries/places/internal/zzps;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/android/libraries/places/internal/zzps;->zze:Lcom/google/android/libraries/places/internal/zzps;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/google/android/libraries/places/internal/zzps;

    aput-object v0, v9, v3

    aput-object v1, v9, v2

    aput-object v4, v9, v5

    aput-object v6, v9, v7

    aput-object v8, v9, v10

    sput-object v9, Lcom/google/android/libraries/places/internal/zzps;->zzf:[Lcom/google/android/libraries/places/internal/zzps;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/libraries/places/internal/zzps;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzps;->zzf:[Lcom/google/android/libraries/places/internal/zzps;

    invoke-virtual {v0}, [Lcom/google/android/libraries/places/internal/zzps;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/libraries/places/internal/zzps;

    return-object v0
.end method
