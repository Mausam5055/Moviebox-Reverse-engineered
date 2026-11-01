.class public abstract Lcom/google/android/libraries/places/internal/zzbbo;
.super Lcom/google/android/libraries/places/internal/zzbbb;


# static fields
.field private static final zza:Lcom/google/android/libraries/places/internal/zzbcp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbbn;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzbbn;-><init>()V

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbcp;->zza(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzbcp;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbbo;->zza:Lcom/google/android/libraries/places/internal/zzbcp;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbbb;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzmn;->zzb(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    move-result-object v0

    const-string v1, "policy"

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbbo;->zzd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzmm;->zzd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    const-string v1, "priority"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzmm;->zzb(Ljava/lang/String;I)Lcom/google/android/libraries/places/internal/zzmm;

    const-string v1, "available"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzmm;->zze(Ljava/lang/String;Z)Lcom/google/android/libraries/places/internal/zzmm;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzmm;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract zzb()I
.end method

.method public zzc(Ljava/util/Map;)Lcom/google/android/libraries/places/internal/zzbcp;
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public abstract zzd()Ljava/lang/String;
.end method

.method public abstract zze()Z
.end method
