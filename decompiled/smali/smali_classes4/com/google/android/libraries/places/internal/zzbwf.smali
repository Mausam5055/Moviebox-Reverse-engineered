.class public Lcom/google/android/libraries/places/internal/zzbwf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final zza:Lcom/google/android/libraries/places/internal/zzbwe;

.field public static final zzb:Lcom/google/android/libraries/places/internal/zzbwf;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# instance fields
.field private final zzc:[B

.field private transient zzd:I

.field private transient zze:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbwe;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/internal/zzbwe;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbwf;->zza:Lcom/google/android/libraries/places/internal/zzbwe;

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbwf;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/internal/zzbwf;-><init>([B)V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbwf;->zzb:Lcom/google/android/libraries/places/internal/zzbwf;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbwf;->zzc:[B

    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 8

    check-cast p1, Lcom/google/android/libraries/places/internal/zzbwf;

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbwf;->zzc()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbwf;->zzc()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_1

    invoke-virtual {p0, v4}, Lcom/google/android/libraries/places/internal/zzbwf;->zza(I)B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {p1, v4}, Lcom/google/android/libraries/places/internal/zzbwf;->zza(I)B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    if-ne v6, v7, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    if-lt v6, v7, :cond_3

    :goto_1
    move v3, v5

    goto :goto_2

    :cond_1
    if-ne v0, v1, :cond_2

    goto :goto_2

    :cond_2
    if-lt v0, v1, :cond_3

    goto :goto_1

    :goto_2
    return v3

    :cond_3
    const/4 p1, -0x1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v1, p1, Lcom/google/android/libraries/places/internal/zzbwf;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzbwf;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbwf;->zzc()I

    move-result v1

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbwf;->zzc:[B

    array-length v4, v3

    if-ne v1, v4, :cond_1

    invoke-virtual {p1, v2, v3, v2, v4}, Lcom/google/android/libraries/places/internal/zzbwf;->zzl(I[BII)Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    move v0, v2

    nop

    :cond_2
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzbwf;->zzd:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwf;->zzc:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzbwf;->zzd:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 22

    move-object/from16 v0, p0

    const-string v1, "\u2026]"

    const/4 v2, 0x2

    const/4 v3, 0x1

    iget-object v4, v0, Lcom/google/android/libraries/places/internal/zzbwf;->zzc:[B

    array-length v5, v4

    if-nez v5, :cond_0

    const-string v1, "[size=0]"

    goto/16 :goto_7

    :cond_0
    sget v6, Lcom/google/android/libraries/places/internal/zzbwy;->zza:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    const/16 v11, 0x40

    if-ge v7, v5, :cond_1f

    aget-byte v12, v4, v7

    if-ltz v12, :cond_7

    add-int/lit8 v13, v8, 0x1

    if-ne v8, v11, :cond_1

    goto/16 :goto_5

    :cond_1
    const/16 v8, 0x7f

    const/16 v14, 0x20

    const/16 v15, 0xd

    const/16 v6, 0xa

    if-eq v12, v6, :cond_3

    if-eq v12, v15, :cond_3

    if-ge v12, v14, :cond_2

    :goto_1
    const/4 v9, -0x1

    goto/16 :goto_5

    :cond_2
    if-lt v12, v8, :cond_3

    goto :goto_1

    :cond_3
    add-int/2addr v9, v3

    add-int/2addr v7, v3

    :goto_2
    if-ge v7, v5, :cond_6

    aget-byte v12, v4, v7

    if-ltz v12, :cond_6

    add-int/2addr v7, v3

    add-int/lit8 v17, v13, 0x1

    if-eq v13, v11, :cond_1f

    if-eq v12, v6, :cond_5

    if-eq v12, v15, :cond_5

    if-ge v12, v14, :cond_4

    goto :goto_1

    :cond_4
    if-lt v12, v8, :cond_5

    goto :goto_1

    :cond_5
    add-int/2addr v9, v3

    move/from16 v13, v17

    goto :goto_2

    :cond_6
    move v8, v13

    goto :goto_0

    :cond_7
    shr-int/lit8 v6, v12, 0x5

    const v13, 0xfffd

    const/high16 v14, 0x10000

    const/4 v15, -0x2

    const/16 v10, 0x80

    if-ne v6, v15, :cond_e

    add-int/lit8 v6, v7, 0x1

    if-gt v5, v6, :cond_8

    if-eq v8, v11, :cond_1f

    goto :goto_1

    :cond_8
    aget-byte v6, v4, v6

    and-int/lit16 v15, v6, 0xc0

    if-ne v15, v10, :cond_d

    xor-int/lit16 v6, v6, 0xf80

    shl-int/lit8 v12, v12, 0x6

    xor-int/2addr v6, v12

    if-ge v6, v10, :cond_9

    if-eq v8, v11, :cond_1f

    goto :goto_1

    :cond_9
    add-int/lit8 v10, v8, 0x1

    if-eq v8, v11, :cond_1f

    const/16 v8, 0xa0

    if-ge v6, v8, :cond_a

    goto :goto_1

    :cond_a
    if-ne v6, v13, :cond_b

    goto :goto_1

    :cond_b
    add-int/2addr v7, v2

    if-ge v6, v14, :cond_c

    move v6, v3

    goto :goto_3

    :cond_c
    move v6, v2

    :goto_3
    add-int/2addr v9, v6

    sget-object v6, Lkotlin/Unit;->a:Lkotlin/Unit;

    move v8, v10

    goto :goto_0

    :cond_d
    if-eq v8, v11, :cond_1f

    goto :goto_1

    :cond_e
    shr-int/lit8 v6, v12, 0x4

    const v14, 0xe000

    const v13, 0xd800

    if-ne v6, v15, :cond_16

    add-int/lit8 v6, v7, 0x2

    if-gt v5, v6, :cond_f

    if-eq v8, v11, :cond_1f

    goto :goto_1

    :cond_f
    add-int/lit8 v15, v7, 0x1

    aget-byte v15, v4, v15

    and-int/lit16 v2, v15, 0xc0

    if-ne v2, v10, :cond_15

    aget-byte v2, v4, v6

    and-int/lit16 v6, v2, 0xc0

    if-ne v6, v10, :cond_14

    const v6, -0x1e080

    xor-int/2addr v2, v6

    shl-int/lit8 v6, v15, 0x6

    shl-int/lit8 v10, v12, 0xc

    xor-int/2addr v2, v6

    xor-int/2addr v2, v10

    const/16 v6, 0x800

    if-ge v2, v6, :cond_10

    if-eq v8, v11, :cond_1f

    goto/16 :goto_1

    :cond_10
    if-lt v2, v13, :cond_11

    if-ge v2, v14, :cond_11

    if-eq v8, v11, :cond_1f

    goto/16 :goto_1

    :cond_11
    add-int/lit8 v6, v8, 0x1

    if-eq v8, v11, :cond_1f

    const v8, 0xfffd

    if-ne v2, v8, :cond_12

    goto/16 :goto_1

    :cond_12
    add-int/lit8 v7, v7, 0x3

    const/high16 v8, 0x10000

    if-ge v2, v8, :cond_13

    move v2, v3

    goto :goto_4

    :cond_13
    const/4 v2, 0x2

    :goto_4
    add-int/2addr v9, v2

    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    move v8, v6

    const/4 v2, 0x2

    goto/16 :goto_0

    :cond_14
    if-eq v8, v11, :cond_1f

    goto/16 :goto_1

    :cond_15
    if-eq v8, v11, :cond_1f

    goto/16 :goto_1

    :cond_16
    shr-int/lit8 v2, v12, 0x3

    if-ne v2, v15, :cond_1e

    add-int/lit8 v2, v7, 0x3

    if-gt v5, v2, :cond_17

    if-eq v8, v11, :cond_1f

    goto/16 :goto_1

    :cond_17
    add-int/lit8 v6, v7, 0x1

    aget-byte v6, v4, v6

    and-int/lit16 v15, v6, 0xc0

    if-ne v15, v10, :cond_1d

    const/4 v15, 0x2

    add-int/lit8 v19, v7, 0x2

    aget-byte v15, v4, v19

    and-int/lit16 v3, v15, 0xc0

    if-ne v3, v10, :cond_1c

    aget-byte v2, v4, v2

    and-int/lit16 v3, v2, 0xc0

    if-ne v3, v10, :cond_1b

    const v3, 0x381f80

    xor-int/2addr v2, v3

    shl-int/lit8 v3, v15, 0x6

    shl-int/lit8 v6, v6, 0xc

    shl-int/lit8 v10, v12, 0x12

    xor-int/2addr v2, v3

    xor-int/2addr v2, v6

    xor-int/2addr v2, v10

    const v3, 0x10ffff

    if-le v2, v3, :cond_18

    if-eq v8, v11, :cond_1f

    goto/16 :goto_1

    :cond_18
    if-lt v2, v13, :cond_19

    if-ge v2, v14, :cond_19

    if-eq v8, v11, :cond_1f

    goto/16 :goto_1

    :cond_19
    const/high16 v3, 0x10000

    if-ge v2, v3, :cond_1a

    if-eq v8, v11, :cond_1f

    goto/16 :goto_1

    :cond_1a
    const/4 v2, 0x1

    add-int/lit8 v3, v8, 0x1

    if-eq v8, v11, :cond_1f

    const/4 v6, 0x2

    add-int/2addr v9, v6

    sget-object v8, Lkotlin/Unit;->a:Lkotlin/Unit;

    add-int/lit8 v7, v7, 0x4

    move v8, v3

    move v3, v2

    move v2, v6

    goto/16 :goto_0

    :cond_1b
    if-eq v8, v11, :cond_1f

    goto/16 :goto_1

    :cond_1c
    if-eq v8, v11, :cond_1f

    goto/16 :goto_1

    :cond_1d
    if-eq v8, v11, :cond_1f

    goto/16 :goto_1

    :cond_1e
    if-eq v8, v11, :cond_1f

    goto/16 :goto_1

    :cond_1f
    :goto_5
    const-string v2, "[size="

    const-string v3, "]"

    const/4 v4, -0x1

    if-ne v9, v4, :cond_23

    iget-object v4, v0, Lcom/google/android/libraries/places/internal/zzbwf;->zzc:[B

    array-length v4, v4

    if-gt v4, v11, :cond_20

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/libraries/places/internal/zzbwf;->zze()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[hex="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_7

    :cond_20
    const-string v3, "<this>"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/google/android/libraries/places/internal/zzbwf;->zzc:[B

    array-length v5, v3

    if-lt v5, v11, :cond_22

    if-eq v5, v11, :cond_21

    new-instance v5, Lcom/google/android/libraries/places/internal/zzbwf;

    const/4 v6, 0x0

    invoke-static {v3, v6, v11}, Lkotlin/collections/ArraysKt;->s([BII)[B

    move-result-object v3

    invoke-direct {v5, v3}, Lcom/google/android/libraries/places/internal/zzbwf;-><init>([B)V

    goto :goto_6

    :cond_21
    move-object v5, v0

    :goto_6
    invoke-virtual {v5}, Lcom/google/android/libraries/places/internal/zzbwf;->zze()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " hex="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_7

    :cond_22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endIndex > length("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_23
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/libraries/places/internal/zzbwf;->zzf()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const-string v5, "substring(...)"

    invoke-static {v10, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v14, 0x4

    const/4 v15, 0x0

    const-string v11, "\\"

    const-string v12, "\\\\"

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    const/16 v20, 0x4

    const/16 v21, 0x0

    const-string v17, "\n"

    const-string v18, "\\n"

    const/16 v19, 0x0

    invoke-static/range {v16 .. v21}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "\r"

    const-string v12, "\\r"

    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v9, v4, :cond_24

    iget-object v3, v0, Lcom/google/android/libraries/places/internal/zzbwf;->zzc:[B

    array-length v3, v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " text="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[text="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_7
    return-object v1
.end method

.method public zza(I)B
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwf;->zzc:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public final zzb()I
    .locals 1

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzbwf;->zzd:I

    return v0
.end method

.method public zzc()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwf;->zzc:[B

    array-length v0, v0

    return v0
.end method

.method public final zzd()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwf;->zzc:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/google/android/libraries/places/internal/zzbvu;->zza([B[BILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zze()Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwf;->zzc:[B

    array-length v1, v0

    add-int v2, v1, v1

    new-array v2, v2, [C

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_0

    aget-byte v5, v0, v3

    add-int/lit8 v6, v4, 0x1

    shr-int/lit8 v7, v5, 0x4

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbwy;->zza()[C

    move-result-object v8

    and-int/lit8 v7, v7, 0xf

    aget-char v7, v8, v7

    aput-char v7, v2, v4

    and-int/lit8 v5, v5, 0xf

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbwy;->zza()[C

    move-result-object v7

    aget-char v5, v7, v5

    aput-char v5, v2, v6

    add-int/lit8 v4, v4, 0x2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lkotlin/text/StringsKt;->B([C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzf()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwf;->zze:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbwf;->zzo()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbww;->zza([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwf;->zze:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public zzg()Lcom/google/android/libraries/places/internal/zzbwf;
    .locals 7

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbwf;->zzc:[B

    array-length v2, v1

    if-ge v0, v2, :cond_5

    add-int/lit8 v3, v0, 0x1

    aget-byte v4, v1, v0

    const/16 v5, 0x41

    if-lt v4, v5, :cond_4

    const/16 v6, 0x5a

    if-le v4, v6, :cond_0

    goto :goto_3

    :cond_0
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    const-string v2, "copyOf(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x20

    int-to-byte v2, v4

    aput-byte v2, v1, v0

    :goto_1
    array-length v0, v1

    if-ge v3, v0, :cond_3

    add-int/lit8 v0, v3, 0x1

    aget-byte v2, v1, v3

    if-lt v2, v5, :cond_2

    if-le v2, v6, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x20

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    :cond_2
    :goto_2
    move v3, v0

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbwf;

    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/internal/zzbwf;-><init>([B)V

    goto :goto_4

    :cond_4
    :goto_3
    move v0, v3

    goto :goto_0

    :cond_5
    move-object v0, p0

    :goto_4
    return-object v0
.end method

.method public final zzh(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzbwf;->zzd:I

    return-void
.end method

.method public final zzi(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbwf;->zze:Ljava/lang/String;

    return-void
.end method

.method public zzj(Lcom/google/android/libraries/places/internal/zzbwb;II)V
    .locals 1

    const-string p2, "buffer"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/google/android/libraries/places/internal/zzbwy;->zza:I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbwf;->zzc:[B

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p3}, Lcom/google/android/libraries/places/internal/zzbwb;->zzl([BII)Lcom/google/android/libraries/places/internal/zzbwb;

    return-void
.end method

.method public zzk(ILcom/google/android/libraries/places/internal/zzbwf;II)Z
    .locals 0

    const-string p1, "other"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    iget-object p3, p0, Lcom/google/android/libraries/places/internal/zzbwf;->zzc:[B

    invoke-virtual {p2, p1, p3, p1, p4}, Lcom/google/android/libraries/places/internal/zzbwf;->zzl(I[BII)Z

    move-result p1

    return p1
.end method

.method public zzl(I[BII)Z
    .locals 2

    const-string v0, "other"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwf;->zzc:[B

    array-length v1, v0

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_0

    if-ltz p3, :cond_0

    array-length v1, p2

    sub-int/2addr v1, p4

    if-gt p3, v1, :cond_0

    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/libraries/places/internal/zzbvv;->zzc([BI[BII)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zzm(Lcom/google/android/libraries/places/internal/zzbwf;)Z
    .locals 2

    const-string v0, "prefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/google/android/libraries/places/internal/zzbwf;->zzc:[B

    array-length v0, v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v1, v0}, Lcom/google/android/libraries/places/internal/zzbwf;->zzk(ILcom/google/android/libraries/places/internal/zzbwf;II)Z

    move-result p1

    return p1
.end method

.method public final zzn()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwf;->zzc:[B

    return-object v0
.end method

.method public zzo()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwf;->zzc:[B

    return-object v0
.end method

.method public zzp()[B
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwf;->zzc:[B

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    const-string v1, "copyOf(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
