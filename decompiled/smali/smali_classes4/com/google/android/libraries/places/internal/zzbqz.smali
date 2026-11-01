.class public final Lcom/google/android/libraries/places/internal/zzbqz;
.super Ljava/lang/Object;


# static fields
.field private static final zza:Lcom/google/android/libraries/places/internal/zzbqw;


# instance fields
.field private final zzb:Lcom/google/android/libraries/places/internal/zzbqt;

.field private zzc:J

.field private zzd:J

.field private zze:J

.field private zzf:Lcom/google/android/libraries/places/internal/zzbqx;

.field private zzg:J

.field private final zzh:Lcom/google/android/libraries/places/internal/zzbkj;

.field private volatile zzi:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbqw;

    sget-object v1, Lcom/google/android/libraries/places/internal/zzbqt;->zza:Lcom/google/android/libraries/places/internal/zzbqt;

    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/internal/zzbqw;-><init>(Lcom/google/android/libraries/places/internal/zzbqt;)V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbqz;->zza:Lcom/google/android/libraries/places/internal/zzbqw;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbkk;->zza()Lcom/google/android/libraries/places/internal/zzbkj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbqz;->zzh:Lcom/google/android/libraries/places/internal/zzbkj;

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbqt;->zza:Lcom/google/android/libraries/places/internal/zzbqt;

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbqz;->zzb:Lcom/google/android/libraries/places/internal/zzbqt;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzbqt;Lcom/google/android/libraries/places/internal/zzbqy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbkk;->zza()Lcom/google/android/libraries/places/internal/zzbkj;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbqz;->zzh:Lcom/google/android/libraries/places/internal/zzbkj;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbqz;->zzb:Lcom/google/android/libraries/places/internal/zzbqt;

    return-void
.end method

.method public static zza()Lcom/google/android/libraries/places/internal/zzbqw;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbqz;->zza:Lcom/google/android/libraries/places/internal/zzbqw;

    return-object v0
.end method


# virtual methods
.method public final zzb()V
    .locals 4

    iget-wide v0, p0, Lcom/google/android/libraries/places/internal/zzbqz;->zzc:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/libraries/places/internal/zzbqz;->zzc:J

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbqz;->zzb:Lcom/google/android/libraries/places/internal/zzbqt;

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzbqt;->zza()J

    return-void
.end method

.method public final zzc()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbqz;->zzh:Lcom/google/android/libraries/places/internal/zzbkj;

    const-wide/16 v1, 0x1

    invoke-interface {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzbkj;->zza(J)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbqz;->zzb:Lcom/google/android/libraries/places/internal/zzbqt;

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzbqt;->zza()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/libraries/places/internal/zzbqz;->zzi:J

    return-void
.end method

.method public final zzd(I)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/google/android/libraries/places/internal/zzbqz;->zzg:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/libraries/places/internal/zzbqz;->zzg:J

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbqz;->zzb:Lcom/google/android/libraries/places/internal/zzbqt;

    invoke-interface {p1}, Lcom/google/android/libraries/places/internal/zzbqt;->zza()J

    return-void
.end method

.method public final zze(Z)V
    .locals 4

    const-wide/16 v0, 0x1

    if-eqz p1, :cond_0

    iget-wide v2, p0, Lcom/google/android/libraries/places/internal/zzbqz;->zzd:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/libraries/places/internal/zzbqz;->zzd:J

    return-void

    :cond_0
    iget-wide v2, p0, Lcom/google/android/libraries/places/internal/zzbqz;->zze:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/libraries/places/internal/zzbqz;->zze:J

    return-void
.end method

.method public final zzf(Lcom/google/android/libraries/places/internal/zzbqx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbqz;->zzf:Lcom/google/android/libraries/places/internal/zzbqx;

    return-void
.end method
