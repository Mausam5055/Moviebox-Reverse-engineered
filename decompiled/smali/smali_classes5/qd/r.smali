.class public final Lqd/r;
.super Lqd/w;


# instance fields
.field private final i:Lqd/w;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lqd/w;-><init>()V

    new-instance v0, Lqd/g;

    invoke-direct {v0}, Lqd/g;-><init>()V

    iput-object v0, p0, Lqd/r;->i:Lqd/w;

    return-void
.end method

.method private static s(Lcom/google/zxing/j;)Lcom/google/zxing/j;
    .locals 5

    invoke-virtual {p0}, Lcom/google/zxing/j;->f()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-ne v1, v2, :cond_1

    new-instance v1, Lcom/google/zxing/j;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/zxing/j;->e()[Lcom/google/zxing/k;

    move-result-object v2

    sget-object v3, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    const/4 v4, 0x0

    invoke-direct {v1, v0, v4, v2, v3}, Lcom/google/zxing/j;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/k;Lcom/google/zxing/BarcodeFormat;)V

    invoke-virtual {p0}, Lcom/google/zxing/j;->d()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/zxing/j;->d()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/google/zxing/j;->g(Ljava/util/Map;)V

    :cond_0
    return-object v1

    :cond_1
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public a(Lcom/google/zxing/b;Ljava/util/Map;)Lcom/google/zxing/j;
    .locals 1

    iget-object v0, p0, Lqd/r;->i:Lqd/w;

    invoke-virtual {v0, p1, p2}, Lqd/p;->a(Lcom/google/zxing/b;Ljava/util/Map;)Lcom/google/zxing/j;

    move-result-object p1

    invoke-static {p1}, Lqd/r;->s(Lcom/google/zxing/j;)Lcom/google/zxing/j;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/google/zxing/b;)Lcom/google/zxing/j;
    .locals 1

    iget-object v0, p0, Lqd/r;->i:Lqd/w;

    invoke-virtual {v0, p1}, Lqd/p;->b(Lcom/google/zxing/b;)Lcom/google/zxing/j;

    move-result-object p1

    invoke-static {p1}, Lqd/r;->s(Lcom/google/zxing/j;)Lcom/google/zxing/j;

    move-result-object p1

    return-object p1
.end method

.method public c(ILid/a;Ljava/util/Map;)Lcom/google/zxing/j;
    .locals 1

    iget-object v0, p0, Lqd/r;->i:Lqd/w;

    invoke-virtual {v0, p1, p2, p3}, Lqd/w;->c(ILid/a;Ljava/util/Map;)Lcom/google/zxing/j;

    move-result-object p1

    invoke-static {p1}, Lqd/r;->s(Lcom/google/zxing/j;)Lcom/google/zxing/j;

    move-result-object p1

    return-object p1
.end method

.method protected l(Lid/a;[ILjava/lang/StringBuilder;)I
    .locals 1

    iget-object v0, p0, Lqd/r;->i:Lqd/w;

    invoke-virtual {v0, p1, p2, p3}, Lqd/w;->l(Lid/a;[ILjava/lang/StringBuilder;)I

    move-result p1

    return p1
.end method

.method public m(ILid/a;[ILjava/util/Map;)Lcom/google/zxing/j;
    .locals 1

    iget-object v0, p0, Lqd/r;->i:Lqd/w;

    invoke-virtual {v0, p1, p2, p3, p4}, Lqd/w;->m(ILid/a;[ILjava/util/Map;)Lcom/google/zxing/j;

    move-result-object p1

    invoke-static {p1}, Lqd/r;->s(Lcom/google/zxing/j;)Lcom/google/zxing/j;

    move-result-object p1

    return-object p1
.end method

.method q()Lcom/google/zxing/BarcodeFormat;
    .locals 1

    sget-object v0, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    return-object v0
.end method
