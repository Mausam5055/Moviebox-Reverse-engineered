.class public final Lcom/google/android/libraries/places/internal/zzbul;
.super Ljava/lang/Object;


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzbui;

.field private final zzb:Lcom/google/android/libraries/places/internal/zzbtd;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzbuj;Lcom/google/android/libraries/places/internal/zzbuk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbuj;->zzb(Lcom/google/android/libraries/places/internal/zzbuj;)Lcom/google/android/libraries/places/internal/zzbui;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbul;->zza:Lcom/google/android/libraries/places/internal/zzbui;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbuj;->zza(Lcom/google/android/libraries/places/internal/zzbuj;)Lcom/google/android/libraries/places/internal/zzbtb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbtb;->zzb()Lcom/google/android/libraries/places/internal/zzbtd;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbul;->zzb:Lcom/google/android/libraries/places/internal/zzbtd;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbul;->zza:Lcom/google/android/libraries/places/internal/zzbui;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request{url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Lcom/google/android/libraries/places/internal/zzbtd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbul;->zzb:Lcom/google/android/libraries/places/internal/zzbtd;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/libraries/places/internal/zzbui;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbul;->zza:Lcom/google/android/libraries/places/internal/zzbui;

    return-object v0
.end method
