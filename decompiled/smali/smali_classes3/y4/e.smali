.class public final Ly4/e;
.super Ly4/c;


# instance fields
.field private final t:Ljava/lang/String;

.field private final u:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    sget v0, Lcom/alibaba/fastjson/a;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, v0}, Ly4/e;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p2}, Ly4/c;-><init>(I)V

    iput-object p1, p0, Ly4/e;->t:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Ly4/e;->u:I

    const/4 p1, -0x1

    iput p1, p0, Ly4/c;->e:I

    invoke-virtual {p0}, Ly4/e;->next()C

    iget-char p1, p0, Ly4/c;->d:C

    const p2, 0xfeff

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Ly4/e;->next()C

    :cond_0
    return-void
.end method

.method public constructor <init>([CII)V
    .locals 2

    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {p0, v0, p3}, Ly4/e;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static t1(Ljava/lang/String;I[C)Z
    .locals 5

    array-length v0, p2

    add-int v1, v0, p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    return v3

    :cond_0
    move v1, v3

    :goto_0
    if-ge v1, v0, :cond_2

    aget-char v2, p2, v1

    add-int v4, p1, v1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v2, v4, :cond_1

    return v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method static u1(CCCCCCII)Z
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x30

    if-lt p0, v1, :cond_d

    const/16 v2, 0x39

    if-le p0, v2, :cond_0

    goto :goto_1

    :cond_0
    if-lt p1, v1, :cond_d

    if-le p1, v2, :cond_1

    goto :goto_1

    :cond_1
    if-lt p2, v1, :cond_d

    if-le p2, v2, :cond_2

    goto :goto_1

    :cond_2
    if-lt p3, v1, :cond_d

    if-le p3, v2, :cond_3

    goto :goto_1

    :cond_3
    const/16 p0, 0x32

    const/16 p1, 0x31

    if-ne p4, v1, :cond_5

    if-lt p5, p1, :cond_4

    if-le p5, v2, :cond_6

    :cond_4
    return v0

    :cond_5
    if-ne p4, p1, :cond_d

    if-eq p5, v1, :cond_6

    if-eq p5, p1, :cond_6

    if-eq p5, p0, :cond_6

    return v0

    :cond_6
    if-ne p6, v1, :cond_8

    if-lt p7, p1, :cond_7

    if-le p7, v2, :cond_c

    :cond_7
    return v0

    :cond_8
    if-eq p6, p1, :cond_b

    if-ne p6, p0, :cond_9

    goto :goto_0

    :cond_9
    const/16 p0, 0x33

    if-ne p6, p0, :cond_a

    if-eq p7, v1, :cond_c

    if-eq p7, p1, :cond_c

    :cond_a
    return v0

    :cond_b
    :goto_0
    if-lt p7, v1, :cond_d

    if-le p7, v2, :cond_c

    goto :goto_1

    :cond_c
    const/4 p0, 0x1

    return p0

    :cond_d
    :goto_1
    return v0
.end method

.method private v1(CCCCCC)Z
    .locals 4

    const/16 v0, 0x39

    const/4 v1, 0x0

    const/16 v2, 0x30

    if-ne p1, v2, :cond_1

    if-lt p2, v2, :cond_0

    if-le p2, v0, :cond_4

    :cond_0
    return v1

    :cond_1
    const/16 v3, 0x31

    if-ne p1, v3, :cond_3

    if-lt p2, v2, :cond_2

    if-le p2, v0, :cond_4

    :cond_2
    return v1

    :cond_3
    const/16 v3, 0x32

    if-ne p1, v3, :cond_b

    if-lt p2, v2, :cond_b

    const/16 p1, 0x34

    if-le p2, p1, :cond_4

    goto :goto_0

    :cond_4
    const/16 p1, 0x36

    const/16 p2, 0x35

    if-lt p3, v2, :cond_6

    if-gt p3, p2, :cond_6

    if-lt p4, v2, :cond_5

    if-le p4, v0, :cond_7

    :cond_5
    return v1

    :cond_6
    if-ne p3, p1, :cond_b

    if-eq p4, v2, :cond_7

    return v1

    :cond_7
    if-lt p5, v2, :cond_9

    if-gt p5, p2, :cond_9

    if-lt p6, v2, :cond_8

    if-le p6, v0, :cond_a

    :cond_8
    return v1

    :cond_9
    if-ne p5, p1, :cond_b

    if-eq p6, v2, :cond_a

    return v1

    :cond_a
    const/4 p1, 0x1

    return p1

    :cond_b
    :goto_0
    return v1
.end method

.method private y1(ZI)Z
    .locals 34

    move-object/from16 v9, p0

    move/from16 v10, p2

    const/4 v11, 0x0

    const/16 v12, 0x8

    if-ge v10, v12, :cond_0

    return v11

    :cond_0
    iget v0, v9, Ly4/c;->e:I

    invoke-virtual {v9, v0}, Ly4/e;->G0(I)C

    move-result v13

    iget v0, v9, Ly4/c;->e:I

    const/4 v14, 0x1

    add-int/2addr v0, v14

    invoke-virtual {v9, v0}, Ly4/e;->G0(I)C

    move-result v15

    iget v0, v9, Ly4/c;->e:I

    const/4 v8, 0x2

    add-int/2addr v0, v8

    invoke-virtual {v9, v0}, Ly4/e;->G0(I)C

    move-result v0

    iget v1, v9, Ly4/c;->e:I

    const/16 v16, 0x3

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {v9, v1}, Ly4/e;->G0(I)C

    move-result v7

    iget v1, v9, Ly4/c;->e:I

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v9, v1}, Ly4/e;->G0(I)C

    move-result v1

    iget v2, v9, Ly4/c;->e:I

    const/4 v6, 0x5

    add-int/2addr v2, v6

    invoke-virtual {v9, v2}, Ly4/e;->G0(I)C

    move-result v2

    iget v3, v9, Ly4/c;->e:I

    const/16 v17, 0x6

    add-int/lit8 v3, v3, 0x6

    invoke-virtual {v9, v3}, Ly4/e;->G0(I)C

    move-result v3

    iget v4, v9, Ly4/c;->e:I

    add-int/lit8 v4, v4, 0x7

    invoke-virtual {v9, v4}, Ly4/e;->G0(I)C

    move-result v4

    const/16 v5, 0x39

    const/16 v12, 0x30

    if-nez p1, :cond_6

    const/16 v6, 0xd

    if-le v10, v6, :cond_5

    iget v6, v9, Ly4/c;->e:I

    add-int/2addr v6, v10

    sub-int/2addr v6, v14

    invoke-virtual {v9, v6}, Ly4/e;->G0(I)C

    move-result v6

    iget v14, v9, Ly4/c;->e:I

    add-int/2addr v14, v10

    sub-int/2addr v14, v8

    invoke-virtual {v9, v14}, Ly4/e;->G0(I)C

    move-result v14

    const/16 v8, 0x2f

    if-ne v13, v8, :cond_5

    const/16 v8, 0x44

    if-ne v15, v8, :cond_5

    const/16 v8, 0x61

    if-ne v0, v8, :cond_5

    const/16 v8, 0x74

    if-ne v7, v8, :cond_5

    const/16 v8, 0x65

    if-ne v1, v8, :cond_5

    const/16 v8, 0x28

    if-ne v2, v8, :cond_5

    const/16 v8, 0x2f

    if-ne v6, v8, :cond_5

    const/16 v6, 0x29

    if-ne v14, v6, :cond_5

    const/4 v0, -0x1

    move/from16 v1, v17

    :goto_0
    if-ge v1, v10, :cond_3

    iget v2, v9, Ly4/c;->e:I

    add-int/2addr v2, v1

    invoke-virtual {v9, v2}, Ly4/e;->G0(I)C

    move-result v2

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    if-lt v2, v12, :cond_3

    if-le v2, v5, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    return v11

    :cond_4
    iget v1, v9, Ly4/c;->e:I

    add-int/lit8 v2, v1, 0x6

    add-int/2addr v1, v0

    sub-int/2addr v1, v2

    invoke-virtual {v9, v2, v1}, Ly4/e;->r1(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, v9, Ly4/c;->l:Ljava/util/TimeZone;

    iget-object v3, v9, Ly4/c;->m:Ljava/util/Locale;

    invoke-static {v2, v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, v9, Ly4/c;->k:Ljava/util/Calendar;

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v6, 0x5

    iput v6, v9, Ly4/c;->a:I

    :goto_3
    const/4 v0, 0x1

    return v0

    :cond_5
    const/4 v6, 0x5

    :cond_6
    const/16 v14, 0x10

    const/16 v12, 0xe

    const/16 v11, 0x2d

    const/16 v21, 0xa

    const/16 v5, 0x8

    if-eq v10, v5, :cond_4f

    if-eq v10, v12, :cond_4f

    if-ne v10, v14, :cond_8

    iget v5, v9, Ly4/c;->e:I

    add-int/lit8 v5, v5, 0xa

    invoke-virtual {v9, v5}, Ly4/e;->G0(I)C

    move-result v5

    const/16 v6, 0x54

    if-eq v5, v6, :cond_7

    const/16 v6, 0x20

    if-eq v5, v6, :cond_7

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v5, 0x0

    const/16 v12, 0x3a

    const/4 v14, 0x5

    goto/16 :goto_24

    :cond_8
    :goto_5
    const/16 v5, 0x11

    if-ne v10, v5, :cond_9

    iget v5, v9, Ly4/c;->e:I

    add-int/lit8 v5, v5, 0x6

    invoke-virtual {v9, v5}, Ly4/e;->G0(I)C

    move-result v5

    if-eq v5, v11, :cond_9

    goto :goto_4

    :cond_9
    const/16 v5, 0x9

    if-ge v10, v5, :cond_a

    const/4 v6, 0x0

    return v6

    :cond_a
    iget v6, v9, Ly4/c;->e:I

    const/16 v18, 0x8

    add-int/lit8 v6, v6, 0x8

    invoke-virtual {v9, v6}, Ly4/e;->G0(I)C

    move-result v6

    iget v8, v9, Ly4/c;->e:I

    add-int/2addr v8, v5

    invoke-virtual {v9, v8}, Ly4/e;->G0(I)C

    move-result v5

    const v8, 0xc77c

    const/16 v12, 0x65e5

    if-ne v1, v11, :cond_c

    if-eq v4, v11, :cond_b

    goto :goto_7

    :cond_b
    :goto_6
    const/16 v14, 0x20

    goto :goto_8

    :cond_c
    :goto_7
    const/16 v14, 0x2f

    if-ne v1, v14, :cond_e

    const/16 v14, 0x2f

    if-ne v4, v14, :cond_e

    goto :goto_6

    :goto_8
    if-ne v5, v14, :cond_d

    move v5, v2

    move v4, v7

    move v1, v13

    move v2, v15

    const/16 v7, 0x30

    const/16 v13, 0x9

    :goto_9
    move v15, v6

    move v6, v3

    :goto_a
    move v3, v0

    goto/16 :goto_15

    :cond_d
    move v4, v7

    move v1, v13

    move/from16 v13, v21

    :goto_b
    move v7, v6

    move v6, v3

    move v3, v0

    move/from16 v32, v5

    move v5, v2

    move v2, v15

    move/from16 v15, v32

    goto/16 :goto_15

    :cond_e
    const/16 v14, 0x20

    if-ne v1, v11, :cond_10

    if-ne v3, v11, :cond_10

    if-ne v6, v14, :cond_f

    move v3, v0

    move v6, v2

    move v1, v13

    move v2, v15

    const/16 v5, 0x30

    const/16 v13, 0x8

    :goto_c
    move v15, v4

    move v4, v7

    const/16 v7, 0x30

    goto/16 :goto_15

    :cond_f
    move v3, v0

    move v1, v13

    const/16 v5, 0x30

    const/16 v13, 0x9

    :goto_d
    move/from16 v32, v6

    move v6, v2

    move v2, v15

    move/from16 v15, v32

    move/from16 v33, v7

    move v7, v4

    move/from16 v4, v33

    goto/16 :goto_15

    :cond_10
    const/16 v14, 0x2e

    if-ne v0, v14, :cond_11

    const/16 v14, 0x2e

    if-eq v2, v14, :cond_12

    :cond_11
    if-ne v0, v11, :cond_13

    if-ne v2, v11, :cond_13

    :cond_12
    move v2, v4

    move v4, v5

    move v5, v7

    move v7, v13

    move/from16 v13, v21

    move/from16 v32, v6

    move v6, v1

    move v1, v3

    move/from16 v3, v32

    goto/16 :goto_15

    :cond_13
    const/16 v14, 0x54

    if-ne v6, v14, :cond_14

    move v5, v1

    move v6, v2

    move v1, v13

    move v2, v15

    const/16 v13, 0x8

    move v15, v4

    move v4, v7

    move v7, v3

    goto :goto_a

    :cond_14
    const/16 v14, 0x5e74

    if-eq v1, v14, :cond_16

    const v14, 0xb144

    if-ne v1, v14, :cond_15

    goto :goto_e

    :cond_15
    const/4 v1, 0x0

    return v1

    :cond_16
    :goto_e
    const/16 v1, 0x6708

    if-eq v4, v1, :cond_1e

    const v1, 0xc6d4

    if-ne v4, v1, :cond_17

    goto :goto_12

    :cond_17
    const/16 v1, 0x6708

    if-eq v3, v1, :cond_18

    const v1, 0xc6d4

    if-ne v3, v1, :cond_19

    :cond_18
    const/4 v1, 0x0

    goto :goto_f

    :cond_19
    const/4 v1, 0x0

    return v1

    :goto_f
    if-eq v6, v12, :cond_1d

    if-ne v6, v8, :cond_1a

    goto :goto_11

    :cond_1a
    if-eq v5, v12, :cond_1c

    if-ne v5, v8, :cond_1b

    goto :goto_10

    :cond_1b
    return v1

    :cond_1c
    :goto_10
    move v3, v0

    move v1, v13

    move/from16 v13, v21

    const/16 v5, 0x30

    goto :goto_d

    :cond_1d
    :goto_11
    move v3, v0

    move v6, v2

    move v1, v13

    move v2, v15

    move/from16 v13, v21

    const/16 v5, 0x30

    goto :goto_c

    :cond_1e
    :goto_12
    if-eq v5, v12, :cond_22

    if-ne v5, v8, :cond_1f

    goto :goto_14

    :cond_1f
    iget v1, v9, Ly4/c;->e:I

    add-int/lit8 v1, v1, 0xa

    invoke-virtual {v9, v1}, Ly4/e;->G0(I)C

    move-result v1

    if-eq v1, v12, :cond_21

    iget v1, v9, Ly4/c;->e:I

    add-int/lit8 v1, v1, 0xa

    invoke-virtual {v9, v1}, Ly4/e;->G0(I)C

    move-result v1

    if-ne v1, v8, :cond_20

    goto :goto_13

    :cond_20
    const/4 v1, 0x0

    return v1

    :cond_21
    :goto_13
    move v4, v7

    move v1, v13

    const/16 v13, 0xb

    goto/16 :goto_b

    :cond_22
    :goto_14
    move v5, v2

    move v4, v7

    move v1, v13

    move v2, v15

    move/from16 v13, v21

    const/16 v7, 0x30

    goto/16 :goto_9

    :goto_15
    move/from16 v24, v1

    move/from16 v25, v2

    move/from16 v26, v3

    move/from16 v27, v4

    move/from16 v28, v5

    move/from16 v29, v6

    move/from16 v30, v7

    move/from16 v31, v15

    invoke-static/range {v24 .. v31}, Ly4/e;->u1(CCCCCCII)Z

    move-result v0

    if-nez v0, :cond_23

    const/4 v0, 0x0

    return v0

    :cond_23
    move-object/from16 v0, p0

    const/16 v14, 0x39

    const/4 v14, 0x5

    const/4 v11, 0x2

    move v8, v15

    invoke-direct/range {v0 .. v8}, Ly4/e;->z1(CCCCCCCC)V

    iget v0, v9, Ly4/c;->e:I

    add-int/2addr v0, v13

    invoke-virtual {v9, v0}, Ly4/e;->G0(I)C

    move-result v7

    const/16 v0, 0x54

    if-ne v7, v0, :cond_27

    const/16 v0, 0x10

    if-ne v10, v0, :cond_26

    const/16 v0, 0x8

    if-ne v13, v0, :cond_26

    iget v0, v9, Ly4/c;->e:I

    add-int/lit8 v0, v0, 0xf

    invoke-virtual {v9, v0}, Ly4/e;->G0(I)C

    move-result v0

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_26

    iget v0, v9, Ly4/c;->e:I

    add-int/2addr v0, v13

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Ly4/e;->G0(I)C

    move-result v7

    iget v0, v9, Ly4/c;->e:I

    add-int/2addr v0, v13

    add-int/2addr v0, v11

    invoke-virtual {v9, v0}, Ly4/e;->G0(I)C

    move-result v8

    iget v0, v9, Ly4/c;->e:I

    add-int/2addr v0, v13

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {v9, v0}, Ly4/e;->G0(I)C

    move-result v10

    iget v0, v9, Ly4/c;->e:I

    add-int/2addr v0, v13

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {v9, v0}, Ly4/e;->G0(I)C

    move-result v11

    iget v0, v9, Ly4/c;->e:I

    add-int/2addr v0, v13

    add-int/2addr v0, v14

    invoke-virtual {v9, v0}, Ly4/e;->G0(I)C

    move-result v12

    iget v0, v9, Ly4/c;->e:I

    add-int/2addr v0, v13

    add-int/lit8 v0, v0, 0x6

    invoke-virtual {v9, v0}, Ly4/e;->G0(I)C

    move-result v13

    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move v3, v10

    move v4, v11

    move v5, v12

    move v6, v13

    invoke-direct/range {v0 .. v6}, Ly4/e;->v1(CCCCCC)Z

    move-result v0

    if-nez v0, :cond_24

    const/4 v15, 0x0

    return v15

    :cond_24
    const/4 v15, 0x0

    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move v3, v10

    move v4, v11

    move v5, v12

    move v6, v13

    invoke-virtual/range {v0 .. v6}, Ly4/e;->A1(CCCCCC)V

    iget-object v0, v9, Ly4/c;->k:Ljava/util/Calendar;

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v15}, Ljava/util/Calendar;->set(II)V

    iget-object v0, v9, Ly4/c;->k:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    if-eqz v0, :cond_25

    invoke-static {v15}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_25

    aget-object v0, v0, v15

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    iget-object v1, v9, Ly4/c;->k:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_25
    iput v14, v9, Ly4/c;->a:I

    goto/16 :goto_3

    :cond_26
    const/16 v0, 0x54

    :cond_27
    if-eq v7, v0, :cond_28

    const/16 v0, 0x20

    if-ne v7, v0, :cond_29

    if-nez p1, :cond_29

    :cond_28
    const/16 v12, 0x3a

    goto/16 :goto_19

    :cond_29
    const/16 v0, 0x22

    if-eq v7, v0, :cond_2a

    const/16 v0, 0x1a

    if-eq v7, v0, :cond_2a

    if-eq v7, v12, :cond_2a

    const v0, 0xc77c

    if-ne v7, v0, :cond_2b

    :cond_2a
    const/4 v0, 0x0

    goto :goto_18

    :cond_2b
    const/16 v0, 0x2b

    if-eq v7, v0, :cond_2d

    const/16 v0, 0x2d

    if-ne v7, v0, :cond_2c

    goto :goto_16

    :cond_2c
    const/4 v0, 0x0

    return v0

    :cond_2d
    :goto_16
    iget v0, v9, Ly4/e;->u:I

    add-int/lit8 v1, v13, 0x6

    if-ne v0, v1, :cond_30

    iget v0, v9, Ly4/c;->e:I

    add-int/2addr v0, v13

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {v9, v0}, Ly4/e;->G0(I)C

    move-result v0

    const/16 v12, 0x3a

    if-ne v0, v12, :cond_2e

    iget v0, v9, Ly4/c;->e:I

    add-int/2addr v0, v13

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {v9, v0}, Ly4/e;->G0(I)C

    move-result v0

    const/16 v1, 0x30

    if-ne v0, v1, :cond_2e

    iget v0, v9, Ly4/c;->e:I

    add-int/2addr v0, v13

    add-int/2addr v0, v14

    invoke-virtual {v9, v0}, Ly4/e;->G0(I)C

    move-result v0

    if-eq v0, v1, :cond_2f

    :cond_2e
    const/4 v0, 0x0

    goto :goto_17

    :cond_2f
    const/16 v5, 0x30

    const/16 v6, 0x30

    const/16 v1, 0x30

    const/16 v2, 0x30

    const/16 v3, 0x30

    const/16 v4, 0x30

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Ly4/e;->A1(CCCCCC)V

    iget-object v0, v9, Ly4/c;->k:Ljava/util/Calendar;

    const/4 v1, 0x0

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    iget v0, v9, Ly4/c;->e:I

    add-int/2addr v0, v13

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Ly4/e;->G0(I)C

    move-result v0

    iget v2, v9, Ly4/c;->e:I

    add-int/2addr v2, v13

    add-int/2addr v2, v11

    invoke-virtual {v9, v2}, Ly4/e;->G0(I)C

    move-result v2

    invoke-virtual {v9, v7, v0, v2}, Ly4/e;->B1(CCC)V

    return v1

    :goto_17
    return v0

    :cond_30
    const/4 v0, 0x0

    return v0

    :goto_18
    iget-object v1, v9, Ly4/c;->k:Ljava/util/Calendar;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->set(II)V

    iget-object v1, v9, Ly4/c;->k:Ljava/util/Calendar;

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->set(II)V

    iget-object v1, v9, Ly4/c;->k:Ljava/util/Calendar;

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->set(II)V

    iget-object v1, v9, Ly4/c;->k:Ljava/util/Calendar;

    const/16 v2, 0xe

    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->set(II)V

    iget v0, v9, Ly4/c;->e:I

    add-int/2addr v0, v13

    iput v0, v9, Ly4/c;->e:I

    invoke-virtual {v9, v0}, Ly4/e;->G0(I)C

    move-result v0

    iput-char v0, v9, Ly4/c;->d:C

    iput v14, v9, Ly4/c;->a:I

    goto/16 :goto_3

    :goto_19
    add-int/lit8 v0, v13, 0x9

    if-ge v10, v0, :cond_31

    const/4 v0, 0x0

    return v0

    :cond_31
    const/4 v0, 0x0

    iget v1, v9, Ly4/c;->e:I

    add-int/2addr v1, v13

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {v9, v1}, Ly4/e;->G0(I)C

    move-result v1

    if-eq v1, v12, :cond_32

    return v0

    :cond_32
    iget v1, v9, Ly4/c;->e:I

    add-int/2addr v1, v13

    add-int/lit8 v1, v1, 0x6

    invoke-virtual {v9, v1}, Ly4/e;->G0(I)C

    move-result v1

    if-eq v1, v12, :cond_33

    return v0

    :cond_33
    iget v0, v9, Ly4/c;->e:I

    add-int/2addr v0, v13

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Ly4/e;->G0(I)C

    move-result v7

    iget v0, v9, Ly4/c;->e:I

    add-int/2addr v0, v13

    add-int/2addr v0, v11

    invoke-virtual {v9, v0}, Ly4/e;->G0(I)C

    move-result v8

    iget v0, v9, Ly4/c;->e:I

    add-int/2addr v0, v13

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {v9, v0}, Ly4/e;->G0(I)C

    move-result v15

    iget v0, v9, Ly4/c;->e:I

    add-int/2addr v0, v13

    add-int/2addr v0, v14

    invoke-virtual {v9, v0}, Ly4/e;->G0(I)C

    move-result v19

    iget v0, v9, Ly4/c;->e:I

    add-int/2addr v0, v13

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {v9, v0}, Ly4/e;->G0(I)C

    move-result v20

    iget v0, v9, Ly4/c;->e:I

    add-int/2addr v0, v13

    const/16 v1, 0x8

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Ly4/e;->G0(I)C

    move-result v18

    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move v3, v15

    move/from16 v4, v19

    move/from16 v5, v20

    move/from16 v6, v18

    invoke-direct/range {v0 .. v6}, Ly4/e;->v1(CCCCCC)Z

    move-result v0

    if-nez v0, :cond_34

    const/4 v0, 0x0

    return v0

    :cond_34
    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move v3, v15

    move/from16 v4, v19

    move/from16 v5, v20

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Ly4/e;->A1(CCCCCC)V

    iget v0, v9, Ly4/c;->e:I

    add-int/2addr v0, v13

    const/16 v1, 0x9

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Ly4/e;->G0(I)C

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_3a

    add-int/lit8 v0, v13, 0xb

    if-ge v10, v0, :cond_35

    const/4 v1, 0x0

    return v1

    :cond_35
    iget v1, v9, Ly4/c;->e:I

    add-int/2addr v1, v13

    add-int/lit8 v1, v1, 0xa

    invoke-virtual {v9, v1}, Ly4/e;->G0(I)C

    move-result v1

    const/16 v2, 0x30

    if-lt v1, v2, :cond_36

    const/16 v3, 0x39

    if-le v1, v3, :cond_37

    :cond_36
    const/4 v0, 0x0

    goto :goto_1b

    :cond_37
    sub-int/2addr v1, v2

    if-le v10, v0, :cond_38

    iget v0, v9, Ly4/c;->e:I

    add-int/2addr v0, v13

    const/16 v4, 0xb

    add-int/2addr v0, v4

    invoke-virtual {v9, v0}, Ly4/e;->G0(I)C

    move-result v0

    if-lt v0, v2, :cond_38

    if-gt v0, v3, :cond_38

    mul-int/lit8 v1, v1, 0xa

    sub-int/2addr v0, v2

    add-int/2addr v1, v0

    move v8, v11

    goto :goto_1a

    :cond_38
    const/4 v8, 0x1

    :goto_1a
    if-ne v8, v11, :cond_39

    iget v0, v9, Ly4/c;->e:I

    add-int/2addr v0, v13

    add-int/lit8 v0, v0, 0xc

    invoke-virtual {v9, v0}, Ly4/e;->G0(I)C

    move-result v0

    const/16 v2, 0x30

    if-lt v0, v2, :cond_39

    const/16 v3, 0x39

    if-gt v0, v3, :cond_39

    mul-int/lit8 v1, v1, 0xa

    sub-int/2addr v0, v2

    add-int/2addr v0, v1

    move/from16 v8, v16

    goto :goto_1c

    :cond_39
    move v0, v1

    goto :goto_1c

    :goto_1b
    return v0

    :cond_3a
    const/4 v8, -0x1

    const/4 v0, 0x0

    :goto_1c
    iget-object v1, v9, Ly4/c;->k:Ljava/util/Calendar;

    const/16 v2, 0xe

    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->set(II)V

    iget v0, v9, Ly4/c;->e:I

    add-int/2addr v0, v13

    add-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v8

    invoke-virtual {v9, v0}, Ly4/e;->G0(I)C

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_3b

    add-int/lit8 v8, v8, 0x1

    iget v0, v9, Ly4/c;->e:I

    add-int/2addr v0, v13

    add-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v8

    invoke-virtual {v9, v0}, Ly4/e;->G0(I)C

    move-result v0

    :cond_3b
    move v1, v0

    const/16 v0, 0x2b

    if-eq v1, v0, :cond_3f

    const/16 v0, 0x2d

    if-ne v1, v0, :cond_3c

    goto :goto_1d

    :cond_3c
    const/16 v0, 0x5a

    if-ne v1, v0, :cond_3e

    iget-object v0, v9, Ly4/c;->k:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    if-eqz v0, :cond_3d

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-lez v2, :cond_3d

    aget-object v1, v1, v0

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    iget-object v1, v9, Ly4/c;->k:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_3d
    const/16 v16, 0x1

    goto/16 :goto_22

    :cond_3e
    const/16 v16, 0x0

    goto/16 :goto_22

    :cond_3f
    :goto_1d
    iget v0, v9, Ly4/c;->e:I

    add-int/2addr v0, v13

    add-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v8

    const/4 v2, 0x1

    add-int/2addr v0, v2

    invoke-virtual {v9, v0}, Ly4/e;->G0(I)C

    move-result v2

    const/16 v0, 0x30

    if-lt v2, v0, :cond_40

    const/16 v3, 0x31

    if-le v2, v3, :cond_41

    :cond_40
    const/4 v5, 0x0

    goto/16 :goto_23

    :cond_41
    iget v3, v9, Ly4/c;->e:I

    add-int/2addr v3, v13

    add-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v8

    add-int/2addr v3, v11

    invoke-virtual {v9, v3}, Ly4/e;->G0(I)C

    move-result v3

    if-lt v3, v0, :cond_42

    const/16 v0, 0x39

    if-le v3, v0, :cond_43

    :cond_42
    const/4 v5, 0x0

    goto/16 :goto_23

    :cond_43
    iget v0, v9, Ly4/c;->e:I

    add-int/2addr v0, v13

    add-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v8

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {v9, v0}, Ly4/e;->G0(I)C

    move-result v0

    const/16 v4, 0x33

    if-ne v0, v12, :cond_49

    iget v0, v9, Ly4/c;->e:I

    add-int/2addr v0, v13

    add-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v8

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {v9, v0}, Ly4/e;->G0(I)C

    move-result v0

    iget v5, v9, Ly4/c;->e:I

    add-int/2addr v5, v13

    add-int/lit8 v5, v5, 0xa

    add-int/2addr v5, v8

    add-int/2addr v5, v14

    invoke-virtual {v9, v5}, Ly4/e;->G0(I)C

    move-result v5

    const/16 v6, 0x34

    if-ne v0, v6, :cond_46

    const/16 v6, 0x35

    if-ne v5, v6, :cond_46

    const/16 v6, 0x31

    if-ne v2, v6, :cond_44

    const/16 v6, 0x32

    if-eq v3, v6, :cond_48

    if-ne v3, v4, :cond_44

    goto :goto_1e

    :cond_44
    const/16 v4, 0x30

    if-ne v2, v4, :cond_45

    const/16 v4, 0x35

    if-eq v3, v4, :cond_48

    const/16 v4, 0x38

    if-ne v3, v4, :cond_45

    goto :goto_1e

    :cond_45
    const/4 v6, 0x0

    return v6

    :cond_46
    const/4 v6, 0x0

    const/16 v7, 0x30

    if-eq v0, v7, :cond_47

    if-eq v0, v4, :cond_47

    return v6

    :cond_47
    if-eq v5, v7, :cond_48

    return v6

    :cond_48
    :goto_1e
    move v4, v0

    move/from16 v16, v17

    goto :goto_21

    :cond_49
    const/16 v7, 0x30

    if-ne v0, v7, :cond_4b

    iget v0, v9, Ly4/c;->e:I

    add-int/2addr v0, v13

    add-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v8

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {v9, v0}, Ly4/e;->G0(I)C

    move-result v0

    if-eq v0, v7, :cond_4a

    if-eq v0, v4, :cond_4a

    const/4 v4, 0x0

    return v4

    :cond_4a
    move v4, v0

    :goto_1f
    move/from16 v16, v14

    :goto_20
    const/16 v5, 0x30

    goto :goto_21

    :cond_4b
    if-ne v0, v4, :cond_4c

    iget v5, v9, Ly4/c;->e:I

    add-int/2addr v5, v13

    add-int/lit8 v5, v5, 0xa

    add-int/2addr v5, v8

    add-int/lit8 v5, v5, 0x4

    invoke-virtual {v9, v5}, Ly4/e;->G0(I)C

    move-result v5

    const/16 v6, 0x30

    if-ne v5, v6, :cond_4c

    goto :goto_1f

    :cond_4c
    const/16 v4, 0x34

    if-ne v0, v4, :cond_4d

    iget v0, v9, Ly4/c;->e:I

    add-int/2addr v0, v13

    add-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v8

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {v9, v0}, Ly4/e;->G0(I)C

    move-result v0

    const/16 v4, 0x35

    if-ne v0, v4, :cond_4d

    const/16 v0, 0x34

    const/16 v4, 0x35

    move v5, v4

    move/from16 v16, v14

    move v4, v0

    goto :goto_21

    :cond_4d
    const/16 v4, 0x30

    goto :goto_20

    :goto_21
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Ly4/e;->C1(CCCCC)V

    :goto_22
    iget v0, v9, Ly4/c;->e:I

    add-int/lit8 v13, v13, 0xa

    add-int/2addr v13, v8

    add-int v13, v13, v16

    add-int/2addr v0, v13

    invoke-virtual {v9, v0}, Ly4/e;->G0(I)C

    move-result v0

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_4e

    const/16 v1, 0x22

    if-eq v0, v1, :cond_4e

    const/4 v5, 0x0

    return v5

    :cond_4e
    iget v0, v9, Ly4/c;->e:I

    add-int/2addr v0, v13

    iput v0, v9, Ly4/c;->e:I

    invoke-virtual {v9, v0}, Ly4/e;->G0(I)C

    move-result v0

    iput-char v0, v9, Ly4/c;->d:C

    iput v14, v9, Ly4/c;->a:I

    goto/16 :goto_3

    :goto_23
    return v5

    :cond_4f
    move v14, v6

    const/4 v5, 0x0

    const/16 v12, 0x3a

    :goto_24
    if-eqz p1, :cond_50

    return v5

    :cond_50
    iget v5, v9, Ly4/c;->e:I

    const/16 v6, 0x8

    add-int/2addr v5, v6

    invoke-virtual {v9, v5}, Ly4/e;->G0(I)C

    move-result v11

    const/16 v5, 0x2d

    if-ne v1, v5, :cond_51

    if-ne v4, v5, :cond_51

    const/4 v5, 0x1

    goto :goto_25

    :cond_51
    const/4 v5, 0x0

    :goto_25
    if-eqz v5, :cond_52

    const/16 v6, 0x10

    if-ne v10, v6, :cond_52

    const/16 v16, 0x1

    goto :goto_26

    :cond_52
    const/16 v16, 0x0

    :goto_26
    if-eqz v5, :cond_53

    const/16 v5, 0x11

    if-ne v10, v5, :cond_53

    const/16 v17, 0x1

    goto :goto_27

    :cond_53
    const/16 v17, 0x0

    :goto_27
    if-nez v17, :cond_56

    if-eqz v16, :cond_54

    goto :goto_28

    :cond_54
    const/16 v5, 0x2d

    if-ne v1, v5, :cond_55

    if-ne v3, v5, :cond_55

    move/from16 v22, v2

    move/from16 v24, v4

    const/16 v19, 0x30

    const/16 v23, 0x30

    goto :goto_29

    :cond_55
    move/from16 v19, v1

    move/from16 v22, v2

    move/from16 v23, v3

    move/from16 v24, v4

    goto :goto_29

    :cond_56
    :goto_28
    iget v1, v9, Ly4/c;->e:I

    const/16 v4, 0x9

    add-int/2addr v1, v4

    invoke-virtual {v9, v1}, Ly4/e;->G0(I)C

    move-result v1

    move/from16 v24, v1

    move/from16 v19, v2

    move/from16 v22, v3

    move/from16 v23, v11

    :goto_29
    move v1, v13

    move v2, v15

    move v3, v0

    move v4, v7

    move/from16 v5, v19

    move/from16 v6, v22

    move/from16 v25, v7

    move/from16 v7, v23

    move/from16 v8, v24

    invoke-static/range {v1 .. v8}, Ly4/e;->u1(CCCCCCII)Z

    move-result v1

    if-nez v1, :cond_57

    const/4 v1, 0x0

    return v1

    :cond_57
    move v3, v0

    move-object/from16 v0, p0

    move v1, v13

    move v2, v15

    move/from16 v4, v25

    move/from16 v5, v19

    move/from16 v6, v22

    move/from16 v7, v23

    move/from16 v8, v24

    invoke-direct/range {v0 .. v8}, Ly4/e;->z1(CCCCCCCC)V

    const/16 v0, 0x8

    if-eq v10, v0, :cond_64

    iget v0, v9, Ly4/c;->e:I

    const/16 v1, 0x9

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Ly4/e;->G0(I)C

    move-result v0

    iget v1, v9, Ly4/c;->e:I

    add-int/lit8 v1, v1, 0xa

    invoke-virtual {v9, v1}, Ly4/e;->G0(I)C

    move-result v1

    iget v2, v9, Ly4/c;->e:I

    const/16 v3, 0xb

    add-int/2addr v2, v3

    invoke-virtual {v9, v2}, Ly4/e;->G0(I)C

    move-result v2

    iget v3, v9, Ly4/c;->e:I

    add-int/lit8 v3, v3, 0xc

    invoke-virtual {v9, v3}, Ly4/e;->G0(I)C

    move-result v3

    iget v4, v9, Ly4/c;->e:I

    add-int/lit8 v4, v4, 0xd

    invoke-virtual {v9, v4}, Ly4/e;->G0(I)C

    move-result v4

    if-eqz v17, :cond_58

    const/16 v5, 0x54

    if-ne v1, v5, :cond_58

    if-ne v4, v12, :cond_58

    iget v5, v9, Ly4/c;->e:I

    const/16 v6, 0x10

    add-int/2addr v5, v6

    invoke-virtual {v9, v5}, Ly4/e;->G0(I)C

    move-result v5

    const/16 v6, 0x5a

    if-eq v5, v6, :cond_5a

    :cond_58
    if-eqz v16, :cond_5b

    const/16 v5, 0x20

    if-eq v1, v5, :cond_59

    const/16 v5, 0x54

    if-ne v1, v5, :cond_5b

    :cond_59
    if-ne v4, v12, :cond_5b

    :cond_5a
    iget v0, v9, Ly4/c;->e:I

    const/16 v1, 0xe

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Ly4/e;->G0(I)C

    move-result v1

    iget v0, v9, Ly4/c;->e:I

    add-int/lit8 v0, v0, 0xf

    invoke-virtual {v9, v0}, Ly4/e;->G0(I)C

    move-result v0

    move v13, v0

    move v8, v1

    move v15, v2

    move v7, v3

    const/16 v11, 0x30

    const/16 v12, 0x30

    goto :goto_2a

    :cond_5b
    move v7, v0

    move v8, v1

    move v13, v2

    move v12, v4

    move v15, v11

    move v11, v3

    :goto_2a
    move-object/from16 v0, p0

    move v1, v15

    move v2, v7

    move v3, v8

    move v4, v13

    move v5, v11

    move v6, v12

    invoke-direct/range {v0 .. v6}, Ly4/e;->v1(CCCCCC)Z

    move-result v0

    if-nez v0, :cond_5c

    const/4 v0, 0x0

    return v0

    :cond_5c
    const/16 v0, 0x11

    if-ne v10, v0, :cond_63

    if-nez v17, :cond_63

    iget v0, v9, Ly4/c;->e:I

    const/16 v1, 0xe

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Ly4/e;->G0(I)C

    move-result v0

    iget v1, v9, Ly4/c;->e:I

    add-int/lit8 v1, v1, 0xf

    invoke-virtual {v9, v1}, Ly4/e;->G0(I)C

    move-result v1

    iget v2, v9, Ly4/c;->e:I

    const/16 v3, 0x10

    add-int/2addr v2, v3

    invoke-virtual {v9, v2}, Ly4/e;->G0(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v0, v3, :cond_5d

    const/16 v4, 0x39

    if-le v0, v4, :cond_5e

    :cond_5d
    const/4 v0, 0x0

    goto :goto_2c

    :cond_5e
    if-lt v1, v3, :cond_5f

    if-le v1, v4, :cond_60

    :cond_5f
    const/4 v0, 0x0

    goto :goto_2c

    :cond_60
    if-lt v2, v3, :cond_61

    if-le v2, v4, :cond_62

    :cond_61
    const/4 v0, 0x0

    goto :goto_2c

    :cond_62
    sub-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x64

    sub-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    sub-int/2addr v2, v3

    add-int/2addr v0, v2

    :goto_2b
    const/16 v1, 0x30

    goto :goto_2d

    :goto_2c
    return v0

    :cond_63
    const/4 v0, 0x0

    goto :goto_2b

    :goto_2d
    sub-int/2addr v15, v1

    mul-int/lit8 v15, v15, 0xa

    sub-int/2addr v7, v1

    add-int v2, v15, v7

    sub-int/2addr v8, v1

    mul-int/lit8 v8, v8, 0xa

    sub-int/2addr v13, v1

    add-int v3, v8, v13

    sub-int/2addr v11, v1

    mul-int/lit8 v11, v11, 0xa

    sub-int/2addr v12, v1

    add-int/2addr v11, v12

    move v1, v11

    move v11, v2

    move v2, v0

    move v0, v3

    goto :goto_2e

    :cond_64
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v11, v2

    :goto_2e
    iget-object v3, v9, Ly4/c;->k:Ljava/util/Calendar;

    const/16 v4, 0xb

    invoke-virtual {v3, v4, v11}, Ljava/util/Calendar;->set(II)V

    iget-object v3, v9, Ly4/c;->k:Ljava/util/Calendar;

    const/16 v4, 0xc

    invoke-virtual {v3, v4, v0}, Ljava/util/Calendar;->set(II)V

    iget-object v0, v9, Ly4/c;->k:Ljava/util/Calendar;

    const/16 v3, 0xd

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    iget-object v0, v9, Ly4/c;->k:Ljava/util/Calendar;

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    iput v14, v9, Ly4/c;->a:I

    goto/16 :goto_3
.end method

.method private z1(CCCCCCCC)V
    .locals 2

    iget-object v0, p0, Ly4/c;->l:Ljava/util/TimeZone;

    iget-object v1, p0, Ly4/c;->m:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Ly4/c;->k:Ljava/util/Calendar;

    add-int/lit8 p1, p1, -0x30

    mul-int/lit16 p1, p1, 0x3e8

    add-int/lit8 p2, p2, -0x30

    mul-int/lit8 p2, p2, 0x64

    add-int/2addr p1, p2

    add-int/lit8 p3, p3, -0x30

    mul-int/lit8 p3, p3, 0xa

    add-int/2addr p1, p3

    add-int/lit8 p4, p4, -0x30

    add-int/2addr p1, p4

    add-int/lit8 p5, p5, -0x30

    mul-int/lit8 p5, p5, 0xa

    add-int/lit8 p6, p6, -0x30

    add-int/2addr p5, p6

    const/4 p2, 0x1

    sub-int/2addr p5, p2

    add-int/lit8 p7, p7, -0x30

    mul-int/lit8 p7, p7, 0xa

    add-int/lit8 p8, p8, -0x30

    add-int/2addr p7, p8

    invoke-virtual {v0, p2, p1}, Ljava/util/Calendar;->set(II)V

    iget-object p1, p0, Ly4/c;->k:Ljava/util/Calendar;

    const/4 p2, 0x2

    invoke-virtual {p1, p2, p5}, Ljava/util/Calendar;->set(II)V

    iget-object p1, p0, Ly4/c;->k:Ljava/util/Calendar;

    const/4 p2, 0x5

    invoke-virtual {p1, p2, p7}, Ljava/util/Calendar;->set(II)V

    return-void
.end method


# virtual methods
.method protected A1(CCCCCC)V
    .locals 0

    add-int/lit8 p1, p1, -0x30

    mul-int/lit8 p1, p1, 0xa

    add-int/lit8 p2, p2, -0x30

    add-int/2addr p1, p2

    add-int/lit8 p3, p3, -0x30

    mul-int/lit8 p3, p3, 0xa

    add-int/lit8 p4, p4, -0x30

    add-int/2addr p3, p4

    add-int/lit8 p5, p5, -0x30

    mul-int/lit8 p5, p5, 0xa

    add-int/lit8 p6, p6, -0x30

    add-int/2addr p5, p6

    iget-object p2, p0, Ly4/c;->k:Ljava/util/Calendar;

    const/16 p4, 0xb

    invoke-virtual {p2, p4, p1}, Ljava/util/Calendar;->set(II)V

    iget-object p1, p0, Ly4/c;->k:Ljava/util/Calendar;

    const/16 p2, 0xc

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    iget-object p1, p0, Ly4/c;->k:Ljava/util/Calendar;

    const/16 p2, 0xd

    invoke-virtual {p1, p2, p5}, Ljava/util/Calendar;->set(II)V

    return-void
.end method

.method protected B1(CCC)V
    .locals 6

    const/16 v4, 0x30

    const/16 v5, 0x30

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Ly4/e;->C1(CCCCC)V

    return-void
.end method

.method public final C0()Ljava/lang/String;
    .locals 3

    iget v0, p0, Ly4/c;->i:I

    iget v1, p0, Ly4/c;->h:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ly4/e;->G0(I)C

    move-result v0

    iget v1, p0, Ly4/c;->h:I

    const/16 v2, 0x4c

    if-eq v0, v2, :cond_0

    const/16 v2, 0x53

    if-eq v0, v2, :cond_0

    const/16 v2, 0x42

    if-eq v0, v2, :cond_0

    const/16 v2, 0x46

    if-eq v0, v2, :cond_0

    const/16 v2, 0x44

    if-ne v0, v2, :cond_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    :cond_1
    iget v0, p0, Ly4/c;->i:I

    invoke-virtual {p0, v0, v1}, Ly4/e;->r1(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected C1(CCCCC)V
    .locals 0

    add-int/lit8 p2, p2, -0x30

    mul-int/lit8 p2, p2, 0xa

    add-int/lit8 p3, p3, -0x30

    add-int/2addr p2, p3

    const p3, 0x36ee80

    mul-int/2addr p2, p3

    add-int/lit8 p4, p4, -0x30

    mul-int/lit8 p4, p4, 0xa

    add-int/lit8 p5, p5, -0x30

    add-int/2addr p4, p5

    const p3, 0xea60

    mul-int/2addr p4, p3

    add-int/2addr p2, p4

    const/16 p3, 0x2d

    if-ne p1, p3, :cond_0

    neg-int p2, p2

    :cond_0
    iget-object p1, p0, Ly4/c;->k:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result p1

    if-eq p1, p2, :cond_1

    iget-object p1, p0, Ly4/c;->k:Ljava/util/Calendar;

    new-instance p3, Ljava/util/SimpleTimeZone;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p2, p4}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_1
    return-void
.end method

.method public final D1(Z)V
    .locals 6

    iget v0, p0, Ly4/c;->e:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Ly4/e;->t:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "illegal str, "

    if-ge v0, v3, :cond_a

    iget-object v3, p0, Ly4/e;->t:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x5c

    if-ne v3, v5, :cond_1

    iget v5, p0, Ly4/e;->u:I

    add-int/lit8 v5, v5, -0x1

    if-ge v0, v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_0
    iput-char v3, p0, Ly4/c;->d:C

    iput v0, p0, Ly4/c;->e:I

    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ly4/e;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/16 v4, 0x22

    if-ne v3, v4, :cond_2

    xor-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    const/16 v4, 0x5b

    if-ne v3, v4, :cond_4

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    const/16 v4, 0x7b

    const/16 v5, 0x1a

    if-ne v3, v4, :cond_6

    if-eqz p1, :cond_6

    iget v3, p0, Ly4/c;->e:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ly4/c;->e:I

    iget-object v4, p0, Ly4/e;->t:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v3, v4, :cond_5

    goto :goto_1

    :cond_5
    iget-object v4, p0, Ly4/e;->t:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_1
    iput-char v5, p0, Ly4/c;->d:C

    invoke-virtual {p0, p1}, Ly4/e;->E1(Z)V

    goto :goto_2

    :cond_6
    const/16 v4, 0x5d

    if-ne v3, v4, :cond_9

    if-eqz v1, :cond_7

    goto :goto_2

    :cond_7
    add-int/lit8 v2, v2, -0x1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_9

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ly4/c;->e:I

    iget-object p1, p0, Ly4/e;->t:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-ne v0, p1, :cond_8

    iput-char v5, p0, Ly4/c;->d:C

    const/16 p1, 0x14

    iput p1, p0, Ly4/c;->a:I

    return-void

    :cond_8
    iget-object p1, p0, Ly4/e;->t:Ljava/lang/String;

    iget v0, p0, Ly4/c;->e:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    iput-char p1, p0, Ly4/c;->d:C

    const/16 p1, 0x10

    invoke-virtual {p0, p1}, Ly4/c;->c0(I)V

    return-void

    :cond_9
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_a
    iget-object p1, p0, Ly4/e;->t:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eq v0, p1, :cond_b

    return-void

    :cond_b
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ly4/e;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final E0(I[CII)V
    .locals 1

    iget-object v0, p0, Ly4/e;->t:Ljava/lang/String;

    add-int/2addr p4, p1

    invoke-virtual {v0, p1, p4, p2, p3}, Ljava/lang/String;->getChars(II[CI)V

    return-void
.end method

.method public final E1(Z)V
    .locals 6

    iget p1, p0, Ly4/c;->e:I

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget-object v3, p0, Ly4/e;->t:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "illegal str, "

    if-ge p1, v3, :cond_c

    iget-object v3, p0, Ly4/e;->t:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x5c

    if-ne v3, v5, :cond_1

    iget v5, p0, Ly4/e;->u:I

    add-int/lit8 v5, v5, -0x1

    if-ge p1, v5, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_2

    :cond_0
    iput-char v3, p0, Ly4/c;->d:C

    iput p1, p0, Ly4/c;->e:I

    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ly4/e;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/16 v4, 0x22

    if-ne v3, v4, :cond_2

    xor-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_2
    const/16 v4, 0x7b

    if-ne v3, v4, :cond_4

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    const/16 v4, 0x7d

    if-ne v3, v4, :cond_b

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v2, v2, -0x1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_b

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ly4/c;->e:I

    iget-object v0, p0, Ly4/e;->t:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1a

    if-ne p1, v0, :cond_6

    iput-char v1, p0, Ly4/c;->d:C

    const/16 p1, 0x14

    iput p1, p0, Ly4/c;->a:I

    return-void

    :cond_6
    iget-object p1, p0, Ly4/e;->t:Ljava/lang/String;

    iget v0, p0, Ly4/c;->e:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    iput-char p1, p0, Ly4/c;->d:C

    const/16 v0, 0x2c

    const/16 v2, 0x10

    if-ne p1, v0, :cond_8

    iput v2, p0, Ly4/c;->a:I

    iget p1, p0, Ly4/c;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ly4/c;->e:I

    iget-object v0, p0, Ly4/e;->t:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p1, v0, :cond_7

    goto :goto_1

    :cond_7
    iget-object v0, p0, Ly4/e;->t:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_1
    iput-char v1, p0, Ly4/c;->d:C

    return-void

    :cond_8
    if-ne p1, v4, :cond_9

    const/16 p1, 0xd

    iput p1, p0, Ly4/c;->a:I

    invoke-virtual {p0}, Ly4/e;->next()C

    return-void

    :cond_9
    const/16 v0, 0x5d

    if-ne p1, v0, :cond_a

    const/16 p1, 0xf

    iput p1, p0, Ly4/c;->a:I

    invoke-virtual {p0}, Ly4/e;->next()C

    return-void

    :cond_a
    invoke-virtual {p0, v2}, Ly4/c;->c0(I)V

    return-void

    :cond_b
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    :cond_c
    :goto_3
    iget v1, p0, Ly4/c;->e:I

    if-ge v0, v1, :cond_e

    iget-object v1, p0, Ly4/e;->t:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_d

    iget-object v1, p0, Ly4/e;->t:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_d

    add-int/lit8 p1, p1, 0x1

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_e
    iget-object v0, p0, Ly4/e;->t:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq p1, v0, :cond_f

    return-void

    :cond_f
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ly4/e;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final F0([C)Z
    .locals 2

    iget-object v0, p0, Ly4/e;->t:Ljava/lang/String;

    iget v1, p0, Ly4/c;->e:I

    invoke-static {v0, v1, p1}, Ly4/e;->t1(Ljava/lang/String;I[C)Z

    move-result p1

    return p1
.end method

.method public final G0(I)C
    .locals 1

    iget v0, p0, Ly4/e;->u:I

    if-lt p1, v0, :cond_0

    const/16 p1, 0x1a

    return p1

    :cond_0
    iget-object v0, p0, Ly4/e;->t:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    return p1
.end method

.method protected final H0(II[C)V
    .locals 2

    iget-object v0, p0, Ly4/e;->t:Ljava/lang/String;

    add-int/2addr p2, p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Ljava/lang/String;->getChars(II[CI)V

    return-void
.end method

.method public final K0(CI)I
    .locals 1

    iget-object v0, p0, Ly4/e;->t:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result p1

    return p1
.end method

.method public L0()Z
    .locals 5

    iget v0, p0, Ly4/c;->e:I

    iget v1, p0, Ly4/e;->u:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    iget-char v3, p0, Ly4/c;->d:C

    const/16 v4, 0x1a

    if-ne v3, v4, :cond_0

    add-int/2addr v0, v2

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method

.method public W0([C)Z
    .locals 11

    const/4 v0, 0x0

    iput v0, p0, Ly4/c;->n:I

    iget-object v1, p0, Ly4/e;->t:Ljava/lang/String;

    iget v2, p0, Ly4/c;->e:I

    invoke-static {v1, v2, p1}, Ly4/e;->t1(Ljava/lang/String;I[C)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, -0x2

    iput p1, p0, Ly4/c;->n:I

    return v0

    :cond_0
    iget v1, p0, Ly4/c;->e:I

    array-length p1, p1

    add-int/2addr p1, v1

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, p1}, Ly4/e;->G0(I)C

    move-result v3

    const/16 v4, 0x22

    const/4 v5, 0x1

    if-ne v3, v4, :cond_1

    move v6, v5

    goto :goto_0

    :cond_1
    move v6, v0

    :goto_0
    if-eqz v6, :cond_2

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, v2}, Ly4/e;->G0(I)C

    move-result v3

    move v2, p1

    :cond_2
    const/16 p1, 0x74

    const/16 v7, 0x65

    const/4 v8, 0x4

    const/4 v9, -0x1

    if-ne v3, p1, :cond_8

    add-int/lit8 p1, v2, 0x1

    invoke-virtual {p0, v2}, Ly4/e;->G0(I)C

    move-result v3

    const/16 v10, 0x72

    if-eq v3, v10, :cond_3

    iput v9, p0, Ly4/c;->n:I

    return v0

    :cond_3
    add-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, p1}, Ly4/e;->G0(I)C

    move-result p1

    const/16 v10, 0x75

    if-eq p1, v10, :cond_4

    iput v9, p0, Ly4/c;->n:I

    return v0

    :cond_4
    add-int/lit8 p1, v2, 0x3

    invoke-virtual {p0, v3}, Ly4/e;->G0(I)C

    move-result v3

    if-eq v3, v7, :cond_5

    iput v9, p0, Ly4/c;->n:I

    return v0

    :cond_5
    if-eqz v6, :cond_7

    add-int/2addr v2, v8

    invoke-virtual {p0, p1}, Ly4/e;->G0(I)C

    move-result p1

    if-eq p1, v4, :cond_6

    iput v9, p0, Ly4/c;->n:I

    return v0

    :cond_6
    move p1, v2

    :cond_7
    iput p1, p0, Ly4/c;->e:I

    invoke-virtual {p0, p1}, Ly4/e;->G0(I)C

    move-result p1

    :goto_1
    move v2, v5

    goto/16 :goto_3

    :cond_8
    const/16 p1, 0x66

    if-ne v3, p1, :cond_f

    add-int/lit8 p1, v2, 0x1

    invoke-virtual {p0, v2}, Ly4/e;->G0(I)C

    move-result v3

    const/16 v10, 0x61

    if-eq v3, v10, :cond_9

    iput v9, p0, Ly4/c;->n:I

    return v0

    :cond_9
    add-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, p1}, Ly4/e;->G0(I)C

    move-result p1

    const/16 v10, 0x6c

    if-eq p1, v10, :cond_a

    iput v9, p0, Ly4/c;->n:I

    return v0

    :cond_a
    add-int/lit8 p1, v2, 0x3

    invoke-virtual {p0, v3}, Ly4/e;->G0(I)C

    move-result v3

    const/16 v10, 0x73

    if-eq v3, v10, :cond_b

    iput v9, p0, Ly4/c;->n:I

    return v0

    :cond_b
    add-int/lit8 v3, v2, 0x4

    invoke-virtual {p0, p1}, Ly4/e;->G0(I)C

    move-result p1

    if-eq p1, v7, :cond_c

    iput v9, p0, Ly4/c;->n:I

    return v0

    :cond_c
    if-eqz v6, :cond_e

    add-int/lit8 v2, v2, 0x5

    invoke-virtual {p0, v3}, Ly4/e;->G0(I)C

    move-result p1

    if-eq p1, v4, :cond_d

    iput v9, p0, Ly4/c;->n:I

    return v0

    :cond_d
    move v3, v2

    :cond_e
    iput v3, p0, Ly4/c;->e:I

    invoke-virtual {p0, v3}, Ly4/e;->G0(I)C

    move-result p1

    :goto_2
    move v2, v0

    goto :goto_3

    :cond_f
    const/16 p1, 0x31

    if-ne v3, p1, :cond_12

    if-eqz v6, :cond_11

    add-int/lit8 p1, v2, 0x1

    invoke-virtual {p0, v2}, Ly4/e;->G0(I)C

    move-result v2

    if-eq v2, v4, :cond_10

    iput v9, p0, Ly4/c;->n:I

    return v0

    :cond_10
    move v2, p1

    :cond_11
    iput v2, p0, Ly4/c;->e:I

    invoke-virtual {p0, v2}, Ly4/e;->G0(I)C

    move-result p1

    goto :goto_1

    :cond_12
    const/16 p1, 0x30

    if-ne v3, p1, :cond_1d

    if-eqz v6, :cond_14

    add-int/lit8 p1, v2, 0x1

    invoke-virtual {p0, v2}, Ly4/e;->G0(I)C

    move-result v2

    if-eq v2, v4, :cond_13

    iput v9, p0, Ly4/c;->n:I

    return v0

    :cond_13
    move v2, p1

    :cond_14
    iput v2, p0, Ly4/c;->e:I

    invoke-virtual {p0, v2}, Ly4/e;->G0(I)C

    move-result p1

    goto :goto_2

    :goto_3
    const/16 v3, 0x10

    const/16 v4, 0x2c

    if-ne p1, v4, :cond_15

    iget p1, p0, Ly4/c;->e:I

    add-int/2addr p1, v5

    iput p1, p0, Ly4/c;->e:I

    invoke-virtual {p0, p1}, Ly4/e;->G0(I)C

    move-result p1

    iput-char p1, p0, Ly4/c;->d:C

    const/4 p1, 0x3

    iput p1, p0, Ly4/c;->n:I

    iput v3, p0, Ly4/c;->a:I

    goto :goto_6

    :cond_15
    const/16 v6, 0x7d

    if-ne p1, v6, :cond_1b

    iget p1, p0, Ly4/c;->e:I

    add-int/2addr p1, v5

    iput p1, p0, Ly4/c;->e:I

    invoke-virtual {p0, p1}, Ly4/e;->G0(I)C

    move-result p1

    :goto_4
    if-ne p1, v4, :cond_16

    iput v3, p0, Ly4/c;->a:I

    iget p1, p0, Ly4/c;->e:I

    add-int/2addr p1, v5

    iput p1, p0, Ly4/c;->e:I

    invoke-virtual {p0, p1}, Ly4/e;->G0(I)C

    move-result p1

    iput-char p1, p0, Ly4/c;->d:C

    goto :goto_5

    :cond_16
    const/16 v1, 0x5d

    if-ne p1, v1, :cond_17

    const/16 p1, 0xf

    iput p1, p0, Ly4/c;->a:I

    iget p1, p0, Ly4/c;->e:I

    add-int/2addr p1, v5

    iput p1, p0, Ly4/c;->e:I

    invoke-virtual {p0, p1}, Ly4/e;->G0(I)C

    move-result p1

    iput-char p1, p0, Ly4/c;->d:C

    goto :goto_5

    :cond_17
    if-ne p1, v6, :cond_18

    const/16 p1, 0xd

    iput p1, p0, Ly4/c;->a:I

    iget p1, p0, Ly4/c;->e:I

    add-int/2addr p1, v5

    iput p1, p0, Ly4/c;->e:I

    invoke-virtual {p0, p1}, Ly4/e;->G0(I)C

    move-result p1

    iput-char p1, p0, Ly4/c;->d:C

    goto :goto_5

    :cond_18
    const/16 v1, 0x1a

    if-ne p1, v1, :cond_19

    const/16 p1, 0x14

    iput p1, p0, Ly4/c;->a:I

    :goto_5
    iput v8, p0, Ly4/c;->n:I

    :goto_6
    return v2

    :cond_19
    invoke-static {p1}, Ly4/c;->M0(C)Z

    move-result p1

    if-eqz p1, :cond_1a

    iget p1, p0, Ly4/c;->e:I

    add-int/2addr p1, v5

    iput p1, p0, Ly4/c;->e:I

    invoke-virtual {p0, p1}, Ly4/e;->G0(I)C

    move-result p1

    goto :goto_4

    :cond_1a
    iput v9, p0, Ly4/c;->n:I

    return v0

    :cond_1b
    invoke-static {p1}, Ly4/c;->M0(C)Z

    move-result p1

    if-eqz p1, :cond_1c

    iget p1, p0, Ly4/c;->e:I

    add-int/2addr p1, v5

    iput p1, p0, Ly4/c;->e:I

    invoke-virtual {p0, p1}, Ly4/e;->G0(I)C

    move-result p1

    goto/16 :goto_3

    :cond_1c
    iput v1, p0, Ly4/c;->e:I

    invoke-virtual {p0, v1}, Ly4/e;->G0(I)C

    iput v9, p0, Ly4/c;->n:I

    return v0

    :cond_1d
    iput v9, p0, Ly4/c;->n:I

    return v0
.end method

.method public X0([C)Ljava/util/Date;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    iput v2, v0, Ly4/c;->n:I

    iget v3, v0, Ly4/c;->e:I

    iget-char v4, v0, Ly4/c;->d:C

    iget-object v5, v0, Ly4/e;->t:Ljava/lang/String;

    invoke-static {v5, v3, v1}, Ly4/e;->t1(Ljava/lang/String;I[C)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_0

    const/4 v1, -0x2

    iput v1, v0, Ly4/c;->n:I

    return-object v6

    :cond_0
    iget v5, v0, Ly4/c;->e:I

    array-length v1, v1

    add-int/2addr v5, v1

    add-int/lit8 v1, v5, 0x1

    invoke-virtual {v0, v5}, Ly4/e;->G0(I)C

    move-result v7

    const/16 v8, 0x22

    const/16 v9, 0x7d

    const/16 v10, 0x2c

    const/4 v11, -0x1

    const/4 v12, 0x1

    if-ne v7, v8, :cond_6

    invoke-virtual {v0, v8, v1}, Ly4/e;->K0(CI)I

    move-result v5

    if-eq v5, v11, :cond_5

    sub-int v7, v5, v1

    iput v1, v0, Ly4/c;->e:I

    invoke-direct {v0, v2, v7}, Ly4/e;->y1(ZI)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Ly4/c;->k:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    add-int/lit8 v2, v5, 0x1

    invoke-virtual {v0, v2}, Ly4/e;->G0(I)C

    move-result v2

    iput v3, v0, Ly4/c;->e:I

    :goto_0
    if-eq v2, v10, :cond_3

    if-ne v2, v9, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v2}, Ly4/c;->M0(C)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v2, v5, 0x1

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {v0, v5}, Ly4/e;->G0(I)C

    move-result v5

    move/from16 v19, v5

    move v5, v2

    move/from16 v2, v19

    goto :goto_0

    :cond_2
    iput v11, v0, Ly4/c;->n:I

    return-object v6

    :cond_3
    :goto_1
    add-int/2addr v5, v12

    iput v5, v0, Ly4/c;->e:I

    iput-char v2, v0, Ly4/c;->d:C

    goto/16 :goto_5

    :cond_4
    iput v3, v0, Ly4/c;->e:I

    iput v11, v0, Ly4/c;->n:I

    return-object v6

    :cond_5
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "unclosed str"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    const/16 v8, 0x2d

    const/16 v13, 0x39

    const/16 v14, 0x30

    if-eq v7, v8, :cond_8

    if-lt v7, v14, :cond_7

    if-gt v7, v13, :cond_7

    goto :goto_2

    :cond_7
    iput v11, v0, Ly4/c;->n:I

    return-object v6

    :cond_8
    :goto_2
    if-ne v7, v8, :cond_9

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {v0, v1}, Ly4/e;->G0(I)C

    move-result v7

    move v1, v5

    move v2, v12

    :cond_9
    const-wide/16 v15, 0x0

    if-lt v7, v14, :cond_d

    if-gt v7, v13, :cond_d

    add-int/lit8 v7, v7, -0x30

    int-to-long v7, v7

    :goto_3
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v0, v1}, Ly4/e;->G0(I)C

    move-result v12

    if-lt v12, v14, :cond_a

    if-gt v12, v13, :cond_a

    const-wide/16 v17, 0xa

    mul-long v7, v7, v17

    add-int/lit8 v12, v12, -0x30

    int-to-long v13, v12

    add-long/2addr v7, v13

    move v1, v5

    const/4 v12, 0x1

    const/16 v13, 0x39

    const/16 v14, 0x30

    goto :goto_3

    :cond_a
    if-eq v12, v10, :cond_b

    if-ne v12, v9, :cond_c

    :cond_b
    iput v1, v0, Ly4/c;->e:I

    :cond_c
    move-wide/from16 v19, v7

    move v7, v12

    move-wide/from16 v12, v19

    goto :goto_4

    :cond_d
    move-wide v12, v15

    :goto_4
    cmp-long v1, v12, v15

    if-gez v1, :cond_e

    iput v11, v0, Ly4/c;->n:I

    return-object v6

    :cond_e
    if-eqz v2, :cond_f

    neg-long v12, v12

    :cond_f
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v12, v13}, Ljava/util/Date;-><init>(J)V

    move v2, v7

    :goto_5
    const/16 v5, 0x10

    if-ne v2, v10, :cond_10

    iget v2, v0, Ly4/c;->e:I

    const/4 v7, 0x1

    add-int/2addr v2, v7

    iput v2, v0, Ly4/c;->e:I

    invoke-virtual {v0, v2}, Ly4/e;->G0(I)C

    move-result v2

    iput-char v2, v0, Ly4/c;->d:C

    const/4 v2, 0x3

    iput v2, v0, Ly4/c;->n:I

    iput v5, v0, Ly4/c;->a:I

    return-object v1

    :cond_10
    const/4 v7, 0x1

    iget v2, v0, Ly4/c;->e:I

    add-int/2addr v2, v7

    iput v2, v0, Ly4/c;->e:I

    invoke-virtual {v0, v2}, Ly4/e;->G0(I)C

    move-result v2

    if-ne v2, v10, :cond_11

    iput v5, v0, Ly4/c;->a:I

    iget v2, v0, Ly4/c;->e:I

    add-int/2addr v2, v7

    iput v2, v0, Ly4/c;->e:I

    invoke-virtual {v0, v2}, Ly4/e;->G0(I)C

    move-result v2

    iput-char v2, v0, Ly4/c;->d:C

    goto :goto_6

    :cond_11
    const/16 v5, 0x5d

    if-ne v2, v5, :cond_12

    const/16 v2, 0xf

    iput v2, v0, Ly4/c;->a:I

    iget v2, v0, Ly4/c;->e:I

    add-int/2addr v2, v7

    iput v2, v0, Ly4/c;->e:I

    invoke-virtual {v0, v2}, Ly4/e;->G0(I)C

    move-result v2

    iput-char v2, v0, Ly4/c;->d:C

    goto :goto_6

    :cond_12
    if-ne v2, v9, :cond_13

    const/16 v2, 0xd

    iput v2, v0, Ly4/c;->a:I

    iget v2, v0, Ly4/c;->e:I

    add-int/2addr v2, v7

    iput v2, v0, Ly4/c;->e:I

    invoke-virtual {v0, v2}, Ly4/e;->G0(I)C

    move-result v2

    iput-char v2, v0, Ly4/c;->d:C

    goto :goto_6

    :cond_13
    const/16 v5, 0x1a

    if-ne v2, v5, :cond_14

    const/16 v2, 0x14

    iput v2, v0, Ly4/c;->a:I

    :goto_6
    const/4 v2, 0x4

    iput v2, v0, Ly4/c;->n:I

    return-object v1

    :cond_14
    iput v3, v0, Ly4/c;->e:I

    iput-char v4, v0, Ly4/c;->d:C

    iput v11, v0, Ly4/c;->n:I

    return-object v6
.end method

.method public final b(IIILy4/i;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ly4/e;->t:Ljava/lang/String;

    invoke-virtual {p4, v0, p1, p2, p3}, Ly4/i;->a(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final d0()Ljava/math/BigDecimal;
    .locals 6

    iget v0, p0, Ly4/c;->i:I

    iget v1, p0, Ly4/c;->h:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ly4/e;->G0(I)C

    move-result v0

    iget v1, p0, Ly4/c;->h:I

    const/16 v2, 0x4c

    if-eq v0, v2, :cond_0

    const/16 v2, 0x53

    if-eq v0, v2, :cond_0

    const/16 v2, 0x42

    if-eq v0, v2, :cond_0

    const/16 v2, 0x46

    if-eq v0, v2, :cond_0

    const/16 v2, 0x44

    if-ne v0, v2, :cond_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    :cond_1
    const v0, 0xffff

    if-gt v1, v0, :cond_3

    iget v0, p0, Ly4/c;->i:I

    iget-object v2, p0, Ly4/c;->g:[C

    array-length v3, v2

    const/4 v4, 0x0

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Ly4/e;->t:Ljava/lang/String;

    add-int v5, v0, v1

    invoke-virtual {v3, v0, v5, v2, v4}, Ljava/lang/String;->getChars(II[CI)V

    new-instance v0, Ljava/math/BigDecimal;

    iget-object v2, p0, Ly4/c;->g:[C

    sget-object v3, Ljava/math/MathContext;->UNLIMITED:Ljava/math/MathContext;

    invoke-direct {v0, v2, v4, v1, v3}, Ljava/math/BigDecimal;-><init>([CIILjava/math/MathContext;)V

    return-object v0

    :cond_2
    new-array v2, v1, [C

    iget-object v3, p0, Ly4/e;->t:Ljava/lang/String;

    add-int v5, v0, v1

    invoke-virtual {v3, v0, v5, v2, v4}, Ljava/lang/String;->getChars(II[CI)V

    new-instance v0, Ljava/math/BigDecimal;

    sget-object v3, Ljava/math/MathContext;->UNLIMITED:Ljava/math/MathContext;

    invoke-direct {v0, v2, v4, v1, v3}, Ljava/math/BigDecimal;-><init>([CIILjava/math/MathContext;)V

    return-object v0

    :cond_3
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "decimal overflow"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d1([C)I
    .locals 14

    const/4 v0, 0x0

    iput v0, p0, Ly4/c;->n:I

    iget v1, p0, Ly4/c;->e:I

    iget-char v2, p0, Ly4/c;->d:C

    iget-object v3, p0, Ly4/e;->t:Ljava/lang/String;

    invoke-static {v3, v1, p1}, Ly4/e;->t1(Ljava/lang/String;I[C)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 p1, -0x2

    iput p1, p0, Ly4/c;->n:I

    return v0

    :cond_0
    iget v3, p0, Ly4/c;->e:I

    array-length p1, p1

    add-int/2addr v3, p1

    add-int/lit8 p1, v3, 0x1

    invoke-virtual {p0, v3}, Ly4/e;->G0(I)C

    move-result v4

    const/16 v5, 0x22

    const/4 v6, 0x1

    if-ne v4, v5, :cond_1

    move v7, v6

    goto :goto_0

    :cond_1
    move v7, v0

    :goto_0
    if-eqz v7, :cond_2

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, p1}, Ly4/e;->G0(I)C

    move-result v4

    move p1, v3

    :cond_2
    const/16 v3, 0x2d

    if-ne v4, v3, :cond_3

    move v3, v6

    goto :goto_1

    :cond_3
    move v3, v0

    :goto_1
    if-eqz v3, :cond_4

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {p0, p1}, Ly4/e;->G0(I)C

    move-result p1

    move v13, v4

    move v4, p1

    move p1, v13

    :cond_4
    const/16 v8, 0x30

    const/4 v9, -0x1

    if-lt v4, v8, :cond_17

    const/16 v10, 0x39

    if-gt v4, v10, :cond_17

    sub-int/2addr v4, v8

    :goto_2
    add-int/lit8 v11, p1, 0x1

    invoke-virtual {p0, p1}, Ly4/e;->G0(I)C

    move-result v12

    if-lt v12, v8, :cond_6

    if-gt v12, v10, :cond_6

    mul-int/lit8 p1, v4, 0xa

    if-ge p1, v4, :cond_5

    iput v9, p0, Ly4/c;->n:I

    return v0

    :cond_5
    add-int/lit8 v12, v12, -0x30

    add-int v4, p1, v12

    move p1, v11

    goto :goto_2

    :cond_6
    const/16 v8, 0x2e

    if-ne v12, v8, :cond_7

    iput v9, p0, Ly4/c;->n:I

    return v0

    :cond_7
    if-gez v4, :cond_8

    iput v9, p0, Ly4/c;->n:I

    return v0

    :cond_8
    if-eqz v7, :cond_a

    if-eq v12, v5, :cond_9

    iput v9, p0, Ly4/c;->n:I

    return v0

    :cond_9
    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, v11}, Ly4/e;->G0(I)C

    move-result v12

    :goto_3
    move v11, p1

    :cond_a
    const/16 p1, 0x7d

    const/16 v5, 0x2c

    if-eq v12, v5, :cond_d

    if-ne v12, p1, :cond_b

    goto :goto_4

    :cond_b
    invoke-static {v12}, Ly4/c;->M0(C)Z

    move-result p1

    if-eqz p1, :cond_c

    add-int/lit8 p1, v11, 0x1

    invoke-virtual {p0, v11}, Ly4/e;->G0(I)C

    move-result v12

    goto :goto_3

    :cond_c
    iput v9, p0, Ly4/c;->n:I

    return v0

    :cond_d
    :goto_4
    add-int/lit8 v7, v11, -0x1

    iput v7, p0, Ly4/c;->e:I

    const/16 v7, 0x10

    if-ne v12, v5, :cond_f

    iput v11, p0, Ly4/c;->e:I

    invoke-virtual {p0, v11}, Ly4/e;->G0(I)C

    move-result p1

    iput-char p1, p0, Ly4/c;->d:C

    const/4 p1, 0x3

    iput p1, p0, Ly4/c;->n:I

    iput v7, p0, Ly4/c;->a:I

    if-eqz v3, :cond_e

    neg-int v4, v4

    :cond_e
    return v4

    :cond_f
    if-ne v12, p1, :cond_15

    iput v11, p0, Ly4/c;->e:I

    invoke-virtual {p0, v11}, Ly4/e;->G0(I)C

    move-result v8

    :goto_5
    if-ne v8, v5, :cond_10

    iput v7, p0, Ly4/c;->a:I

    iget p1, p0, Ly4/c;->e:I

    add-int/2addr p1, v6

    iput p1, p0, Ly4/c;->e:I

    invoke-virtual {p0, p1}, Ly4/e;->G0(I)C

    move-result p1

    iput-char p1, p0, Ly4/c;->d:C

    goto :goto_6

    :cond_10
    const/16 v10, 0x5d

    if-ne v8, v10, :cond_11

    const/16 p1, 0xf

    iput p1, p0, Ly4/c;->a:I

    iget p1, p0, Ly4/c;->e:I

    add-int/2addr p1, v6

    iput p1, p0, Ly4/c;->e:I

    invoke-virtual {p0, p1}, Ly4/e;->G0(I)C

    move-result p1

    iput-char p1, p0, Ly4/c;->d:C

    goto :goto_6

    :cond_11
    if-ne v8, p1, :cond_12

    const/16 p1, 0xd

    iput p1, p0, Ly4/c;->a:I

    iget p1, p0, Ly4/c;->e:I

    add-int/2addr p1, v6

    iput p1, p0, Ly4/c;->e:I

    invoke-virtual {p0, p1}, Ly4/e;->G0(I)C

    move-result p1

    iput-char p1, p0, Ly4/c;->d:C

    goto :goto_6

    :cond_12
    const/16 v10, 0x1a

    if-ne v8, v10, :cond_13

    const/16 p1, 0x14

    iput p1, p0, Ly4/c;->a:I

    :goto_6
    const/4 p1, 0x4

    iput p1, p0, Ly4/c;->n:I

    goto :goto_7

    :cond_13
    invoke-static {v8}, Ly4/c;->M0(C)Z

    move-result v8

    if-eqz v8, :cond_14

    iget v8, p0, Ly4/c;->e:I

    add-int/2addr v8, v6

    iput v8, p0, Ly4/c;->e:I

    invoke-virtual {p0, v8}, Ly4/e;->G0(I)C

    move-result v8

    goto :goto_5

    :cond_14
    iput v1, p0, Ly4/c;->e:I

    iput-char v2, p0, Ly4/c;->d:C

    iput v9, p0, Ly4/c;->n:I

    return v0

    :cond_15
    :goto_7
    if-eqz v3, :cond_16

    neg-int v4, v4

    :cond_16
    return v4

    :cond_17
    iput v9, p0, Ly4/c;->n:I

    return v0
.end method

.method public f1([C)J
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    iput v2, v0, Ly4/c;->n:I

    iget v3, v0, Ly4/c;->e:I

    iget-char v4, v0, Ly4/c;->d:C

    iget-object v5, v0, Ly4/e;->t:Ljava/lang/String;

    invoke-static {v5, v3, v1}, Ly4/e;->t1(Ljava/lang/String;I[C)Z

    move-result v5

    const-wide/16 v6, 0x0

    if-nez v5, :cond_0

    const/4 v1, -0x2

    iput v1, v0, Ly4/c;->n:I

    return-wide v6

    :cond_0
    iget v5, v0, Ly4/c;->e:I

    array-length v1, v1

    add-int/2addr v5, v1

    add-int/lit8 v1, v5, 0x1

    invoke-virtual {v0, v5}, Ly4/e;->G0(I)C

    move-result v8

    const/16 v9, 0x22

    if-ne v8, v9, :cond_1

    const/4 v11, 0x1

    goto :goto_0

    :cond_1
    move v11, v2

    :goto_0
    if-eqz v11, :cond_2

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {v0, v1}, Ly4/e;->G0(I)C

    move-result v8

    move v1, v5

    :cond_2
    const/16 v5, 0x2d

    if-ne v8, v5, :cond_3

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v1}, Ly4/e;->G0(I)C

    move-result v8

    move v1, v2

    const/4 v2, 0x1

    :cond_3
    const/16 v5, 0x30

    const/4 v12, -0x1

    if-lt v8, v5, :cond_16

    const/16 v13, 0x39

    if-gt v8, v13, :cond_16

    sub-int/2addr v8, v5

    int-to-long v14, v8

    :goto_1
    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v0, v1}, Ly4/e;->G0(I)C

    move-result v10

    if-lt v10, v5, :cond_4

    if-gt v10, v13, :cond_4

    const-wide/16 v16, 0xa

    mul-long v14, v14, v16

    add-int/lit8 v10, v10, -0x30

    int-to-long v9, v10

    add-long/2addr v14, v9

    move v1, v8

    const/16 v9, 0x22

    goto :goto_1

    :cond_4
    const/16 v5, 0x2e

    if-ne v10, v5, :cond_5

    iput v12, v0, Ly4/c;->n:I

    return-wide v6

    :cond_5
    if-eqz v11, :cond_7

    const/16 v5, 0x22

    if-eq v10, v5, :cond_6

    iput v12, v0, Ly4/c;->n:I

    return-wide v6

    :cond_6
    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v8}, Ly4/e;->G0(I)C

    move-result v10

    move v8, v1

    :cond_7
    const/16 v1, 0x7d

    const/16 v5, 0x2c

    if-eq v10, v5, :cond_8

    if-ne v10, v1, :cond_9

    :cond_8
    add-int/lit8 v9, v8, -0x1

    iput v9, v0, Ly4/c;->e:I

    :cond_9
    cmp-long v9, v14, v6

    if-gez v9, :cond_b

    const-wide/high16 v16, -0x8000000000000000L

    cmp-long v9, v14, v16

    if-nez v9, :cond_a

    if-eqz v2, :cond_a

    goto :goto_2

    :cond_a
    iput v3, v0, Ly4/c;->e:I

    iput-char v4, v0, Ly4/c;->d:C

    iput v12, v0, Ly4/c;->n:I

    return-wide v6

    :cond_b
    :goto_2
    const/16 v9, 0x10

    if-ne v10, v5, :cond_d

    iget v1, v0, Ly4/c;->e:I

    const/4 v3, 0x1

    add-int/2addr v1, v3

    iput v1, v0, Ly4/c;->e:I

    invoke-virtual {v0, v1}, Ly4/e;->G0(I)C

    move-result v1

    iput-char v1, v0, Ly4/c;->d:C

    const/4 v1, 0x3

    iput v1, v0, Ly4/c;->n:I

    iput v9, v0, Ly4/c;->a:I

    if-eqz v2, :cond_c

    neg-long v14, v14

    :cond_c
    return-wide v14

    :cond_d
    if-ne v10, v1, :cond_14

    iget v8, v0, Ly4/c;->e:I

    const/4 v10, 0x1

    add-int/2addr v8, v10

    iput v8, v0, Ly4/c;->e:I

    invoke-virtual {v0, v8}, Ly4/e;->G0(I)C

    move-result v8

    :goto_3
    if-ne v8, v5, :cond_e

    iput v9, v0, Ly4/c;->a:I

    iget v1, v0, Ly4/c;->e:I

    add-int/2addr v1, v10

    iput v1, v0, Ly4/c;->e:I

    invoke-virtual {v0, v1}, Ly4/e;->G0(I)C

    move-result v1

    iput-char v1, v0, Ly4/c;->d:C

    goto :goto_4

    :cond_e
    const/16 v11, 0x5d

    if-ne v8, v11, :cond_f

    const/16 v1, 0xf

    iput v1, v0, Ly4/c;->a:I

    iget v1, v0, Ly4/c;->e:I

    add-int/2addr v1, v10

    iput v1, v0, Ly4/c;->e:I

    invoke-virtual {v0, v1}, Ly4/e;->G0(I)C

    move-result v1

    iput-char v1, v0, Ly4/c;->d:C

    goto :goto_4

    :cond_f
    if-ne v8, v1, :cond_10

    const/16 v1, 0xd

    iput v1, v0, Ly4/c;->a:I

    iget v1, v0, Ly4/c;->e:I

    add-int/2addr v1, v10

    iput v1, v0, Ly4/c;->e:I

    invoke-virtual {v0, v1}, Ly4/e;->G0(I)C

    move-result v1

    iput-char v1, v0, Ly4/c;->d:C

    goto :goto_4

    :cond_10
    const/16 v10, 0x1a

    if-ne v8, v10, :cond_12

    const/16 v1, 0x14

    iput v1, v0, Ly4/c;->a:I

    :goto_4
    const/4 v1, 0x4

    iput v1, v0, Ly4/c;->n:I

    if-eqz v2, :cond_11

    neg-long v14, v14

    :cond_11
    return-wide v14

    :cond_12
    invoke-static {v8}, Ly4/c;->M0(C)Z

    move-result v8

    if-eqz v8, :cond_13

    iget v8, v0, Ly4/c;->e:I

    const/4 v11, 0x1

    add-int/2addr v8, v11

    iput v8, v0, Ly4/c;->e:I

    invoke-virtual {v0, v8}, Ly4/e;->G0(I)C

    move-result v8

    move v10, v11

    goto :goto_3

    :cond_13
    iput v3, v0, Ly4/c;->e:I

    iput-char v4, v0, Ly4/c;->d:C

    iput v12, v0, Ly4/c;->n:I

    return-wide v6

    :cond_14
    const/4 v11, 0x1

    invoke-static {v10}, Ly4/c;->M0(C)Z

    move-result v9

    if-eqz v9, :cond_15

    iput v8, v0, Ly4/c;->e:I

    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v0, v8}, Ly4/e;->G0(I)C

    move-result v10

    move v8, v9

    goto/16 :goto_2

    :cond_15
    iput v12, v0, Ly4/c;->n:I

    return-wide v6

    :cond_16
    iput v3, v0, Ly4/c;->e:I

    iput-char v4, v0, Ly4/c;->d:C

    iput v12, v0, Ly4/c;->n:I

    return-wide v6
.end method

.method public final g0(C)I
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput v1, v0, Ly4/c;->n:I

    iget v2, v0, Ly4/c;->e:I

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v2}, Ly4/e;->G0(I)C

    move-result v4

    :goto_0
    invoke-static {v4}, Ly4/c;->M0(C)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v0, v3}, Ly4/e;->G0(I)C

    move-result v3

    move v15, v4

    move v4, v3

    move v3, v15

    goto :goto_0

    :cond_0
    const/16 v5, 0x22

    const/4 v6, 0x1

    if-ne v4, v5, :cond_1

    move v7, v6

    goto :goto_1

    :cond_1
    move v7, v1

    :goto_1
    if-eqz v7, :cond_2

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v0, v3}, Ly4/e;->G0(I)C

    move-result v3

    move v15, v4

    move v4, v3

    move v3, v15

    :cond_2
    const/16 v8, 0x2d

    if-ne v4, v8, :cond_3

    goto :goto_2

    :cond_3
    move v6, v1

    :goto_2
    if-eqz v6, :cond_4

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v0, v3}, Ly4/e;->G0(I)C

    move-result v3

    move v15, v4

    move v4, v3

    move v3, v15

    :cond_4
    const/16 v8, 0x10

    const/16 v9, 0x30

    const/4 v10, -0x1

    if-lt v4, v9, :cond_f

    const/16 v11, 0x39

    if-gt v4, v11, :cond_f

    sub-int/2addr v4, v9

    :goto_3
    add-int/lit8 v12, v3, 0x1

    invoke-virtual {v0, v3}, Ly4/e;->G0(I)C

    move-result v13

    if-lt v13, v9, :cond_6

    if-gt v13, v11, :cond_6

    mul-int/lit8 v14, v4, 0xa

    if-lt v14, v4, :cond_5

    add-int/lit8 v13, v13, -0x30

    add-int v4, v14, v13

    move v3, v12

    goto :goto_3

    :cond_5
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parseInt error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ly4/e;->r1(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    const/16 v2, 0x2e

    if-ne v13, v2, :cond_7

    iput v10, v0, Ly4/c;->n:I

    return v1

    :cond_7
    if-eqz v7, :cond_9

    if-eq v13, v5, :cond_8

    iput v10, v0, Ly4/c;->n:I

    return v1

    :cond_8
    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, v12}, Ly4/e;->G0(I)C

    move-result v13

    move v12, v3

    :cond_9
    if-gez v4, :cond_a

    iput v10, v0, Ly4/c;->n:I

    return v1

    :cond_a
    move/from16 v1, p1

    :goto_4
    if-ne v13, v1, :cond_c

    iput v12, v0, Ly4/c;->e:I

    invoke-virtual {v0, v12}, Ly4/e;->G0(I)C

    move-result v1

    iput-char v1, v0, Ly4/c;->d:C

    const/4 v1, 0x3

    iput v1, v0, Ly4/c;->n:I

    iput v8, v0, Ly4/c;->a:I

    if-eqz v6, :cond_b

    neg-int v4, v4

    :cond_b
    return v4

    :cond_c
    invoke-static {v13}, Ly4/c;->M0(C)Z

    move-result v2

    if-eqz v2, :cond_d

    add-int/lit8 v2, v12, 0x1

    invoke-virtual {v0, v12}, Ly4/e;->G0(I)C

    move-result v13

    move v12, v2

    goto :goto_4

    :cond_d
    iput v10, v0, Ly4/c;->n:I

    if-eqz v6, :cond_e

    neg-int v4, v4

    :cond_e
    return v4

    :cond_f
    const/16 v2, 0x6e

    if-ne v4, v2, :cond_14

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v0, v3}, Ly4/e;->G0(I)C

    move-result v4

    const/16 v6, 0x75

    if-ne v4, v6, :cond_14

    add-int/lit8 v4, v3, 0x2

    invoke-virtual {v0, v2}, Ly4/e;->G0(I)C

    move-result v2

    const/16 v6, 0x6c

    if-ne v2, v6, :cond_14

    add-int/lit8 v2, v3, 0x3

    invoke-virtual {v0, v4}, Ly4/e;->G0(I)C

    move-result v4

    if-ne v4, v6, :cond_14

    const/4 v4, 0x5

    iput v4, v0, Ly4/c;->n:I

    add-int/lit8 v6, v3, 0x4

    invoke-virtual {v0, v2}, Ly4/e;->G0(I)C

    move-result v2

    if-eqz v7, :cond_10

    if-ne v2, v5, :cond_10

    add-int/2addr v3, v4

    invoke-virtual {v0, v6}, Ly4/e;->G0(I)C

    move-result v2

    move v6, v3

    :cond_10
    :goto_5
    const/16 v3, 0x2c

    if-ne v2, v3, :cond_11

    iput v6, v0, Ly4/c;->e:I

    invoke-virtual {v0, v6}, Ly4/e;->G0(I)C

    move-result v2

    iput-char v2, v0, Ly4/c;->d:C

    iput v4, v0, Ly4/c;->n:I

    iput v8, v0, Ly4/c;->a:I

    return v1

    :cond_11
    const/16 v3, 0x5d

    if-ne v2, v3, :cond_12

    iput v6, v0, Ly4/c;->e:I

    invoke-virtual {v0, v6}, Ly4/e;->G0(I)C

    move-result v2

    iput-char v2, v0, Ly4/c;->d:C

    iput v4, v0, Ly4/c;->n:I

    const/16 v2, 0xf

    iput v2, v0, Ly4/c;->a:I

    return v1

    :cond_12
    invoke-static {v2}, Ly4/c;->M0(C)Z

    move-result v2

    if-eqz v2, :cond_13

    add-int/lit8 v2, v6, 0x1

    invoke-virtual {v0, v6}, Ly4/e;->G0(I)C

    move-result v3

    move v6, v2

    move v2, v3

    goto :goto_5

    :cond_13
    iput v10, v0, Ly4/c;->n:I

    return v1

    :cond_14
    iput v10, v0, Ly4/c;->n:I

    return v1
.end method

.method public g1([C)Ljava/lang/String;
    .locals 12

    const/4 v0, 0x0

    iput v0, p0, Ly4/c;->n:I

    iget v1, p0, Ly4/c;->e:I

    iget-char v2, p0, Ly4/c;->d:C

    :cond_0
    iget-object v3, p0, Ly4/e;->t:Ljava/lang/String;

    iget v4, p0, Ly4/c;->e:I

    invoke-static {v3, v4, p1}, Ly4/e;->t1(Ljava/lang/String;I[C)Z

    move-result v3

    if-nez v3, :cond_2

    iget-char v3, p0, Ly4/c;->d:C

    invoke-static {v3}, Ly4/c;->M0(C)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Ly4/e;->next()C

    :goto_0
    iget-char v3, p0, Ly4/c;->d:C

    invoke-static {v3}, Ly4/c;->M0(C)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Ly4/e;->next()C

    goto :goto_0

    :cond_1
    const/4 p1, -0x2

    iput p1, p0, Ly4/c;->n:I

    invoke-virtual {p0}, Ly4/c;->q1()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    iget v3, p0, Ly4/c;->e:I

    array-length v4, p1

    add-int/2addr v3, v4

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v3}, Ly4/e;->G0(I)C

    move-result v3

    const/16 v5, 0x22

    const/4 v6, -0x1

    move v7, v0

    if-eq v3, v5, :cond_4

    :goto_1
    invoke-static {v3}, Ly4/c;->M0(C)Z

    move-result v8

    if-eqz v8, :cond_3

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {p0, v4}, Ly4/e;->G0(I)C

    move-result v4

    move v11, v4

    move v4, v3

    move v3, v11

    goto :goto_1

    :cond_3
    if-eq v3, v5, :cond_4

    iput v6, p0, Ly4/c;->n:I

    invoke-virtual {p0}, Ly4/c;->q1()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-virtual {p0, v5, v4}, Ly4/e;->K0(CI)I

    move-result v3

    if-eq v3, v6, :cond_11

    sub-int v8, v3, v4

    invoke-virtual {p0, v4, v8}, Ly4/e;->r1(II)Ljava/lang/String;

    move-result-object v4

    const/16 v8, 0x5c

    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-eq v9, v6, :cond_7

    :goto_2
    add-int/lit8 v4, v3, -0x1

    move v9, v0

    :goto_3
    if-ltz v4, :cond_5

    invoke-virtual {p0, v4}, Ly4/e;->G0(I)C

    move-result v10

    if-ne v10, v8, :cond_5

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    :cond_5
    rem-int/lit8 v9, v9, 0x2

    if-nez v9, :cond_6

    iget v0, p0, Ly4/c;->e:I

    array-length v4, p1

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v4, v7

    sub-int v4, v3, v4

    array-length p1, p1

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v7

    invoke-virtual {p0, v0, v4}, Ly4/e;->s1(II)[C

    move-result-object p1

    invoke-static {p1, v4}, Ly4/c;->S0([CI)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_6
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v5, v3}, Ly4/e;->K0(CI)I

    move-result v3

    goto :goto_2

    :cond_7
    :goto_4
    iget p1, p0, Ly4/c;->c:I

    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->TrimStringFieldValue:Lcom/alibaba/fastjson/parser/Feature;

    iget v0, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_8

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    :cond_8
    add-int/lit8 p1, v3, 0x1

    invoke-virtual {p0, p1}, Ly4/e;->G0(I)C

    move-result p1

    :goto_5
    const/16 v0, 0x7d

    const/16 v5, 0x2c

    if-eq p1, v5, :cond_b

    if-ne p1, v0, :cond_9

    goto :goto_6

    :cond_9
    invoke-static {p1}, Ly4/c;->M0(C)Z

    move-result p1

    if-eqz p1, :cond_a

    add-int/lit8 p1, v3, 0x1

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v3}, Ly4/e;->G0(I)C

    move-result v0

    move v3, p1

    move p1, v0

    goto :goto_5

    :cond_a
    iput v6, p0, Ly4/c;->n:I

    invoke-virtual {p0}, Ly4/c;->q1()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_b
    :goto_6
    add-int/lit8 v7, v3, 0x1

    iput v7, p0, Ly4/c;->e:I

    iput-char p1, p0, Ly4/c;->d:C

    if-ne p1, v5, :cond_c

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Ly4/c;->e:I

    invoke-virtual {p0, v3}, Ly4/e;->G0(I)C

    move-result p1

    iput-char p1, p0, Ly4/c;->d:C

    const/4 p1, 0x3

    iput p1, p0, Ly4/c;->n:I

    return-object v4

    :cond_c
    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Ly4/c;->e:I

    invoke-virtual {p0, v3}, Ly4/e;->G0(I)C

    move-result p1

    if-ne p1, v5, :cond_d

    const/16 p1, 0x10

    iput p1, p0, Ly4/c;->a:I

    iget p1, p0, Ly4/c;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ly4/c;->e:I

    invoke-virtual {p0, p1}, Ly4/e;->G0(I)C

    move-result p1

    iput-char p1, p0, Ly4/c;->d:C

    goto :goto_7

    :cond_d
    const/16 v3, 0x5d

    if-ne p1, v3, :cond_e

    const/16 p1, 0xf

    iput p1, p0, Ly4/c;->a:I

    iget p1, p0, Ly4/c;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ly4/c;->e:I

    invoke-virtual {p0, p1}, Ly4/e;->G0(I)C

    move-result p1

    iput-char p1, p0, Ly4/c;->d:C

    goto :goto_7

    :cond_e
    if-ne p1, v0, :cond_f

    const/16 p1, 0xd

    iput p1, p0, Ly4/c;->a:I

    iget p1, p0, Ly4/c;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ly4/c;->e:I

    invoke-virtual {p0, p1}, Ly4/e;->G0(I)C

    move-result p1

    iput-char p1, p0, Ly4/c;->d:C

    goto :goto_7

    :cond_f
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_10

    const/16 p1, 0x14

    iput p1, p0, Ly4/c;->a:I

    :goto_7
    const/4 p1, 0x4

    iput p1, p0, Ly4/c;->n:I

    return-object v4

    :cond_10
    iput v1, p0, Ly4/c;->e:I

    iput-char v2, p0, Ly4/c;->d:C

    iput v6, p0, Ly4/c;->n:I

    invoke-virtual {p0}, Ly4/c;->q1()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_11
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string v0, "unclosed str"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public h0()[B
    .locals 10

    iget v0, p0, Ly4/c;->a:I

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    iget v0, p0, Ly4/c;->i:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Ly4/c;->h:I

    rem-int/lit8 v3, v1, 0x2

    if-nez v3, :cond_3

    div-int/lit8 v1, v1, 0x2

    new-array v3, v1, [B

    :goto_0
    if-ge v2, v1, :cond_2

    iget-object v4, p0, Ly4/e;->t:Ljava/lang/String;

    mul-int/lit8 v5, v2, 0x2

    add-int/2addr v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    iget-object v6, p0, Ly4/e;->t:Ljava/lang/String;

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x37

    const/16 v7, 0x30

    const/16 v8, 0x39

    if-gt v4, v8, :cond_0

    move v9, v7

    goto :goto_1

    :cond_0
    move v9, v6

    :goto_1
    sub-int/2addr v4, v9

    if-gt v5, v8, :cond_1

    move v6, v7

    :cond_1
    sub-int/2addr v5, v6

    shl-int/lit8 v4, v4, 0x4

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v3

    :cond_3
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal state. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-boolean v0, p0, Ly4/c;->j:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Ly4/e;->t:Ljava/lang/String;

    iget v1, p0, Ly4/c;->i:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Ly4/c;->h:I

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/util/f;->d(Ljava/lang/String;II)[B

    move-result-object v0

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Ly4/c;->g:[C

    iget v3, p0, Ly4/c;->h:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v0}, Lcom/alibaba/fastjson/util/f;->c(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v4, v1

    move v5, v4

    move v3, v2

    :goto_0
    iget v6, p0, Ly4/c;->e:I

    if-ge v3, v6, :cond_1

    iget-object v6, p0, Ly4/e;->t:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0xa

    if-ne v6, v7, :cond_0

    add-int/lit8 v4, v4, 0x1

    move v5, v1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    add-int/2addr v5, v1

    goto :goto_0

    :cond_1
    const-string v1, "pos "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ly4/c;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", column "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ly4/e;->t:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const v3, 0xffff

    if-ge v1, v3, :cond_2

    iget-object v1, p0, Ly4/e;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Ly4/e;->t:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k0()Ljava/lang/String;
    .locals 4

    iget-boolean v0, p0, Ly4/c;->j:Z

    if-nez v0, :cond_0

    iget v0, p0, Ly4/c;->i:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Ly4/c;->h:I

    invoke-virtual {p0, v0, v1}, Ly4/e;->r1(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Ly4/c;->g:[C

    const/4 v2, 0x0

    iget v3, p0, Ly4/c;->h:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public m0(Ly4/i;)Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Ly4/e;->t:Ljava/lang/String;

    const-string v1, "\"@type\":\""

    iget v2, p0, Ly4/c;->e:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ly4/e;->t:Ljava/lang/String;

    iget v2, p0, Ly4/c;->e:I

    add-int/lit8 v2, v2, 0x9

    const/16 v3, 0x22

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    iget v2, p0, Ly4/c;->e:I

    add-int/lit8 v2, v2, 0x9

    iput v2, p0, Ly4/c;->e:I

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    mul-int/lit8 v3, v3, 0x1f

    iget-object v4, p0, Ly4/e;->t:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget v2, p0, Ly4/c;->e:I

    sub-int v4, v0, v2

    invoke-virtual {p0, v2, v4, v3, p1}, Ly4/e;->b(IIILy4/i;)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Ly4/e;->t:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_1

    const/16 v3, 0x5d

    if-eq v2, v3, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Ly4/c;->e:I

    iget-object v1, p0, Ly4/e;->t:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Ly4/c;->d:C

    return-object p1

    :cond_2
    return-object v1
.end method

.method public final next()C
    .locals 2

    iget v0, p0, Ly4/c;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ly4/c;->e:I

    iget v1, p0, Ly4/e;->u:I

    if-lt v0, v1, :cond_0

    const/16 v0, 0x1a

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ly4/e;->t:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_0
    iput-char v0, p0, Ly4/c;->d:C

    return v0
.end method

.method public final r1(II)Ljava/lang/String;
    .locals 4

    sget-boolean v0, Lcom/alibaba/fastjson/util/b;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ly4/c;->g:[C

    array-length v1, v0

    const/4 v2, 0x0

    if-ge p2, v1, :cond_0

    iget-object v1, p0, Ly4/e;->t:Ljava/lang/String;

    add-int v3, p1, p2

    invoke-virtual {v1, p1, v3, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    new-instance p1, Ljava/lang/String;

    iget-object v0, p0, Ly4/c;->g:[C

    invoke-direct {p1, v0, v2, p2}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    :cond_0
    new-array v0, p2, [C

    iget-object v1, p0, Ly4/e;->t:Ljava/lang/String;

    add-int/2addr p2, p1

    invoke-virtual {v1, p1, p2, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    return-object p1

    :cond_1
    iget-object v0, p0, Ly4/e;->t:Ljava/lang/String;

    add-int/2addr p2, p1

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public s(C)D
    .locals 21

    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput v1, v0, Ly4/c;->n:I

    iget v2, v0, Ly4/c;->e:I

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v2}, Ly4/e;->G0(I)C

    move-result v4

    const/16 v6, 0x22

    if-ne v4, v6, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    move v7, v1

    :goto_0
    if-eqz v7, :cond_1

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v3}, Ly4/e;->G0(I)C

    move-result v4

    move v3, v2

    :cond_1
    const/16 v2, 0x2d

    if-ne v4, v2, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    move v8, v1

    :goto_1
    if-eqz v8, :cond_3

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v0, v3}, Ly4/e;->G0(I)C

    move-result v3

    move/from16 v19, v4

    move v4, v3

    move/from16 v3, v19

    :cond_3
    const/16 v9, 0x10

    const-wide/16 v10, 0x0

    const/4 v12, -0x1

    const/16 v13, 0x30

    if-lt v4, v13, :cond_12

    const/16 v14, 0x39

    if-gt v4, v14, :cond_12

    sub-int/2addr v4, v13

    int-to-long v5, v4

    :goto_2
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v0, v3}, Ly4/e;->G0(I)C

    move-result v1

    const-wide/16 v17, 0xa

    if-lt v1, v13, :cond_4

    if-gt v1, v14, :cond_4

    mul-long v5, v5, v17

    add-int/lit8 v1, v1, -0x30

    int-to-long v2, v1

    add-long/2addr v5, v2

    move v3, v4

    const/4 v1, 0x0

    const/16 v2, 0x2d

    goto :goto_2

    :cond_4
    const/16 v2, 0x2e

    if-ne v1, v2, :cond_7

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, v4}, Ly4/e;->G0(I)C

    move-result v1

    if-lt v1, v13, :cond_6

    if-gt v1, v14, :cond_6

    mul-long v5, v5, v17

    sub-int/2addr v1, v13

    int-to-long v1, v1

    add-long/2addr v5, v1

    move-wide/from16 v1, v17

    :goto_3
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v0, v3}, Ly4/e;->G0(I)C

    move-result v3

    if-lt v3, v13, :cond_5

    if-gt v3, v14, :cond_5

    mul-long v5, v5, v17

    add-int/lit8 v3, v3, -0x30

    int-to-long v14, v3

    add-long/2addr v5, v14

    mul-long v1, v1, v17

    move v3, v4

    const/16 v14, 0x39

    goto :goto_3

    :cond_5
    move-wide/from16 v19, v1

    move v1, v3

    move-wide/from16 v2, v19

    goto :goto_4

    :cond_6
    iput v12, v0, Ly4/c;->n:I

    return-wide v10

    :cond_7
    const-wide/16 v2, 0x1

    :goto_4
    const/16 v14, 0x65

    if-eq v1, v14, :cond_9

    const/16 v14, 0x45

    if-ne v1, v14, :cond_8

    goto :goto_5

    :cond_8
    const/16 v16, 0x0

    goto :goto_6

    :cond_9
    :goto_5
    const/16 v16, 0x1

    :goto_6
    if-eqz v16, :cond_c

    add-int/lit8 v1, v4, 0x1

    invoke-virtual {v0, v4}, Ly4/e;->G0(I)C

    move-result v14

    const/16 v15, 0x2b

    if-eq v14, v15, :cond_b

    const/16 v15, 0x2d

    if-ne v14, v15, :cond_a

    goto :goto_7

    :cond_a
    move v4, v1

    move v1, v14

    goto :goto_8

    :cond_b
    :goto_7
    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v0, v1}, Ly4/e;->G0(I)C

    move-result v1

    :goto_8
    if-lt v1, v13, :cond_c

    const/16 v14, 0x39

    if-gt v1, v14, :cond_c

    add-int/lit8 v1, v4, 0x1

    invoke-virtual {v0, v4}, Ly4/e;->G0(I)C

    move-result v4

    move/from16 v19, v4

    move v4, v1

    move/from16 v1, v19

    goto :goto_8

    :cond_c
    if-eqz v7, :cond_e

    const/16 v7, 0x22

    if-eq v1, v7, :cond_d

    iput v12, v0, Ly4/c;->n:I

    return-wide v10

    :cond_d
    add-int/lit8 v1, v4, 0x1

    invoke-virtual {v0, v4}, Ly4/e;->G0(I)C

    move-result v4

    iget v7, v0, Ly4/c;->e:I

    const/4 v10, 0x1

    add-int/2addr v7, v10

    sub-int v10, v1, v7

    add-int/lit8 v10, v10, -0x2

    move/from16 v19, v4

    move v4, v1

    move/from16 v1, v19

    goto :goto_9

    :cond_e
    const/4 v10, 0x1

    iget v7, v0, Ly4/c;->e:I

    sub-int v11, v4, v7

    add-int/lit8 v10, v11, -0x1

    :goto_9
    if-nez v16, :cond_10

    const/16 v11, 0x12

    if-ge v10, v11, :cond_10

    long-to-double v5, v5

    long-to-double v2, v2

    div-double/2addr v5, v2

    if-eqz v8, :cond_f

    neg-double v5, v5

    :cond_f
    :goto_a
    move/from16 v2, p1

    goto :goto_b

    :cond_10
    invoke-virtual {v0, v7, v10}, Ly4/e;->r1(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    goto :goto_a

    :goto_b
    if-ne v1, v2, :cond_11

    iput v4, v0, Ly4/c;->e:I

    invoke-virtual {v0, v4}, Ly4/e;->G0(I)C

    move-result v1

    iput-char v1, v0, Ly4/c;->d:C

    const/4 v1, 0x3

    iput v1, v0, Ly4/c;->n:I

    iput v9, v0, Ly4/c;->a:I

    return-wide v5

    :cond_11
    iput v12, v0, Ly4/c;->n:I

    return-wide v5

    :cond_12
    const/16 v1, 0x6e

    if-ne v4, v1, :cond_17

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v3}, Ly4/e;->G0(I)C

    move-result v2

    const/16 v4, 0x75

    if-ne v2, v4, :cond_17

    add-int/lit8 v2, v3, 0x2

    invoke-virtual {v0, v1}, Ly4/e;->G0(I)C

    move-result v1

    const/16 v4, 0x6c

    if-ne v1, v4, :cond_17

    add-int/lit8 v1, v3, 0x3

    invoke-virtual {v0, v2}, Ly4/e;->G0(I)C

    move-result v2

    if-ne v2, v4, :cond_17

    const/4 v2, 0x5

    iput v2, v0, Ly4/c;->n:I

    add-int/lit8 v4, v3, 0x4

    invoke-virtual {v0, v1}, Ly4/e;->G0(I)C

    move-result v1

    if-eqz v7, :cond_13

    const/16 v5, 0x22

    if-ne v1, v5, :cond_13

    add-int/2addr v3, v2

    invoke-virtual {v0, v4}, Ly4/e;->G0(I)C

    move-result v1

    move v4, v3

    :cond_13
    :goto_c
    const/16 v3, 0x2c

    if-ne v1, v3, :cond_14

    iput v4, v0, Ly4/c;->e:I

    invoke-virtual {v0, v4}, Ly4/e;->G0(I)C

    move-result v1

    iput-char v1, v0, Ly4/c;->d:C

    iput v2, v0, Ly4/c;->n:I

    iput v9, v0, Ly4/c;->a:I

    return-wide v10

    :cond_14
    const/16 v3, 0x5d

    if-ne v1, v3, :cond_15

    iput v4, v0, Ly4/c;->e:I

    invoke-virtual {v0, v4}, Ly4/e;->G0(I)C

    move-result v1

    iput-char v1, v0, Ly4/c;->d:C

    iput v2, v0, Ly4/c;->n:I

    const/16 v1, 0xf

    iput v1, v0, Ly4/c;->a:I

    return-wide v10

    :cond_15
    invoke-static {v1}, Ly4/c;->M0(C)Z

    move-result v1

    if-eqz v1, :cond_16

    add-int/lit8 v1, v4, 0x1

    invoke-virtual {v0, v4}, Ly4/e;->G0(I)C

    move-result v3

    move v4, v1

    move v1, v3

    goto :goto_c

    :cond_16
    iput v12, v0, Ly4/c;->n:I

    return-wide v10

    :cond_17
    iput v12, v0, Ly4/c;->n:I

    return-wide v10
.end method

.method public final s1(II)[C
    .locals 3

    sget-boolean v0, Lcom/alibaba/fastjson/util/b;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ly4/c;->g:[C

    array-length v2, v0

    if-ge p2, v2, :cond_0

    iget-object v2, p0, Ly4/e;->t:Ljava/lang/String;

    add-int/2addr p2, p1

    invoke-virtual {v2, p1, p2, v0, v1}, Ljava/lang/String;->getChars(II[CI)V

    iget-object p1, p0, Ly4/c;->g:[C

    return-object p1

    :cond_0
    new-array v0, p2, [C

    iget-object v2, p0, Ly4/e;->t:Ljava/lang/String;

    add-int/2addr p2, p1

    invoke-virtual {v2, p1, p2, v0, v1}, Ljava/lang/String;->getChars(II[CI)V

    return-object v0
.end method

.method public w1()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ly4/e;->x1(Z)Z

    move-result v0

    return v0
.end method

.method public x0(C)J
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput v1, v0, Ly4/c;->n:I

    iget v2, v0, Ly4/c;->e:I

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v2}, Ly4/e;->G0(I)C

    move-result v4

    const/4 v5, 0x1

    const/16 v6, 0x22

    if-ne v4, v6, :cond_0

    move v7, v5

    goto :goto_0

    :cond_0
    move v7, v1

    :goto_0
    if-eqz v7, :cond_1

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v3}, Ly4/e;->G0(I)C

    move-result v4

    move v3, v2

    :cond_1
    const/16 v2, 0x2d

    if-ne v4, v2, :cond_2

    move v1, v5

    :cond_2
    if-eqz v1, :cond_3

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v0, v3}, Ly4/e;->G0(I)C

    move-result v4

    move v3, v2

    :cond_3
    const/16 v2, 0x10

    const/16 v5, 0x30

    const/4 v8, -0x1

    const-wide/16 v9, 0x0

    if-lt v4, v5, :cond_d

    const/16 v11, 0x39

    if-gt v4, v11, :cond_d

    sub-int/2addr v4, v5

    int-to-long v12, v4

    :goto_1
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v0, v3}, Ly4/e;->G0(I)C

    move-result v14

    if-lt v14, v5, :cond_4

    if-gt v14, v11, :cond_4

    const-wide/16 v15, 0xa

    mul-long/2addr v12, v15

    add-int/lit8 v14, v14, -0x30

    int-to-long v14, v14

    add-long/2addr v12, v14

    move v3, v4

    goto :goto_1

    :cond_4
    const/16 v5, 0x2e

    if-ne v14, v5, :cond_5

    iput v8, v0, Ly4/c;->n:I

    return-wide v9

    :cond_5
    if-eqz v7, :cond_7

    if-eq v14, v6, :cond_6

    iput v8, v0, Ly4/c;->n:I

    return-wide v9

    :cond_6
    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, v4}, Ly4/e;->G0(I)C

    move-result v14

    move v4, v3

    :cond_7
    cmp-long v3, v12, v9

    if-gez v3, :cond_9

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v3, v12, v5

    if-nez v3, :cond_8

    if-eqz v1, :cond_8

    goto :goto_2

    :cond_8
    iput v8, v0, Ly4/c;->n:I

    return-wide v9

    :cond_9
    :goto_2
    move/from16 v3, p1

    :goto_3
    if-ne v14, v3, :cond_b

    iput v4, v0, Ly4/c;->e:I

    invoke-virtual {v0, v4}, Ly4/e;->G0(I)C

    move-result v3

    iput-char v3, v0, Ly4/c;->d:C

    const/4 v3, 0x3

    iput v3, v0, Ly4/c;->n:I

    iput v2, v0, Ly4/c;->a:I

    if-eqz v1, :cond_a

    neg-long v12, v12

    :cond_a
    return-wide v12

    :cond_b
    invoke-static {v14}, Ly4/c;->M0(C)Z

    move-result v5

    if-eqz v5, :cond_c

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v0, v4}, Ly4/e;->G0(I)C

    move-result v14

    move v4, v5

    goto :goto_3

    :cond_c
    iput v8, v0, Ly4/c;->n:I

    return-wide v12

    :cond_d
    const/16 v1, 0x6e

    if-ne v4, v1, :cond_12

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v3}, Ly4/e;->G0(I)C

    move-result v4

    const/16 v5, 0x75

    if-ne v4, v5, :cond_12

    add-int/lit8 v4, v3, 0x2

    invoke-virtual {v0, v1}, Ly4/e;->G0(I)C

    move-result v1

    const/16 v5, 0x6c

    if-ne v1, v5, :cond_12

    add-int/lit8 v1, v3, 0x3

    invoke-virtual {v0, v4}, Ly4/e;->G0(I)C

    move-result v4

    if-ne v4, v5, :cond_12

    const/4 v4, 0x5

    iput v4, v0, Ly4/c;->n:I

    add-int/lit8 v5, v3, 0x4

    invoke-virtual {v0, v1}, Ly4/e;->G0(I)C

    move-result v1

    if-eqz v7, :cond_e

    if-ne v1, v6, :cond_e

    add-int/2addr v3, v4

    invoke-virtual {v0, v5}, Ly4/e;->G0(I)C

    move-result v1

    move v5, v3

    :cond_e
    :goto_4
    const/16 v3, 0x2c

    if-ne v1, v3, :cond_f

    iput v5, v0, Ly4/c;->e:I

    invoke-virtual {v0, v5}, Ly4/e;->G0(I)C

    move-result v1

    iput-char v1, v0, Ly4/c;->d:C

    iput v4, v0, Ly4/c;->n:I

    iput v2, v0, Ly4/c;->a:I

    return-wide v9

    :cond_f
    const/16 v3, 0x5d

    if-ne v1, v3, :cond_10

    iput v5, v0, Ly4/c;->e:I

    invoke-virtual {v0, v5}, Ly4/e;->G0(I)C

    move-result v1

    iput-char v1, v0, Ly4/c;->d:C

    iput v4, v0, Ly4/c;->n:I

    const/16 v1, 0xf

    iput v1, v0, Ly4/c;->a:I

    return-wide v9

    :cond_10
    invoke-static {v1}, Ly4/c;->M0(C)Z

    move-result v1

    if-eqz v1, :cond_11

    add-int/lit8 v1, v5, 0x1

    invoke-virtual {v0, v5}, Ly4/e;->G0(I)C

    move-result v3

    move v5, v1

    move v1, v3

    goto :goto_4

    :cond_11
    iput v8, v0, Ly4/c;->n:I

    return-wide v9

    :cond_12
    iput v8, v0, Ly4/c;->n:I

    return-wide v9
.end method

.method public x1(Z)Z
    .locals 2

    iget v0, p0, Ly4/e;->u:I

    iget v1, p0, Ly4/c;->e:I

    sub-int/2addr v0, v1

    invoke-direct {p0, p1, v0}, Ly4/e;->y1(ZI)Z

    move-result p1

    return p1
.end method
