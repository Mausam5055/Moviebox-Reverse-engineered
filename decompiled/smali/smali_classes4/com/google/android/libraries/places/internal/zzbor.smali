.class final Lcom/google/android/libraries/places/internal/zzbor;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzbov;


# instance fields
.field final synthetic zza:Ljava/lang/Object;

.field final synthetic zzb:Lcom/google/android/libraries/places/internal/zzbpo;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbpo;Ljava/lang/Object;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbor;->zza:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbor;->zzb:Lcom/google/android/libraries/places/internal/zzbpo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/libraries/places/internal/zzbpm;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbor;->zzb:Lcom/google/android/libraries/places/internal/zzbpo;

    iget-object v1, p1, Lcom/google/android/libraries/places/internal/zzbpm;->zza:Lcom/google/android/libraries/places/internal/zzbfr;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbpo;->zzq(Lcom/google/android/libraries/places/internal/zzbpo;)Lcom/google/android/libraries/places/internal/zzbcl;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbor;->zza:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/places/internal/zzbcl;->zzc(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/libraries/places/internal/zzbqp;->zzw(Ljava/io/InputStream;)V

    iget-object p1, p1, Lcom/google/android/libraries/places/internal/zzbpm;->zza:Lcom/google/android/libraries/places/internal/zzbfr;

    invoke-interface {p1}, Lcom/google/android/libraries/places/internal/zzbqp;->zzr()V

    return-void
.end method
