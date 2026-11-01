.class final Lcom/google/android/libraries/places/internal/zzbnp;
.super Lcom/google/android/libraries/places/internal/zzbbm;


# instance fields
.field private final zzf:Lcom/google/android/libraries/places/internal/zzbbd;

.field private zzg:Lcom/google/android/libraries/places/internal/zzbbj;

.field private zzh:Lcom/google/android/libraries/places/internal/zzaze;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbbd;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbbm;-><init>()V

    sget-object v0, Lcom/google/android/libraries/places/internal/zzaze;->zzd:Lcom/google/android/libraries/places/internal/zzaze;

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbnp;->zzh:Lcom/google/android/libraries/places/internal/zzaze;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbnp;->zzf:Lcom/google/android/libraries/places/internal/zzbbd;

    return-void
.end method

.method static bridge synthetic zzg(Lcom/google/android/libraries/places/internal/zzbnp;)Lcom/google/android/libraries/places/internal/zzbbd;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbnp;->zzf:Lcom/google/android/libraries/places/internal/zzbbd;

    return-object p0
.end method

.method static bridge synthetic zzh(Lcom/google/android/libraries/places/internal/zzbnp;Lcom/google/android/libraries/places/internal/zzbbj;Lcom/google/android/libraries/places/internal/zzazf;)V
    .locals 3

    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/zzazf;->zza()Lcom/google/android/libraries/places/internal/zzaze;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/internal/zzaze;->zze:Lcom/google/android/libraries/places/internal/zzaze;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/google/android/libraries/places/internal/zzaze;->zzc:Lcom/google/android/libraries/places/internal/zzaze;

    if-eq v0, v1, :cond_1

    sget-object v2, Lcom/google/android/libraries/places/internal/zzaze;->zzd:Lcom/google/android/libraries/places/internal/zzaze;

    if-ne v0, v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbnp;->zzf:Lcom/google/android/libraries/places/internal/zzbbd;

    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzbbd;->zzd()V

    :cond_2
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbnp;->zzh:Lcom/google/android/libraries/places/internal/zzaze;

    if-ne v2, v1, :cond_5

    sget-object v1, Lcom/google/android/libraries/places/internal/zzaze;->zza:Lcom/google/android/libraries/places/internal/zzaze;

    if-eq v0, v1, :cond_4

    sget-object v1, Lcom/google/android/libraries/places/internal/zzaze;->zzd:Lcom/google/android/libraries/places/internal/zzaze;

    if-eq v0, v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbbm;->zzd()V

    :cond_4
    :goto_0
    return-void

    :cond_5
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_9

    const/4 v2, 0x1

    if-eq v1, v2, :cond_8

    const/4 v2, 0x2

    if-eq v1, v2, :cond_7

    const/4 p2, 0x3

    if-ne v1, p2, :cond_6

    new-instance p2, Lcom/google/android/libraries/places/internal/zzbno;

    invoke-direct {p2, p0, p1}, Lcom/google/android/libraries/places/internal/zzbno;-><init>(Lcom/google/android/libraries/places/internal/zzbnp;Lcom/google/android/libraries/places/internal/zzbbj;)V

    goto :goto_2

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Unsupported state:"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p1, Lcom/google/android/libraries/places/internal/zzbnm;

    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/zzazf;->zzd()Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/libraries/places/internal/zzbbe;->zzb(Lcom/google/android/libraries/places/internal/zzbdo;)Lcom/google/android/libraries/places/internal/zzbbe;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/libraries/places/internal/zzbnm;-><init>(Lcom/google/android/libraries/places/internal/zzbbe;)V

    move-object p2, p1

    goto :goto_2

    :cond_8
    new-instance p2, Lcom/google/android/libraries/places/internal/zzbnm;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/google/android/libraries/places/internal/zzbbe;->zzd(Lcom/google/android/libraries/places/internal/zzbbj;Lcom/google/android/libraries/places/internal/zzayu;)Lcom/google/android/libraries/places/internal/zzbbe;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/libraries/places/internal/zzbnm;-><init>(Lcom/google/android/libraries/places/internal/zzbbe;)V

    goto :goto_2

    :cond_9
    new-instance p2, Lcom/google/android/libraries/places/internal/zzbnm;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbbe;->zzc()Lcom/google/android/libraries/places/internal/zzbbe;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/libraries/places/internal/zzbnm;-><init>(Lcom/google/android/libraries/places/internal/zzbbe;)V

    :goto_2
    invoke-direct {p0, v0, p2}, Lcom/google/android/libraries/places/internal/zzbnp;->zzi(Lcom/google/android/libraries/places/internal/zzaze;Lcom/google/android/libraries/places/internal/zzbbk;)V

    return-void
.end method

.method private final zzi(Lcom/google/android/libraries/places/internal/zzaze;Lcom/google/android/libraries/places/internal/zzbbk;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbnp;->zzh:Lcom/google/android/libraries/places/internal/zzaze;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbnp;->zzf:Lcom/google/android/libraries/places/internal/zzbbd;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/places/internal/zzbbd;->zze(Lcom/google/android/libraries/places/internal/zzaze;Lcom/google/android/libraries/places/internal/zzbbk;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/libraries/places/internal/zzbbi;)Lcom/google/android/libraries/places/internal/zzbdo;
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbbi;->zze()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbdo;->zzp:Lcom/google/android/libraries/places/internal/zzbdo;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbbi;->zze()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbbi;->zza()Lcom/google/android/libraries/places/internal/zzaye;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NameResolver returned no usable address. addrs="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", attrs="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/zzbnp;->zzb(Lcom/google/android/libraries/places/internal/zzbdo;)V

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbbi;->zzd()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/google/android/libraries/places/internal/zzbnl;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbbi;->zzd()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzbnl;

    iget-object p1, p1, Lcom/google/android/libraries/places/internal/zzbnl;->zza:Ljava/lang/Boolean;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-static {p1, v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    move-object v0, p1

    :cond_1
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbnp;->zzg:Lcom/google/android/libraries/places/internal/zzbbj;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbnp;->zzf:Lcom/google/android/libraries/places/internal/zzbbd;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbba;->zzb()Lcom/google/android/libraries/places/internal/zzbax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzbax;->zzb(Ljava/util/List;)Lcom/google/android/libraries/places/internal/zzbax;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzbax;->zzc()Lcom/google/android/libraries/places/internal/zzbba;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/places/internal/zzbbd;->zza(Lcom/google/android/libraries/places/internal/zzbba;)Lcom/google/android/libraries/places/internal/zzbbj;

    move-result-object p1

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbnk;

    invoke-direct {v0, p0, p1}, Lcom/google/android/libraries/places/internal/zzbnk;-><init>(Lcom/google/android/libraries/places/internal/zzbnp;Lcom/google/android/libraries/places/internal/zzbbj;)V

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/places/internal/zzbbj;->zzc(Lcom/google/android/libraries/places/internal/zzbbl;)V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbnp;->zzg:Lcom/google/android/libraries/places/internal/zzbbj;

    sget-object v0, Lcom/google/android/libraries/places/internal/zzaze;->zza:Lcom/google/android/libraries/places/internal/zzaze;

    new-instance v1, Lcom/google/android/libraries/places/internal/zzbnm;

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/google/android/libraries/places/internal/zzbbe;->zzd(Lcom/google/android/libraries/places/internal/zzbbj;Lcom/google/android/libraries/places/internal/zzayu;)Lcom/google/android/libraries/places/internal/zzbbe;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/libraries/places/internal/zzbnm;-><init>(Lcom/google/android/libraries/places/internal/zzbbe;)V

    invoke-direct {p0, v0, v1}, Lcom/google/android/libraries/places/internal/zzbnp;->zzi(Lcom/google/android/libraries/places/internal/zzaze;Lcom/google/android/libraries/places/internal/zzbbk;)V

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbbj;->zza()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v0}, Lcom/google/android/libraries/places/internal/zzbbj;->zzd(Ljava/util/List;)V

    :goto_0
    sget-object p1, Lcom/google/android/libraries/places/internal/zzbdo;->zza:Lcom/google/android/libraries/places/internal/zzbdo;

    return-object p1
.end method

.method public final zzb(Lcom/google/android/libraries/places/internal/zzbdo;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbnp;->zzg:Lcom/google/android/libraries/places/internal/zzbbj;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbbj;->zzb()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbnp;->zzg:Lcom/google/android/libraries/places/internal/zzbbj;

    :cond_0
    sget-object v0, Lcom/google/android/libraries/places/internal/zzaze;->zzc:Lcom/google/android/libraries/places/internal/zzaze;

    new-instance v1, Lcom/google/android/libraries/places/internal/zzbnm;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbbe;->zzb(Lcom/google/android/libraries/places/internal/zzbdo;)Lcom/google/android/libraries/places/internal/zzbbe;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/google/android/libraries/places/internal/zzbnm;-><init>(Lcom/google/android/libraries/places/internal/zzbbe;)V

    invoke-direct {p0, v0, v1}, Lcom/google/android/libraries/places/internal/zzbnp;->zzi(Lcom/google/android/libraries/places/internal/zzaze;Lcom/google/android/libraries/places/internal/zzbbk;)V

    return-void
.end method

.method public final zzd()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbnp;->zzg:Lcom/google/android/libraries/places/internal/zzbbj;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbbj;->zza()V

    :cond_0
    return-void
.end method

.method public final zze()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbnp;->zzg:Lcom/google/android/libraries/places/internal/zzbbj;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbbj;->zzb()V

    :cond_0
    return-void
.end method
