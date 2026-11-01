.class public final Lcom/google/android/gms/internal/measurement/zzgj;
.super Ljava/lang/Object;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zzgk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgl;->zza()Lcom/google/android/gms/internal/measurement/zzgk;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzgj;->zza:Lcom/google/android/gms/internal/measurement/zzgk;

    return-void
.end method

.method public static zza(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzgj;->zza:Lcom/google/android/gms/internal/measurement/zzgk;

    const/4 v0, 0x0

    invoke-interface {p2, p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzgk;->zza(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
