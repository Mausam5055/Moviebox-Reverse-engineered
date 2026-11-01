.class final Lcom/google/android/libraries/places/internal/zzrf;
.super Lcom/google/android/libraries/places/internal/zzrc;


# static fields
.field private static final zza:Lcom/google/android/libraries/places/internal/zzrc;


# instance fields
.field private final zzb:Lcom/google/android/libraries/places/internal/zzrg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/libraries/places/internal/zzrf;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzrf;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzrf;->zza:Lcom/google/android/libraries/places/internal/zzrc;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzrc;-><init>()V

    new-instance v0, Lcom/google/android/libraries/places/internal/zzre;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/internal/zzre;-><init>(Lcom/google/android/libraries/places/internal/zzrd;)V

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzrf;->zzb:Lcom/google/android/libraries/places/internal/zzrg;

    return-void
.end method

.method static final zzb()Lcom/google/android/libraries/places/internal/zzrc;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzrf;->zza:Lcom/google/android/libraries/places/internal/zzrc;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "No-op Provider"

    return-object v0
.end method
