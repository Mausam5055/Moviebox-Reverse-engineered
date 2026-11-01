.class final Lcom/google/android/libraries/places/internal/zzbmi;
.super Lcom/google/android/libraries/places/internal/zzbam;


# instance fields
.field final zzb:Lcom/google/android/libraries/places/internal/zzbmj;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzbmj;Lcom/google/android/libraries/places/internal/zzbmh;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbam;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbmi;->zzb:Lcom/google/android/libraries/places/internal/zzbmj;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/libraries/places/internal/zzbbf;)Lcom/google/android/libraries/places/internal/zzbal;
    .locals 1

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbal;->zza()Lcom/google/android/libraries/places/internal/zzbaj;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbmi;->zzb:Lcom/google/android/libraries/places/internal/zzbmj;

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/places/internal/zzbaj;->zza(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzbaj;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbaj;->zzb()Lcom/google/android/libraries/places/internal/zzbal;

    move-result-object p1

    return-object p1
.end method
