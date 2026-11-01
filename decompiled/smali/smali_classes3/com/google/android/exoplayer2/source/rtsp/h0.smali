.class abstract Lcom/google/android/exoplayer2/source/rtsp/h0;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "([a-z])=\\s?(.+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/rtsp/h0;->a:Ljava/util/regex/Pattern;

    const-string v0, "([\\x21\\x23-\\x27\\x2a\\x2b\\x2d\\x2e\\x30-\\x39\\x41-\\x5a\\x5e-\\x7e]+)(?::(.*))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/rtsp/h0;->b:Ljava/util/regex/Pattern;

    const-string v0, "(\\S+)\\s(\\S+)\\s(\\S+)\\s(\\S+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/rtsp/h0;->c:Ljava/util/regex/Pattern;

    return-void
.end method

.method private static a(Lcom/google/android/exoplayer2/source/rtsp/g0$b;Lcom/google/android/exoplayer2/source/rtsp/a$b;)V
    .locals 0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/rtsp/a$b;->j()Lcom/google/android/exoplayer2/source/rtsp/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/rtsp/g0$b;->n(Lcom/google/android/exoplayer2/source/rtsp/a;)Lcom/google/android/exoplayer2/source/rtsp/g0$b;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    const/4 p1, 0x0

    invoke-static {p1, p0}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0
.end method

.method public static b(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/g0;
    .locals 12

    const/4 v0, 0x1

    new-instance v1, Lcom/google/android/exoplayer2/source/rtsp/g0$b;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/source/rtsp/g0$b;-><init>()V

    invoke-static {p0}, Lcom/google/android/exoplayer2/source/rtsp/y;->r(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v6, v3

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_e

    aget-object v7, p0, v5

    const-string v8, ""

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto/16 :goto_6

    :cond_0
    sget-object v8, Lcom/google/android/exoplayer2/source/rtsp/h0;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-nez v9, :cond_2

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "Malformed SDP line: "

    if-eqz v0, :cond_1

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {p0, v3}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    :cond_2
    invoke-virtual {v8, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const/4 v10, 0x2

    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    :pswitch_1
    const-string v11, "z"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/16 v9, 0xe

    goto/16 :goto_3

    :pswitch_2
    const-string v11, "v"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    move v9, v4

    goto/16 :goto_3

    :pswitch_3
    const-string v11, "u"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x4

    goto/16 :goto_3

    :pswitch_4
    const-string v11, "t"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/16 v9, 0x9

    goto/16 :goto_3

    :pswitch_5
    const-string v11, "s"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    move v9, v10

    goto/16 :goto_3

    :pswitch_6
    const-string v11, "r"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/16 v9, 0xd

    goto :goto_3

    :pswitch_7
    const-string v11, "p"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x6

    goto :goto_3

    :pswitch_8
    const-string v11, "o"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    move v9, v0

    goto :goto_3

    :pswitch_9
    const-string v11, "m"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/16 v9, 0xc

    goto :goto_3

    :pswitch_a
    const-string v11, "k"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/16 v9, 0xa

    goto :goto_3

    :pswitch_b
    const-string v11, "i"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x3

    goto :goto_3

    :pswitch_c
    const-string v11, "e"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x5

    goto :goto_3

    :pswitch_d
    const-string v11, "c"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x7

    goto :goto_3

    :pswitch_e
    const-string v11, "b"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/16 v9, 0x8

    goto :goto_3

    :pswitch_f
    const-string v11, "a"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/16 v9, 0xb

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v9, -0x1

    :goto_3
    packed-switch v9, :pswitch_data_1

    goto/16 :goto_6

    :pswitch_10
    if-eqz v6, :cond_4

    invoke-static {v1, v6}, Lcom/google/android/exoplayer2/source/rtsp/h0;->a(Lcom/google/android/exoplayer2/source/rtsp/g0$b;Lcom/google/android/exoplayer2/source/rtsp/a$b;)V

    :cond_4
    invoke-static {v8}, Lcom/google/android/exoplayer2/source/rtsp/h0;->c(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/a$b;

    move-result-object v6

    goto/16 :goto_6

    :pswitch_11
    sget-object v9, Lcom/google/android/exoplayer2/source/rtsp/h0;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-nez v9, :cond_6

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "Malformed Attribute line: "

    if-eqz v0, :cond_5

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :cond_5
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_4
    invoke-static {p0, v3}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    :cond_6
    invoke-virtual {v8, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/common/base/p;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v6, :cond_7

    invoke-virtual {v1, v7, v8}, Lcom/google/android/exoplayer2/source/rtsp/g0$b;->m(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/g0$b;

    goto/16 :goto_6

    :cond_7
    invoke-virtual {v6, v7, v8}, Lcom/google/android/exoplayer2/source/rtsp/a$b;->i(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/a$b;

    goto/16 :goto_6

    :pswitch_12
    if-nez v6, :cond_8

    invoke-virtual {v1, v8}, Lcom/google/android/exoplayer2/source/rtsp/g0$b;->s(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/g0$b;

    goto/16 :goto_6

    :cond_8
    invoke-virtual {v6, v8}, Lcom/google/android/exoplayer2/source/rtsp/a$b;->m(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/a$b;

    goto/16 :goto_6

    :pswitch_13
    invoke-virtual {v1, v8}, Lcom/google/android/exoplayer2/source/rtsp/g0$b;->x(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/g0$b;

    goto :goto_6

    :pswitch_14
    const-string v7, ":\\s?"

    invoke-static {v8, v7}, Lcom/google/android/exoplayer2/util/p0;->S0(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    if-ne v8, v10, :cond_9

    move v8, v0

    goto :goto_5

    :cond_9
    move v8, v4

    :goto_5
    invoke-static {v8}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    aget-object v7, v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-nez v6, :cond_a

    mul-int/lit16 v7, v7, 0x3e8

    invoke-virtual {v1, v7}, Lcom/google/android/exoplayer2/source/rtsp/g0$b;->p(I)Lcom/google/android/exoplayer2/source/rtsp/g0$b;

    goto :goto_6

    :cond_a
    mul-int/lit16 v7, v7, 0x3e8

    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/source/rtsp/a$b;->k(I)Lcom/google/android/exoplayer2/source/rtsp/a$b;

    goto :goto_6

    :pswitch_15
    if-nez v6, :cond_b

    invoke-virtual {v1, v8}, Lcom/google/android/exoplayer2/source/rtsp/g0$b;->q(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/g0$b;

    goto :goto_6

    :cond_b
    invoke-virtual {v6, v8}, Lcom/google/android/exoplayer2/source/rtsp/a$b;->l(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/a$b;

    goto :goto_6

    :pswitch_16
    invoke-virtual {v1, v8}, Lcom/google/android/exoplayer2/source/rtsp/g0$b;->u(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/g0$b;

    goto :goto_6

    :pswitch_17
    invoke-virtual {v1, v8}, Lcom/google/android/exoplayer2/source/rtsp/g0$b;->r(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/g0$b;

    goto :goto_6

    :pswitch_18
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/google/android/exoplayer2/source/rtsp/g0$b;->y(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/rtsp/g0$b;

    goto :goto_6

    :pswitch_19
    if-nez v6, :cond_c

    invoke-virtual {v1, v8}, Lcom/google/android/exoplayer2/source/rtsp/g0$b;->v(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/g0$b;

    goto :goto_6

    :cond_c
    invoke-virtual {v6, v8}, Lcom/google/android/exoplayer2/source/rtsp/a$b;->n(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/a$b;

    goto :goto_6

    :pswitch_1a
    invoke-virtual {v1, v8}, Lcom/google/android/exoplayer2/source/rtsp/g0$b;->w(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/g0$b;

    goto :goto_6

    :pswitch_1b
    invoke-virtual {v1, v8}, Lcom/google/android/exoplayer2/source/rtsp/g0$b;->t(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/g0$b;

    goto :goto_6

    :pswitch_1c
    const-string v7, "0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    :goto_6
    add-int/2addr v5, v0

    goto/16 :goto_0

    :cond_d
    const-string p0, "SDP version %s is not supported."

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v8, v0, v4

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    :cond_e
    if-eqz v6, :cond_f

    invoke-static {v1, v6}, Lcom/google/android/exoplayer2/source/rtsp/h0;->a(Lcom/google/android/exoplayer2/source/rtsp/g0$b;Lcom/google/android/exoplayer2/source/rtsp/a$b;)V

    :cond_f
    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/rtsp/g0$b;->o()Lcom/google/android/exoplayer2/source/rtsp/g0;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_7

    :catch_1
    move-exception p0

    :goto_7
    invoke-static {v3, p0}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method private static c(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/a$b;
    .locals 6

    sget-object v0, Lcom/google/android/exoplayer2/source/rtsp/h0;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const-string v2, "Malformed SDP media description line: "

    if-nez v1, :cond_1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    new-instance v5, Lcom/google/android/exoplayer2/source/rtsp/a$b;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v5, v1, v3, v4, v0}, Lcom/google/android/exoplayer2/source/rtsp/a$b;-><init>(Ljava/lang/String;ILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    :catch_0
    move-exception v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0
.end method
