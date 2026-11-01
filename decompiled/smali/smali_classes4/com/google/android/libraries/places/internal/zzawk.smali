.class public final Lcom/google/android/libraries/places/internal/zzawk;
.super Lcom/google/android/libraries/places/internal/zzato;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzavg;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzawj;)V
    .locals 0

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzawl;->zzg()Lcom/google/android/libraries/places/internal/zzawl;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzato;-><init>(Lcom/google/android/libraries/places/internal/zzatu;)V

    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/libraries/places/internal/zzawk;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzato;->zza:Lcom/google/android/libraries/places/internal/zzatu;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzatu;->zzaH()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzato;->zzx()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzato;->zza:Lcom/google/android/libraries/places/internal/zzatu;

    check-cast v0, Lcom/google/android/libraries/places/internal/zzawl;

    invoke-static {v0, p1}, Lcom/google/android/libraries/places/internal/zzawl;->zzj(Lcom/google/android/libraries/places/internal/zzawl;I)V

    return-object p0
.end method

.method public final zzb(J)Lcom/google/android/libraries/places/internal/zzawk;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzato;->zza:Lcom/google/android/libraries/places/internal/zzatu;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzatu;->zzaH()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzato;->zzx()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzato;->zza:Lcom/google/android/libraries/places/internal/zzatu;

    check-cast v0, Lcom/google/android/libraries/places/internal/zzawl;

    invoke-static {v0, p1, p2}, Lcom/google/android/libraries/places/internal/zzawl;->zzi(Lcom/google/android/libraries/places/internal/zzawl;J)V

    return-object p0
.end method
