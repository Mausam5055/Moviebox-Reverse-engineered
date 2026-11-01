.class public final enum Lcom/google/android/libraries/places/internal/zzaze;
.super Ljava/lang/Enum;


# static fields
.field public static final enum zza:Lcom/google/android/libraries/places/internal/zzaze;

.field public static final enum zzb:Lcom/google/android/libraries/places/internal/zzaze;

.field public static final enum zzc:Lcom/google/android/libraries/places/internal/zzaze;

.field public static final enum zzd:Lcom/google/android/libraries/places/internal/zzaze;

.field public static final enum zze:Lcom/google/android/libraries/places/internal/zzaze;

.field private static final synthetic zzf:[Lcom/google/android/libraries/places/internal/zzaze;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/google/android/libraries/places/internal/zzaze;

    const-string v1, "CONNECTING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzaze;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzaze;->zza:Lcom/google/android/libraries/places/internal/zzaze;

    new-instance v1, Lcom/google/android/libraries/places/internal/zzaze;

    const-string v3, "READY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/android/libraries/places/internal/zzaze;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/libraries/places/internal/zzaze;->zzb:Lcom/google/android/libraries/places/internal/zzaze;

    new-instance v3, Lcom/google/android/libraries/places/internal/zzaze;

    const-string v5, "TRANSIENT_FAILURE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/android/libraries/places/internal/zzaze;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/libraries/places/internal/zzaze;->zzc:Lcom/google/android/libraries/places/internal/zzaze;

    new-instance v5, Lcom/google/android/libraries/places/internal/zzaze;

    const-string v7, "IDLE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/google/android/libraries/places/internal/zzaze;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/android/libraries/places/internal/zzaze;->zzd:Lcom/google/android/libraries/places/internal/zzaze;

    new-instance v7, Lcom/google/android/libraries/places/internal/zzaze;

    const-string v9, "SHUTDOWN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/google/android/libraries/places/internal/zzaze;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/google/android/libraries/places/internal/zzaze;->zze:Lcom/google/android/libraries/places/internal/zzaze;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/google/android/libraries/places/internal/zzaze;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/google/android/libraries/places/internal/zzaze;->zzf:[Lcom/google/android/libraries/places/internal/zzaze;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/libraries/places/internal/zzaze;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzaze;->zzf:[Lcom/google/android/libraries/places/internal/zzaze;

    invoke-virtual {v0}, [Lcom/google/android/libraries/places/internal/zzaze;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/libraries/places/internal/zzaze;

    return-object v0
.end method
