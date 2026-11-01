.class public final enum Lcom/google/android/libraries/places/internal/zzaov;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzatw;


# static fields
.field public static final enum zza:Lcom/google/android/libraries/places/internal/zzaov;

.field public static final enum zzb:Lcom/google/android/libraries/places/internal/zzaov;

.field public static final enum zzc:Lcom/google/android/libraries/places/internal/zzaov;

.field public static final enum zzd:Lcom/google/android/libraries/places/internal/zzaov;

.field public static final enum zze:Lcom/google/android/libraries/places/internal/zzaov;

.field public static final enum zzf:Lcom/google/android/libraries/places/internal/zzaov;

.field private static final zzg:Lcom/google/android/libraries/places/internal/zzatx;

.field private static final synthetic zzh:[Lcom/google/android/libraries/places/internal/zzaov;


# instance fields
.field private final zzi:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lcom/google/android/libraries/places/internal/zzaov;

    const-string v1, "BUSINESS_STATUS_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/libraries/places/internal/zzaov;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzaov;->zza:Lcom/google/android/libraries/places/internal/zzaov;

    new-instance v1, Lcom/google/android/libraries/places/internal/zzaov;

    const-string v3, "OPERATIONAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/libraries/places/internal/zzaov;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/libraries/places/internal/zzaov;->zzb:Lcom/google/android/libraries/places/internal/zzaov;

    new-instance v3, Lcom/google/android/libraries/places/internal/zzaov;

    const-string v5, "CLOSED_TEMPORARILY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/libraries/places/internal/zzaov;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/libraries/places/internal/zzaov;->zzc:Lcom/google/android/libraries/places/internal/zzaov;

    new-instance v5, Lcom/google/android/libraries/places/internal/zzaov;

    const-string v7, "CLOSED_PERMANENTLY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/google/android/libraries/places/internal/zzaov;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/libraries/places/internal/zzaov;->zzd:Lcom/google/android/libraries/places/internal/zzaov;

    new-instance v7, Lcom/google/android/libraries/places/internal/zzaov;

    const-string v9, "FUTURE_OPENING"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/google/android/libraries/places/internal/zzaov;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/libraries/places/internal/zzaov;->zze:Lcom/google/android/libraries/places/internal/zzaov;

    new-instance v9, Lcom/google/android/libraries/places/internal/zzaov;

    const/4 v11, 0x5

    const/4 v12, -0x1

    const-string v13, "UNRECOGNIZED"

    invoke-direct {v9, v13, v11, v12}, Lcom/google/android/libraries/places/internal/zzaov;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/libraries/places/internal/zzaov;->zzf:Lcom/google/android/libraries/places/internal/zzaov;

    const/4 v12, 0x6

    new-array v12, v12, [Lcom/google/android/libraries/places/internal/zzaov;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    aput-object v7, v12, v10

    aput-object v9, v12, v11

    sput-object v12, Lcom/google/android/libraries/places/internal/zzaov;->zzh:[Lcom/google/android/libraries/places/internal/zzaov;

    new-instance v0, Lcom/google/android/libraries/places/internal/zzaou;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzaou;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzaov;->zzg:Lcom/google/android/libraries/places/internal/zzatx;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/libraries/places/internal/zzaov;->zzi:I

    return-void
.end method

.method public static values()[Lcom/google/android/libraries/places/internal/zzaov;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzaov;->zzh:[Lcom/google/android/libraries/places/internal/zzaov;

    invoke-virtual {v0}, [Lcom/google/android/libraries/places/internal/zzaov;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/libraries/places/internal/zzaov;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzaov;->zzi:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
