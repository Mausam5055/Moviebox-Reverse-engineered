.class public final Lcom/transsion/subtitle/helper/d;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/subtitle/helper/d;

.field private static final b:[B

.field private static final c:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/subtitle/helper/d;

    invoke-direct {v0}, Lcom/transsion/subtitle/helper/d;-><init>()V

    sput-object v0, Lcom/transsion/subtitle/helper/d;->a:Lcom/transsion/subtitle/helper/d;

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/transsion/subtitle/helper/d;->b:[B

    new-instance v0, Lcom/transsion/subtitle/helper/c;

    invoke-direct {v0}, Lcom/transsion/subtitle/helper/c;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsion/subtitle/helper/d;->c:Lkotlin/Lazy;

    return-void

    nop

    :array_0
    .array-data 1
        0x25t
        0x4ft
        0x13t
        0x6at
        0x31t
        0x58t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/transsion/subtitle/helper/b;
    .locals 1

    invoke-static {}, Lcom/transsion/subtitle/helper/d;->k()Lcom/transsion/subtitle/helper/b;

    move-result-object v0

    return-object v0
.end method

.method private final b(Ljava/lang/String;)Ljava/util/List;
    .locals 9

    invoke-static {p1}, Lkotlin/text/StringsKt;->n1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xb

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    array-length v0, p1

    new-array v2, v0, [B

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    sget-object v4, Lcom/transsion/subtitle/helper/d;->b:[B

    array-length v5, v4

    rem-int v5, v3, v5

    aget-byte v4, v4, v5

    aget-byte v5, p1, v3

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v0, "UTF_8"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string p1, "#@!@#"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->S0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    move-object v1, p1

    :cond_2
    return-object v1
.end method

.method private final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0xe04

    if-eq v0, v1, :cond_4

    const/16 v1, 0xf2e

    if-eq v0, v1, :cond_2

    const v1, 0x5fb1675

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "in_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "id"

    goto :goto_0

    :cond_2
    const-string v0, "zh"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const-string p1, "zh-cn"

    goto :goto_0

    :cond_4
    const-string v0, "pt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const-string p1, "pt-pt"

    :goto_0
    return-object p1
.end method

.method private final e()Lcom/transsion/subtitle/helper/b;
    .locals 1

    sget-object v0, Lcom/transsion/subtitle/helper/d;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/subtitle/helper/b;

    return-object v0
.end method

.method private final f(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6

    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v1, 0x200

    new-array v1, v1, [C

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/Reader;->read([C)I

    move-result v4

    iput v4, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5, v4}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_3

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :catch_2
    return-object v0

    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catch_3
    :goto_4
    const/4 p1, 0x0

    return-object p1

    :goto_5
    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    throw v0
.end method

.method private final i()Lcom/transsion/subtitle/helper/b;
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v3, Lsm/f;->c:Lsm/f$a;

    invoke-virtual {v3}, Lsm/f$a;->a()Lsm/f;

    move-result-object v3

    const-string v4, "sa_st_rq_v2"

    invoke-virtual {v3, v4, v1}, Lsm/f;->c(Ljava/lang/String;Z)Lcom/transsion/mb/config/manager/ConfigBean;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v3}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_1

    invoke-direct {p0, v3}, Lcom/transsion/subtitle/helper/d;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_2

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v3}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :goto_3
    invoke-static {v3}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_2

    sget-object v5, Llg/a;->a:Llg/a$a;

    sget-object v6, Lcom/transsion/baselib/report/a;->a:Lcom/transsion/baselib/report/a;

    invoke-virtual {v6}, Lcom/transsion/baselib/report/a;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "load subtitle request config failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4, v1}, Llg/a$a;->x(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2
    invoke-static {v3}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v3, v2

    :cond_3
    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_4

    invoke-static {v3, v0}, Lkotlin/collections/CollectionsKt;->l0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_4

    invoke-static {v4}, Lkotlin/text/StringsKt;->n1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_4

    goto :goto_4

    :cond_4
    move-object v4, v2

    :goto_4
    if-eqz v3, :cond_5

    invoke-static {v3, v1}, Lkotlin/collections/CollectionsKt;->l0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_5

    invoke-static {v5}, Lkotlin/text/StringsKt;->n1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_5

    goto :goto_5

    :cond_5
    move-object v5, v2

    :goto_5
    if-eqz v3, :cond_6

    const/4 v6, 0x2

    invoke-static {v3, v6}, Lkotlin/collections/CollectionsKt;->l0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_6

    invoke-static {v6}, Lkotlin/text/StringsKt;->n1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lez v7, :cond_6

    move-object v2, v6

    :cond_6
    if-eqz v4, :cond_7

    new-array v6, v1, [C

    const/16 v7, 0x2f

    aput-char v7, v6, v0

    invoke-static {v4, v6}, Lkotlin/text/StringsKt;->r1(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    :cond_7
    const-string v0, "https://api.opensubtitles.com/api/v1/"

    :cond_8
    if-nez v5, :cond_9

    const-string v6, "ZRN9QpqcTxje5UH3bV1RuugwitxkqB53"

    goto :goto_6

    :cond_9
    move-object v6, v5

    :goto_6
    if-nez v2, :cond_a

    const-string v7, "player2024"

    goto :goto_7

    :cond_a
    move-object v7, v2

    :goto_7
    new-instance v8, Lcom/transsion/subtitle/helper/b;

    invoke-direct {v8, v0, v6, v7}, Lcom/transsion/subtitle/helper/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Llg/a;->a:Llg/a$a;

    sget-object v6, Lcom/transsion/baselib/report/a;->a:Lcom/transsion/baselib/report/a;

    invoke-virtual {v6}, Lcom/transsion/baselib/report/a;->a()Ljava/lang/String;

    move-result-object v6

    const-string v7, "remote"

    const-string v9, "default"

    if-nez v3, :cond_b

    move-object v3, v9

    goto :goto_8

    :cond_b
    move-object v3, v7

    :goto_8
    if-nez v4, :cond_c

    move-object v4, v9

    goto :goto_9

    :cond_c
    move-object v4, v7

    :goto_9
    if-nez v5, :cond_d

    move-object v5, v9

    goto :goto_a

    :cond_d
    move-object v5, v7

    :goto_a
    if-nez v2, :cond_e

    move-object v7, v9

    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "opsubtitle request config source: payload="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", host="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", apiKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", ua="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v6, v2, v1}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v8
.end method

.method private static final k()Lcom/transsion/subtitle/helper/b;
    .locals 1

    sget-object v0, Lcom/transsion/subtitle/helper/d;->a:Lcom/transsion/subtitle/helper/d;

    invoke-direct {v0}, Lcom/transsion/subtitle/helper/d;->i()Lcom/transsion/subtitle/helper/b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "lan"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "zh-cn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string p1, "\u4e2d\u6587(\u7b80\u4f53)"

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "pt-pt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const-string p1, "Portugu\u00eas"

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "fil"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const-string p1, "Filipino"

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "ur"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_3
    const-string p1, "\u0627\u0631\u062f\u0648"

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "sw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const-string p1, "Swahili"

    goto :goto_1

    :sswitch_5
    const-string v0, "ru"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const-string p1, "\u0420\u0443\u0441\u0441\u043a\u0438\u0439"

    goto :goto_1

    :sswitch_6
    const-string v0, "id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const-string p1, "Indonesia"

    goto :goto_1

    :sswitch_7
    const-string v0, "hi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const-string p1, "\u0939\u093f\u0928\u094d\u0926\u0940"

    goto :goto_1

    :sswitch_8
    const-string v0, "fr"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const-string p1, "Fran\u00e7ais"

    goto :goto_1

    :sswitch_9
    const-string v0, "en"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    const-string p1, "English"

    goto :goto_1

    :sswitch_a
    const-string v0, "bn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_0

    :cond_a
    const-string p1, "\u09ac\u09be\u0982\u09b2\u09be"

    goto :goto_1

    :sswitch_b
    const-string v0, "ar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    :goto_0
    const-string p1, ""

    goto :goto_1

    :cond_b
    const-string p1, "\u0639\u0631\u0628\u064a"

    :goto_1
    return-object p1

    :sswitch_data_0
    .sparse-switch
        0xc31 -> :sswitch_b
        0xc4c -> :sswitch_a
        0xca9 -> :sswitch_9
        0xccc -> :sswitch_8
        0xd01 -> :sswitch_7
        0xd1b -> :sswitch_6
        0xe43 -> :sswitch_5
        0xe64 -> :sswitch_4
        0xe9d -> :sswitch_3
        0x18c09 -> :sswitch_2
        0x65fba6d -> :sswitch_1
        0x6e72f6a -> :sswitch_0
    .end sparse-switch
.end method

.method public final g(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    const-string p2, "application/json"

    const-string v0, " "

    invoke-direct {p0}, Lcom/transsion/subtitle/helper/d;->e()Lcom/transsion/subtitle/helper/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/subtitle/helper/b;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "download"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    sget-object v5, Llg/a;->a:Llg/a$a;

    sget-object v6, Lcom/transsion/baselib/report/a;->a:Lcom/transsion/baselib/report/a;

    invoke-virtual {v6}, Lcom/transsion/baselib/report/a;->a()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Subtitle new api download info start:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8, v4}, Llg/a$a;->x(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    invoke-static {v7}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/URLConnection;

    const-string v8, "null cannot be cast to non-null type java.net.HttpURLConnection"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/net/HttpURLConnection;

    const/16 v8, 0x3a98

    invoke-virtual {v7, v8}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v7, v8}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const-string v8, "POST"

    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v8, "User-Agent"

    invoke-virtual {v1}, Lcom/transsion/subtitle/helper/b;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "Api-Key"

    invoke-virtual {v1}, Lcom/transsion/subtitle/helper/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v8, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Content-Type"

    invoke-virtual {v7, v1, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Accept"

    invoke-virtual {v7, v1, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/net/URLConnection;->getDoOutput()Z

    invoke-virtual {v7}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Ljava/io/OutputStreamWriter;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p2, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "{\"file_id\":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {p2, v3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-virtual {v7}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    const-string p2, "getInputStream(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    const/16 v1, 0xc8

    if-ne p2, v1, :cond_0

    invoke-virtual {v6}, Lcom/transsion/baselib/report/a;->a()Ljava/lang/String;

    move-result-object p2

    const-string v1, "Subtitle new api, download info success "

    invoke-virtual {v5, p2, v1, v4}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, p1}, Lcom/transsion/subtitle/helper/d;->f(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-virtual {v6}, Lcom/transsion/baselib/report/a;->a()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Subtitle new api download info fail "

    invoke-virtual {v5, p1, p2, v4}, Llg/a$a;->x(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object p1, v3

    :goto_0
    const-class p2, Lcom/transsion/subtitle/bean/OpenSubtitleDownloadInfo;

    invoke-static {p1, p2}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/subtitle/bean/OpenSubtitleDownloadInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v3, p1

    goto :goto_3

    :catchall_1
    move-exception p1

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v1

    :try_start_4
    invoke-static {p2, p1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    invoke-static {}, Lpc/e;->c()Lpc/e;

    move-result-object p2

    const-string v1, "GET"

    invoke-virtual {p2, v2, v1}, Lpc/e;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/perf/metrics/h;

    move-result-object p2

    const-string v1, "newHttpMetric(...)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v1, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v1, :cond_1

    const/16 v1, 0x57

    goto :goto_2

    :cond_1
    instance-of v1, p1, Ljava/net/ProtocolException;

    if-eqz v1, :cond_2

    const/16 v1, 0x56

    goto :goto_2

    :cond_2
    instance-of v1, p1, Ljava/io/IOException;

    if-eqz v1, :cond_3

    const/16 v1, 0x58

    goto :goto_2

    :cond_3
    instance-of v1, p1, Ljava/util/concurrent/TimeoutException;

    if-eqz v1, :cond_4

    const/16 v1, 0x55

    goto :goto_2

    :cond_4
    const/16 v1, 0x59

    :goto_2
    invoke-virtual {p2, v1}, Lcom/google/firebase/perf/metrics/h;->a(I)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object p2, Llg/a;->a:Llg/a$a;

    sget-object v1, Lcom/transsion/baselib/report/a;->a:Lcom/transsion/baselib/report/a;

    invoke-virtual {v1}, Lcom/transsion/baselib/report/a;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Subtitle new api download info fail: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v1, p1, v4}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_3
    return-object v3
.end method

.method public final h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    const-string p5, "GET"

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "[\\\\/:#*?\"<>|&,]"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "toLowerCase(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/transsion/subtitle/helper/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0}, Lcom/transsion/subtitle/helper/d;->e()Lcom/transsion/subtitle/helper/b;

    move-result-object v0

    const-string v2, "&languages="

    const-string v3, "subtitles?query="

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    invoke-virtual {v0}, Lcom/transsion/subtitle/helper/b;->b()Ljava/lang/String;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/transsion/subtitle/helper/b;->b()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&season_number="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "&episode_number="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const/4 p2, 0x3

    const/4 p3, 0x0

    const/4 p4, 0x1

    :try_start_0
    sget-object v2, Llg/a;->a:Llg/a$a;

    sget-object v3, Lcom/transsion/baselib/report/a;->a:Lcom/transsion/baselib/report/a;

    invoke-virtual {v3}, Lcom/transsion/baselib/report/a;->a()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "new api getSubtitleInfo url:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5, p4}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    invoke-static {v4}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/URLConnection;

    const-string v5, "null cannot be cast to non-null type java.net.HttpURLConnection"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/net/HttpURLConnection;

    const/16 v5, 0x3a98

    invoke-virtual {v4, v5}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v4, v5}, Ljava/net/URLConnection;->setReadTimeout(I)V

    invoke-virtual {v4, p5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v5, "User-Agent"

    invoke-virtual {v0}, Lcom/transsion/subtitle/helper/b;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "Api-Key"

    invoke-virtual {v0}, Lcom/transsion/subtitle/helper/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const-string v5, "getInputStream(...)"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_1

    invoke-virtual {v3}, Lcom/transsion/baselib/report/a;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Subtitle new api success "

    invoke-virtual {v2, v3, v4, p4}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, v0}, Lcom/transsion/subtitle/helper/d;->f(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_1
    invoke-virtual {v3}, Lcom/transsion/baselib/report/a;->a()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Subtitle new api fail "

    invoke-virtual {v2, v0, v3, p4}, Llg/a$a;->x(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v0, p3

    :goto_1
    const-class v2, Lcom/transsion/subtitle/bean/OpenSubtitleResponse;

    invoke-static {v0, v2}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/subtitle/bean/OpenSubtitleResponse;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/subtitle/bean/OpenSubtitleResponse;->getData()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lcom/transsion/subtitle/bean/OpenSubtitleResponse;->getData()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p3

    goto :goto_3

    :cond_3
    :goto_2
    const-string v0, "data is null"

    invoke-virtual {p0, p2, v0}, Lcom/transsion/subtitle/helper/d;->j(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    return-object p3

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_5

    :cond_4
    move-object v1, v2

    :goto_5
    invoke-virtual {p0, p2, v1}, Lcom/transsion/subtitle/helper/d;->j(ILjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {}, Lpc/e;->c()Lpc/e;

    move-result-object p2

    invoke-virtual {p2, p1, p5}, Lpc/e;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/perf/metrics/h;

    move-result-object p1

    const-string p2, "newHttpMetric(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p2, v0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz p2, :cond_5

    const/16 p2, 0x57

    goto :goto_6

    :cond_5
    instance-of p2, v0, Ljava/net/ProtocolException;

    if-eqz p2, :cond_6

    const/16 p2, 0x56

    goto :goto_6

    :cond_6
    instance-of p2, v0, Ljava/io/IOException;

    if-eqz p2, :cond_7

    const/16 p2, 0x58

    goto :goto_6

    :cond_7
    instance-of p2, v0, Ljava/util/concurrent/TimeoutException;

    if-eqz p2, :cond_8

    const/16 p2, 0x55

    goto :goto_6

    :cond_8
    const/16 p2, 0x59

    :goto_6
    invoke-virtual {p1, p2}, Lcom/google/firebase/perf/metrics/h;->a(I)V

    sget-object p1, Llg/a;->a:Llg/a$a;

    sget-object p2, Lcom/transsion/baselib/report/a;->a:Lcom/transsion/baselib/report/a;

    invoke-virtual {p2}, Lcom/transsion/baselib/report/a;->a()Ljava/lang/String;

    move-result-object p2

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "new api getSubtitleInfo FAIL :"

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p2, p5, p4}, Llg/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object p3
.end method

.method public final j(ILjava/lang/String;)V
    .locals 2

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "from"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "error_msg"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lhj/i;->a:Lhj/i;

    const-string p2, "subtitle_search"

    const-string v1, "app_perf"

    invoke-virtual {p1, p2, v1, v0}, Lhj/i;->s(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
