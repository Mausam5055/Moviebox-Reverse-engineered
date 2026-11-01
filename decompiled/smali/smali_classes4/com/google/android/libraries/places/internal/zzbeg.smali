.class public abstract Lcom/google/android/libraries/places/internal/zzbeg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzbnv;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method protected final zza(I)V
    .locals 1

    invoke-interface {p0}, Lcom/google/android/libraries/places/internal/zzbnv;->zzf()I

    move-result v0

    if-lt v0, p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public zzb()V
    .locals 0

    return-void
.end method

.method public zzc()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public zzd()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
