.class public abstract Lcom/google/android/gms/internal/play_billing/zzaj;
.super Lcom/google/android/gms/internal/play_billing/zzac;

# interfaces
.implements Ljava/util/Set;


# instance fields
.field private transient zza:Lcom/google/android/gms/internal/play_billing/zzaf;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzac;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    if-ne p1, p0, :cond_1

    goto :goto_0

    :cond_1
    instance-of v1, p1, Ljava/util/Set;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Ljava/util/Set;

    :try_start_0
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-interface {p0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_3

    :catch_0
    :cond_2
    move v0, v2

    nop

    :cond_3
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/zzar;->zza(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzaj;->zze()Lcom/google/android/gms/internal/play_billing/zzas;

    move-result-object v0

    return-object v0
.end method

.method public zzd()Lcom/google/android/gms/internal/play_billing/zzaf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzaj;->zza:Lcom/google/android/gms/internal/play_billing/zzaf;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzaj;->zzh()Lcom/google/android/gms/internal/play_billing/zzaf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzaj;->zza:Lcom/google/android/gms/internal/play_billing/zzaf;

    :cond_0
    return-object v0
.end method

.method public abstract zze()Lcom/google/android/gms/internal/play_billing/zzas;
.end method

.method zzh()Lcom/google/android/gms/internal/play_billing/zzaf;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzac;->toArray()[Ljava/lang/Object;

    move-result-object v0

    sget v1, Lcom/google/android/gms/internal/play_billing/zzaf;->zzd:I

    array-length v1, v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzaf;->zzi([Ljava/lang/Object;I)Lcom/google/android/gms/internal/play_billing/zzaf;

    move-result-object v0

    return-object v0
.end method
