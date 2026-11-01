.class final Lcom/google/android/libraries/places/internal/zzbjn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzbjo;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbjo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbjn;->zza:Lcom/google/android/libraries/places/internal/zzbjo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjn;->zza:Lcom/google/android/libraries/places/internal/zzbjo;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbjo;->zzb:Lcom/google/android/libraries/places/internal/zzbkd;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbkd;->zzn(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzbml;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/libraries/places/internal/zzbkd;->zzw(Lcom/google/android/libraries/places/internal/zzbkd;Lcom/google/android/libraries/places/internal/zzbdv;)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjn;->zza:Lcom/google/android/libraries/places/internal/zzbjo;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbjo;->zzb:Lcom/google/android/libraries/places/internal/zzbkd;

    invoke-static {v0, v2}, Lcom/google/android/libraries/places/internal/zzbkd;->zzx(Lcom/google/android/libraries/places/internal/zzbkd;Lcom/google/android/libraries/places/internal/zzbml;)V

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbdo;->zzp:Lcom/google/android/libraries/places/internal/zzbdo;

    const-string v2, "InternalSubchannel closed transport due to address change"

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/libraries/places/internal/zzbml;->zzd(Lcom/google/android/libraries/places/internal/zzbdo;)V

    return-void
.end method
