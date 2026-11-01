.class public final enum Lcom/google/android/libraries/places/internal/zzbdf;
.super Ljava/lang/Enum;


# static fields
.field public static final enum zza:Lcom/google/android/libraries/places/internal/zzbdf;

.field public static final enum zzb:Lcom/google/android/libraries/places/internal/zzbdf;

.field public static final enum zzc:Lcom/google/android/libraries/places/internal/zzbdf;

.field private static final synthetic zzd:[Lcom/google/android/libraries/places/internal/zzbdf;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbdf;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzbdf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbdf;->zza:Lcom/google/android/libraries/places/internal/zzbdf;

    new-instance v1, Lcom/google/android/libraries/places/internal/zzbdf;

    const-string v3, "INTEGRITY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/android/libraries/places/internal/zzbdf;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/libraries/places/internal/zzbdf;->zzb:Lcom/google/android/libraries/places/internal/zzbdf;

    new-instance v3, Lcom/google/android/libraries/places/internal/zzbdf;

    const-string v5, "PRIVACY_AND_INTEGRITY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/android/libraries/places/internal/zzbdf;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/libraries/places/internal/zzbdf;->zzc:Lcom/google/android/libraries/places/internal/zzbdf;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/android/libraries/places/internal/zzbdf;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/google/android/libraries/places/internal/zzbdf;->zzd:[Lcom/google/android/libraries/places/internal/zzbdf;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/libraries/places/internal/zzbdf;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbdf;->zzd:[Lcom/google/android/libraries/places/internal/zzbdf;

    invoke-virtual {v0}, [Lcom/google/android/libraries/places/internal/zzbdf;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/libraries/places/internal/zzbdf;

    return-object v0
.end method
