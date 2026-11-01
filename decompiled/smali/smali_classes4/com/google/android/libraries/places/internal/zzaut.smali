.class abstract Lcom/google/android/libraries/places/internal/zzaut;
.super Ljava/lang/Object;


# static fields
.field private static final zza:Lcom/google/android/libraries/places/internal/zzaut;

.field private static final zzb:Lcom/google/android/libraries/places/internal/zzaut;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/libraries/places/internal/zzaup;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/internal/zzaup;-><init>(Lcom/google/android/libraries/places/internal/zzauo;)V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzaut;->zza:Lcom/google/android/libraries/places/internal/zzaut;

    new-instance v0, Lcom/google/android/libraries/places/internal/zzaur;

    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/internal/zzaur;-><init>(Lcom/google/android/libraries/places/internal/zzauq;)V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzaut;->zzb:Lcom/google/android/libraries/places/internal/zzaut;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzaus;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static zzd()Lcom/google/android/libraries/places/internal/zzaut;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzaut;->zza:Lcom/google/android/libraries/places/internal/zzaut;

    return-object v0
.end method

.method static zze()Lcom/google/android/libraries/places/internal/zzaut;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzaut;->zzb:Lcom/google/android/libraries/places/internal/zzaut;

    return-object v0
.end method


# virtual methods
.method abstract zza(Ljava/lang/Object;J)Ljava/util/List;
.end method

.method abstract zzb(Ljava/lang/Object;J)V
.end method

.method abstract zzc(Ljava/lang/Object;Ljava/lang/Object;J)V
.end method
