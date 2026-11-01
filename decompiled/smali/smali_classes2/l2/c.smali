.class public abstract Ll2/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll2/c$b;,
        Ll2/c$c;
    }
.end annotation


# static fields
.field private static final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Ll2/c;->a:[I

    return-void

    :array_0
    .array-data 4
        0x7d2
        0x7d0
        0x780
        0x641
        0x640
        0x3e9
        0x3e8
        0x3c0
        0x320
        0x320
        0x1e0
        0x190
        0x190
        0x800
    .end array-data
.end method

.method public static a(ILandroidx/media3/common/util/j0;)V
    .locals 2

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Landroidx/media3/common/util/j0;->S(I)V

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object p1

    const/4 v0, 0x0

    const/16 v1, -0x54

    aput-byte v1, p1, v0

    const/4 v0, 0x1

    const/16 v1, 0x40

    aput-byte v1, p1, v0

    const/4 v0, 0x2

    const/4 v1, -0x1

    aput-byte v1, p1, v0

    const/4 v0, 0x3

    aput-byte v1, p1, v0

    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x4

    aput-byte v0, p1, v1

    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x5

    aput-byte v0, p1, v1

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v0, 0x6

    aput-byte p0, p1, v0

    return-void
.end method

.method private static b(IZI)I
    .locals 2

    invoke-static {p0}, Ll2/c;->c(I)I

    move-result v0

    const/16 v1, 0xb

    if-eq p0, v1, :cond_0

    const/16 v1, 0xc

    if-eq p0, v1, :cond_0

    const/16 v1, 0xd

    if-eq p0, v1, :cond_0

    const/16 v1, 0xe

    if-ne p0, v1, :cond_4

    :cond_0
    if-nez p1, :cond_1

    add-int/lit8 v0, v0, -0x2

    :cond_1
    if-eqz p2, :cond_3

    const/4 p0, 0x1

    if-eq p2, p0, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, -0x4

    :cond_4
    :goto_0
    return v0
.end method

.method private static c(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, -0x1

    return p0

    :pswitch_0
    const/16 p0, 0x18

    return p0

    :pswitch_1
    const/16 p0, 0xe

    return p0

    :pswitch_2
    const/16 p0, 0xd

    return p0

    :pswitch_3
    const/16 p0, 0xc

    return p0

    :pswitch_4
    const/16 p0, 0xb

    return p0

    :pswitch_5
    const/16 p0, 0x8

    return p0

    :pswitch_6
    const/4 p0, 0x7

    return p0

    :pswitch_7
    const/4 p0, 0x6

    return p0

    :pswitch_8
    const/4 p0, 0x5

    return p0

    :pswitch_9
    const/4 p0, 0x3

    return p0

    :pswitch_a
    const/4 p0, 0x2

    return p0

    :pswitch_b
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static d(Landroidx/media3/common/util/j0;Ljava/lang/String;Ljava/lang/String;Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/r;
    .locals 18

    new-instance v0, Landroidx/media3/common/util/i0;

    invoke-direct {v0}, Landroidx/media3/common/util/i0;-><init>()V

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/i0;->m(Landroidx/media3/common/util/j0;)V

    invoke-virtual {v0}, Landroidx/media3/common/util/i0;->b()I

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_2a

    const/4 v5, 0x7

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v6

    invoke-virtual {v0}, Landroidx/media3/common/util/i0;->g()Z

    move-result v7

    if-eqz v7, :cond_0

    const v7, 0xbb80

    goto :goto_0

    :cond_0
    const v7, 0xac44

    :goto_0
    const/4 v8, 0x4

    invoke-virtual {v0, v8}, Landroidx/media3/common/util/i0;->r(I)V

    const/16 v9, 0x9

    invoke-virtual {v0, v9}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v9

    const/16 v10, 0x10

    if-le v6, v4, :cond_2

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroidx/media3/common/util/i0;->g()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v0, v10}, Landroidx/media3/common/util/i0;->r(I)V

    invoke-virtual {v0}, Landroidx/media3/common/util/i0;->g()Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x80

    invoke-virtual {v0, v6}, Landroidx/media3/common/util/i0;->r(I)V

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid AC-4 DSI version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_2
    :goto_1
    if-ne v3, v4, :cond_4

    invoke-static {v0}, Ll2/c;->k(Landroidx/media3/common/util/i0;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v0}, Landroidx/media3/common/util/i0;->c()V

    goto :goto_2

    :cond_3
    const-string v0, "Invalid AC-4 DSI bitrate."

    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_4
    :goto_2
    new-instance v6, Ll2/c$b;

    const/4 v11, 0x0

    invoke-direct {v6, v11}, Ll2/c$b;-><init>(Ll2/c$a;)V

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v9, :cond_26

    const/4 v13, 0x5

    const/16 v14, 0x8

    const/4 v15, 0x2

    if-nez v3, :cond_5

    invoke-virtual {v0}, Landroidx/media3/common/util/i0;->g()Z

    move-result v9

    invoke-virtual {v0, v13}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v16

    invoke-virtual {v0, v13}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v17

    move/from16 v11, v16

    move/from16 v14, v17

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {v0, v14}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v11

    invoke-virtual {v0, v14}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v5

    const/16 v8, 0xff

    if-ne v5, v8, :cond_6

    invoke-virtual {v0, v10}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v8

    add-int/2addr v5, v8

    :cond_6
    if-le v11, v15, :cond_7

    mul-int/lit8 v5, v5, 0x8

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/i0;->r(I)V

    add-int/lit8 v12, v12, 0x1

    const/4 v5, 0x7

    const/4 v8, 0x4

    goto :goto_3

    :cond_7
    invoke-virtual {v0}, Landroidx/media3/common/util/i0;->b()I

    move-result v8

    sub-int v8, v1, v8

    div-int/2addr v8, v14

    invoke-virtual {v0, v13}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v9

    const/16 v10, 0x1f

    if-ne v9, v10, :cond_8

    move v10, v4

    goto :goto_4

    :cond_8
    const/4 v10, 0x0

    :goto_4
    move v14, v11

    move v11, v9

    const/4 v9, 0x0

    :goto_5
    if-nez v9, :cond_9

    if-nez v10, :cond_9

    const/4 v4, 0x6

    if-ne v11, v4, :cond_9

    const/4 v2, 0x1

    goto/16 :goto_10

    :cond_9
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v4

    iput v4, v6, Ll2/c$b;->f:I

    invoke-virtual {v0}, Landroidx/media3/common/util/i0;->g()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v0, v13}, Landroidx/media3/common/util/i0;->r(I)V

    :cond_a
    invoke-virtual {v0, v15}, Landroidx/media3/common/util/i0;->r(I)V

    const/4 v4, 0x1

    if-ne v3, v4, :cond_c

    if-eq v14, v4, :cond_b

    if-ne v14, v15, :cond_c

    :cond_b
    invoke-virtual {v0, v15}, Landroidx/media3/common/util/i0;->r(I)V

    :cond_c
    invoke-virtual {v0, v13}, Landroidx/media3/common/util/i0;->r(I)V

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/i0;->r(I)V

    if-ne v3, v4, :cond_14

    if-lez v14, :cond_d

    invoke-virtual {v0}, Landroidx/media3/common/util/i0;->g()Z

    move-result v2

    iput-boolean v2, v6, Ll2/c$b;->a:Z

    :cond_d
    iget-boolean v2, v6, Ll2/c$b;->a:Z

    if-eqz v2, :cond_11

    if-eq v14, v4, :cond_e

    if-ne v14, v15, :cond_10

    :cond_e
    invoke-virtual {v0, v13}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v2

    if-ltz v2, :cond_f

    const/16 v4, 0xf

    if-gt v2, v4, :cond_f

    iput v2, v6, Ll2/c$b;->b:I

    :cond_f
    const/16 v4, 0xb

    if-lt v2, v4, :cond_10

    const/16 v4, 0xe

    if-gt v2, v4, :cond_10

    invoke-virtual {v0}, Landroidx/media3/common/util/i0;->g()Z

    move-result v2

    iput-boolean v2, v6, Ll2/c$b;->d:Z

    invoke-virtual {v0, v15}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v2

    iput v2, v6, Ll2/c$b;->e:I

    :cond_10
    const/16 v2, 0x18

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/i0;->r(I)V

    const/4 v2, 0x1

    goto :goto_6

    :cond_11
    move v2, v4

    :goto_6
    if-eq v14, v2, :cond_12

    if-ne v14, v15, :cond_14

    :cond_12
    invoke-virtual {v0}, Landroidx/media3/common/util/i0;->g()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {v0}, Landroidx/media3/common/util/i0;->g()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {v0, v15}, Landroidx/media3/common/util/i0;->r(I)V

    :cond_13
    invoke-virtual {v0}, Landroidx/media3/common/util/i0;->g()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {v0}, Landroidx/media3/common/util/i0;->q()V

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v4

    const/4 v13, 0x0

    :goto_7
    if-ge v13, v4, :cond_14

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/i0;->r(I)V

    add-int/lit8 v13, v13, 0x1

    const/16 v2, 0x8

    goto :goto_7

    :cond_14
    if-nez v9, :cond_1c

    if-eqz v10, :cond_15

    goto/16 :goto_e

    :cond_15
    invoke-virtual {v0}, Landroidx/media3/common/util/i0;->q()V

    if-eqz v11, :cond_1a

    const/4 v2, 0x1

    if-eq v11, v2, :cond_1a

    if-eq v11, v15, :cond_1a

    const/4 v2, 0x3

    if-eq v11, v2, :cond_18

    const/4 v2, 0x4

    if-eq v11, v2, :cond_18

    const/4 v2, 0x5

    if-eq v11, v2, :cond_16

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v4

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v4, :cond_1e

    const/16 v9, 0x8

    invoke-virtual {v0, v9}, Landroidx/media3/common/util/i0;->r(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_16
    if-nez v14, :cond_17

    invoke-static {v0, v6}, Ll2/c;->h(Landroidx/media3/common/util/i0;Ll2/c$b;)V

    goto :goto_f

    :cond_17
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v4

    const/4 v2, 0x0

    :goto_9
    add-int/lit8 v9, v4, 0x2

    if-ge v2, v9, :cond_1e

    invoke-static {v0, v6}, Ll2/c;->i(Landroidx/media3/common/util/i0;Ll2/c$b;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_18
    if-nez v14, :cond_19

    const/4 v2, 0x3

    const/4 v4, 0x0

    :goto_a
    if-ge v4, v2, :cond_1e

    invoke-static {v0, v6}, Ll2/c;->h(Landroidx/media3/common/util/i0;Ll2/c$b;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_19
    const/4 v2, 0x3

    const/4 v4, 0x0

    :goto_b
    if-ge v4, v2, :cond_1e

    invoke-static {v0, v6}, Ll2/c;->i(Landroidx/media3/common/util/i0;Ll2/c$b;)V

    add-int/lit8 v4, v4, 0x1

    const/4 v2, 0x3

    goto :goto_b

    :cond_1a
    if-nez v14, :cond_1b

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v15, :cond_1e

    invoke-static {v0, v6}, Ll2/c;->h(Landroidx/media3/common/util/i0;Ll2/c$b;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_1b
    const/4 v2, 0x0

    :goto_d
    if-ge v2, v15, :cond_1e

    invoke-static {v0, v6}, Ll2/c;->i(Landroidx/media3/common/util/i0;Ll2/c$b;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_1c
    :goto_e
    if-nez v14, :cond_1d

    invoke-static {v0, v6}, Ll2/c;->h(Landroidx/media3/common/util/i0;Ll2/c$b;)V

    goto :goto_f

    :cond_1d
    invoke-static {v0, v6}, Ll2/c;->i(Landroidx/media3/common/util/i0;Ll2/c$b;)V

    :cond_1e
    :goto_f
    invoke-virtual {v0}, Landroidx/media3/common/util/i0;->q()V

    invoke-virtual {v0}, Landroidx/media3/common/util/i0;->g()Z

    move-result v2

    :goto_10
    if-eqz v2, :cond_1f

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v2

    const/4 v4, 0x0

    :goto_11
    if-ge v4, v2, :cond_1f

    const/16 v9, 0xf

    invoke-virtual {v0, v9}, Landroidx/media3/common/util/i0;->r(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_1f
    if-lez v14, :cond_22

    invoke-virtual {v0}, Landroidx/media3/common/util/i0;->g()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-static {v0}, Ll2/c;->k(Landroidx/media3/common/util/i0;)Z

    move-result v2

    if-eqz v2, :cond_20

    goto :goto_12

    :cond_20
    const-string v0, "Can\'t parse bitrate DSI."

    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_21
    :goto_12
    invoke-virtual {v0}, Landroidx/media3/common/util/i0;->g()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-virtual {v0}, Landroidx/media3/common/util/i0;->c()V

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/i0;->s(I)V

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v2

    const/4 v11, 0x0

    :goto_13
    if-ge v11, v2, :cond_22

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Landroidx/media3/common/util/i0;->r(I)V

    const/16 v9, 0x8

    invoke-virtual {v0, v9}, Landroidx/media3/common/util/i0;->r(I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_13

    :cond_22
    const/16 v9, 0x8

    invoke-virtual {v0}, Landroidx/media3/common/util/i0;->c()V

    const/4 v2, 0x1

    if-ne v3, v2, :cond_24

    invoke-virtual {v0}, Landroidx/media3/common/util/i0;->b()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/2addr v1, v9

    sub-int/2addr v1, v8

    if-lt v5, v1, :cond_23

    sub-int/2addr v5, v1

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/i0;->s(I)V

    goto :goto_14

    :cond_23
    const-string v0, "pres_bytes is smaller than presentation bytes read."

    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_24
    :goto_14
    iget-boolean v0, v6, Ll2/c$b;->a:Z

    if-eqz v0, :cond_26

    iget v0, v6, Ll2/c$b;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_25

    goto :goto_15

    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t determine channel mode of presentation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_26
    :goto_15
    iget-boolean v0, v6, Ll2/c$b;->a:Z

    if-eqz v0, :cond_27

    iget v0, v6, Ll2/c$b;->b:I

    iget-boolean v1, v6, Ll2/c$b;->d:Z

    iget v2, v6, Ll2/c$b;->e:I

    invoke-static {v0, v1, v2}, Ll2/c;->b(IZI)I

    move-result v0

    goto :goto_16

    :cond_27
    iget v0, v6, Ll2/c$b;->c:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget v1, v6, Ll2/c$b;->f:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_28

    const/16 v1, 0x11

    if-ne v0, v1, :cond_28

    const/16 v0, 0x15

    :cond_28
    :goto_16
    if-lez v0, :cond_29

    new-instance v1, Landroidx/media3/common/r$b;

    invoke-direct {v1}, Landroidx/media3/common/r$b;-><init>()V

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Landroidx/media3/common/r$b;->f0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v1

    const-string v2, "audio/ac4"

    invoke-virtual {v1, v2}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/media3/common/r$b;->R(I)Landroidx/media3/common/r$b;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroidx/media3/common/r$b;->v0(I)Landroidx/media3/common/r$b;

    move-result-object v0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->Y(Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/r$b;

    move-result-object v0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->j0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    move-result-object v0

    return-object v0

    :cond_29
    const-string v0, "Can\'t determine channel count of presentation."

    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_2a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported AC-4 DSI version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0
.end method

.method public static e(Ljava/nio/ByteBuffer;)I
    .locals 2

    const/16 v0, 0x10

    new-array v0, v0, [B

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    new-instance p0, Landroidx/media3/common/util/i0;

    invoke-direct {p0, v0}, Landroidx/media3/common/util/i0;-><init>([B)V

    invoke-static {p0}, Ll2/c;->f(Landroidx/media3/common/util/i0;)Ll2/c$c;

    move-result-object p0

    iget p0, p0, Ll2/c$c;->e:I

    return p0
.end method

.method public static f(Landroidx/media3/common/util/i0;)Ll2/c$c;
    .locals 11

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v1

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v0

    const v2, 0xffff

    const/4 v3, 0x4

    if-ne v0, v2, :cond_0

    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v0

    const/4 v2, 0x7

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    add-int/2addr v0, v2

    const v2, 0xac41

    if-ne v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x2

    :cond_1
    move v8, v0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    invoke-static {p0, v0}, Ll2/c;->j(Landroidx/media3/common/util/i0;I)I

    move-result v4

    add-int/2addr v1, v4

    :cond_2
    move v5, v1

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v1

    invoke-virtual {p0}, Landroidx/media3/common/util/i0;->g()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0, v2}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v4

    if-lez v4, :cond_3

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/i0;->r(I)V

    :cond_3
    invoke-virtual {p0}, Landroidx/media3/common/util/i0;->g()Z

    move-result v4

    const v6, 0xac44

    const v7, 0xbb80

    if-eqz v4, :cond_4

    move v9, v7

    goto :goto_1

    :cond_4
    move v9, v6

    :goto_1
    invoke-virtual {p0, v3}, Landroidx/media3/common/util/i0;->h(I)I

    move-result p0

    if-ne v9, v6, :cond_5

    const/16 v4, 0xd

    if-ne p0, v4, :cond_5

    sget-object v0, Ll2/c;->a:[I

    aget p0, v0, p0

    goto :goto_4

    :cond_5
    if-ne v9, v7, :cond_b

    sget-object v4, Ll2/c;->a:[I

    array-length v6, v4

    if-ge p0, v6, :cond_b

    aget v4, v4, p0

    rem-int/lit8 v1, v1, 0x5

    const/16 v6, 0x8

    const/4 v7, 0x1

    if-eq v1, v7, :cond_a

    const/16 v7, 0xb

    if-eq v1, v0, :cond_9

    if-eq v1, v2, :cond_a

    if-eq v1, v3, :cond_6

    goto :goto_3

    :cond_6
    if-eq p0, v2, :cond_7

    if-eq p0, v6, :cond_7

    if-ne p0, v7, :cond_8

    :cond_7
    :goto_2
    add-int/lit8 v4, v4, 0x1

    :cond_8
    :goto_3
    move p0, v4

    goto :goto_4

    :cond_9
    if-eq p0, v6, :cond_7

    if-ne p0, v7, :cond_8

    goto :goto_2

    :cond_a
    if-eq p0, v2, :cond_7

    if-ne p0, v6, :cond_8

    goto :goto_2

    :cond_b
    const/4 p0, 0x0

    :goto_4
    new-instance v0, Ll2/c$c;

    const/4 v6, 0x2

    const/4 v10, 0x0

    move-object v4, v0

    move v7, v9

    move v9, p0

    invoke-direct/range {v4 .. v10}, Ll2/c$c;-><init>(IIIIILl2/c$a;)V

    return-object v0
.end method

.method public static g([BI)I
    .locals 4

    array-length v0, p0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 v0, 0x2

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v2, 0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    const v2, 0xffff

    const/4 v3, 0x4

    if-ne v0, v2, :cond_1

    aget-byte v0, p0, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    const/4 v2, 0x5

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    const/4 v2, 0x6

    aget-byte p0, p0, v2

    and-int/lit16 p0, p0, 0xff

    or-int/2addr v0, p0

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    const p0, 0xac41

    if-ne p1, p0, :cond_2

    add-int/lit8 v1, v1, 0x2

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method private static h(Landroidx/media3/common/util/i0;Ll2/c$b;)V
    .locals 4

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Landroidx/media3/common/util/i0;->r(I)V

    invoke-virtual {p0}, Landroidx/media3/common/util/i0;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/i0;->r(I)V

    :cond_0
    const/4 v0, 0x7

    if-lt v1, v0, :cond_1

    const/16 v0, 0xa

    if-gt v1, v0, :cond_1

    invoke-virtual {p0}, Landroidx/media3/common/util/i0;->q()V

    :cond_1
    invoke-virtual {p0}, Landroidx/media3/common/util/i0;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v0

    iget v2, p1, Ll2/c$b;->b:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    if-ltz v1, :cond_3

    const/16 v2, 0xf

    if-gt v1, v2, :cond_3

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    :cond_2
    iput v1, p1, Ll2/c$b;->b:I

    :cond_3
    invoke-virtual {p0}, Landroidx/media3/common/util/i0;->g()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {p0}, Ll2/c;->l(Landroidx/media3/common/util/i0;)V

    :cond_4
    return-void
.end method

.method private static i(Landroidx/media3/common/util/i0;Ll2/c$b;)V
    .locals 6

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/i0;->r(I)V

    invoke-virtual {p0}, Landroidx/media3/common/util/i0;->g()Z

    move-result v1

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/i0;->r(I)V

    invoke-virtual {p0}, Landroidx/media3/common/util/i0;->g()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Landroidx/media3/common/util/i0;->r(I)V

    :cond_0
    if-eqz v1, :cond_1

    const/16 v4, 0x18

    invoke-virtual {p0, v4}, Landroidx/media3/common/util/i0;->r(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/media3/common/util/i0;->g()Z

    move-result v4

    const/4 v5, 0x4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Landroidx/media3/common/util/i0;->g()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0, v5}, Landroidx/media3/common/util/i0;->r(I)V

    :cond_2
    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iput v4, p1, Ll2/c$b;->c:I

    :cond_3
    invoke-virtual {p0, v5}, Landroidx/media3/common/util/i0;->r(I)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroidx/media3/common/util/i0;->g()Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroidx/media3/common/util/i0;->r(I)V

    invoke-virtual {p0}, Landroidx/media3/common/util/i0;->g()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {p0}, Ll2/c;->l(Landroidx/media3/common/util/i0;)V

    :cond_5
    return-void
.end method

.method private static j(Landroidx/media3/common/util/i0;I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/media3/common/util/i0;->g()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    shl-int/2addr v0, p1

    goto :goto_0
.end method

.method private static k(Landroidx/media3/common/util/i0;)Z
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/common/util/i0;->b()I

    move-result v0

    const/16 v1, 0x42

    if-ge v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/i0;->r(I)V

    const/4 p0, 0x1

    return p0
.end method

.method private static l(Landroidx/media3/common/util/i0;)V
    .locals 2

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/16 v1, 0x2a

    if-gt v0, v1, :cond_0

    mul-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/i0;->r(I)V

    return-void

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "Invalid language tag bytes number: %d. Must be between 2 and 42."

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0
.end method
