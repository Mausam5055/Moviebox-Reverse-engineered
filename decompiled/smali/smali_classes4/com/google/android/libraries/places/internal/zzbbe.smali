.class public final Lcom/google/android/libraries/places/internal/zzbbe;
.super Ljava/lang/Object;


# static fields
.field private static final zza:Lcom/google/android/libraries/places/internal/zzbbe;


# instance fields
.field private final zzb:Lcom/google/android/libraries/places/internal/zzbbj;

.field private final zzc:Lcom/google/android/libraries/places/internal/zzayu;

.field private final zzd:Lcom/google/android/libraries/places/internal/zzbdo;

.field private final zze:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbbe;

    sget-object v1, Lcom/google/android/libraries/places/internal/zzbdo;->zza:Lcom/google/android/libraries/places/internal/zzbdo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Lcom/google/android/libraries/places/internal/zzbbe;-><init>(Lcom/google/android/libraries/places/internal/zzbbj;Lcom/google/android/libraries/places/internal/zzayu;Lcom/google/android/libraries/places/internal/zzbdo;Z)V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbbe;->zza:Lcom/google/android/libraries/places/internal/zzbbe;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/libraries/places/internal/zzbbj;Lcom/google/android/libraries/places/internal/zzayu;Lcom/google/android/libraries/places/internal/zzbdo;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbbe;->zzb:Lcom/google/android/libraries/places/internal/zzbbj;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbbe;->zzc:Lcom/google/android/libraries/places/internal/zzayu;

    const-string p1, "status"

    invoke-static {p3, p1}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzbbe;->zzd:Lcom/google/android/libraries/places/internal/zzbdo;

    iput-boolean p4, p0, Lcom/google/android/libraries/places/internal/zzbbe;->zze:Z

    return-void
.end method

.method public static zza(Lcom/google/android/libraries/places/internal/zzbdo;)Lcom/google/android/libraries/places/internal/zzbbe;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbdo;->zzl()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "drop status shouldn\'t be OK"

    invoke-static {v0, v2}, Lcom/google/android/libraries/places/internal/zzmt;->zzf(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbbe;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, p0, v1}, Lcom/google/android/libraries/places/internal/zzbbe;-><init>(Lcom/google/android/libraries/places/internal/zzbbj;Lcom/google/android/libraries/places/internal/zzayu;Lcom/google/android/libraries/places/internal/zzbdo;Z)V

    return-object v0
.end method

.method public static zzb(Lcom/google/android/libraries/places/internal/zzbdo;)Lcom/google/android/libraries/places/internal/zzbbe;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbdo;->zzl()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "error status shouldn\'t be OK"

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzmt;->zzf(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbbe;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, p0, v2}, Lcom/google/android/libraries/places/internal/zzbbe;-><init>(Lcom/google/android/libraries/places/internal/zzbbj;Lcom/google/android/libraries/places/internal/zzayu;Lcom/google/android/libraries/places/internal/zzbdo;Z)V

    return-object v0
.end method

.method public static zzc()Lcom/google/android/libraries/places/internal/zzbbe;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbbe;->zza:Lcom/google/android/libraries/places/internal/zzbbe;

    return-object v0
.end method

.method public static zzd(Lcom/google/android/libraries/places/internal/zzbbj;Lcom/google/android/libraries/places/internal/zzayu;)Lcom/google/android/libraries/places/internal/zzbbe;
    .locals 3

    new-instance p1, Lcom/google/android/libraries/places/internal/zzbbe;

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbdo;->zza:Lcom/google/android/libraries/places/internal/zzbdo;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p1, p0, v2, v0, v1}, Lcom/google/android/libraries/places/internal/zzbbe;-><init>(Lcom/google/android/libraries/places/internal/zzbbj;Lcom/google/android/libraries/places/internal/zzayu;Lcom/google/android/libraries/places/internal/zzbdo;Z)V

    return-object p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/google/android/libraries/places/internal/zzbbe;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/android/libraries/places/internal/zzbbe;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbbe;->zzb:Lcom/google/android/libraries/places/internal/zzbbj;

    iget-object v2, p1, Lcom/google/android/libraries/places/internal/zzbbe;->zzb:Lcom/google/android/libraries/places/internal/zzbbj;

    invoke-static {v0, v2}, Lcom/google/android/libraries/places/internal/zzmo;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbbe;->zzd:Lcom/google/android/libraries/places/internal/zzbdo;

    iget-object v2, p1, Lcom/google/android/libraries/places/internal/zzbbe;->zzd:Lcom/google/android/libraries/places/internal/zzbdo;

    invoke-static {v0, v2}, Lcom/google/android/libraries/places/internal/zzmo;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0, v0}, Lcom/google/android/libraries/places/internal/zzmo;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbbe;->zze:Z

    iget-boolean p1, p1, Lcom/google/android/libraries/places/internal/zzbbe;->zze:Z

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 5

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbbe;->zzb:Lcom/google/android/libraries/places/internal/zzbbj;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbbe;->zzd:Lcom/google/android/libraries/places/internal/zzbdo;

    iget-boolean v2, p0, Lcom/google/android/libraries/places/internal/zzbbe;->zze:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x0

    const/4 v1, 0x2

    aput-object v0, v3, v1

    const/4 v0, 0x3

    aput-object v2, v3, v0

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzmn;->zzb(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    move-result-object v0

    const-string v1, "subchannel"

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbbe;->zzb:Lcom/google/android/libraries/places/internal/zzbbj;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzmm;->zzd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    const-string v1, "streamTracerFactory"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzmm;->zzd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    const-string v1, "status"

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbbe;->zzd:Lcom/google/android/libraries/places/internal/zzbdo;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzmm;->zzd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    const-string v1, "drop"

    iget-boolean v2, p0, Lcom/google/android/libraries/places/internal/zzbbe;->zze:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzmm;->zze(Ljava/lang/String;Z)Lcom/google/android/libraries/places/internal/zzmm;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzmm;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zze()Lcom/google/android/libraries/places/internal/zzbbj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbbe;->zzb:Lcom/google/android/libraries/places/internal/zzbbj;

    return-object v0
.end method

.method public final zzf()Lcom/google/android/libraries/places/internal/zzbdo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbbe;->zzd:Lcom/google/android/libraries/places/internal/zzbdo;

    return-object v0
.end method

.method public final zzg()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbbe;->zze:Z

    return v0
.end method
