.class public final Lcom/google/android/libraries/places/internal/zzbaj;
.super Ljava/lang/Object;


# instance fields
.field private zza:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzbai;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzbaj;
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbaj;->zza:Ljava/lang/Object;

    return-object p0
.end method

.method public final zzb()Lcom/google/android/libraries/places/internal/zzbal;
    .locals 4

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbaj;->zza:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "config is not set"

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbal;

    sget-object v1, Lcom/google/android/libraries/places/internal/zzbdo;->zza:Lcom/google/android/libraries/places/internal/zzbdo;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbaj;->zza:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/google/android/libraries/places/internal/zzbal;-><init>(Lcom/google/android/libraries/places/internal/zzbdo;Ljava/lang/Object;Lcom/google/android/libraries/places/internal/zzayp;Lcom/google/android/libraries/places/internal/zzbak;)V

    return-object v0
.end method
