.class public final Lcom/google/android/libraries/places/internal/zzbcs;
.super Ljava/lang/Object;


# instance fields
.field private zza:Ljava/util/List;

.field private zzb:Lcom/google/android/libraries/places/internal/zzaye;

.field private zzc:Lcom/google/android/libraries/places/internal/zzbcp;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbcs;->zza:Ljava/util/List;

    sget-object v0, Lcom/google/android/libraries/places/internal/zzaye;->zza:Lcom/google/android/libraries/places/internal/zzaye;

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbcs;->zzb:Lcom/google/android/libraries/places/internal/zzaye;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/util/List;)Lcom/google/android/libraries/places/internal/zzbcs;
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbcs;->zza:Ljava/util/List;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/libraries/places/internal/zzaye;)Lcom/google/android/libraries/places/internal/zzbcs;
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbcs;->zzb:Lcom/google/android/libraries/places/internal/zzaye;

    return-object p0
.end method

.method public final zzc(Lcom/google/android/libraries/places/internal/zzbcp;)Lcom/google/android/libraries/places/internal/zzbcs;
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbcs;->zzc:Lcom/google/android/libraries/places/internal/zzbcp;

    return-object p0
.end method

.method public final zzd()Lcom/google/android/libraries/places/internal/zzbct;
    .locals 4

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbct;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbcs;->zza:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbcs;->zzb:Lcom/google/android/libraries/places/internal/zzaye;

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbcs;->zzc:Lcom/google/android/libraries/places/internal/zzbcp;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/libraries/places/internal/zzbct;-><init>(Ljava/util/List;Lcom/google/android/libraries/places/internal/zzaye;Lcom/google/android/libraries/places/internal/zzbcp;)V

    return-object v0
.end method
