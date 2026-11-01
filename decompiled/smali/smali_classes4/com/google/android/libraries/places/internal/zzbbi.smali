.class public final Lcom/google/android/libraries/places/internal/zzbbi;
.super Ljava/lang/Object;


# instance fields
.field private final zza:Ljava/util/List;

.field private final zzb:Lcom/google/android/libraries/places/internal/zzaye;

.field private final zzc:Ljava/lang/Object;


# direct methods
.method synthetic constructor <init>(Ljava/util/List;Lcom/google/android/libraries/places/internal/zzaye;Ljava/lang/Object;Lcom/google/android/libraries/places/internal/zzbbh;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p4, Ljava/util/ArrayList;

    const-string v0, "addresses"

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p4, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbbi;->zza:Ljava/util/List;

    const-string p1, "attributes"

    invoke-static {p2, p1}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbbi;->zzb:Lcom/google/android/libraries/places/internal/zzaye;

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzbbi;->zzc:Ljava/lang/Object;

    return-void
.end method

.method public static zzb()Lcom/google/android/libraries/places/internal/zzbbg;
    .locals 1

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbbg;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzbbg;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/google/android/libraries/places/internal/zzbbi;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/android/libraries/places/internal/zzbbi;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbbi;->zza:Ljava/util/List;

    iget-object v2, p1, Lcom/google/android/libraries/places/internal/zzbbi;->zza:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/google/android/libraries/places/internal/zzmo;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbbi;->zzb:Lcom/google/android/libraries/places/internal/zzaye;

    iget-object v2, p1, Lcom/google/android/libraries/places/internal/zzbbi;->zzb:Lcom/google/android/libraries/places/internal/zzaye;

    invoke-static {v0, v2}, Lcom/google/android/libraries/places/internal/zzmo;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbbi;->zzc:Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/libraries/places/internal/zzbbi;->zzc:Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/google/android/libraries/places/internal/zzmo;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 5

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbbi;->zza:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbbi;->zzb:Lcom/google/android/libraries/places/internal/zzaye;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbbi;->zzc:Ljava/lang/Object;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzmn;->zzb(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    move-result-object v0

    const-string v1, "addresses"

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbbi;->zza:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzmm;->zzd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    const-string v1, "attributes"

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbbi;->zzb:Lcom/google/android/libraries/places/internal/zzaye;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzmm;->zzd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    const-string v1, "loadBalancingPolicyConfig"

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbbi;->zzc:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzmm;->zzd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzmm;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Lcom/google/android/libraries/places/internal/zzaye;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbbi;->zzb:Lcom/google/android/libraries/places/internal/zzaye;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/libraries/places/internal/zzbbg;
    .locals 2

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbbg;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzbbg;-><init>()V

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbbi;->zza:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzbbg;->zza(Ljava/util/List;)Lcom/google/android/libraries/places/internal/zzbbg;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbbi;->zzb:Lcom/google/android/libraries/places/internal/zzaye;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzbbg;->zzb(Lcom/google/android/libraries/places/internal/zzaye;)Lcom/google/android/libraries/places/internal/zzbbg;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbbi;->zzc:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzbbg;->zzc(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzbbg;

    return-object v0
.end method

.method public final zzd()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbbi;->zzc:Ljava/lang/Object;

    return-object v0
.end method

.method public final zze()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbbi;->zza:Ljava/util/List;

    return-object v0
.end method
