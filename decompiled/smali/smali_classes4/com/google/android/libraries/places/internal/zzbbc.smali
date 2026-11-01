.class public final Lcom/google/android/libraries/places/internal/zzbbc;
.super Lcom/google/android/libraries/places/internal/zzbbk;


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzbbe;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/zzbbe;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbbk;-><init>()V

    const-string v0, "result"

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbbc;->zza:Lcom/google/android/libraries/places/internal/zzbbe;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbbc;->zza:Lcom/google/android/libraries/places/internal/zzbbe;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FixedResultPicker("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Lcom/google/android/libraries/places/internal/zzbbf;)Lcom/google/android/libraries/places/internal/zzbbe;
    .locals 0

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbbc;->zza:Lcom/google/android/libraries/places/internal/zzbbe;

    return-object p1
.end method
