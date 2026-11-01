.class final Lcom/google/android/gms/measurement/internal/zzom;
.super Ljava/lang/Object;


# instance fields
.field private zza:J

.field private zzb:Lcom/google/android/gms/internal/measurement/zzfy$zzj;

.field private zzc:Ljava/lang/String;

.field private zzd:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zze:Lcom/google/android/gms/measurement/internal/zznt;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/measurement/internal/zzoj;
    .locals 9

    new-instance v8, Lcom/google/android/gms/measurement/internal/zzoj;

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzom;->zza:J

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzom;->zzb:Lcom/google/android/gms/internal/measurement/zzfy$zzj;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzom;->zzc:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzom;->zzd:Ljava/util/Map;

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzom;->zze:Lcom/google/android/gms/measurement/internal/zznt;

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/measurement/internal/zzoj;-><init>(JLcom/google/android/gms/internal/measurement/zzfy$zzj;Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/measurement/internal/zznt;Lcom/google/android/gms/measurement/internal/zzol;)V

    return-object v8
.end method

.method public final zza(J)Lcom/google/android/gms/measurement/internal/zzom;
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzom;->zza:J

    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzfy$zzj;)Lcom/google/android/gms/measurement/internal/zzom;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzom;->zzb:Lcom/google/android/gms/internal/measurement/zzfy$zzj;

    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zznt;)Lcom/google/android/gms/measurement/internal/zzom;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzom;->zze:Lcom/google/android/gms/measurement/internal/zznt;

    return-object p0
.end method

.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzom;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzom;->zzc:Ljava/lang/String;

    return-object p0
.end method

.method public final zza(Ljava/util/Map;)Lcom/google/android/gms/measurement/internal/zzom;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/measurement/internal/zzom;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzom;->zzd:Ljava/util/Map;

    return-object p0
.end method
