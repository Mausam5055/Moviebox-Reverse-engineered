.class public final Lcom/google/android/libraries/places/internal/zzbtt;
.super Ljava/lang/Object;


# static fields
.field public static final zza:Lcom/google/android/libraries/places/internal/zzbwf;

.field public static final zzb:Lcom/google/android/libraries/places/internal/zzbwf;

.field public static final zzc:Lcom/google/android/libraries/places/internal/zzbwf;

.field public static final zzd:Lcom/google/android/libraries/places/internal/zzbwf;

.field public static final zze:Lcom/google/android/libraries/places/internal/zzbwf;

.field public static final zzf:Lcom/google/android/libraries/places/internal/zzbwf;

.field public static final zzg:Lcom/google/android/libraries/places/internal/zzbwf;


# instance fields
.field public final zzh:Lcom/google/android/libraries/places/internal/zzbwf;

.field public final zzi:Lcom/google/android/libraries/places/internal/zzbwf;

.field final zzj:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbwf;->zza:Lcom/google/android/libraries/places/internal/zzbwe;

    const-string v0, ":status"

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbwe;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbwf;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbtt;->zza:Lcom/google/android/libraries/places/internal/zzbwf;

    const-string v0, ":method"

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbwe;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbwf;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbtt;->zzb:Lcom/google/android/libraries/places/internal/zzbwf;

    const-string v0, ":path"

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbwe;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbwf;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbtt;->zzc:Lcom/google/android/libraries/places/internal/zzbwf;

    const-string v0, ":scheme"

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbwe;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbwf;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbtt;->zzd:Lcom/google/android/libraries/places/internal/zzbwf;

    const-string v0, ":authority"

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbwe;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbwf;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbtt;->zze:Lcom/google/android/libraries/places/internal/zzbwf;

    const-string v0, ":host"

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbwe;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbwf;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbtt;->zzf:Lcom/google/android/libraries/places/internal/zzbwf;

    const-string v0, ":version"

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbwe;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbwf;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbtt;->zzg:Lcom/google/android/libraries/places/internal/zzbwf;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/libraries/places/internal/zzbwf;Lcom/google/android/libraries/places/internal/zzbwf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbtt;->zzh:Lcom/google/android/libraries/places/internal/zzbwf;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbtt;->zzi:Lcom/google/android/libraries/places/internal/zzbwf;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbwf;->zzc()I

    move-result p1

    add-int/lit8 p1, p1, 0x20

    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/zzbwf;->zzc()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzbtt;->zzj:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbwf;->zza:Lcom/google/android/libraries/places/internal/zzbwe;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbwe;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbwf;

    move-result-object p1

    invoke-static {p2}, Lcom/google/android/libraries/places/internal/zzbwe;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbwf;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Lcom/google/android/libraries/places/internal/zzbwf;Lcom/google/android/libraries/places/internal/zzbwf;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/google/android/libraries/places/internal/zzbtt;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/libraries/places/internal/zzbtt;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbtt;->zzh:Lcom/google/android/libraries/places/internal/zzbwf;

    iget-object v2, p1, Lcom/google/android/libraries/places/internal/zzbtt;->zzh:Lcom/google/android/libraries/places/internal/zzbwf;

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/places/internal/zzbwf;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbtt;->zzi:Lcom/google/android/libraries/places/internal/zzbwf;

    iget-object p1, p1, Lcom/google/android/libraries/places/internal/zzbtt;->zzi:Lcom/google/android/libraries/places/internal/zzbwf;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzbwf;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbtt;->zzh:Lcom/google/android/libraries/places/internal/zzbwf;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbwf;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbtt;->zzi:Lcom/google/android/libraries/places/internal/zzbwf;

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzbwf;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbtt;->zzh:Lcom/google/android/libraries/places/internal/zzbwf;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbwf;->zzf()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbtt;->zzi:Lcom/google/android/libraries/places/internal/zzbwf;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzbwf;->zzf()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v0, "%s: %s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
