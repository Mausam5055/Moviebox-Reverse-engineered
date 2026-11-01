.class final Lcom/google/android/libraries/places/internal/zzbjo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Ljava/util/List;

.field final synthetic zzb:Lcom/google/android/libraries/places/internal/zzbkd;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbkd;Ljava/util/List;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbjo;->zza:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbjo;->zzb:Lcom/google/android/libraries/places/internal/zzbkd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjo;->zzb:Lcom/google/android/libraries/places/internal/zzbkd;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbkd;->zzl(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzbjx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbjx;->zzb()Ljava/net/SocketAddress;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbjo;->zzb:Lcom/google/android/libraries/places/internal/zzbkd;

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbkd;->zzl(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzbjx;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbjo;->zza:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/internal/zzbjx;->zze(Ljava/util/List;)V

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbjo;->zzb:Lcom/google/android/libraries/places/internal/zzbkd;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbjo;->zza:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/zzbkd;->zzt(Lcom/google/android/libraries/places/internal/zzbkd;Ljava/util/List;)V

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbjo;->zzb:Lcom/google/android/libraries/places/internal/zzbkd;

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbkd;->zzb(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzazf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzazf;->zza()Lcom/google/android/libraries/places/internal/zzaze;

    move-result-object v1

    sget-object v2, Lcom/google/android/libraries/places/internal/zzaze;->zzb:Lcom/google/android/libraries/places/internal/zzaze;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbjo;->zzb:Lcom/google/android/libraries/places/internal/zzbkd;

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbkd;->zzb(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzazf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzazf;->zza()Lcom/google/android/libraries/places/internal/zzaze;

    move-result-object v1

    sget-object v4, Lcom/google/android/libraries/places/internal/zzaze;->zza:Lcom/google/android/libraries/places/internal/zzaze;

    if-ne v1, v4, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v1, v3

    goto :goto_2

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbjo;->zzb:Lcom/google/android/libraries/places/internal/zzbkd;

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbkd;->zzl(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzbjx;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzbjx;->zzh(Ljava/net/SocketAddress;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjo;->zzb:Lcom/google/android/libraries/places/internal/zzbkd;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbkd;->zzb(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzazf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzazf;->zza()Lcom/google/android/libraries/places/internal/zzaze;

    move-result-object v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjo;->zzb:Lcom/google/android/libraries/places/internal/zzbkd;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbkd;->zzm(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzbml;

    move-result-object v1

    invoke-static {v0, v3}, Lcom/google/android/libraries/places/internal/zzbkd;->zzs(Lcom/google/android/libraries/places/internal/zzbkd;Lcom/google/android/libraries/places/internal/zzbml;)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjo;->zzb:Lcom/google/android/libraries/places/internal/zzbkd;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbkd;->zzl(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzbjx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbjx;->zzd()V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjo;->zzb:Lcom/google/android/libraries/places/internal/zzbkd;

    sget-object v2, Lcom/google/android/libraries/places/internal/zzaze;->zzd:Lcom/google/android/libraries/places/internal/zzaze;

    invoke-static {v0, v2}, Lcom/google/android/libraries/places/internal/zzbkd;->zzA(Lcom/google/android/libraries/places/internal/zzbkd;Lcom/google/android/libraries/places/internal/zzaze;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjo;->zzb:Lcom/google/android/libraries/places/internal/zzbkd;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbkd;->zzi(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzbgf;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/internal/zzbdo;->zzp:Lcom/google/android/libraries/places/internal/zzbdo;

    const-string v2, "InternalSubchannel closed pending transport due to address change"

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/zzbml;->zzd(Lcom/google/android/libraries/places/internal/zzbdo;)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjo;->zzb:Lcom/google/android/libraries/places/internal/zzbkd;

    invoke-static {v0, v3}, Lcom/google/android/libraries/places/internal/zzbkd;->zzu(Lcom/google/android/libraries/places/internal/zzbkd;Lcom/google/android/libraries/places/internal/zzbgf;)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjo;->zzb:Lcom/google/android/libraries/places/internal/zzbkd;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbkd;->zzl(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzbjx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbjx;->zzd()V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjo;->zzb:Lcom/google/android/libraries/places/internal/zzbkd;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbkd;->zzE(Lcom/google/android/libraries/places/internal/zzbkd;)V

    goto :goto_0

    :goto_2
    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjo;->zzb:Lcom/google/android/libraries/places/internal/zzbkd;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbkd;->zzf(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzbdv;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbkd;->zzn(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzbml;

    move-result-object v0

    sget-object v2, Lcom/google/android/libraries/places/internal/zzbdo;->zzp:Lcom/google/android/libraries/places/internal/zzbdo;

    const-string v4, "InternalSubchannel closed transport early due to address change"

    invoke-virtual {v2, v4}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/libraries/places/internal/zzbml;->zzd(Lcom/google/android/libraries/places/internal/zzbdo;)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjo;->zzb:Lcom/google/android/libraries/places/internal/zzbkd;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbkd;->zzf(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzbdv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbdv;->zza()V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjo;->zzb:Lcom/google/android/libraries/places/internal/zzbkd;

    invoke-static {v0, v3}, Lcom/google/android/libraries/places/internal/zzbkd;->zzw(Lcom/google/android/libraries/places/internal/zzbkd;Lcom/google/android/libraries/places/internal/zzbdv;)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjo;->zzb:Lcom/google/android/libraries/places/internal/zzbkd;

    invoke-static {v0, v3}, Lcom/google/android/libraries/places/internal/zzbkd;->zzx(Lcom/google/android/libraries/places/internal/zzbkd;Lcom/google/android/libraries/places/internal/zzbml;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjo;->zzb:Lcom/google/android/libraries/places/internal/zzbkd;

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzbkd;->zzx(Lcom/google/android/libraries/places/internal/zzbkd;Lcom/google/android/libraries/places/internal/zzbml;)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjo;->zzb:Lcom/google/android/libraries/places/internal/zzbkd;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbkd;->zzg(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzbdw;

    move-result-object v1

    new-instance v2, Lcom/google/android/libraries/places/internal/zzbjn;

    invoke-direct {v2, p0}, Lcom/google/android/libraries/places/internal/zzbjn;-><init>(Lcom/google/android/libraries/places/internal/zzbjo;)V

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbkd;->zzr(Lcom/google/android/libraries/places/internal/zzbkd;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v6

    const-wide/16 v3, 0x5

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/libraries/places/internal/zzbdw;->zza(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/libraries/places/internal/zzbdv;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzbkd;->zzw(Lcom/google/android/libraries/places/internal/zzbkd;Lcom/google/android/libraries/places/internal/zzbdv;)V

    :cond_4
    return-void
.end method
