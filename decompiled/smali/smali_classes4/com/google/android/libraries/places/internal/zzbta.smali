.class final Lcom/google/android/libraries/places/internal/zzbta;
.super Ljava/lang/Object;


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:I

.field private zzc:I

.field private zzd:I

.field private zze:I

.field private zzf:I

.field private zzg:[C


# direct methods
.method public constructor <init>(Ljavax/security/auth/x500/X500Principal;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "RFC2253"

    invoke-virtual {p1, v0}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbta;->zza:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzb:I

    return-void
.end method

.method private final zzb()C
    .locals 10

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzc:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzc:I

    iget v2, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzb:I

    if-eq v0, v2, :cond_8

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzg:[C

    aget-char v2, v2, v0

    const/16 v3, 0x20

    if-eq v2, v3, :cond_7

    const/16 v3, 0x25

    if-eq v2, v3, :cond_7

    const/16 v3, 0x5c

    if-eq v2, v3, :cond_7

    const/16 v4, 0x5f

    if-eq v2, v4, :cond_7

    const/16 v4, 0x22

    if-eq v2, v4, :cond_7

    const/16 v4, 0x23

    if-eq v2, v4, :cond_7

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/zzbta;->zzc(I)I

    move-result v0

    iget v2, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzc:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzc:I

    const/16 v2, 0x80

    if-ge v0, v2, :cond_0

    goto :goto_3

    :cond_0
    const/16 v4, 0xc0

    const/16 v5, 0x3f

    if-lt v0, v4, :cond_3

    const/16 v4, 0xf7

    if-gt v0, v4, :cond_3

    const/16 v4, 0xdf

    if-gt v0, v4, :cond_1

    and-int/lit8 v0, v0, 0x1f

    move v4, v1

    goto :goto_0

    :cond_1
    const/16 v4, 0xef

    if-gt v0, v4, :cond_2

    and-int/lit8 v0, v0, 0xf

    const/4 v4, 0x2

    goto :goto_0

    :cond_2
    and-int/lit8 v0, v0, 0x7

    const/4 v4, 0x3

    :goto_0
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v4, :cond_6

    iget v7, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzc:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzc:I

    iget v9, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzb:I

    if-eq v8, v9, :cond_3

    iget-object v9, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzg:[C

    aget-char v8, v9, v8

    if-eq v8, v3, :cond_4

    :cond_3
    :goto_2
    move v0, v5

    goto :goto_3

    :cond_4
    add-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzc:I

    invoke-direct {p0, v7}, Lcom/google/android/libraries/places/internal/zzbta;->zzc(I)I

    move-result v7

    iget v8, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzc:I

    add-int/2addr v8, v1

    iput v8, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzc:I

    and-int/lit16 v8, v7, 0xc0

    if-eq v8, v2, :cond_5

    goto :goto_2

    :cond_5
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v7, v7, 0x3f

    add-int/2addr v0, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_6
    int-to-char v0, v0

    :goto_3
    int-to-char v0, v0

    return v0

    :cond_7
    :pswitch_0
    return v2

    :cond_8
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbta;->zza:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected end of DN: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private final zzc(I)I
    .locals 9

    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzb:I

    const-string v2, "Malformed DN: "

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzg:[C

    aget-char p1, v1, p1

    const/16 v3, 0x46

    const/16 v4, 0x41

    const/16 v5, 0x66

    const/16 v6, 0x61

    const/16 v7, 0x39

    const/16 v8, 0x30

    if-lt p1, v8, :cond_0

    if-gt p1, v7, :cond_0

    add-int/lit8 p1, p1, -0x30

    goto :goto_0

    :cond_0
    if-lt p1, v6, :cond_1

    if-gt p1, v5, :cond_1

    add-int/lit8 p1, p1, -0x57

    goto :goto_0

    :cond_1
    if-lt p1, v4, :cond_5

    if-gt p1, v3, :cond_5

    add-int/lit8 p1, p1, -0x37

    :goto_0
    aget-char v0, v1, v0

    if-lt v0, v8, :cond_2

    if-gt v0, v7, :cond_2

    add-int/lit8 v0, v0, -0x30

    goto :goto_1

    :cond_2
    if-lt v0, v6, :cond_3

    if-gt v0, v5, :cond_3

    add-int/lit8 v0, v0, -0x57

    goto :goto_1

    :cond_3
    if-lt v0, v4, :cond_4

    if-gt v0, v3, :cond_4

    add-int/lit8 v0, v0, -0x37

    :goto_1
    shl-int/lit8 p1, p1, 0x4

    add-int/2addr p1, v0

    return p1

    :cond_4
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbta;->zza:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbta;->zza:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbta;->zza:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zzd()Ljava/lang/String;
    .locals 6

    :goto_0
    iget v0, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzc:I

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzb:I

    const/16 v2, 0x20

    if-ge v0, v1, :cond_0

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzg:[C

    aget-char v3, v3, v0

    if-ne v3, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzc:I

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    add-int/lit8 v1, v0, 0x1

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzd:I

    iput v1, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzc:I

    :goto_1
    iget v0, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzc:I

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzb:I

    const/16 v3, 0x3d

    if-ge v0, v1, :cond_2

    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzg:[C

    aget-char v4, v4, v0

    if-eq v4, v3, :cond_2

    if-eq v4, v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzc:I

    goto :goto_1

    :cond_2
    const-string v4, "Unexpected end of DN: "

    if-ge v0, v1, :cond_b

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzbta;->zze:I

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzg:[C

    aget-char v1, v1, v0

    if-ne v1, v2, :cond_5

    :goto_2
    iget v0, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzc:I

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzb:I

    if-ge v0, v1, :cond_3

    iget-object v5, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzg:[C

    aget-char v5, v5, v0

    if-eq v5, v3, :cond_3

    if-ne v5, v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzc:I

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzg:[C

    aget-char v5, v5, v0

    if-ne v5, v3, :cond_4

    if-eq v0, v1, :cond_4

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbta;->zza:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzc:I

    :goto_4
    iget v0, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzc:I

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzb:I

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzg:[C

    aget-char v1, v1, v0

    if-ne v1, v2, :cond_6

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzc:I

    goto :goto_4

    :cond_6
    iget v0, p0, Lcom/google/android/libraries/places/internal/zzbta;->zze:I

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzd:I

    sub-int v2, v0, v1

    const/4 v3, 0x4

    if-le v2, v3, :cond_a

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzg:[C

    add-int/lit8 v3, v1, 0x3

    aget-char v3, v2, v3

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_a

    aget-char v3, v2, v1

    const/16 v4, 0x4f

    if-eq v3, v4, :cond_7

    const/16 v4, 0x6f

    if-ne v3, v4, :cond_a

    :cond_7
    add-int/lit8 v3, v1, 0x1

    aget-char v3, v2, v3

    const/16 v4, 0x49

    if-eq v3, v4, :cond_8

    const/16 v4, 0x69

    if-ne v3, v4, :cond_a

    :cond_8
    add-int/lit8 v3, v1, 0x2

    aget-char v2, v2, v3

    const/16 v3, 0x44

    if-eq v2, v3, :cond_9

    const/16 v3, 0x64

    if-ne v2, v3, :cond_a

    :cond_9
    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzd:I

    :cond_a
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzg:[C

    sub-int/2addr v0, v1

    invoke-direct {v2, v3, v1, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v2

    :cond_b
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbta;->zza:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzc:I

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzd:I

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzbta;->zze:I

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzf:I

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbta;->zza:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzg:[C

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbta;->zzd()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    :goto_0
    iget v2, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzc:I

    iget v3, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzb:I

    if-ne v2, v3, :cond_0

    return-object v1

    :cond_0
    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzg:[C

    aget-char v4, v4, v2

    const/16 v5, 0x5c

    const/16 v6, 0x22

    const-string v7, "Unexpected end of DN: "

    const/16 v8, 0x3b

    const/16 v9, 0x2c

    const/16 v10, 0x2b

    const/16 v11, 0x20

    if-eq v4, v6, :cond_12

    const/16 v6, 0x23

    if-eq v4, v6, :cond_9

    if-eq v4, v10, :cond_8

    if-eq v4, v9, :cond_8

    if-eq v4, v8, :cond_8

    iput v2, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzd:I

    iput v2, p0, Lcom/google/android/libraries/places/internal/zzbta;->zze:I

    :cond_1
    :goto_1
    iget v2, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzc:I

    iget v3, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzb:I

    if-lt v2, v3, :cond_2

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzg:[C

    iget v4, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzd:I

    iget v5, p0, Lcom/google/android/libraries/places/internal/zzbta;->zze:I

    sub-int/2addr v5, v4

    invoke-direct {v2, v3, v4, v5}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_9

    :cond_2
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzg:[C

    aget-char v4, v3, v2

    if-eq v4, v11, :cond_5

    if-eq v4, v8, :cond_4

    if-eq v4, v5, :cond_3

    if-eq v4, v10, :cond_4

    if-eq v4, v9, :cond_4

    add-int/lit8 v2, v2, 0x1

    iget v6, p0, Lcom/google/android/libraries/places/internal/zzbta;->zze:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/android/libraries/places/internal/zzbta;->zze:I

    aput-char v4, v3, v6

    iput v2, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzc:I

    goto :goto_1

    :cond_3
    iget v2, p0, Lcom/google/android/libraries/places/internal/zzbta;->zze:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/google/android/libraries/places/internal/zzbta;->zze:I

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbta;->zzb()C

    move-result v4

    aput-char v4, v3, v2

    iget v2, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzc:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzc:I

    goto :goto_1

    :cond_4
    new-instance v2, Ljava/lang/String;

    iget v4, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzd:I

    iget v5, p0, Lcom/google/android/libraries/places/internal/zzbta;->zze:I

    sub-int/2addr v5, v4

    invoke-direct {v2, v3, v4, v5}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_9

    :cond_5
    add-int/lit8 v2, v2, 0x1

    iget v4, p0, Lcom/google/android/libraries/places/internal/zzbta;->zze:I

    iput v4, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzf:I

    iput v2, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzc:I

    add-int/lit8 v2, v4, 0x1

    iput v2, p0, Lcom/google/android/libraries/places/internal/zzbta;->zze:I

    aput-char v11, v3, v4

    :goto_2
    iget v2, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzc:I

    iget v3, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzb:I

    if-ge v2, v3, :cond_6

    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzg:[C

    aget-char v6, v4, v2

    if-ne v6, v11, :cond_6

    iget v3, p0, Lcom/google/android/libraries/places/internal/zzbta;->zze:I

    add-int/lit8 v6, v3, 0x1

    iput v6, p0, Lcom/google/android/libraries/places/internal/zzbta;->zze:I

    aput-char v11, v4, v3

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzc:I

    goto :goto_2

    :cond_6
    if-eq v2, v3, :cond_7

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzg:[C

    aget-char v2, v3, v2

    if-eq v2, v9, :cond_7

    if-eq v2, v10, :cond_7

    if-ne v2, v8, :cond_1

    :cond_7
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzg:[C

    iget v4, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzd:I

    iget v5, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzf:I

    sub-int/2addr v5, v4

    invoke-direct {v2, v3, v4, v5}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_9

    :cond_8
    const-string v2, ""

    goto/16 :goto_9

    :cond_9
    add-int/lit8 v4, v2, 0x4

    if-ge v4, v3, :cond_11

    add-int/lit8 v3, v2, 0x1

    iput v2, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzd:I

    iput v3, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzc:I

    :goto_3
    iget v2, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzc:I

    iget v3, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzb:I

    if-eq v2, v3, :cond_d

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzg:[C

    aget-char v4, v3, v2

    if-eq v4, v10, :cond_d

    if-eq v4, v9, :cond_d

    if-ne v4, v8, :cond_a

    goto :goto_5

    :cond_a
    add-int/lit8 v5, v2, 0x1

    if-ne v4, v11, :cond_b

    iput v2, p0, Lcom/google/android/libraries/places/internal/zzbta;->zze:I

    iput v5, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzc:I

    :goto_4
    iget v2, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzc:I

    iget v3, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzb:I

    if-ge v2, v3, :cond_e

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzg:[C

    aget-char v3, v3, v2

    if-ne v3, v11, :cond_e

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzc:I

    goto :goto_4

    :cond_b
    const/16 v6, 0x41

    if-lt v4, v6, :cond_c

    const/16 v6, 0x46

    if-gt v4, v6, :cond_c

    add-int/lit8 v4, v4, 0x20

    int-to-char v4, v4

    aput-char v4, v3, v2

    :cond_c
    iput v5, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzc:I

    goto :goto_3

    :cond_d
    :goto_5
    iput v2, p0, Lcom/google/android/libraries/places/internal/zzbta;->zze:I

    :cond_e
    iget v2, p0, Lcom/google/android/libraries/places/internal/zzbta;->zze:I

    iget v3, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzd:I

    sub-int/2addr v2, v3

    const/4 v4, 0x5

    if-lt v2, v4, :cond_10

    and-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_10

    shr-int/lit8 v4, v2, 0x1

    new-array v5, v4, [B

    add-int/lit8 v3, v3, 0x1

    move v6, p1

    :goto_6
    if-ge v6, v4, :cond_f

    invoke-direct {p0, v3}, Lcom/google/android/libraries/places/internal/zzbta;->zzc(I)I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v3, v3, 0x2

    goto :goto_6

    :cond_f
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzg:[C

    iget v5, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzd:I

    invoke-direct {v3, v4, v5, v2}, Ljava/lang/String;-><init>([CII)V

    move-object v2, v3

    goto :goto_9

    :cond_10
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbta;->zza:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v7, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbta;->zza:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v7, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzc:I

    iput v2, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzd:I

    iput v2, p0, Lcom/google/android/libraries/places/internal/zzbta;->zze:I

    :goto_7
    iget v2, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzc:I

    iget v3, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzb:I

    if-eq v2, v3, :cond_1c

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzg:[C

    aget-char v4, v3, v2

    if-ne v4, v6, :cond_1a

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzc:I

    :goto_8
    iget v2, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzc:I

    iget v3, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzb:I

    if-ge v2, v3, :cond_13

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzg:[C

    aget-char v3, v3, v2

    if-ne v3, v11, :cond_13

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzc:I

    goto :goto_8

    :cond_13
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzg:[C

    iget v4, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzd:I

    iget v5, p0, Lcom/google/android/libraries/places/internal/zzbta;->zze:I

    sub-int/2addr v5, v4

    invoke-direct {v2, v3, v4, v5}, Ljava/lang/String;-><init>([CII)V

    :goto_9
    const-string v3, "cn"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    return-object v2

    :cond_14
    iget v0, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzc:I

    iget v2, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzb:I

    if-lt v0, v2, :cond_15

    return-object v1

    :cond_15
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzg:[C

    aget-char v2, v2, v0

    const-string v3, "Malformed DN: "

    if-eq v2, v9, :cond_18

    if-ne v2, v8, :cond_16

    goto :goto_a

    :cond_16
    if-ne v2, v10, :cond_17

    goto :goto_a

    :cond_17
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbta;->zza:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    :goto_a
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzc:I

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbta;->zzd()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    goto/16 :goto_0

    :cond_19
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbta;->zza:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    if-ne v4, v5, :cond_1b

    iget v2, p0, Lcom/google/android/libraries/places/internal/zzbta;->zze:I

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbta;->zzb()C

    move-result v4

    aput-char v4, v3, v2

    goto :goto_b

    :cond_1b
    iget v2, p0, Lcom/google/android/libraries/places/internal/zzbta;->zze:I

    aput-char v4, v3, v2

    :goto_b
    iget v2, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzc:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/libraries/places/internal/zzbta;->zzc:I

    iget v2, p0, Lcom/google/android/libraries/places/internal/zzbta;->zze:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/libraries/places/internal/zzbta;->zze:I

    goto/16 :goto_7

    :cond_1c
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbta;->zza:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v7, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    return-object v1
.end method
