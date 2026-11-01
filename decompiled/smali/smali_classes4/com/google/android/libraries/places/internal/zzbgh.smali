.class final Lcom/google/android/libraries/places/internal/zzbgh;
.super Ljava/lang/Object;


# instance fields
.field private zza:Ljava/util/ArrayList;

.field private volatile zzb:Lcom/google/android/libraries/places/internal/zzaze;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbgh;->zza:Ljava/util/ArrayList;

    sget-object v0, Lcom/google/android/libraries/places/internal/zzaze;->zzd:Lcom/google/android/libraries/places/internal/zzaze;

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbgh;->zzb:Lcom/google/android/libraries/places/internal/zzaze;

    return-void
.end method


# virtual methods
.method final zza(Lcom/google/android/libraries/places/internal/zzaze;)V
    .locals 2

    const-string v0, "newState"

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbgh;->zzb:Lcom/google/android/libraries/places/internal/zzaze;

    if-eq v0, p1, :cond_2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbgh;->zzb:Lcom/google/android/libraries/places/internal/zzaze;

    sget-object v1, Lcom/google/android/libraries/places/internal/zzaze;->zze:Lcom/google/android/libraries/places/internal/zzaze;

    if-eq v0, v1, :cond_2

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbgh;->zzb:Lcom/google/android/libraries/places/internal/zzaze;

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbgh;->zza:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbgh;->zza:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbgh;->zza:Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzbgg;

    const/4 p1, 0x0

    throw p1

    :cond_2
    :goto_0
    return-void
.end method
