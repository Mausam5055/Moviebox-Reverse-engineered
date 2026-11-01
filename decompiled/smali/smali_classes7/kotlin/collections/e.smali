.class Lkotlin/collections/e;
.super Lkotlin/collections/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlin/collections/d;-><init>()V

    return-void
.end method

.method public static d([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_14

    if-eqz p1, :cond_14

    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_1

    goto/16 :goto_3

    :cond_1
    array-length v2, p0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_13

    aget-object v4, p0, v3

    aget-object v5, p1, v3

    if-ne v4, v5, :cond_2

    goto/16 :goto_1

    :cond_2
    if-eqz v4, :cond_12

    if-nez v5, :cond_3

    goto/16 :goto_2

    :cond_3
    instance-of v6, v4, [Ljava/lang/Object;

    if-eqz v6, :cond_4

    instance-of v6, v5, [Ljava/lang/Object;

    if-eqz v6, :cond_4

    check-cast v4, [Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lkotlin/collections/ArraysKt;->d([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    return v1

    :cond_4
    instance-of v6, v4, [B

    if-eqz v6, :cond_5

    instance-of v6, v5, [B

    if-eqz v6, :cond_5

    check-cast v4, [B

    check-cast v5, [B

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_11

    return v1

    :cond_5
    instance-of v6, v4, [S

    if-eqz v6, :cond_6

    instance-of v6, v5, [S

    if-eqz v6, :cond_6

    check-cast v4, [S

    check-cast v5, [S

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([S[S)Z

    move-result v4

    if-nez v4, :cond_11

    return v1

    :cond_6
    instance-of v6, v4, [I

    if-eqz v6, :cond_7

    instance-of v6, v5, [I

    if-eqz v6, :cond_7

    check-cast v4, [I

    check-cast v5, [I

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v4

    if-nez v4, :cond_11

    return v1

    :cond_7
    instance-of v6, v4, [J

    if-eqz v6, :cond_8

    instance-of v6, v5, [J

    if-eqz v6, :cond_8

    check-cast v4, [J

    check-cast v5, [J

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v4

    if-nez v4, :cond_11

    return v1

    :cond_8
    instance-of v6, v4, [F

    if-eqz v6, :cond_9

    instance-of v6, v5, [F

    if-eqz v6, :cond_9

    check-cast v4, [F

    check-cast v5, [F

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v4

    if-nez v4, :cond_11

    return v1

    :cond_9
    instance-of v6, v4, [D

    if-eqz v6, :cond_a

    instance-of v6, v5, [D

    if-eqz v6, :cond_a

    check-cast v4, [D

    check-cast v5, [D

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v4

    if-nez v4, :cond_11

    return v1

    :cond_a
    instance-of v6, v4, [C

    if-eqz v6, :cond_b

    instance-of v6, v5, [C

    if-eqz v6, :cond_b

    check-cast v4, [C

    check-cast v5, [C

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v4

    if-nez v4, :cond_11

    return v1

    :cond_b
    instance-of v6, v4, [Z

    if-eqz v6, :cond_c

    instance-of v6, v5, [Z

    if-eqz v6, :cond_c

    check-cast v4, [Z

    check-cast v5, [Z

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v4

    if-nez v4, :cond_11

    return v1

    :cond_c
    instance-of v6, v4, Lkotlin/UByteArray;

    if-eqz v6, :cond_d

    instance-of v6, v5, Lkotlin/UByteArray;

    if-eqz v6, :cond_d

    check-cast v4, Lkotlin/UByteArray;

    invoke-virtual {v4}, Lkotlin/UByteArray;->u()[B

    move-result-object v4

    check-cast v5, Lkotlin/UByteArray;

    invoke-virtual {v5}, Lkotlin/UByteArray;->u()[B

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/collections/unsigned/UArraysKt;->c([B[B)Z

    move-result v4

    if-nez v4, :cond_11

    return v1

    :cond_d
    instance-of v6, v4, Lkotlin/UShortArray;

    if-eqz v6, :cond_e

    instance-of v6, v5, Lkotlin/UShortArray;

    if-eqz v6, :cond_e

    check-cast v4, Lkotlin/UShortArray;

    invoke-virtual {v4}, Lkotlin/UShortArray;->u()[S

    move-result-object v4

    check-cast v5, Lkotlin/UShortArray;

    invoke-virtual {v5}, Lkotlin/UShortArray;->u()[S

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/collections/unsigned/UArraysKt;->a([S[S)Z

    move-result v4

    if-nez v4, :cond_11

    return v1

    :cond_e
    instance-of v6, v4, Lkotlin/UIntArray;

    if-eqz v6, :cond_f

    instance-of v6, v5, Lkotlin/UIntArray;

    if-eqz v6, :cond_f

    check-cast v4, Lkotlin/UIntArray;

    invoke-virtual {v4}, Lkotlin/UIntArray;->u()[I

    move-result-object v4

    check-cast v5, Lkotlin/UIntArray;

    invoke-virtual {v5}, Lkotlin/UIntArray;->u()[I

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/collections/unsigned/UArraysKt;->b([I[I)Z

    move-result v4

    if-nez v4, :cond_11

    return v1

    :cond_f
    instance-of v6, v4, Lkotlin/ULongArray;

    if-eqz v6, :cond_10

    instance-of v6, v5, Lkotlin/ULongArray;

    if-eqz v6, :cond_10

    check-cast v4, Lkotlin/ULongArray;

    invoke-virtual {v4}, Lkotlin/ULongArray;->u()[J

    move-result-object v4

    check-cast v5, Lkotlin/ULongArray;

    invoke-virtual {v5}, Lkotlin/ULongArray;->u()[J

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/collections/unsigned/UArraysKt;->d([J[J)Z

    move-result v4

    if-nez v4, :cond_11

    return v1

    :cond_10
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    return v1

    :cond_11
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_12
    :goto_2
    return v1

    :cond_13
    return v0

    :cond_14
    :goto_3
    return v1
.end method

.method public static e([Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    :cond_0
    array-length v0, p0

    const v1, 0x19999999

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->i(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, v1, v0}, Lkotlin/collections/e;->f([Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/util/List;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final f([Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 5

    invoke-interface {p2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "[...]"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_0
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_10

    if-eqz v1, :cond_1

    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    aget-object v2, p0, v1

    if-nez v2, :cond_2

    const-string v2, "null"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_2
    instance-of v3, v2, [Ljava/lang/Object;

    if-eqz v3, :cond_3

    check-cast v2, [Ljava/lang/Object;

    invoke-static {v2, p1, p2}, Lkotlin/collections/e;->f([Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/util/List;)V

    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto/16 :goto_1

    :cond_3
    instance-of v3, v2, [B

    const-string v4, "toString(...)"

    if-eqz v3, :cond_4

    check-cast v2, [B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_4
    instance-of v3, v2, [S

    if-eqz v3, :cond_5

    check-cast v2, [S

    invoke-static {v2}, Ljava/util/Arrays;->toString([S)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_5
    instance-of v3, v2, [I

    if-eqz v3, :cond_6

    check-cast v2, [I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_6
    instance-of v3, v2, [J

    if-eqz v3, :cond_7

    check-cast v2, [J

    invoke-static {v2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_7
    instance-of v3, v2, [F

    if-eqz v3, :cond_8

    check-cast v2, [F

    invoke-static {v2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_8
    instance-of v3, v2, [D

    if-eqz v3, :cond_9

    check-cast v2, [D

    invoke-static {v2}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_9
    instance-of v3, v2, [C

    if-eqz v3, :cond_a

    check-cast v2, [C

    invoke-static {v2}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_a
    instance-of v3, v2, [Z

    if-eqz v3, :cond_b

    check-cast v2, [Z

    invoke-static {v2}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_b
    instance-of v3, v2, Lkotlin/UByteArray;

    if-eqz v3, :cond_c

    check-cast v2, Lkotlin/UByteArray;

    invoke-virtual {v2}, Lkotlin/UByteArray;->u()[B

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/unsigned/UArraysKt;->e([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_c
    instance-of v3, v2, Lkotlin/UShortArray;

    if-eqz v3, :cond_d

    check-cast v2, Lkotlin/UShortArray;

    invoke-virtual {v2}, Lkotlin/UShortArray;->u()[S

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/unsigned/UArraysKt;->g([S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_d
    instance-of v3, v2, Lkotlin/UIntArray;

    if-eqz v3, :cond_e

    check-cast v2, Lkotlin/UIntArray;

    invoke-virtual {v2}, Lkotlin/UIntArray;->u()[I

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/unsigned/UArraysKt;->f([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_e
    instance-of v3, v2, Lkotlin/ULongArray;

    if-eqz v3, :cond_f

    check-cast v2, Lkotlin/ULongArray;

    invoke-virtual {v2}, Lkotlin/ULongArray;->u()[J

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/unsigned/UArraysKt;->h([J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_f
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_10
    const/16 p0, 0x5d

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->n(Ljava/util/List;)I

    move-result p0

    invoke-interface {p2, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method
