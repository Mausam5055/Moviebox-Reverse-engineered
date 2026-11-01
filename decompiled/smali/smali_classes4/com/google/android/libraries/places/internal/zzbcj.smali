.class public final enum Lcom/google/android/libraries/places/internal/zzbcj;
.super Ljava/lang/Enum;


# static fields
.field public static final enum zza:Lcom/google/android/libraries/places/internal/zzbcj;

.field public static final enum zzb:Lcom/google/android/libraries/places/internal/zzbcj;

.field public static final enum zzc:Lcom/google/android/libraries/places/internal/zzbcj;

.field public static final enum zzd:Lcom/google/android/libraries/places/internal/zzbcj;

.field public static final enum zze:Lcom/google/android/libraries/places/internal/zzbcj;

.field private static final synthetic zzf:[Lcom/google/android/libraries/places/internal/zzbcj;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbcj;

    const-string v1, "UNARY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzbcj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbcj;->zza:Lcom/google/android/libraries/places/internal/zzbcj;

    new-instance v1, Lcom/google/android/libraries/places/internal/zzbcj;

    const-string v3, "CLIENT_STREAMING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/android/libraries/places/internal/zzbcj;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/libraries/places/internal/zzbcj;->zzb:Lcom/google/android/libraries/places/internal/zzbcj;

    new-instance v3, Lcom/google/android/libraries/places/internal/zzbcj;

    const-string v5, "SERVER_STREAMING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/android/libraries/places/internal/zzbcj;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/libraries/places/internal/zzbcj;->zzc:Lcom/google/android/libraries/places/internal/zzbcj;

    new-instance v5, Lcom/google/android/libraries/places/internal/zzbcj;

    const-string v7, "BIDI_STREAMING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/google/android/libraries/places/internal/zzbcj;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/android/libraries/places/internal/zzbcj;->zzd:Lcom/google/android/libraries/places/internal/zzbcj;

    new-instance v7, Lcom/google/android/libraries/places/internal/zzbcj;

    const-string v9, "UNKNOWN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/google/android/libraries/places/internal/zzbcj;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/google/android/libraries/places/internal/zzbcj;->zze:Lcom/google/android/libraries/places/internal/zzbcj;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/google/android/libraries/places/internal/zzbcj;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/google/android/libraries/places/internal/zzbcj;->zzf:[Lcom/google/android/libraries/places/internal/zzbcj;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/libraries/places/internal/zzbcj;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbcj;->zzf:[Lcom/google/android/libraries/places/internal/zzbcj;

    invoke-virtual {v0}, [Lcom/google/android/libraries/places/internal/zzbcj;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/libraries/places/internal/zzbcj;

    return-object v0
.end method
