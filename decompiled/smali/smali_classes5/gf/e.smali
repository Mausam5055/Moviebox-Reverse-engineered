.class public abstract Lgf/e;
.super Ljava/lang/Object;


# direct methods
.method public static varargs a([Ljava/lang/Object;)I
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_f

    array-length v2, p0

    if-nez v2, :cond_0

    goto/16 :goto_4

    :cond_0
    array-length v2, p0

    move v3, v1

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_e

    aget-object v5, p0, v3

    if-nez v5, :cond_1

    goto/16 :goto_3

    :cond_1
    instance-of v6, v5, Ljava/lang/Number;

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    :goto_1
    add-int/2addr v4, v5

    goto/16 :goto_3

    :cond_2
    instance-of v6, v5, [Z

    if-eqz v6, :cond_3

    check-cast v5, [Z

    invoke-static {v5}, Ljava/util/Arrays;->hashCode([Z)I

    move-result v5

    goto :goto_1

    :cond_3
    instance-of v6, v5, [B

    if-eqz v6, :cond_4

    check-cast v5, [B

    invoke-static {v5}, Ljava/util/Arrays;->hashCode([B)I

    move-result v5

    goto :goto_1

    :cond_4
    instance-of v6, v5, [C

    if-eqz v6, :cond_5

    check-cast v5, [C

    invoke-static {v5}, Ljava/util/Arrays;->hashCode([C)I

    move-result v5

    goto :goto_1

    :cond_5
    instance-of v6, v5, [S

    if-eqz v6, :cond_6

    check-cast v5, [S

    invoke-static {v5}, Ljava/util/Arrays;->hashCode([S)I

    move-result v5

    goto :goto_1

    :cond_6
    instance-of v6, v5, [I

    if-eqz v6, :cond_7

    check-cast v5, [I

    invoke-static {v5}, Ljava/util/Arrays;->hashCode([I)I

    move-result v5

    goto :goto_1

    :cond_7
    instance-of v6, v5, [J

    if-eqz v6, :cond_8

    check-cast v5, [J

    invoke-static {v5}, Ljava/util/Arrays;->hashCode([J)I

    move-result v5

    goto :goto_1

    :cond_8
    instance-of v6, v5, [F

    if-eqz v6, :cond_9

    check-cast v5, [F

    invoke-static {v5}, Ljava/util/Arrays;->hashCode([F)I

    move-result v5

    goto :goto_1

    :cond_9
    instance-of v6, v5, [D

    if-eqz v6, :cond_a

    check-cast v5, [D

    invoke-static {v5}, Ljava/util/Arrays;->hashCode([D)I

    move-result v5

    goto :goto_1

    :cond_a
    instance-of v6, v5, [Ljava/lang/Object;

    if-eqz v6, :cond_b

    check-cast v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v5

    goto :goto_1

    :cond_b
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->isArray()Z

    move-result v6

    if-eqz v6, :cond_c

    move v6, v1

    :goto_2
    invoke-static {v5}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v7

    if-ge v6, v7, :cond_d

    invoke-static {v5, v6}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v7

    new-array v8, v0, [Ljava/lang/Object;

    aput-object v7, v8, v1

    invoke-static {v8}, Lgf/e;->a([Ljava/lang/Object;)I

    move-result v7

    add-int/2addr v4, v7

    add-int/2addr v6, v0

    goto :goto_2

    :cond_c
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    goto/16 :goto_1

    :cond_d
    :goto_3
    add-int/2addr v3, v0

    goto/16 :goto_0

    :cond_e
    return v4

    :cond_f
    :goto_4
    return v1
.end method
