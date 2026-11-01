.class final Lcom/google/android/libraries/places/internal/zzbkn;
.super Lcom/google/android/libraries/places/internal/zzbbk;


# instance fields
.field final synthetic zza:Ljava/lang/Throwable;

.field private final zzb:Lcom/google/android/libraries/places/internal/zzbbe;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbma;Ljava/lang/Throwable;)V
    .locals 1

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbkn;->zza:Ljava/lang/Throwable;

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbbk;-><init>()V

    sget-object p1, Lcom/google/android/libraries/places/internal/zzbdo;->zzo:Lcom/google/android/libraries/places/internal/zzbdo;

    const-string v0, "Panic! This is a bug!"

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/libraries/places/internal/zzbdo;->zzf(Ljava/lang/Throwable;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbbe;->zza(Lcom/google/android/libraries/places/internal/zzbdo;)Lcom/google/android/libraries/places/internal/zzbbe;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbkn;->zzb:Lcom/google/android/libraries/places/internal/zzbbe;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    const-class v0, Lcom/google/android/libraries/places/internal/zzbkn;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzmn;->zza(Ljava/lang/Class;)Lcom/google/android/libraries/places/internal/zzmm;

    move-result-object v0

    const-string v1, "panicPickResult"

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbkn;->zzb:Lcom/google/android/libraries/places/internal/zzbbe;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzmm;->zzd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzmm;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Lcom/google/android/libraries/places/internal/zzbbf;)Lcom/google/android/libraries/places/internal/zzbbe;
    .locals 0

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbkn;->zzb:Lcom/google/android/libraries/places/internal/zzbbe;

    return-object p1
.end method
