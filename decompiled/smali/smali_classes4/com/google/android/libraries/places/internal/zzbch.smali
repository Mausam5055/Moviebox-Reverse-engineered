.class public final Lcom/google/android/libraries/places/internal/zzbch;
.super Ljava/lang/Object;


# instance fields
.field private zza:Lcom/google/android/libraries/places/internal/zzbci;

.field private zzb:Lcom/google/android/libraries/places/internal/zzbci;

.field private zzc:Lcom/google/android/libraries/places/internal/zzbcj;

.field private zzd:Ljava/lang/String;

.field private zze:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzbcg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbch;
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbch;->zzd:Ljava/lang/String;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/libraries/places/internal/zzbci;)Lcom/google/android/libraries/places/internal/zzbch;
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbch;->zza:Lcom/google/android/libraries/places/internal/zzbci;

    return-object p0
.end method

.method public final zzc(Lcom/google/android/libraries/places/internal/zzbci;)Lcom/google/android/libraries/places/internal/zzbch;
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbch;->zzb:Lcom/google/android/libraries/places/internal/zzbci;

    return-object p0
.end method

.method public final zzd(Z)Lcom/google/android/libraries/places/internal/zzbch;
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzbch;->zze:Z

    return-object p0
.end method

.method public final zze(Lcom/google/android/libraries/places/internal/zzbcj;)Lcom/google/android/libraries/places/internal/zzbch;
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbch;->zzc:Lcom/google/android/libraries/places/internal/zzbcj;

    return-object p0
.end method

.method public final zzf()Lcom/google/android/libraries/places/internal/zzbcl;
    .locals 11

    new-instance v10, Lcom/google/android/libraries/places/internal/zzbcl;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbch;->zzc:Lcom/google/android/libraries/places/internal/zzbcj;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbch;->zzd:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbch;->zza:Lcom/google/android/libraries/places/internal/zzbci;

    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzbch;->zzb:Lcom/google/android/libraries/places/internal/zzbci;

    iget-boolean v8, p0, Lcom/google/android/libraries/places/internal/zzbch;->zze:Z

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/google/android/libraries/places/internal/zzbcl;-><init>(Lcom/google/android/libraries/places/internal/zzbcj;Ljava/lang/String;Lcom/google/android/libraries/places/internal/zzbci;Lcom/google/android/libraries/places/internal/zzbci;Ljava/lang/Object;ZZZLcom/google/android/libraries/places/internal/zzbck;)V

    return-object v10
.end method
