.class Ltz/d;
.super Ltz/h;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ltz/h;-><init>()V

    return-void
.end method


# virtual methods
.method b()Ljava/lang/String;
    .locals 1

    const-string v0, "UTF-8"

    return-object v0
.end method

.method c(Ltz/a;)Ltz/b;
    .locals 13

    iget-object v0, p1, Ltz/a;->e:[B

    iget v1, p1, Ltz/a;->f:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-lt v1, v5, :cond_0

    aget-byte v1, v0, v4

    and-int/lit16 v1, v1, 0xff

    const/16 v6, 0xef

    if-ne v1, v6, :cond_0

    aget-byte v1, v0, v3

    and-int/lit16 v1, v1, 0xff

    const/16 v6, 0xbb

    if-ne v1, v6, :cond_0

    aget-byte v1, v0, v2

    and-int/lit16 v1, v1, 0xff

    const/16 v6, 0xbf

    if-ne v1, v6, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    move v6, v4

    move v7, v6

    move v8, v7

    :goto_1
    iget v9, p1, Ltz/a;->f:I

    if-ge v6, v9, :cond_8

    aget-byte v9, v0, v6

    and-int/lit16 v10, v9, 0x80

    if-nez v10, :cond_1

    goto :goto_3

    :cond_1
    and-int/lit16 v10, v9, 0xe0

    const/16 v11, 0xc0

    if-ne v10, v11, :cond_2

    move v9, v3

    goto :goto_2

    :cond_2
    and-int/lit16 v10, v9, 0xf0

    const/16 v12, 0xe0

    if-ne v10, v12, :cond_3

    move v9, v2

    goto :goto_2

    :cond_3
    and-int/lit16 v9, v9, 0xf8

    const/16 v10, 0xf0

    if-ne v9, v10, :cond_6

    move v9, v5

    :cond_4
    :goto_2
    add-int/2addr v6, v3

    iget v10, p1, Ltz/a;->f:I

    if-lt v6, v10, :cond_5

    goto :goto_3

    :cond_5
    aget-byte v10, v0, v6

    and-int/2addr v10, v11

    const/16 v12, 0x80

    if-eq v10, v12, :cond_7

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_7
    add-int/lit8 v9, v9, -0x1

    if-nez v9, :cond_4

    add-int/lit8 v8, v8, 0x1

    :goto_3
    add-int/2addr v6, v3

    goto :goto_1

    :cond_8
    const/16 v0, 0x64

    if-eqz v1, :cond_9

    if-nez v7, :cond_9

    :goto_4
    move v4, v0

    goto :goto_6

    :cond_9
    const/16 v2, 0x50

    if-eqz v1, :cond_a

    mul-int/lit8 v1, v7, 0xa

    if-le v8, v1, :cond_a

    :goto_5
    move v4, v2

    goto :goto_6

    :cond_a
    if-le v8, v5, :cond_b

    if-nez v7, :cond_b

    goto :goto_4

    :cond_b
    if-lez v8, :cond_c

    if-nez v7, :cond_c

    goto :goto_5

    :cond_c
    if-nez v8, :cond_d

    if-nez v7, :cond_d

    const/16 v4, 0xf

    goto :goto_6

    :cond_d
    mul-int/lit8 v7, v7, 0xa

    if-le v8, v7, :cond_e

    const/16 v4, 0x19

    :cond_e
    :goto_6
    if-nez v4, :cond_f

    const/4 p1, 0x0

    goto :goto_7

    :cond_f
    new-instance v0, Ltz/b;

    invoke-direct {v0, p1, p0, v4}, Ltz/b;-><init>(Ltz/a;Ltz/h;I)V

    move-object p1, v0

    :goto_7
    return-object p1
.end method
