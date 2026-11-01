.class public final Lod/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/zxing/i;


# static fields
.field private static final b:[Lcom/google/zxing/k;


# instance fields
.field private final a:Lpd/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/zxing/k;

    sput-object v0, Lod/a;->b:[Lcom/google/zxing/k;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lpd/c;

    invoke-direct {v0}, Lpd/c;-><init>()V

    iput-object v0, p0, Lod/a;->a:Lpd/c;

    return-void
.end method

.method private static c(Lid/b;)Lid/b;
    .locals 15

    invoke-virtual {p0}, Lid/b;->j()[I

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v4, v0, v3

    const/4 v5, 0x2

    aget v6, v0, v5

    const/4 v7, 0x3

    aget v0, v0, v7

    new-instance v7, Lid/b;

    const/16 v8, 0x1e

    const/16 v9, 0x21

    invoke-direct {v7, v8, v9}, Lid/b;-><init>(II)V

    move v10, v1

    :goto_0
    if-ge v10, v9, :cond_2

    mul-int v11, v10, v0

    div-int/lit8 v12, v0, 0x2

    add-int/2addr v11, v12

    div-int/2addr v11, v9

    add-int/2addr v11, v4

    add-int/lit8 v12, v0, -0x1

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    move v12, v1

    :goto_1
    if-ge v12, v8, :cond_1

    mul-int v13, v12, v6

    div-int/lit8 v14, v6, 0x2

    add-int/2addr v13, v14

    and-int/lit8 v14, v10, 0x1

    mul-int/2addr v14, v6

    div-int/2addr v14, v5

    add-int/2addr v13, v14

    div-int/2addr v13, v8

    add-int/lit8 v14, v6, -0x1

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    add-int/2addr v13, v2

    invoke-virtual {p0, v13, v11}, Lid/b;->g(II)Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-virtual {v7, v12, v10}, Lid/b;->r(II)V

    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_2
    return-object v7

    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public a(Lcom/google/zxing/b;Ljava/util/Map;)Lcom/google/zxing/j;
    .locals 4

    invoke-virtual {p1}, Lcom/google/zxing/b;->a()Lid/b;

    move-result-object p1

    invoke-static {p1}, Lod/a;->c(Lid/b;)Lid/b;

    move-result-object p1

    iget-object v0, p0, Lod/a;->a:Lpd/c;

    invoke-virtual {v0, p1, p2}, Lpd/c;->b(Lid/b;Ljava/util/Map;)Lid/d;

    move-result-object p1

    new-instance p2, Lcom/google/zxing/j;

    invoke-virtual {p1}, Lid/d;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lid/d;->g()[B

    move-result-object v1

    sget-object v2, Lod/a;->b:[Lcom/google/zxing/k;

    sget-object v3, Lcom/google/zxing/BarcodeFormat;->MAXICODE:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/google/zxing/j;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/k;Lcom/google/zxing/BarcodeFormat;)V

    sget-object v0, Lcom/google/zxing/ResultMetadataType;->ERRORS_CORRECTED:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {p1}, Lid/d;->d()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/google/zxing/j;->h(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lid/d;->b()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {p2, v0, p1}, Lcom/google/zxing/j;->h(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    :cond_0
    return-object p2
.end method

.method public b(Lcom/google/zxing/b;)Lcom/google/zxing/j;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lod/a;->a(Lcom/google/zxing/b;Ljava/util/Map;)Lcom/google/zxing/j;

    move-result-object p1

    return-object p1
.end method

.method public reset()V
    .locals 0

    return-void
.end method
