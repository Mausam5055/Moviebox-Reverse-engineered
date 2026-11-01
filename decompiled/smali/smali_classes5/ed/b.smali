.class public final Led/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/zxing/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/zxing/b;Ljava/util/Map;)Lcom/google/zxing/j;
    .locals 10

    new-instance v0, Lfd/a;

    invoke-virtual {p1}, Lcom/google/zxing/b;->a()Lid/b;

    move-result-object p1

    invoke-direct {v0, p1}, Lfd/a;-><init>(Lid/b;)V

    const/4 p1, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Lfd/a;->a(Z)Led/a;

    move-result-object v2

    invoke-virtual {v2}, Lid/f;->b()[Lcom/google/zxing/k;

    move-result-object v3
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/google/zxing/FormatException; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    invoke-virtual {v2}, Led/a;->c()I

    move-result v4
    :try_end_1
    .catch Lcom/google/zxing/NotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/google/zxing/FormatException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    new-instance v5, Lcom/google/zxing/aztec/decoder/Decoder;

    invoke-direct {v5}, Lcom/google/zxing/aztec/decoder/Decoder;-><init>()V

    invoke-virtual {v5, v2}, Lcom/google/zxing/aztec/decoder/Decoder;->c(Led/a;)Lid/d;

    move-result-object v2
    :try_end_2
    .catch Lcom/google/zxing/NotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/google/zxing/FormatException; {:try_start_2 .. :try_end_2} :catch_0

    move v5, v4

    move-object v4, v3

    move-object v3, p1

    move-object p1, v2

    move-object v2, v3

    goto :goto_4

    :catch_0
    move-exception v2

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_3

    :catch_2
    move-exception v2

    :goto_0
    move v4, v1

    goto :goto_2

    :catch_3
    move-exception v2

    :goto_1
    move v4, v1

    goto :goto_3

    :catch_4
    move-exception v2

    move-object v3, p1

    goto :goto_0

    :catch_5
    move-exception v2

    move-object v3, p1

    goto :goto_1

    :goto_2
    move v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, p1

    goto :goto_4

    :goto_3
    move v5, v4

    move-object v4, v3

    move-object v3, p1

    :goto_4
    if-nez p1, :cond_0

    const/4 p1, 0x1

    :try_start_3
    invoke-virtual {v0, p1}, Lfd/a;->a(Z)Led/a;

    move-result-object p1

    invoke-virtual {p1}, Lid/f;->b()[Lcom/google/zxing/k;

    move-result-object v4

    invoke-virtual {p1}, Led/a;->c()I

    move-result v5

    new-instance v0, Lcom/google/zxing/aztec/decoder/Decoder;

    invoke-direct {v0}, Lcom/google/zxing/aztec/decoder/Decoder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/zxing/aztec/decoder/Decoder;->c(Led/a;)Lid/d;

    move-result-object p1
    :try_end_3
    .catch Lcom/google/zxing/NotFoundException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Lcom/google/zxing/FormatException; {:try_start_3 .. :try_end_3} :catch_6

    :cond_0
    move-object v6, v4

    move v0, v5

    goto :goto_6

    :catch_6
    move-exception p1

    goto :goto_5

    :catch_7
    move-exception p1

    :goto_5
    if-nez v2, :cond_2

    if-eqz v3, :cond_1

    throw v3

    :cond_1
    throw p1

    :cond_2
    throw v2

    :goto_6
    if-eqz p2, :cond_3

    sget-object v2, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/zxing/l;

    if-eqz p2, :cond_3

    array-length v2, v6

    :goto_7
    if-ge v1, v2, :cond_3

    aget-object v3, v6, v1

    invoke-interface {p2, v3}, Lcom/google/zxing/l;->a(Lcom/google/zxing/k;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_3
    new-instance p2, Lcom/google/zxing/j;

    invoke-virtual {p1}, Lid/d;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lid/d;->g()[B

    move-result-object v4

    invoke-virtual {p1}, Lid/d;->e()I

    move-result v5

    sget-object v7, Lcom/google/zxing/BarcodeFormat;->AZTEC:Lcom/google/zxing/BarcodeFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object v2, p2

    invoke-direct/range {v2 .. v9}, Lcom/google/zxing/j;-><init>(Ljava/lang/String;[BI[Lcom/google/zxing/k;Lcom/google/zxing/BarcodeFormat;J)V

    invoke-virtual {p1}, Lid/d;->a()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    sget-object v2, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {p2, v2, v1}, Lcom/google/zxing/j;->h(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {p1}, Lid/d;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    sget-object v2, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {p2, v2, v1}, Lcom/google/zxing/j;->h(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    :cond_5
    invoke-virtual {p1}, Lid/d;->d()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/google/zxing/ResultMetadataType;->ERRORS_CORRECTED:Lcom/google/zxing/ResultMetadataType;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lcom/google/zxing/j;->h(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    sget-object v0, Lcom/google/zxing/ResultMetadataType;->SYMBOLOGY_IDENTIFIER:Lcom/google/zxing/ResultMetadataType;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "]z"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lid/d;->j()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/google/zxing/j;->h(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    return-object p2
.end method

.method public b(Lcom/google/zxing/b;)Lcom/google/zxing/j;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Led/b;->a(Lcom/google/zxing/b;Ljava/util/Map;)Lcom/google/zxing/j;

    move-result-object p1

    return-object p1
.end method

.method public reset()V
    .locals 0

    return-void
.end method
