.class public final Lcom/google/android/libraries/places/internal/zzayv;
.super Ljava/lang/Object;


# instance fields
.field private zza:Lcom/google/android/libraries/places/internal/zzayj;

.field private zzb:I

.field private zzc:Z


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/libraries/places/internal/zzayj;->zza:Lcom/google/android/libraries/places/internal/zzayj;

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzayv;->zza:Lcom/google/android/libraries/places/internal/zzayj;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/libraries/places/internal/zzayj;)Lcom/google/android/libraries/places/internal/zzayv;
    .locals 1

    const-string v0, "callOptions cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzayv;->zza:Lcom/google/android/libraries/places/internal/zzayj;

    return-object p0
.end method

.method public final zzb(Z)Lcom/google/android/libraries/places/internal/zzayv;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzayv;->zzc:Z

    return-object p0
.end method

.method public final zzc(I)Lcom/google/android/libraries/places/internal/zzayv;
    .locals 0

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzayv;->zzb:I

    return-object p0
.end method

.method public final zzd()Lcom/google/android/libraries/places/internal/zzayw;
    .locals 4

    new-instance v0, Lcom/google/android/libraries/places/internal/zzayw;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzayv;->zza:Lcom/google/android/libraries/places/internal/zzayj;

    iget v2, p0, Lcom/google/android/libraries/places/internal/zzayv;->zzb:I

    iget-boolean v3, p0, Lcom/google/android/libraries/places/internal/zzayv;->zzc:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/libraries/places/internal/zzayw;-><init>(Lcom/google/android/libraries/places/internal/zzayj;IZ)V

    return-object v0
.end method
