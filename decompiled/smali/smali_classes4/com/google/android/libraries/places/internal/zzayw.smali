.class public final Lcom/google/android/libraries/places/internal/zzayw;
.super Ljava/lang/Object;


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzayj;

.field private final zzb:I

.field private final zzc:Z


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzayj;IZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "callOptions"

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzayw;->zza:Lcom/google/android/libraries/places/internal/zzayj;

    iput p2, p0, Lcom/google/android/libraries/places/internal/zzayw;->zzb:I

    iput-boolean p3, p0, Lcom/google/android/libraries/places/internal/zzayw;->zzc:Z

    return-void
.end method

.method public static zza()Lcom/google/android/libraries/places/internal/zzayv;
    .locals 1

    new-instance v0, Lcom/google/android/libraries/places/internal/zzayv;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzayv;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzmn;->zzb(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    move-result-object v0

    const-string v1, "callOptions"

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzayw;->zza:Lcom/google/android/libraries/places/internal/zzayj;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzmm;->zzd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    const-string v1, "previousAttempts"

    iget v2, p0, Lcom/google/android/libraries/places/internal/zzayw;->zzb:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzmm;->zzb(Ljava/lang/String;I)Lcom/google/android/libraries/places/internal/zzmm;

    const-string v1, "isTransparentRetry"

    iget-boolean v2, p0, Lcom/google/android/libraries/places/internal/zzayw;->zzc:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzmm;->zze(Ljava/lang/String;Z)Lcom/google/android/libraries/places/internal/zzmm;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzmm;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
