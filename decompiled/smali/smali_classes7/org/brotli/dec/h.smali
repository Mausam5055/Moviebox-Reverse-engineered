.class final Lorg/brotli/dec/h;
.super Ljava/lang/Object;


# instance fields
.field private a:[B

.field private b:[I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lorg/brotli/dec/h;I)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lorg/brotli/dec/h;->b:[I

    iget-object v2, p0, Lorg/brotli/dec/h;->a:[B

    mul-int/lit8 v3, v0, 0x4

    aget-byte v4, v2, v3

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v5, v3, 0x2

    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x3

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v2, v4

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static b(Lorg/brotli/dec/h;[B[I)V
    .locals 0

    iput-object p1, p0, Lorg/brotli/dec/h;->a:[B

    iput-object p2, p0, Lorg/brotli/dec/h;->b:[I

    return-void
.end method
