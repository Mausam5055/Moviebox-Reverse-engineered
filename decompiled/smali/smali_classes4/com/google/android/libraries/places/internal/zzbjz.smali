.class final Lcom/google/android/libraries/places/internal/zzbjz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzbdo;

.field final synthetic zzb:Lcom/google/android/libraries/places/internal/zzbkb;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbkb;Lcom/google/android/libraries/places/internal/zzbdo;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbjz;->zza:Lcom/google/android/libraries/places/internal/zzbdo;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbjz;->zzb:Lcom/google/android/libraries/places/internal/zzbkb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjz;->zzb:Lcom/google/android/libraries/places/internal/zzbkb;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbkb;->zzc:Lcom/google/android/libraries/places/internal/zzbkd;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbkd;->zzb(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzazf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzazf;->zza()Lcom/google/android/libraries/places/internal/zzaze;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/internal/zzaze;->zze:Lcom/google/android/libraries/places/internal/zzaze;

    if-ne v0, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjz;->zzb:Lcom/google/android/libraries/places/internal/zzbkb;

    iget-object v1, v0, Lcom/google/android/libraries/places/internal/zzbkb;->zzc:Lcom/google/android/libraries/places/internal/zzbkd;

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbkd;->zzm(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzbml;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbkb;->zza:Lcom/google/android/libraries/places/internal/zzbgf;

    const/4 v2, 0x0

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjz;->zzb:Lcom/google/android/libraries/places/internal/zzbkb;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbkb;->zzc:Lcom/google/android/libraries/places/internal/zzbkd;

    invoke-static {v0, v2}, Lcom/google/android/libraries/places/internal/zzbkd;->zzs(Lcom/google/android/libraries/places/internal/zzbkd;Lcom/google/android/libraries/places/internal/zzbml;)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjz;->zzb:Lcom/google/android/libraries/places/internal/zzbkb;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbkb;->zzc:Lcom/google/android/libraries/places/internal/zzbkd;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbkd;->zzl(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzbjx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbjx;->zzd()V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjz;->zzb:Lcom/google/android/libraries/places/internal/zzbkb;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbkb;->zzc:Lcom/google/android/libraries/places/internal/zzbkd;

    sget-object v1, Lcom/google/android/libraries/places/internal/zzaze;->zzd:Lcom/google/android/libraries/places/internal/zzaze;

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzbkd;->zzA(Lcom/google/android/libraries/places/internal/zzbkd;Lcom/google/android/libraries/places/internal/zzaze;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjz;->zzb:Lcom/google/android/libraries/places/internal/zzbkb;

    iget-object v1, v0, Lcom/google/android/libraries/places/internal/zzbkb;->zzc:Lcom/google/android/libraries/places/internal/zzbkd;

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbkd;->zzi(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzbgf;

    move-result-object v3

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbkb;->zza:Lcom/google/android/libraries/places/internal/zzbgf;

    if-ne v3, v0, :cond_4

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbkd;->zzb(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzazf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzazf;->zza()Lcom/google/android/libraries/places/internal/zzaze;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/internal/zzaze;->zza:Lcom/google/android/libraries/places/internal/zzaze;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbjz;->zzb:Lcom/google/android/libraries/places/internal/zzbkb;

    iget-object v1, v1, Lcom/google/android/libraries/places/internal/zzbkb;->zzc:Lcom/google/android/libraries/places/internal/zzbkd;

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbkd;->zzb(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzazf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzazf;->zza()Lcom/google/android/libraries/places/internal/zzaze;

    move-result-object v1

    const-string v3, "Expected state is CONNECTING, actual state is %s"

    invoke-static {v0, v3, v1}, Lcom/google/android/libraries/places/internal/zzmt;->zzr(ZLjava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjz;->zzb:Lcom/google/android/libraries/places/internal/zzbkb;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbkb;->zzc:Lcom/google/android/libraries/places/internal/zzbkd;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbkd;->zzl(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzbjx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbjx;->zzc()V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjz;->zzb:Lcom/google/android/libraries/places/internal/zzbkb;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbkb;->zzc:Lcom/google/android/libraries/places/internal/zzbkd;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbkd;->zzl(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzbjx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbjx;->zzg()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjz;->zzb:Lcom/google/android/libraries/places/internal/zzbkb;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbkb;->zzc:Lcom/google/android/libraries/places/internal/zzbkd;

    invoke-static {v0, v2}, Lcom/google/android/libraries/places/internal/zzbkd;->zzu(Lcom/google/android/libraries/places/internal/zzbkd;Lcom/google/android/libraries/places/internal/zzbgf;)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjz;->zzb:Lcom/google/android/libraries/places/internal/zzbkb;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbkb;->zzc:Lcom/google/android/libraries/places/internal/zzbkd;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbkd;->zzl(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzbjx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbjx;->zzd()V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjz;->zzb:Lcom/google/android/libraries/places/internal/zzbkb;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbjz;->zza:Lcom/google/android/libraries/places/internal/zzbdo;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbkb;->zzc:Lcom/google/android/libraries/places/internal/zzbkd;

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzbkd;->zzD(Lcom/google/android/libraries/places/internal/zzbkd;Lcom/google/android/libraries/places/internal/zzbdo;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjz;->zzb:Lcom/google/android/libraries/places/internal/zzbkb;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbkb;->zzc:Lcom/google/android/libraries/places/internal/zzbkd;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbkd;->zzE(Lcom/google/android/libraries/places/internal/zzbkd;)V

    :cond_4
    :goto_1
    return-void
.end method
