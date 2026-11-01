.class final Lcom/google/android/libraries/places/internal/zzbtg;
.super Lcom/google/android/libraries/places/internal/zzbtl;


# instance fields
.field private final zzb:Lcom/google/android/libraries/places/internal/zzbtf;

.field private final zzc:Lcom/google/android/libraries/places/internal/zzbtf;

.field private final zzd:Ljava/lang/reflect/Method;

.field private final zze:Ljava/lang/reflect/Method;

.field private final zzf:Lcom/google/android/libraries/places/internal/zzbtf;

.field private final zzg:Lcom/google/android/libraries/places/internal/zzbtf;

.field private final zzh:I


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/zzbtf;Lcom/google/android/libraries/places/internal/zzbtf;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/google/android/libraries/places/internal/zzbtf;Lcom/google/android/libraries/places/internal/zzbtf;Ljava/security/Provider;I)V
    .locals 0

    invoke-direct {p0, p7}, Lcom/google/android/libraries/places/internal/zzbtl;-><init>(Ljava/security/Provider;)V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbtg;->zzb:Lcom/google/android/libraries/places/internal/zzbtf;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbtg;->zzc:Lcom/google/android/libraries/places/internal/zzbtf;

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzbtg;->zzd:Ljava/lang/reflect/Method;

    iput-object p4, p0, Lcom/google/android/libraries/places/internal/zzbtg;->zze:Ljava/lang/reflect/Method;

    iput-object p5, p0, Lcom/google/android/libraries/places/internal/zzbtg;->zzf:Lcom/google/android/libraries/places/internal/zzbtf;

    iput-object p6, p0, Lcom/google/android/libraries/places/internal/zzbtg;->zzg:Lcom/google/android/libraries/places/internal/zzbtf;

    iput p8, p0, Lcom/google/android/libraries/places/internal/zzbtg;->zzh:I

    return-void
.end method


# virtual methods
.method public final zza(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbtg;->zzf:Lcom/google/android/libraries/places/internal/zzbtf;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzbtf;->zzc(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbtg;->zzf:Lcom/google/android/libraries/places/internal/zzbtf;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/libraries/places/internal/zzbtf;->zzb(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/google/android/libraries/places/internal/zzbto;->zzb:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final zzb(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbtg;->zzb:Lcom/google/android/libraries/places/internal/zzbtf;

    new-array v3, v1, [Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v4, v3, v0

    invoke-virtual {v2, p1, v3}, Lcom/google/android/libraries/places/internal/zzbtf;->zza(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbtg;->zzc:Lcom/google/android/libraries/places/internal/zzbtf;

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p2, v3, v0

    invoke-virtual {v2, p1, v3}, Lcom/google/android/libraries/places/internal/zzbtf;->zza(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbtg;->zzg:Lcom/google/android/libraries/places/internal/zzbtf;

    invoke-virtual {p2, p1}, Lcom/google/android/libraries/places/internal/zzbtf;->zzc(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p3}, Lcom/google/android/libraries/places/internal/zzbtl;->zzg(Ljava/util/List;)[B

    move-result-object p2

    new-array p3, v1, [Ljava/lang/Object;

    aput-object p2, p3, v0

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbtg;->zzg:Lcom/google/android/libraries/places/internal/zzbtf;

    invoke-virtual {p2, p1, p3}, Lcom/google/android/libraries/places/internal/zzbtf;->zzb(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final zzc()I
    .locals 1

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzbtg;->zzh:I

    return v0
.end method
