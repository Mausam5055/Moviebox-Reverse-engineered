.class public final Lcom/google/android/libraries/places/internal/zzbbg;
.super Ljava/lang/Object;


# instance fields
.field private zza:Ljava/util/List;

.field private zzb:Lcom/google/android/libraries/places/internal/zzaye;

.field private zzc:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/libraries/places/internal/zzaye;->zza:Lcom/google/android/libraries/places/internal/zzaye;

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbbg;->zzb:Lcom/google/android/libraries/places/internal/zzaye;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/util/List;)Lcom/google/android/libraries/places/internal/zzbbg;
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbbg;->zza:Ljava/util/List;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/libraries/places/internal/zzaye;)Lcom/google/android/libraries/places/internal/zzbbg;
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbbg;->zzb:Lcom/google/android/libraries/places/internal/zzaye;

    return-object p0
.end method

.method public final zzc(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzbbg;
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbbg;->zzc:Ljava/lang/Object;

    return-object p0
.end method

.method public final zzd()Lcom/google/android/libraries/places/internal/zzbbi;
    .locals 5

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbbi;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbbg;->zza:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbbg;->zzb:Lcom/google/android/libraries/places/internal/zzaye;

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbbg;->zzc:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/libraries/places/internal/zzbbi;-><init>(Ljava/util/List;Lcom/google/android/libraries/places/internal/zzaye;Ljava/lang/Object;Lcom/google/android/libraries/places/internal/zzbbh;)V

    return-object v0
.end method
