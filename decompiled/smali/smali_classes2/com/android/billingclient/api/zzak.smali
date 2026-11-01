.class final Lcom/android/billingclient/api/zzak;
.super Landroid/os/ResultReceiver;


# instance fields
.field final synthetic a:Lcom/android/billingclient/api/i;


# virtual methods
.method public final onReceiveResult(ILandroid/os/Bundle;)V
    .locals 7

    invoke-static {}, Lcom/android/billingclient/api/n;->c()Lcom/android/billingclient/api/n$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/n$a;->c(I)Lcom/android/billingclient/api/n$a;

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const/16 p1, 0x10

    if-eqz p2, :cond_2

    const-string v2, "BillingClient"

    invoke-static {p2, v2}, Lcom/google/android/gms/internal/play_billing/zzb;->zzg(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/n$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/n$a;

    const-string v2, "INTERNAL_LOG_ERROR_REASON"

    invoke-virtual {p2, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/android/billingclient/api/zzak;->a:Lcom/android/billingclient/api/i;

    invoke-static {v3}, Lcom/android/billingclient/api/i;->R(Lcom/android/billingclient/api/i;)Lcom/android/billingclient/api/n0;

    move-result-object v3

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/zzih;->zza(I)I

    move-result v2

    goto :goto_0

    :cond_0
    const/16 v2, 0x17

    :goto_0
    invoke-virtual {v0}, Lcom/android/billingclient/api/n$a;->a()Lcom/android/billingclient/api/n;

    move-result-object v4

    const-string v5, "INTERNAL_LOG_ERROR_ADDITIONAL_DETAILS"

    invoke-virtual {p2, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzii;->zzv()Lcom/google/android/gms/internal/play_billing/zzie;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/billingclient/api/n;->b()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/play_billing/zzie;->zzk(I)Lcom/google/android/gms/internal/play_billing/zzie;

    invoke-virtual {v4}, Lcom/android/billingclient/api/n;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/play_billing/zzie;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzie;

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/play_billing/zzie;->zzl(I)Lcom/google/android/gms/internal/play_billing/zzie;

    if-eqz p2, :cond_1

    invoke-virtual {v5, p2}, Lcom/google/android/gms/internal/play_billing/zzie;->zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzie;

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzhy;->zzv()Lcom/google/android/gms/internal/play_billing/zzhx;

    move-result-object p2

    invoke-virtual {p2, v5}, Lcom/google/android/gms/internal/play_billing/zzhx;->zzi(Lcom/google/android/gms/internal/play_billing/zzie;)Lcom/google/android/gms/internal/play_billing/zzhx;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/play_billing/zzhx;->zzk(I)Lcom/google/android/gms/internal/play_billing/zzhx;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/zzet;->zzc()Lcom/google/android/gms/internal/play_billing/zzex;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzhy;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    const-string p2, "BillingLogger"

    const-string v2, "Unable to create logging payload"

    invoke-static {p2, v2, p1}, Lcom/google/android/gms/internal/play_billing/zzb;->zzl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, v1

    :goto_3
    invoke-interface {v3, p1}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    goto :goto_4

    :cond_2
    iget-object p2, p0, Lcom/android/billingclient/api/zzak;->a:Lcom/android/billingclient/api/i;

    invoke-static {p2}, Lcom/android/billingclient/api/i;->R(Lcom/android/billingclient/api/i;)Lcom/android/billingclient/api/n0;

    move-result-object p2

    const/16 v0, 0x49

    sget-object v2, Lcom/android/billingclient/api/p0;->j:Lcom/android/billingclient/api/n;

    invoke-static {v0, p1, v2}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/n;)Lcom/google/android/gms/internal/play_billing/zzhy;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    throw v1

    :cond_3
    :goto_4
    invoke-virtual {v0}, Lcom/android/billingclient/api/n$a;->a()Lcom/android/billingclient/api/n;

    throw v1
.end method
