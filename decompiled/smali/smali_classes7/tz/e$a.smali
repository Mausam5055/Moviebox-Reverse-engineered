.class Ltz/e$a;
.super Ltz/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltz/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ltz/e;-><init>()V

    return-void
.end method


# virtual methods
.method b()Ljava/lang/String;
    .locals 1

    const-string v0, "UTF-16BE"

    return-object v0
.end method

.method c(Ltz/a;)Ltz/b;
    .locals 8

    iget-object v0, p1, Ltz/a;->e:[B

    array-length v1, v0

    const/16 v2, 0x1e

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/16 v2, 0xa

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    add-int/lit8 v5, v1, -0x1

    const/16 v6, 0x64

    if-ge v4, v5, :cond_2

    aget-byte v5, v0, v4

    add-int/lit8 v7, v4, 0x1

    aget-byte v7, v0, v7

    invoke-static {v5, v7}, Ltz/e;->e(BB)I

    move-result v5

    if-nez v4, :cond_0

    const v7, 0xfeff

    if-ne v5, v7, :cond_0

    move v2, v6

    goto :goto_1

    :cond_0
    invoke-static {v5, v2}, Ltz/e;->d(II)I

    move-result v2

    if-eqz v2, :cond_2

    if-ne v2, v6, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v0, 0x4

    if-ge v1, v0, :cond_3

    if-ge v2, v6, :cond_3

    goto :goto_2

    :cond_3
    move v3, v2

    :goto_2
    if-lez v3, :cond_4

    new-instance v0, Ltz/b;

    invoke-direct {v0, p1, p0, v3}, Ltz/b;-><init>(Ltz/a;Ltz/h;I)V

    return-object v0

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method
