.class final Lcom/google/android/gms/measurement/internal/zzg;
.super Ljava/lang/Object;


# instance fields
.field private final zza:Lcom/google/android/gms/measurement/internal/zzhy;

.field private zzaa:Ljava/lang/Long;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzab:Ljava/lang/Long;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzac:J

.field private zzad:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzae:I

.field private zzaf:I

.field private zzag:J

.field private zzah:Ljava/lang/String;

.field private zzai:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzaj:J

.field private zzak:J

.field private zzal:J

.field private zzam:J

.field private zzan:J

.field private zzao:J

.field private zzap:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzaq:Z

.field private zzar:J

.field private zzas:J

.field private final zzb:Ljava/lang/String;

.field private zzc:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzd:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zze:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzf:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzg:J

.field private zzh:J

.field private zzi:J

.field private zzj:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzk:J

.field private zzl:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzm:J

.field private zzn:J

.field private zzo:Z

.field private zzp:Z

.field private zzq:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzr:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzs:J

.field private zzt:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzu:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzv:Z

.field private zzw:J

.field private zzx:J

.field private zzy:I

.field private zzz:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzhy;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzb:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzy:I

    return v0
.end method

.method public final zza(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzy:I

    if-eq v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iput p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzy:I

    return-void
.end method

.method public final zza(J)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzg:J

    add-long/2addr v0, p1

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    const-wide/16 v5, 0x1

    if-lez v4, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzb:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v4, "Bundle index overflow. appId"

    invoke-virtual {v0, v4, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    sub-long v0, p1, v5

    :cond_0
    iget-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzag:J

    add-long/2addr p1, v5

    cmp-long v2, p1, v2

    if-lez v2, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhy;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzb:Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    const-string v2, "Delivery index overflow. appId"

    invoke-virtual {p1, v2, p2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 p1, 0x0

    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzg:J

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzag:J

    return-void
.end method

.method public final zza(Ljava/lang/Boolean;)V
    .locals 2
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzr:Ljava/lang/Boolean;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzr:Ljava/lang/Boolean;

    return-void
.end method

.method public final zza(Ljava/lang/Long;)V
    .locals 2
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaa:Ljava/lang/Long;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaa:Ljava/lang/Long;

    return-void
.end method

.method public final zza(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzq:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzq:Ljava/lang/String;

    return-void
.end method

.method public final zza(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzt:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzt:Ljava/util/List;

    :cond_1
    return-void
.end method

.method public final zza(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzp:Z

    if-eq v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzp:Z

    return-void
.end method

.method public final zza([B)V
    .locals 2
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzai:[B

    if-eq v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzai:[B

    return-void
.end method

.method public final zzaa()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzq:Ljava/lang/String;

    return-object v0
.end method

.method public final zzab()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzap:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzg(Ljava/lang/String;)V

    return-object v0
.end method

.method public final zzac()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final zzad()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzc:Ljava/lang/String;

    return-object v0
.end method

.method public final zzae()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzl:Ljava/lang/String;

    return-object v0
.end method

.method public final zzaf()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzj:Ljava/lang/String;

    return-object v0
.end method

.method public final zzag()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method public final zzah()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzd:Ljava/lang/String;

    return-object v0
.end method

.method public final zzai()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzap:Ljava/lang/String;

    return-object v0
.end method

.method public final zzaj()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final zzak()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzah:Ljava/lang/String;

    return-object v0
.end method

.method public final zzal()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzu:Ljava/lang/String;

    return-object v0
.end method

.method public final zzam()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzad:Ljava/lang/String;

    return-object v0
.end method

.method public final zzan()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzt:Ljava/util/List;

    return-object v0
.end method

.method public final zzao()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    return-void
.end method

.method public final zzap()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzg:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzb:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Bundle index overflow. appId"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzg:J

    return-void
.end method

.method public final zzaq()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzp:Z

    return v0
.end method

.method public final zzar()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzo:Z

    return v0
.end method

.method public final zzas()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    return v0
.end method

.method public final zzat()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzv:Z

    return v0
.end method

.method public final zzau()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzz:Z

    return v0
.end method

.method public final zzav()[B
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzai:[B

    return-object v0
.end method

.method public final zzb()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaf:I

    return v0
.end method

.method public final zzb(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaf:I

    if-eq v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iput p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaf:I

    return-void
.end method

.method public final zzb(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzk:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzk:J

    return-void
.end method

.method public final zzb(Ljava/lang/Long;)V
    .locals 2
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzab:Ljava/lang/Long;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzab:Ljava/lang/Long;

    return-void
.end method

.method public final zzb(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzc:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzc:Ljava/lang/String;

    return-void
.end method

.method public final zzb(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzo:Z

    if-eq v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzo:Z

    return-void
.end method

.method public final zzc()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzae:I

    return v0
.end method

.method public final zzc(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzae:I

    if-eq v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iput p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzae:I

    return-void
.end method

.method public final zzc(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzac:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzac:J

    return-void
.end method

.method public final zzc(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzl:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzl:Ljava/lang/String;

    return-void
.end method

.method public final zzc(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzv:Z

    if-eq v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzv:Z

    return-void
.end method

.method public final zzd()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final zzd(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzar:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzar:J

    return-void
.end method

.method public final zzd(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzj:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzj:Ljava/lang/String;

    return-void
.end method

.method public final zzd(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzz:Z

    if-eq v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzz:Z

    return-void
.end method

.method public final zze()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzk:J

    return-wide v0
.end method

.method public final zze(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzam:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzam:J

    return-void
.end method

.method public final zze(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzf:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzf:Ljava/lang/String;

    return-void
.end method

.method public final zzf()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzac:J

    return-wide v0
.end method

.method public final zzf(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzan:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzan:J

    return-void
.end method

.method public final zzf(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzd:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzd:Ljava/lang/String;

    return-void
.end method

.method public final zzg()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzar:J

    return-wide v0
.end method

.method public final zzg(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzal:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzal:J

    return-void
.end method

.method public final zzg(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzap:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzap:Ljava/lang/String;

    return-void
.end method

.method public final zzh()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzam:J

    return-wide v0
.end method

.method public final zzh(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzak:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzak:J

    return-void
.end method

.method public final zzh(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zze:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zze:Ljava/lang/String;

    return-void
.end method

.method public final zzi()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzan:J

    return-wide v0
.end method

.method public final zzi(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzao:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzao:J

    return-void
.end method

.method public final zzi(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzah:Ljava/lang/String;

    if-eq v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzah:Ljava/lang/String;

    return-void
.end method

.method public final zzj()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzal:J

    return-wide v0
.end method

.method public final zzj(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaj:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaj:J

    return-void
.end method

.method public final zzj(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzu:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzu:Ljava/lang/String;

    return-void
.end method

.method public final zzk()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzak:J

    return-wide v0
.end method

.method public final zzk(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzn:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzn:J

    return-void
.end method

.method public final zzk(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzad:Ljava/lang/String;

    if-eq v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzad:Ljava/lang/String;

    return-void
.end method

.method public final zzl()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzao:J

    return-wide v0
.end method

.method public final zzl(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzs:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzs:J

    return-void
.end method

.method public final zzm()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaj:J

    return-wide v0
.end method

.method public final zzm(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzas:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzas:J

    return-void
.end method

.method public final zzn()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzn:J

    return-wide v0
.end method

.method public final zzn(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzm:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzm:J

    return-void
.end method

.method public final zzo()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzs:J

    return-wide v0
.end method

.method public final zzo(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzag:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzag:J

    return-void
.end method

.method public final zzp()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzas:J

    return-wide v0
.end method

.method public final zzp(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzi:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzi:J

    return-void
.end method

.method public final zzq()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzm:J

    return-wide v0
.end method

.method public final zzq(J)V
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzg:J

    cmp-long v3, v3, p1

    if-eqz v3, :cond_1

    move v1, v2

    :cond_1
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzg:J

    return-void
.end method

.method public final zzr()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzag:J

    return-wide v0
.end method

.method public final zzr(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzh:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzh:J

    return-void
.end method

.method public final zzs()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzi:J

    return-wide v0
.end method

.method public final zzs(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzx:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzx:J

    return-void
.end method

.method public final zzt()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzg:J

    return-wide v0
.end method

.method public final zzt(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzw:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaq:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzw:J

    return-void
.end method

.method public final zzu()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzh:J

    return-wide v0
.end method

.method public final zzv()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzx:J

    return-wide v0
.end method

.method public final zzw()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzw:J

    return-wide v0
.end method

.method public final zzx()Ljava/lang/Boolean;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzr:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final zzy()Ljava/lang/Long;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaa:Ljava/lang/Long;

    return-object v0
.end method

.method public final zzz()Ljava/lang/Long;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzab:Ljava/lang/Long;

    return-object v0
.end method
