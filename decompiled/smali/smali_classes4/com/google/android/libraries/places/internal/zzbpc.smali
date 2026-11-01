.class final Lcom/google/android/libraries/places/internal/zzbpc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzbov;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzbpo;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbpo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbpc;->zza:Lcom/google/android/libraries/places/internal/zzbpo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/libraries/places/internal/zzbpm;)V
    .locals 3

    iget-object v0, p1, Lcom/google/android/libraries/places/internal/zzbpm;->zza:Lcom/google/android/libraries/places/internal/zzbfr;

    new-instance v1, Lcom/google/android/libraries/places/internal/zzbpl;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbpc;->zza:Lcom/google/android/libraries/places/internal/zzbpo;

    invoke-direct {v1, v2, p1}, Lcom/google/android/libraries/places/internal/zzbpl;-><init>(Lcom/google/android/libraries/places/internal/zzbpo;Lcom/google/android/libraries/places/internal/zzbpm;)V

    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/zzbfr;->zzo(Lcom/google/android/libraries/places/internal/zzbft;)V

    return-void
.end method
