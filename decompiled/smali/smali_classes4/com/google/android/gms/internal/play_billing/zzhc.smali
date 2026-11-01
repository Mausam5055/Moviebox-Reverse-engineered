.class public final Lcom/google/android/gms/internal/play_billing/zzhc;
.super Ljava/lang/RuntimeException;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/play_billing/zzgc;)V
    .locals 0

    const-string p1, "Message was missing required fields.  (Lite runtime could not determine which fields were missing)."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/play_billing/zzff;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzff;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzff;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
