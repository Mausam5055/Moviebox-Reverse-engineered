.class final Lcom/google/android/libraries/places/internal/zzky;
.super Lcom/google/android/libraries/places/internal/zzld;


# instance fields
.field private final zza:Lcom/google/android/gms/tasks/CancellationTokenSource;

.field private final zzb:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tasks/CancellationTokenSource;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzld;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzky;->zza:Lcom/google/android/gms/tasks/CancellationTokenSource;

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzky;->zzb:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null query"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/libraries/places/internal/zzld;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzld;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzky;->zza:Lcom/google/android/gms/tasks/CancellationTokenSource;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzlg;->zza()Lcom/google/android/gms/tasks/CancellationTokenSource;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzky;->zzb:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzld;->zzb()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzky;->zza:Lcom/google/android/gms/tasks/CancellationTokenSource;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzky;->zzb:Ljava/lang/String;

    mul-int/2addr v0, v1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzky;->zza:Lcom/google/android/gms/tasks/CancellationTokenSource;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AutocompleteRequest{source="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", query="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzky;->zzb:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Lcom/google/android/gms/tasks/CancellationTokenSource;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzky;->zza:Lcom/google/android/gms/tasks/CancellationTokenSource;

    return-object v0
.end method

.method public final zzb()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzky;->zzb:Ljava/lang/String;

    return-object v0
.end method
