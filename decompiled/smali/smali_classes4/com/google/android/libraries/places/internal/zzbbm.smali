.class public abstract Lcom/google/android/libraries/places/internal/zzbbm;
.super Ljava/lang/Object;


# static fields
.field public static final zza:Lcom/google/android/libraries/places/internal/zzayc;

.field public static final zzb:Lcom/google/android/libraries/places/internal/zzbay;

.field public static final zzc:Lcom/google/android/libraries/places/internal/zzayc;

.field public static final zzd:Lcom/google/android/libraries/places/internal/zzayc;

.field public static final zze:Lcom/google/android/libraries/places/internal/zzbbk;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private zzf:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "internal:health-checking-config"

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzayc;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzayc;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbbm;->zza:Lcom/google/android/libraries/places/internal/zzayc;

    const-string v0, "internal:health-check-consumer-listener"

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbay;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbay;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbbm;->zzb:Lcom/google/android/libraries/places/internal/zzbay;

    const-string v0, "internal:has-health-check-producer-listener"

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzayc;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzayc;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbbm;->zzc:Lcom/google/android/libraries/places/internal/zzayc;

    const-string v0, "io.grpc.IS_PETIOLE_POLICY"

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzayc;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzayc;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbbm;->zzd:Lcom/google/android/libraries/places/internal/zzayc;

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbaw;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzbaw;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbbm;->zze:Lcom/google/android/libraries/places/internal/zzbbk;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/libraries/places/internal/zzbbi;)Lcom/google/android/libraries/places/internal/zzbdo;
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbbi;->zze()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzbbm;->zzf:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/libraries/places/internal/zzbbm;->zzf:I

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/zzbbm;->zzc(Lcom/google/android/libraries/places/internal/zzbbi;)V

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzbbm;->zzf:I

    sget-object p1, Lcom/google/android/libraries/places/internal/zzbdo;->zza:Lcom/google/android/libraries/places/internal/zzbdo;

    return-object p1

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbbm;->zzf()Z

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbdo;->zzp:Lcom/google/android/libraries/places/internal/zzbdo;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbbi;->zze()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbbi;->zza()Lcom/google/android/libraries/places/internal/zzaye;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NameResolver returned no usable address. addrs="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", attrs="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/zzbbm;->zzb(Lcom/google/android/libraries/places/internal/zzbdo;)V

    return-object p1
.end method

.method public abstract zzb(Lcom/google/android/libraries/places/internal/zzbdo;)V
.end method

.method public zzc(Lcom/google/android/libraries/places/internal/zzbbi;)V
    .locals 2

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzbbm;->zzf:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/libraries/places/internal/zzbbm;->zzf:I

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/zzbbm;->zza(Lcom/google/android/libraries/places/internal/zzbbi;)Lcom/google/android/libraries/places/internal/zzbdo;

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzbbm;->zzf:I

    return-void
.end method

.method public zzd()V
    .locals 0

    return-void
.end method

.method public abstract zze()V
.end method

.method public zzf()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
