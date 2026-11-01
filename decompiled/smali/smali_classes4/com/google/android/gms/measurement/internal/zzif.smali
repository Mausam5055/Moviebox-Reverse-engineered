.class public final synthetic Lcom/google/android/gms/measurement/internal/zzif;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zza:Lcom/google/android/gms/measurement/internal/zzic;

.field private synthetic zzb:Lcom/google/android/gms/measurement/internal/zzo;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzic;Lcom/google/android/gms/measurement/internal/zzo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzif;->zza:Lcom/google/android/gms/measurement/internal/zzic;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzif;->zzb:Lcom/google/android/gms/measurement/internal/zzo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzif;->zza:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzif;->zzb:Lcom/google/android/gms/measurement/internal/zzo;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzic;->zzk(Lcom/google/android/gms/measurement/internal/zzo;)V

    return-void
.end method
