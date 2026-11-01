.class public final Lcom/google/android/gms/internal/measurement/zzpj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzpg;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zzhj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzhj<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzb:Lcom/google/android/gms/internal/measurement/zzhj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzhj<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzc:Lcom/google/android/gms/internal/measurement/zzhj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzhj<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzd:Lcom/google/android/gms/internal/measurement/zzhj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzhj<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final zze:Lcom/google/android/gms/internal/measurement/zzhj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzhj<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzf:Lcom/google/android/gms/internal/measurement/zzhj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzhj<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzhr;

    const-string v1, "com.google.android.gms.measurement"

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzhk;->zza(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzhr;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhr;->zzb()Lcom/google/android/gms/internal/measurement/zzhr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhr;->zza()Lcom/google/android/gms/internal/measurement/zzhr;

    move-result-object v0

    const-string v1, "measurement.test.boolean_flag"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzhr;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzhj;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzpj;->zza:Lcom/google/android/gms/internal/measurement/zzhj;

    const-string v1, "measurement.test.cached_long_flag"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzhr;->zza(Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/zzhj;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzpj;->zzb:Lcom/google/android/gms/internal/measurement/zzhj;

    const-string v1, "measurement.test.double_flag"

    const-wide/high16 v4, -0x3ff8000000000000L    # -3.0

    invoke-virtual {v0, v1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzhr;->zza(Ljava/lang/String;D)Lcom/google/android/gms/internal/measurement/zzhj;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzpj;->zzc:Lcom/google/android/gms/internal/measurement/zzhj;

    const-string v1, "measurement.test.int_flag"

    const-wide/16 v4, -0x2

    invoke-virtual {v0, v1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzhr;->zza(Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/zzhj;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzpj;->zzd:Lcom/google/android/gms/internal/measurement/zzhj;

    const-string v1, "measurement.test.long_flag"

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzhr;->zza(Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/zzhj;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzpj;->zze:Lcom/google/android/gms/internal/measurement/zzhj;

    const-string v1, "measurement.test.string_flag"

    const-string v2, "---"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzhr;->zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhj;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzpj;->zzf:Lcom/google/android/gms/internal/measurement/zzhj;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()D
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpj;->zzc:Lcom/google/android/gms/internal/measurement/zzhj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhj;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public final zzb()J
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpj;->zzb:Lcom/google/android/gms/internal/measurement/zzhj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhj;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzc()J
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpj;->zzd:Lcom/google/android/gms/internal/measurement/zzhj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhj;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzd()J
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpj;->zze:Lcom/google/android/gms/internal/measurement/zzhj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhj;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zze()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpj;->zzf:Lcom/google/android/gms/internal/measurement/zzhj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhj;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final zzf()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpj;->zza:Lcom/google/android/gms/internal/measurement/zzhj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhj;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
