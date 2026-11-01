.class public final Lcom/google/android/libraries/places/internal/zzok;
.super Lcom/google/android/libraries/places/internal/zzol;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final synthetic zzc:I

.field private static final zzd:Lcom/google/android/libraries/places/internal/zzok;


# instance fields
.field final zza:Lcom/google/android/libraries/places/internal/zznp;

.field final zzb:Lcom/google/android/libraries/places/internal/zznp;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/libraries/places/internal/zzok;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zznn;->zzb()Lcom/google/android/libraries/places/internal/zznn;

    move-result-object v1

    invoke-static {}, Lcom/google/android/libraries/places/internal/zznl;->zzb()Lcom/google/android/libraries/places/internal/zznl;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzok;-><init>(Lcom/google/android/libraries/places/internal/zznp;Lcom/google/android/libraries/places/internal/zznp;)V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzok;->zzd:Lcom/google/android/libraries/places/internal/zzok;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/libraries/places/internal/zznp;Lcom/google/android/libraries/places/internal/zznp;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzol;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzok;->zza:Lcom/google/android/libraries/places/internal/zznp;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzok;->zzb:Lcom/google/android/libraries/places/internal/zznp;

    invoke-virtual {p1, p2}, Lcom/google/android/libraries/places/internal/zznp;->zza(Lcom/google/android/libraries/places/internal/zznp;)I

    move-result v0

    if-gtz v0, :cond_0

    invoke-static {}, Lcom/google/android/libraries/places/internal/zznl;->zzb()Lcom/google/android/libraries/places/internal/zznl;

    move-result-object v0

    if-eq p1, v0, :cond_0

    invoke-static {}, Lcom/google/android/libraries/places/internal/zznn;->zzb()Lcom/google/android/libraries/places/internal/zznn;

    move-result-object v0

    if-eq p2, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Lcom/google/android/libraries/places/internal/zzok;->zze(Lcom/google/android/libraries/places/internal/zznp;Lcom/google/android/libraries/places/internal/zznp;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Invalid range: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static zza(Ljava/lang/Comparable;)Lcom/google/android/libraries/places/internal/zzok;
    .locals 2

    new-instance v0, Lcom/google/android/libraries/places/internal/zzno;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/zzno;-><init>(Ljava/lang/Comparable;)V

    invoke-static {}, Lcom/google/android/libraries/places/internal/zznl;->zzb()Lcom/google/android/libraries/places/internal/zznl;

    move-result-object p0

    new-instance v1, Lcom/google/android/libraries/places/internal/zzok;

    invoke-direct {v1, v0, p0}, Lcom/google/android/libraries/places/internal/zzok;-><init>(Lcom/google/android/libraries/places/internal/zznp;Lcom/google/android/libraries/places/internal/zznp;)V

    return-object v1
.end method

.method public static zzb(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/android/libraries/places/internal/zzok;
    .locals 1

    new-instance v0, Lcom/google/android/libraries/places/internal/zzno;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/zzno;-><init>(Ljava/lang/Comparable;)V

    new-instance p0, Lcom/google/android/libraries/places/internal/zznm;

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zznm;-><init>(Ljava/lang/Comparable;)V

    new-instance p1, Lcom/google/android/libraries/places/internal/zzok;

    invoke-direct {p1, v0, p0}, Lcom/google/android/libraries/places/internal/zzok;-><init>(Lcom/google/android/libraries/places/internal/zznp;Lcom/google/android/libraries/places/internal/zznp;)V

    return-object p1
.end method

.method public static zzc(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/android/libraries/places/internal/zzok;
    .locals 1

    new-instance v0, Lcom/google/android/libraries/places/internal/zzno;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/zzno;-><init>(Ljava/lang/Comparable;)V

    new-instance p0, Lcom/google/android/libraries/places/internal/zzno;

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzno;-><init>(Ljava/lang/Comparable;)V

    new-instance p1, Lcom/google/android/libraries/places/internal/zzok;

    invoke-direct {p1, v0, p0}, Lcom/google/android/libraries/places/internal/zzok;-><init>(Lcom/google/android/libraries/places/internal/zznp;Lcom/google/android/libraries/places/internal/zznp;)V

    return-object p1
.end method

.method private static zze(Lcom/google/android/libraries/places/internal/zznp;Lcom/google/android/libraries/places/internal/zznp;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/internal/zznp;->zzc(Ljava/lang/StringBuilder;)V

    const-string p0, ".."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/places/internal/zznp;->zzd(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/google/android/libraries/places/internal/zzok;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/libraries/places/internal/zzok;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzok;->zza:Lcom/google/android/libraries/places/internal/zznp;

    iget-object v2, p1, Lcom/google/android/libraries/places/internal/zzok;->zza:Lcom/google/android/libraries/places/internal/zznp;

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/places/internal/zznp;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzok;->zzb:Lcom/google/android/libraries/places/internal/zznp;

    iget-object p1, p1, Lcom/google/android/libraries/places/internal/zzok;->zzb:Lcom/google/android/libraries/places/internal/zznp;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zznp;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzok;->zza:Lcom/google/android/libraries/places/internal/zznp;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zznp;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzok;->zzb:Lcom/google/android/libraries/places/internal/zznp;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zznp;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzok;->zza:Lcom/google/android/libraries/places/internal/zznp;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzok;->zzb:Lcom/google/android/libraries/places/internal/zznp;

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzok;->zze(Lcom/google/android/libraries/places/internal/zznp;Lcom/google/android/libraries/places/internal/zznp;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzd(Ljava/lang/Comparable;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzok;->zza:Lcom/google/android/libraries/places/internal/zznp;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zznp;->zze(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzok;->zzb:Lcom/google/android/libraries/places/internal/zznp;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zznp;->zze(Ljava/lang/Comparable;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
