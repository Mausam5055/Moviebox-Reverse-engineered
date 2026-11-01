.class final Lcom/google/android/libraries/places/internal/zzajp$zzj;
.super Ljava/lang/Object;


# static fields
.field static final zza:Lcom/google/android/libraries/places/internal/zzajp$zzj;


# instance fields
.field volatile next:Lcom/google/android/libraries/places/internal/zzajp$zzj;

.field volatile thread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/libraries/places/internal/zzajp$zzj;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/internal/zzajp$zzj;-><init>(Z)V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzajp$zzj;->zza:Lcom/google/android/libraries/places/internal/zzajp$zzj;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzajp;->zza()Lcom/google/android/libraries/places/internal/zzajp$zza;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/google/android/libraries/places/internal/zzajp$zza;->zzd(Lcom/google/android/libraries/places/internal/zzajp$zzj;Ljava/lang/Thread;)V

    return-void
.end method

.method constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
