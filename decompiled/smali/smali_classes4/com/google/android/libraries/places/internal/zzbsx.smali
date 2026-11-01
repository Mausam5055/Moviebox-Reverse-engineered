.class public final Lcom/google/android/libraries/places/internal/zzbsx;
.super Ljava/lang/Object;


# instance fields
.field private final zza:Z

.field private zzb:[Ljava/lang/String;

.field private zzc:[Ljava/lang/String;

.field private zzd:Z


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/zzbsz;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lcom/google/android/libraries/places/internal/zzbsz;->zzd:Z

    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbsx;->zza:Z

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbsz;->zzc(Lcom/google/android/libraries/places/internal/zzbsz;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsx;->zzb:[Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbsz;->zzd(Lcom/google/android/libraries/places/internal/zzbsz;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsx;->zzc:[Ljava/lang/String;

    iget-boolean p1, p1, Lcom/google/android/libraries/places/internal/zzbsz;->zze:Z

    iput-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzbsx;->zzd:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzbsx;->zza:Z

    return-void
.end method

.method static bridge synthetic zzg(Lcom/google/android/libraries/places/internal/zzbsx;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/libraries/places/internal/zzbsx;->zzd:Z

    return p0
.end method

.method static bridge synthetic zzh(Lcom/google/android/libraries/places/internal/zzbsx;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/libraries/places/internal/zzbsx;->zza:Z

    return p0
.end method

.method static bridge synthetic zzi(Lcom/google/android/libraries/places/internal/zzbsx;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbsx;->zzb:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic zzj(Lcom/google/android/libraries/places/internal/zzbsx;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbsx;->zzc:[Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final varargs zza([Lcom/google/android/libraries/places/internal/zzbsw;)Lcom/google/android/libraries/places/internal/zzbsx;
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbsx;->zza:Z

    if-eqz v0, :cond_1

    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-object v2, p1, v1

    iget-object v2, v2, Lcom/google/android/libraries/places/internal/zzbsw;->zzbb:Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsx;->zzb:[Ljava/lang/String;

    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no cipher suites for cleartext connections"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final varargs zzb([Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbsx;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbsx;->zza:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbsx;->zzb:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbsx;->zzb:[Ljava/lang/String;

    :goto_0
    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no cipher suites for cleartext connections"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzc(Z)Lcom/google/android/libraries/places/internal/zzbsx;
    .locals 1

    iget-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzbsx;->zza:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzbsx;->zzd:Z

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no TLS extensions for cleartext connections"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final varargs zzd([Lcom/google/android/libraries/places/internal/zzbtn;)Lcom/google/android/libraries/places/internal/zzbsx;
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbsx;->zza:Z

    if-eqz v0, :cond_1

    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-object v2, p1, v1

    iget-object v2, v2, Lcom/google/android/libraries/places/internal/zzbtn;->zzf:Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsx;->zzc:[Ljava/lang/String;

    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no TLS versions for cleartext connections"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final varargs zze([Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbsx;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbsx;->zza:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbsx;->zzc:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbsx;->zzc:[Ljava/lang/String;

    :goto_0
    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no TLS versions for cleartext connections"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzf()Lcom/google/android/libraries/places/internal/zzbsz;
    .locals 2

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbsz;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/libraries/places/internal/zzbsz;-><init>(Lcom/google/android/libraries/places/internal/zzbsx;Lcom/google/android/libraries/places/internal/zzbsy;)V

    return-object v0
.end method
