.class public abstract Lcom/google/android/libraries/places/internal/zzfi;
.super Ljava/lang/Object;


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzjt;


# direct methods
.method protected constructor <init>(Lcom/google/android/libraries/places/internal/zzjt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzfi;->zza:Lcom/google/android/libraries/places/internal/zzjt;

    return-void
.end method


# virtual methods
.method protected final zza()Lcom/google/android/gms/tasks/CancellationToken;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzfi;->zza:Lcom/google/android/libraries/places/internal/zzjt;

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzjt;->getCancellationToken()Lcom/google/android/gms/tasks/CancellationToken;

    move-result-object v0

    return-object v0
.end method

.method protected final zzb()Lcom/google/android/libraries/places/internal/zzjt;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzfi;->zza:Lcom/google/android/libraries/places/internal/zzjt;

    return-object v0
.end method

.method protected abstract zzc()Ljava/lang/String;
.end method

.method protected abstract zzd()Ljava/util/Map;
.end method
