.class public final Lcom/google/android/libraries/places/internal/zzbba;
.super Ljava/lang/Object;


# instance fields
.field private final zza:Ljava/util/List;

.field private final zzb:Lcom/google/android/libraries/places/internal/zzaye;

.field private final zzc:[[Ljava/lang/Object;


# direct methods
.method synthetic constructor <init>(Ljava/util/List;Lcom/google/android/libraries/places/internal/zzaye;[[Ljava/lang/Object;Lcom/google/android/libraries/places/internal/zzbaz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p4, "addresses are not set"

    invoke-static {p1, p4}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbba;->zza:Ljava/util/List;

    const-string p1, "attrs"

    invoke-static {p2, p1}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbba;->zzb:Lcom/google/android/libraries/places/internal/zzaye;

    const-string p1, "customOptions"

    invoke-static {p3, p1}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzbba;->zzc:[[Ljava/lang/Object;

    return-void
.end method

.method public static zzb()Lcom/google/android/libraries/places/internal/zzbax;
    .locals 1

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbax;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzbax;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzmn;->zzb(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    move-result-object v0

    const-string v1, "addrs"

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbba;->zza:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzmm;->zzd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    const-string v1, "attrs"

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbba;->zzb:Lcom/google/android/libraries/places/internal/zzaye;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzmm;->zzd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbba;->zzc:[[Ljava/lang/Object;

    const-string v2, "customOptions"

    invoke-static {v1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzmm;->zzd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzmm;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Lcom/google/android/libraries/places/internal/zzaye;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbba;->zzb:Lcom/google/android/libraries/places/internal/zzaye;

    return-object v0
.end method

.method public final zzc()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbba;->zza:Ljava/util/List;

    return-object v0
.end method
