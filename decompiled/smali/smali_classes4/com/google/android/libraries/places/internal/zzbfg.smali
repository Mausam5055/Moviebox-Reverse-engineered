.class final Lcom/google/android/libraries/places/internal/zzbfg;
.super Ljava/lang/Object;


# static fields
.field static final zza:Lcom/google/android/libraries/places/internal/zzbff;


# instance fields
.field private final zzb:Lcom/google/android/libraries/places/internal/zzbqt;

.field private final zzc:Lcom/google/android/libraries/places/internal/zzbkj;

.field private final zzd:Lcom/google/android/libraries/places/internal/zzbkj;

.field private final zze:Lcom/google/android/libraries/places/internal/zzbkj;

.field private volatile zzf:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbfe;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzbfe;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbfg;->zza:Lcom/google/android/libraries/places/internal/zzbff;

    return-void
.end method

.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbqt;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbkk;->zza()Lcom/google/android/libraries/places/internal/zzbkj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfg;->zzc:Lcom/google/android/libraries/places/internal/zzbkj;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbkk;->zza()Lcom/google/android/libraries/places/internal/zzbkj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfg;->zzd:Lcom/google/android/libraries/places/internal/zzbkj;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbkk;->zza()Lcom/google/android/libraries/places/internal/zzbkj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfg;->zze:Lcom/google/android/libraries/places/internal/zzbkj;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbfg;->zzb:Lcom/google/android/libraries/places/internal/zzbqt;

    return-void
.end method


# virtual methods
.method public final zza(Z)V
    .locals 2

    const-wide/16 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbfg;->zzd:Lcom/google/android/libraries/places/internal/zzbkj;

    invoke-interface {p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzbkj;->zza(J)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbfg;->zze:Lcom/google/android/libraries/places/internal/zzbkj;

    invoke-interface {p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzbkj;->zza(J)V

    return-void
.end method

.method public final zzb()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfg;->zzc:Lcom/google/android/libraries/places/internal/zzbkj;

    const-wide/16 v1, 0x1

    invoke-interface {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzbkj;->zza(J)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfg;->zzb:Lcom/google/android/libraries/places/internal/zzbqt;

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzbqt;->zza()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/libraries/places/internal/zzbfg;->zzf:J

    return-void
.end method
