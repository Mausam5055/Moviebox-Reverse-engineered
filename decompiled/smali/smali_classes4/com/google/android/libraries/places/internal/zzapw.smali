.class public final Lcom/google/android/libraries/places/internal/zzapw;
.super Ljava/lang/Object;


# static fields
.field private static volatile zza:Lcom/google/android/libraries/places/internal/zzbcl;

.field private static volatile zzb:Lcom/google/android/libraries/places/internal/zzbcl;

.field private static volatile zzc:Lcom/google/android/libraries/places/internal/zzbcl;

.field private static volatile zzd:Lcom/google/android/libraries/places/internal/zzbcl;

.field private static volatile zze:Lcom/google/android/libraries/places/internal/zzbcl;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Lcom/google/android/libraries/places/internal/zzayk;)Lcom/google/android/libraries/places/internal/zzapv;
    .locals 2

    new-instance v0, Lcom/google/android/libraries/places/internal/zzapt;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzapt;-><init>()V

    sget-object v1, Lcom/google/android/libraries/places/internal/zzayj;->zza:Lcom/google/android/libraries/places/internal/zzayj;

    invoke-static {v0, p0, v1}, Lcom/google/android/libraries/places/internal/zzbup;->zzb(Lcom/google/android/libraries/places/internal/zzbuq;Lcom/google/android/libraries/places/internal/zzayk;Lcom/google/android/libraries/places/internal/zzayj;)Lcom/google/android/libraries/places/internal/zzbur;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/places/internal/zzapv;

    return-object p0
.end method

.method public static zzb()Lcom/google/android/libraries/places/internal/zzbcl;
    .locals 4

    sget-object v0, Lcom/google/android/libraries/places/internal/zzapw;->zze:Lcom/google/android/libraries/places/internal/zzbcl;

    if-nez v0, :cond_1

    const-class v1, Lcom/google/android/libraries/places/internal/zzapw;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/libraries/places/internal/zzapw;->zze:Lcom/google/android/libraries/places/internal/zzbcl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0, v0}, Lcom/google/android/libraries/places/internal/zzbcl;->zza(Lcom/google/android/libraries/places/internal/zzbci;Lcom/google/android/libraries/places/internal/zzbci;)Lcom/google/android/libraries/places/internal/zzbch;

    move-result-object v0

    sget-object v2, Lcom/google/android/libraries/places/internal/zzbcj;->zza:Lcom/google/android/libraries/places/internal/zzbcj;

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/places/internal/zzbch;->zze(Lcom/google/android/libraries/places/internal/zzbcj;)Lcom/google/android/libraries/places/internal/zzbch;

    const-string v2, "google.maps.places.v1.Places"

    const-string v3, "AutocompletePlaces"

    invoke-static {v2, v3}, Lcom/google/android/libraries/places/internal/zzbcl;->zze(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/places/internal/zzbch;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbch;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/places/internal/zzbch;->zzd(Z)Lcom/google/android/libraries/places/internal/zzbch;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzaly;->zzd()Lcom/google/android/libraries/places/internal/zzaly;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzbuo;->zza(Lcom/google/android/libraries/places/internal/zzavf;)Lcom/google/android/libraries/places/internal/zzbci;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/places/internal/zzbch;->zzb(Lcom/google/android/libraries/places/internal/zzbci;)Lcom/google/android/libraries/places/internal/zzbch;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzamn;->zzc()Lcom/google/android/libraries/places/internal/zzamn;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzbuo;->zza(Lcom/google/android/libraries/places/internal/zzavf;)Lcom/google/android/libraries/places/internal/zzbci;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/places/internal/zzbch;->zzc(Lcom/google/android/libraries/places/internal/zzbci;)Lcom/google/android/libraries/places/internal/zzbch;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbch;->zzf()Lcom/google/android/libraries/places/internal/zzbcl;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzapw;->zze:Lcom/google/android/libraries/places/internal/zzbcl;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    return-object v0
.end method

.method public static zzc()Lcom/google/android/libraries/places/internal/zzbcl;
    .locals 4

    sget-object v0, Lcom/google/android/libraries/places/internal/zzapw;->zzc:Lcom/google/android/libraries/places/internal/zzbcl;

    if-nez v0, :cond_1

    const-class v1, Lcom/google/android/libraries/places/internal/zzapw;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/libraries/places/internal/zzapw;->zzc:Lcom/google/android/libraries/places/internal/zzbcl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0, v0}, Lcom/google/android/libraries/places/internal/zzbcl;->zza(Lcom/google/android/libraries/places/internal/zzbci;Lcom/google/android/libraries/places/internal/zzbci;)Lcom/google/android/libraries/places/internal/zzbch;

    move-result-object v0

    sget-object v2, Lcom/google/android/libraries/places/internal/zzbcj;->zza:Lcom/google/android/libraries/places/internal/zzbcj;

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/places/internal/zzbch;->zze(Lcom/google/android/libraries/places/internal/zzbcj;)Lcom/google/android/libraries/places/internal/zzbch;

    const-string v2, "google.maps.places.v1.Places"

    const-string v3, "GetPhotoMedia"

    invoke-static {v2, v3}, Lcom/google/android/libraries/places/internal/zzbcl;->zze(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/places/internal/zzbch;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbch;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/places/internal/zzbch;->zzd(Z)Lcom/google/android/libraries/places/internal/zzbch;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzanx;->zzd()Lcom/google/android/libraries/places/internal/zzanx;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzbuo;->zza(Lcom/google/android/libraries/places/internal/zzavf;)Lcom/google/android/libraries/places/internal/zzbci;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/places/internal/zzbch;->zzb(Lcom/google/android/libraries/places/internal/zzbci;)Lcom/google/android/libraries/places/internal/zzbch;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzaoj;->zzc()Lcom/google/android/libraries/places/internal/zzaoj;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzbuo;->zza(Lcom/google/android/libraries/places/internal/zzavf;)Lcom/google/android/libraries/places/internal/zzbci;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/places/internal/zzbch;->zzc(Lcom/google/android/libraries/places/internal/zzbci;)Lcom/google/android/libraries/places/internal/zzbch;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbch;->zzf()Lcom/google/android/libraries/places/internal/zzbcl;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzapw;->zzc:Lcom/google/android/libraries/places/internal/zzbcl;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    return-object v0
.end method

.method public static zzd()Lcom/google/android/libraries/places/internal/zzbcl;
    .locals 4

    sget-object v0, Lcom/google/android/libraries/places/internal/zzapw;->zzd:Lcom/google/android/libraries/places/internal/zzbcl;

    if-nez v0, :cond_1

    const-class v1, Lcom/google/android/libraries/places/internal/zzapw;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/libraries/places/internal/zzapw;->zzd:Lcom/google/android/libraries/places/internal/zzbcl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0, v0}, Lcom/google/android/libraries/places/internal/zzbcl;->zza(Lcom/google/android/libraries/places/internal/zzbci;Lcom/google/android/libraries/places/internal/zzbci;)Lcom/google/android/libraries/places/internal/zzbch;

    move-result-object v0

    sget-object v2, Lcom/google/android/libraries/places/internal/zzbcj;->zza:Lcom/google/android/libraries/places/internal/zzbcj;

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/places/internal/zzbch;->zze(Lcom/google/android/libraries/places/internal/zzbcj;)Lcom/google/android/libraries/places/internal/zzbch;

    const-string v2, "google.maps.places.v1.Places"

    const-string v3, "GetPlace"

    invoke-static {v2, v3}, Lcom/google/android/libraries/places/internal/zzbcl;->zze(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/places/internal/zzbch;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbch;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/places/internal/zzbch;->zzd(Z)Lcom/google/android/libraries/places/internal/zzbch;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzaoa;->zzd()Lcom/google/android/libraries/places/internal/zzaoa;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzbuo;->zza(Lcom/google/android/libraries/places/internal/zzavf;)Lcom/google/android/libraries/places/internal/zzbci;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/places/internal/zzbch;->zzb(Lcom/google/android/libraries/places/internal/zzbci;)Lcom/google/android/libraries/places/internal/zzbch;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzaps;->zzl()Lcom/google/android/libraries/places/internal/zzaps;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzbuo;->zza(Lcom/google/android/libraries/places/internal/zzavf;)Lcom/google/android/libraries/places/internal/zzbci;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/places/internal/zzbch;->zzc(Lcom/google/android/libraries/places/internal/zzbci;)Lcom/google/android/libraries/places/internal/zzbch;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbch;->zzf()Lcom/google/android/libraries/places/internal/zzbcl;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzapw;->zzd:Lcom/google/android/libraries/places/internal/zzbcl;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    return-object v0
.end method

.method public static zze()Lcom/google/android/libraries/places/internal/zzbcl;
    .locals 4

    sget-object v0, Lcom/google/android/libraries/places/internal/zzapw;->zza:Lcom/google/android/libraries/places/internal/zzbcl;

    if-nez v0, :cond_1

    const-class v1, Lcom/google/android/libraries/places/internal/zzapw;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/libraries/places/internal/zzapw;->zza:Lcom/google/android/libraries/places/internal/zzbcl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0, v0}, Lcom/google/android/libraries/places/internal/zzbcl;->zza(Lcom/google/android/libraries/places/internal/zzbci;Lcom/google/android/libraries/places/internal/zzbci;)Lcom/google/android/libraries/places/internal/zzbch;

    move-result-object v0

    sget-object v2, Lcom/google/android/libraries/places/internal/zzbcj;->zza:Lcom/google/android/libraries/places/internal/zzbcj;

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/places/internal/zzbch;->zze(Lcom/google/android/libraries/places/internal/zzbcj;)Lcom/google/android/libraries/places/internal/zzbch;

    const-string v2, "google.maps.places.v1.Places"

    const-string v3, "SearchNearby"

    invoke-static {v2, v3}, Lcom/google/android/libraries/places/internal/zzbcl;->zze(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/places/internal/zzbch;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbch;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/places/internal/zzbch;->zzd(Z)Lcom/google/android/libraries/places/internal/zzbch;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzaqz;->zzd()Lcom/google/android/libraries/places/internal/zzaqz;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzbuo;->zza(Lcom/google/android/libraries/places/internal/zzavf;)Lcom/google/android/libraries/places/internal/zzbci;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/places/internal/zzbch;->zzb(Lcom/google/android/libraries/places/internal/zzbci;)Lcom/google/android/libraries/places/internal/zzbch;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzarc;->zzc()Lcom/google/android/libraries/places/internal/zzarc;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzbuo;->zza(Lcom/google/android/libraries/places/internal/zzavf;)Lcom/google/android/libraries/places/internal/zzbci;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/places/internal/zzbch;->zzc(Lcom/google/android/libraries/places/internal/zzbci;)Lcom/google/android/libraries/places/internal/zzbch;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbch;->zzf()Lcom/google/android/libraries/places/internal/zzbcl;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzapw;->zza:Lcom/google/android/libraries/places/internal/zzbcl;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    return-object v0
.end method

.method public static zzf()Lcom/google/android/libraries/places/internal/zzbcl;
    .locals 4

    sget-object v0, Lcom/google/android/libraries/places/internal/zzapw;->zzb:Lcom/google/android/libraries/places/internal/zzbcl;

    if-nez v0, :cond_1

    const-class v1, Lcom/google/android/libraries/places/internal/zzapw;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/libraries/places/internal/zzapw;->zzb:Lcom/google/android/libraries/places/internal/zzbcl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0, v0}, Lcom/google/android/libraries/places/internal/zzbcl;->zza(Lcom/google/android/libraries/places/internal/zzbci;Lcom/google/android/libraries/places/internal/zzbci;)Lcom/google/android/libraries/places/internal/zzbch;

    move-result-object v0

    sget-object v2, Lcom/google/android/libraries/places/internal/zzbcj;->zza:Lcom/google/android/libraries/places/internal/zzbcj;

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/places/internal/zzbch;->zze(Lcom/google/android/libraries/places/internal/zzbcj;)Lcom/google/android/libraries/places/internal/zzbch;

    const-string v2, "google.maps.places.v1.Places"

    const-string v3, "SearchText"

    invoke-static {v2, v3}, Lcom/google/android/libraries/places/internal/zzbcl;->zze(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/places/internal/zzbch;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbch;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/places/internal/zzbch;->zzd(Z)Lcom/google/android/libraries/places/internal/zzbch;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzaro;->zzd()Lcom/google/android/libraries/places/internal/zzaro;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzbuo;->zza(Lcom/google/android/libraries/places/internal/zzavf;)Lcom/google/android/libraries/places/internal/zzbci;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/places/internal/zzbch;->zzb(Lcom/google/android/libraries/places/internal/zzbci;)Lcom/google/android/libraries/places/internal/zzbch;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzarr;->zzc()Lcom/google/android/libraries/places/internal/zzarr;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzbuo;->zza(Lcom/google/android/libraries/places/internal/zzavf;)Lcom/google/android/libraries/places/internal/zzbci;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/places/internal/zzbch;->zzc(Lcom/google/android/libraries/places/internal/zzbci;)Lcom/google/android/libraries/places/internal/zzbch;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbch;->zzf()Lcom/google/android/libraries/places/internal/zzbcl;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzapw;->zzb:Lcom/google/android/libraries/places/internal/zzbcl;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    return-object v0
.end method
