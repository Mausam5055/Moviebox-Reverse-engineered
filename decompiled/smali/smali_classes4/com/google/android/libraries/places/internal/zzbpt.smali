.class public final synthetic Lcom/google/android/libraries/places/internal/zzbpt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/libraries/places/internal/zzbpu;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzbpu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbpt;->zza:Lcom/google/android/libraries/places/internal/zzbpu;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbpt;->zza:Lcom/google/android/libraries/places/internal/zzbpu;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbpu;->zza:Lcom/google/android/libraries/places/internal/zzbpv;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbpv;->zzf(Lcom/google/android/libraries/places/internal/zzbpv;)Lcom/google/android/libraries/places/internal/zzbpq;

    move-result-object v1

    new-instance v2, Lcom/google/android/libraries/places/internal/zzbpr;

    invoke-direct {v2, v0}, Lcom/google/android/libraries/places/internal/zzbpr;-><init>(Lcom/google/android/libraries/places/internal/zzbpv;)V

    invoke-interface {v1, v2}, Lcom/google/android/libraries/places/internal/zzbpq;->zzc(Ljava/lang/Runnable;)V

    return-void
.end method
