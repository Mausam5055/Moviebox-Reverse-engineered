.class final enum Lcom/google/android/libraries/places/internal/zzbsh;
.super Ljava/lang/Enum;


# static fields
.field public static final enum zza:Lcom/google/android/libraries/places/internal/zzbsh;

.field public static final enum zzb:Lcom/google/android/libraries/places/internal/zzbsh;

.field public static final enum zzc:Lcom/google/android/libraries/places/internal/zzbsh;

.field public static final enum zzd:Lcom/google/android/libraries/places/internal/zzbsh;

.field public static final enum zze:Lcom/google/android/libraries/places/internal/zzbsh;

.field public static final enum zzf:Lcom/google/android/libraries/places/internal/zzbsh;

.field private static final synthetic zzg:[Lcom/google/android/libraries/places/internal/zzbsh;


# instance fields
.field private final zzh:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbsh;

    const-string v1, "HEADER_TABLE_SIZE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/libraries/places/internal/zzbsh;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbsh;->zza:Lcom/google/android/libraries/places/internal/zzbsh;

    new-instance v1, Lcom/google/android/libraries/places/internal/zzbsh;

    const-string v4, "ENABLE_PUSH"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/google/android/libraries/places/internal/zzbsh;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/libraries/places/internal/zzbsh;->zzb:Lcom/google/android/libraries/places/internal/zzbsh;

    new-instance v4, Lcom/google/android/libraries/places/internal/zzbsh;

    const-string v6, "MAX_CONCURRENT_STREAMS"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v5, v7}, Lcom/google/android/libraries/places/internal/zzbsh;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/libraries/places/internal/zzbsh;->zzc:Lcom/google/android/libraries/places/internal/zzbsh;

    new-instance v6, Lcom/google/android/libraries/places/internal/zzbsh;

    const-string v8, "MAX_FRAME_SIZE"

    const/4 v9, 0x3

    const/4 v10, 0x5

    invoke-direct {v6, v8, v9, v10}, Lcom/google/android/libraries/places/internal/zzbsh;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/android/libraries/places/internal/zzbsh;->zzd:Lcom/google/android/libraries/places/internal/zzbsh;

    new-instance v8, Lcom/google/android/libraries/places/internal/zzbsh;

    const-string v11, "MAX_HEADER_LIST_SIZE"

    const/4 v12, 0x6

    invoke-direct {v8, v11, v7, v12}, Lcom/google/android/libraries/places/internal/zzbsh;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/android/libraries/places/internal/zzbsh;->zze:Lcom/google/android/libraries/places/internal/zzbsh;

    new-instance v11, Lcom/google/android/libraries/places/internal/zzbsh;

    const-string v13, "INITIAL_WINDOW_SIZE"

    const/4 v14, 0x7

    invoke-direct {v11, v13, v10, v14}, Lcom/google/android/libraries/places/internal/zzbsh;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/android/libraries/places/internal/zzbsh;->zzf:Lcom/google/android/libraries/places/internal/zzbsh;

    new-array v12, v12, [Lcom/google/android/libraries/places/internal/zzbsh;

    aput-object v0, v12, v2

    aput-object v1, v12, v3

    aput-object v4, v12, v5

    aput-object v6, v12, v9

    aput-object v8, v12, v7

    aput-object v11, v12, v10

    sput-object v12, Lcom/google/android/libraries/places/internal/zzbsh;->zzg:[Lcom/google/android/libraries/places/internal/zzbsh;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/libraries/places/internal/zzbsh;->zzh:I

    return-void
.end method

.method public static values()[Lcom/google/android/libraries/places/internal/zzbsh;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbsh;->zzg:[Lcom/google/android/libraries/places/internal/zzbsh;

    invoke-virtual {v0}, [Lcom/google/android/libraries/places/internal/zzbsh;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/libraries/places/internal/zzbsh;

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzbsh;->zzh:I

    return v0
.end method
