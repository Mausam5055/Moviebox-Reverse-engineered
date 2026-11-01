.class public final enum Lcom/google/android/libraries/places/internal/zzbdy;
.super Ljava/lang/Enum;


# static fields
.field public static final enum zza:Lcom/google/android/libraries/places/internal/zzbdy;

.field public static final enum zzb:Lcom/google/android/libraries/places/internal/zzbdy;

.field public static final enum zzc:Lcom/google/android/libraries/places/internal/zzbdy;

.field private static final synthetic zzd:[Lcom/google/android/libraries/places/internal/zzbdy;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbdy;

    const-string v1, "FAKE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzbdy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbdy;->zza:Lcom/google/android/libraries/places/internal/zzbdy;

    new-instance v1, Lcom/google/android/libraries/places/internal/zzbdy;

    const-string v3, "MTLS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/android/libraries/places/internal/zzbdy;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/libraries/places/internal/zzbdy;->zzb:Lcom/google/android/libraries/places/internal/zzbdy;

    new-instance v3, Lcom/google/android/libraries/places/internal/zzbdy;

    const-string v5, "CUSTOM_MANAGERS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/android/libraries/places/internal/zzbdy;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/libraries/places/internal/zzbdy;->zzc:Lcom/google/android/libraries/places/internal/zzbdy;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/android/libraries/places/internal/zzbdy;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/google/android/libraries/places/internal/zzbdy;->zzd:[Lcom/google/android/libraries/places/internal/zzbdy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/libraries/places/internal/zzbdy;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbdy;->zzd:[Lcom/google/android/libraries/places/internal/zzbdy;

    invoke-virtual {v0}, [Lcom/google/android/libraries/places/internal/zzbdy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/libraries/places/internal/zzbdy;

    return-object v0
.end method
