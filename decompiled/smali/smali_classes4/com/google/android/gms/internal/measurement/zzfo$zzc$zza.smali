.class public final Lcom/google/android/gms/internal/measurement/zzfo$zzc$zza;
.super Lcom/google/android/gms/internal/measurement/zzjt$zzb;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzfo$zzc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzjt$zzb<",
        "Lcom/google/android/gms/internal/measurement/zzfo$zzc;",
        "Lcom/google/android/gms/internal/measurement/zzfo$zzc$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzle;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfo$zzc;->zza()Lcom/google/android/gms/internal/measurement/zzfo$zzc;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzjt$zzb;-><init>(Lcom/google/android/gms/internal/measurement/zzjt;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzfs;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzfo$zzc$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfo$zzc$zza;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt$zzb;->zzak()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt$zzb;->zza:Lcom/google/android/gms/internal/measurement/zzjt;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfo$zzc;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfo$zzc;->zza(Lcom/google/android/gms/internal/measurement/zzfo$zzc;Ljava/lang/String;)V

    return-object p0
.end method
