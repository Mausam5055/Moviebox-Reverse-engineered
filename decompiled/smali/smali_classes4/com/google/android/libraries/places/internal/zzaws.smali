.class public final Lcom/google/android/libraries/places/internal/zzaws;
.super Ljava/util/AbstractList;

# interfaces
.implements Ljava/util/RandomAccess;
.implements Lcom/google/android/libraries/places/internal/zzaun;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzaun;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/zzaun;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzaws;->zza:Lcom/google/android/libraries/places/internal/zzaun;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/libraries/places/internal/zzaws;)Lcom/google/android/libraries/places/internal/zzaun;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzaws;->zza:Lcom/google/android/libraries/places/internal/zzaun;

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzaws;->zza:Lcom/google/android/libraries/places/internal/zzaun;

    check-cast v0, Lcom/google/android/libraries/places/internal/zzaum;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzaum;->zzg(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/google/android/libraries/places/internal/zzawr;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/zzawr;-><init>(Lcom/google/android/libraries/places/internal/zzaws;)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1

    new-instance v0, Lcom/google/android/libraries/places/internal/zzawq;

    invoke-direct {v0, p0, p1}, Lcom/google/android/libraries/places/internal/zzawq;-><init>(Lcom/google/android/libraries/places/internal/zzaws;I)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzaws;->zza:Lcom/google/android/libraries/places/internal/zzaun;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final zze()Lcom/google/android/libraries/places/internal/zzaun;
    .locals 0

    return-object p0
.end method

.method public final zzf(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzaws;->zza:Lcom/google/android/libraries/places/internal/zzaun;

    invoke-interface {v0, p1}, Lcom/google/android/libraries/places/internal/zzaun;->zzf(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zzh()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzaws;->zza:Lcom/google/android/libraries/places/internal/zzaun;

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzaun;->zzh()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final zzi(Lcom/google/android/libraries/places/internal/zzask;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
