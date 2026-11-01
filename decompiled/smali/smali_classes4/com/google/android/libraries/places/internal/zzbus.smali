.class final Lcom/google/android/libraries/places/internal/zzbus;
.super Lcom/google/android/libraries/places/internal/zzajp;


# instance fields
.field private final zzc:Lcom/google/android/libraries/places/internal/zzayo;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzayo;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzajp;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbus;->zzc:Lcom/google/android/libraries/places/internal/zzayo;

    return-void
.end method

.method static bridge synthetic zzn(Lcom/google/android/libraries/places/internal/zzbus;)Lcom/google/android/libraries/places/internal/zzayo;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbus;->zzc:Lcom/google/android/libraries/places/internal/zzayo;

    return-object p0
.end method


# virtual methods
.method protected final zze()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzmn;->zzb(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    move-result-object v0

    const-string v1, "clientCall"

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbus;->zzc:Lcom/google/android/libraries/places/internal/zzayo;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzmm;->zzd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzmm;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final zzk()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbus;->zzc:Lcom/google/android/libraries/places/internal/zzayo;

    const-string v1, "GrpcFuture was cancelled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzayo;->zza(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected final zzl(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/libraries/places/internal/zzajp;->zzl(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected final zzm(Ljava/lang/Throwable;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/libraries/places/internal/zzajp;->zzm(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method
