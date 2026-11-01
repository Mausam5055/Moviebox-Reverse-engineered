.class Ltz/f$c;
.super Ltz/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltz/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# static fields
.field static a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x64

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Ltz/f$c;->a:[I

    return-void

    :array_0
    .array-data 4
        0xa1a1
        0xa1a2
        0xa1a3
        0xa1a4
        0xa1b0
        0xa1b1
        0xa1f1
        0xa1f3
        0xa3a1
        0xa3ac
        0xa3ba
        0xb1a8
        0xb1b8
        0xb1be
        0xb2bb
        0xb3c9
        0xb3f6
        0xb4f3
        0xb5bd
        0xb5c4
        0xb5e3
        0xb6af
        0xb6d4
        0xb6e0
        0xb7a2
        0xb7a8
        0xb7bd
        0xb7d6
        0xb7dd
        0xb8b4
        0xb8df
        0xb8f6
        0xb9ab
        0xb9c9
        0xb9d8
        0xb9fa
        0xb9fd
        0xbacd
        0xbba7
        0xbbd6
        0xbbe1
        0xbbfa
        0xbcbc
        0xbcdb
        0xbcfe
        0xbdcc
        0xbecd
        0xbedd
        0xbfb4
        0xbfc6
        0xbfc9
        0xc0b4
        0xc0ed
        0xc1cb
        0xc2db
        0xc3c7
        0xc4dc
        0xc4ea
        0xc5cc
        0xc6f7
        0xc7f8
        0xc8ab
        0xc8cb
        0xc8d5
        0xc8e7
        0xc9cf
        0xc9fa
        0xcab1
        0xcab5
        0xcac7
        0xcad0
        0xcad6
        0xcaf5
        0xcafd
        0xccec
        0xcdf8
        0xceaa
        0xcec4
        0xced2
        0xcee5
        0xcfb5
        0xcfc2
        0xcfd6
        0xd0c2
        0xd0c5
        0xd0d0
        0xd0d4
        0xd1a7
        0xd2aa
        0xd2b2
        0xd2b5
        0xd2bb
        0xd2d4
        0xd3c3
        0xd3d0
        0xd3fd
        0xd4c2
        0xd4da
        0xd5e2
        0xd6d0
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ltz/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "zh"

    return-object v0
.end method

.method b()Ljava/lang/String;
    .locals 1

    const-string v0, "GB18030"

    return-object v0
.end method

.method c(Ltz/a;)Ltz/b;
    .locals 2

    sget-object v0, Ltz/f$c;->a:[I

    invoke-virtual {p0, p1, v0}, Ltz/f;->d(Ltz/a;[I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Ltz/b;

    invoke-direct {v1, p1, p0, v0}, Ltz/b;-><init>(Ltz/a;Ltz/h;I)V

    move-object p1, v1

    :goto_0
    return-object p1
.end method

.method e(Ltz/f$e;Ltz/a;)Z
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p1, Ltz/f$e;->c:Z

    invoke-virtual {p1, p2}, Ltz/f$e;->a(Ltz/a;)I

    move-result v0

    iput v0, p1, Ltz/f$e;->a:I

    const/4 v1, 0x1

    if-gez v0, :cond_0

    iput-boolean v1, p1, Ltz/f$e;->d:Z

    goto :goto_0

    :cond_0
    const/16 v2, 0x80

    if-gt v0, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Ltz/f$e;->a(Ltz/a;)I

    move-result v2

    iget v3, p1, Ltz/f$e;->a:I

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v3, v2

    iput v3, p1, Ltz/f$e;->a:I

    const/16 v3, 0x81

    if-lt v0, v3, :cond_5

    const/16 v4, 0xfe

    if-gt v0, v4, :cond_5

    const/16 v0, 0x40

    if-lt v2, v0, :cond_2

    const/16 v0, 0x7e

    if-le v2, v0, :cond_5

    :cond_2
    const/16 v0, 0x50

    if-lt v2, v0, :cond_3

    if-gt v2, v4, :cond_3

    goto :goto_0

    :cond_3
    const/16 v0, 0x30

    if-lt v2, v0, :cond_4

    const/16 v5, 0x39

    if-gt v2, v5, :cond_4

    invoke-virtual {p1, p2}, Ltz/f$e;->a(Ltz/a;)I

    move-result v2

    if-lt v2, v3, :cond_4

    if-gt v2, v4, :cond_4

    invoke-virtual {p1, p2}, Ltz/f$e;->a(Ltz/a;)I

    move-result p2

    if-lt p2, v0, :cond_4

    if-gt p2, v5, :cond_4

    iget v0, p1, Ltz/f$e;->a:I

    shl-int/lit8 v0, v0, 0x10

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    or-int/2addr p2, v0

    iput p2, p1, Ltz/f$e;->a:I

    goto :goto_0

    :cond_4
    iput-boolean v1, p1, Ltz/f$e;->c:Z

    :cond_5
    :goto_0
    iget-boolean p1, p1, Ltz/f$e;->d:Z

    xor-int/2addr p1, v1

    return p1
.end method
