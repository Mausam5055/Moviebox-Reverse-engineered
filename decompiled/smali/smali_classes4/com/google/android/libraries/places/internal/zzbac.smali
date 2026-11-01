.class public final enum Lcom/google/android/libraries/places/internal/zzbac;
.super Ljava/lang/Enum;


# static fields
.field public static final enum zza:Lcom/google/android/libraries/places/internal/zzbac;

.field public static final enum zzb:Lcom/google/android/libraries/places/internal/zzbac;

.field public static final enum zzc:Lcom/google/android/libraries/places/internal/zzbac;

.field public static final enum zzd:Lcom/google/android/libraries/places/internal/zzbac;

.field private static final synthetic zze:[Lcom/google/android/libraries/places/internal/zzbac;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbac;

    const-string v1, "CT_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzbac;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbac;->zza:Lcom/google/android/libraries/places/internal/zzbac;

    new-instance v1, Lcom/google/android/libraries/places/internal/zzbac;

    const-string v3, "CT_INFO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/android/libraries/places/internal/zzbac;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/libraries/places/internal/zzbac;->zzb:Lcom/google/android/libraries/places/internal/zzbac;

    new-instance v3, Lcom/google/android/libraries/places/internal/zzbac;

    const-string v5, "CT_WARNING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/android/libraries/places/internal/zzbac;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/libraries/places/internal/zzbac;->zzc:Lcom/google/android/libraries/places/internal/zzbac;

    new-instance v5, Lcom/google/android/libraries/places/internal/zzbac;

    const-string v7, "CT_ERROR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/google/android/libraries/places/internal/zzbac;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/android/libraries/places/internal/zzbac;->zzd:Lcom/google/android/libraries/places/internal/zzbac;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/android/libraries/places/internal/zzbac;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/google/android/libraries/places/internal/zzbac;->zze:[Lcom/google/android/libraries/places/internal/zzbac;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/libraries/places/internal/zzbac;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbac;->zze:[Lcom/google/android/libraries/places/internal/zzbac;

    invoke-virtual {v0}, [Lcom/google/android/libraries/places/internal/zzbac;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/libraries/places/internal/zzbac;

    return-object v0
.end method
