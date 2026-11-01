.class public final synthetic Lcom/google/android/gms/internal/measurement/zzd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private synthetic zza:Lcom/google/android/gms/internal/measurement/zzb;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzd;->zza:Lcom/google/android/gms/internal/measurement/zzb;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzd;->zza:Lcom/google/android/gms/internal/measurement/zzb;

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzk;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzb;->zza:Lcom/google/android/gms/internal/measurement/zzac;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/zzk;-><init>(Lcom/google/android/gms/internal/measurement/zzac;)V

    return-object v1
.end method
