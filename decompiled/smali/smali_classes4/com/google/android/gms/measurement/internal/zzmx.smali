.class public final synthetic Lcom/google/android/gms/measurement/internal/zzmx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zza:Lcom/google/android/gms/measurement/internal/zzmy;

.field private synthetic zzb:Lcom/google/android/gms/measurement/internal/zzgo;

.field private synthetic zzc:Landroid/app/job/JobParameters;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzmy;Lcom/google/android/gms/measurement/internal/zzgo;Landroid/app/job/JobParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzmx;->zza:Lcom/google/android/gms/measurement/internal/zzmy;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzmx;->zzb:Lcom/google/android/gms/measurement/internal/zzgo;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzmx;->zzc:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzmx;->zza:Lcom/google/android/gms/measurement/internal/zzmy;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzmx;->zzb:Lcom/google/android/gms/measurement/internal/zzgo;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzmx;->zzc:Landroid/app/job/JobParameters;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzmy;->zza(Lcom/google/android/gms/measurement/internal/zzgo;Landroid/app/job/JobParameters;)V

    return-void
.end method
