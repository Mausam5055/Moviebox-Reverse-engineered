.class public Lev/c;
.super Lev/d;


# instance fields
.field i:Z

.field protected j:Ljava/util/zip/CRC32;


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {p0, v0}, Lev/d;-><init>(Ljava/util/zip/Inflater;)V

    iput-boolean v1, p0, Lev/c;->i:Z

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lev/c;->j:Ljava/util/zip/CRC32;

    return-void
.end method

.method static O([BILjava/nio/ByteOrder;)S
    .locals 1

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p2, v0, :cond_0

    aget-byte p2, p0, p1

    shl-int/lit8 p2, p2, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    :goto_0
    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, p2

    int-to-short p0, p0

    return p0

    :cond_0
    add-int/lit8 p2, p1, 0x1

    aget-byte p2, p0, p2

    shl-int/lit8 p2, p2, 0x8

    aget-byte p0, p0, p1

    goto :goto_0
.end method


# virtual methods
.method public F(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/ByteBufferList;)V
    .locals 1

    iget-boolean v0, p0, Lev/c;->i:Z

    if-eqz v0, :cond_0

    new-instance p2, Lcom/transsion/transfer/androidasync/w;

    invoke-direct {p2, p1}, Lcom/transsion/transfer/androidasync/w;-><init>(Lcom/transsion/transfer/androidasync/p;)V

    new-instance v0, Lev/c$a;

    invoke-direct {v0, p0, p1, p2}, Lev/c$a;-><init>(Lev/c;Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/w;)V

    const/16 p1, 0xa

    invoke-virtual {p2, p1, v0}, Lcom/transsion/transfer/androidasync/w;->b(ILcom/transsion/transfer/androidasync/w$j;)Lcom/transsion/transfer/androidasync/w;

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lev/d;->F(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/ByteBufferList;)V

    :goto_0
    return-void
.end method
