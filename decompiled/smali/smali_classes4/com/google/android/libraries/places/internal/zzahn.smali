.class public final Lcom/google/android/libraries/places/internal/zzahn;
.super Lcom/google/android/libraries/places/internal/zzato;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzavg;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzadu;)V
    .locals 0

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzaho;->zzc()Lcom/google/android/libraries/places/internal/zzaho;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzato;-><init>(Lcom/google/android/libraries/places/internal/zzatu;)V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Iterable;)Lcom/google/android/libraries/places/internal/zzahn;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzato;->zzw()V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzato;->zza:Lcom/google/android/libraries/places/internal/zzatu;

    check-cast v0, Lcom/google/android/libraries/places/internal/zzaho;

    invoke-static {v0, p1}, Lcom/google/android/libraries/places/internal/zzaho;->zzd(Lcom/google/android/libraries/places/internal/zzaho;Ljava/lang/Iterable;)V

    return-object p0
.end method
