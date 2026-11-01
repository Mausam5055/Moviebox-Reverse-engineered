.class final Lcom/google/android/libraries/places/internal/zzrw;
.super Ljava/lang/Object;


# static fields
.field private static final zza:Lcom/google/android/libraries/places/internal/zzpd;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzpi;->zza()Lcom/google/android/libraries/places/internal/zzph;

    move-result-object v0

    const/16 v1, 0x22

    const-string v2, "&quot;"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzph;->zzb(CLjava/lang/String;)Lcom/google/android/libraries/places/internal/zzph;

    const/16 v1, 0x27

    const-string v2, "&#39;"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzph;->zzb(CLjava/lang/String;)Lcom/google/android/libraries/places/internal/zzph;

    const/16 v1, 0x26

    const-string v2, "&amp;"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzph;->zzb(CLjava/lang/String;)Lcom/google/android/libraries/places/internal/zzph;

    const/16 v1, 0x3c

    const-string v2, "&lt;"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzph;->zzb(CLjava/lang/String;)Lcom/google/android/libraries/places/internal/zzph;

    const/16 v1, 0x3e

    const-string v2, "&gt;"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzph;->zzb(CLjava/lang/String;)Lcom/google/android/libraries/places/internal/zzph;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzph;->zza()Lcom/google/android/libraries/places/internal/zzpd;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzrw;->zza:Lcom/google/android/libraries/places/internal/zzpd;

    return-void
.end method

.method static zza(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzrw;->zza:Lcom/google/android/libraries/places/internal/zzpd;

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/internal/zzpd;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
