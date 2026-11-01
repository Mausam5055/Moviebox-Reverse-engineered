.class final Lcom/google/android/gms/measurement/internal/zzf;
.super Ljava/lang/Object;


# instance fields
.field private final zza:Lcom/google/android/gms/measurement/internal/zzjh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzjh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzf;->zza:Lcom/google/android/gms/measurement/internal/zzjh;

    return-void
.end method

.method static zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzf;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/zzje;->zza(C)Lcom/google/android/gms/measurement/internal/zzjh;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzjh;->zza:Lcom/google/android/gms/measurement/internal/zzjh;

    :goto_1
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzf;-><init>(Lcom/google/android/gms/measurement/internal/zzjh;)V

    return-object v0
.end method


# virtual methods
.method final zza()Lcom/google/android/gms/measurement/internal/zzjh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzf;->zza:Lcom/google/android/gms/measurement/internal/zzjh;

    return-object v0
.end method

.method final zzb()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzf;->zza:Lcom/google/android/gms/measurement/internal/zzjh;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzje;->zza(Lcom/google/android/gms/measurement/internal/zzjh;)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
