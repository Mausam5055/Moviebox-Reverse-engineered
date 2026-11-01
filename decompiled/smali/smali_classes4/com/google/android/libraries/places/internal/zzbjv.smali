.class final Lcom/google/android/libraries/places/internal/zzbjv;
.super Lcom/google/android/libraries/places/internal/zzbip;


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzbgf;

.field private final zzb:Lcom/google/android/libraries/places/internal/zzbfg;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzbgf;Lcom/google/android/libraries/places/internal/zzbfg;Lcom/google/android/libraries/places/internal/zzbju;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbip;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbjv;->zza:Lcom/google/android/libraries/places/internal/zzbgf;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbjv;->zzb:Lcom/google/android/libraries/places/internal/zzbfg;

    return-void
.end method

.method static bridge synthetic zzf(Lcom/google/android/libraries/places/internal/zzbjv;)Lcom/google/android/libraries/places/internal/zzbfg;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbjv;->zzb:Lcom/google/android/libraries/places/internal/zzbfg;

    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/libraries/places/internal/zzbcl;Lcom/google/android/libraries/places/internal/zzbcf;Lcom/google/android/libraries/places/internal/zzayj;[Lcom/google/android/libraries/places/internal/zzayx;)Lcom/google/android/libraries/places/internal/zzbfr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjv;->zza:Lcom/google/android/libraries/places/internal/zzbgf;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/libraries/places/internal/zzbfu;->zza(Lcom/google/android/libraries/places/internal/zzbcl;Lcom/google/android/libraries/places/internal/zzbcf;Lcom/google/android/libraries/places/internal/zzayj;[Lcom/google/android/libraries/places/internal/zzayx;)Lcom/google/android/libraries/places/internal/zzbfr;

    move-result-object p1

    new-instance p2, Lcom/google/android/libraries/places/internal/zzbjt;

    invoke-direct {p2, p0, p1}, Lcom/google/android/libraries/places/internal/zzbjt;-><init>(Lcom/google/android/libraries/places/internal/zzbjv;Lcom/google/android/libraries/places/internal/zzbfr;)V

    return-object p2
.end method

.method protected final zzb()Lcom/google/android/libraries/places/internal/zzbgf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjv;->zza:Lcom/google/android/libraries/places/internal/zzbgf;

    return-object v0
.end method
