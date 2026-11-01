.class public final Lcom/tencent/tinker/android/dex/j;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tinker/android/dex/j$c;,
        Lcom/tencent/tinker/android/dex/j$e;,
        Lcom/tencent/tinker/android/dex/j$b;,
        Lcom/tencent/tinker/android/dex/j$f;,
        Lcom/tencent/tinker/android/dex/j$d;,
        Lcom/tencent/tinker/android/dex/j$g;,
        Lcom/tencent/tinker/android/dex/j$k;,
        Lcom/tencent/tinker/android/dex/j$j;,
        Lcom/tencent/tinker/android/dex/j$i;,
        Lcom/tencent/tinker/android/dex/j$h;
    }
.end annotation


# static fields
.field static final n:[S


# instance fields
.field private final a:Lcom/tencent/tinker/android/dex/v;

.field private final b:Lcom/tencent/tinker/android/dex/j$i;

.field private final c:Lcom/tencent/tinker/android/dex/j$j;

.field private final d:Lcom/tencent/tinker/android/dex/j$k;

.field private final e:Lcom/tencent/tinker/android/dex/j$g;

.field private final f:Lcom/tencent/tinker/android/dex/j$d;

.field private final g:Lcom/tencent/tinker/android/dex/j$f;

.field private final h:Lcom/tencent/tinker/android/dex/j$b;

.field private final i:Lcom/tencent/tinker/android/dex/j$e;

.field private final j:Lcom/tencent/tinker/android/dex/j$c;

.field private k:Ljava/nio/ByteBuffer;

.field private l:I

.field private m:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [S

    sput-object v0, Lcom/tencent/tinker/android/dex/j;->n:[S

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/tinker/android/dex/v;

    invoke-direct {v0}, Lcom/tencent/tinker/android/dex/v;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/android/dex/j;->a:Lcom/tencent/tinker/android/dex/v;

    new-instance v1, Lcom/tencent/tinker/android/dex/j$i;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/tencent/tinker/android/dex/j$i;-><init>(Lcom/tencent/tinker/android/dex/j;Lcom/tencent/tinker/android/dex/j$a;)V

    iput-object v1, p0, Lcom/tencent/tinker/android/dex/j;->b:Lcom/tencent/tinker/android/dex/j$i;

    new-instance v1, Lcom/tencent/tinker/android/dex/j$j;

    invoke-direct {v1, p0, v2}, Lcom/tencent/tinker/android/dex/j$j;-><init>(Lcom/tencent/tinker/android/dex/j;Lcom/tencent/tinker/android/dex/j$a;)V

    iput-object v1, p0, Lcom/tencent/tinker/android/dex/j;->c:Lcom/tencent/tinker/android/dex/j$j;

    new-instance v1, Lcom/tencent/tinker/android/dex/j$k;

    invoke-direct {v1, p0, v2}, Lcom/tencent/tinker/android/dex/j$k;-><init>(Lcom/tencent/tinker/android/dex/j;Lcom/tencent/tinker/android/dex/j$a;)V

    iput-object v1, p0, Lcom/tencent/tinker/android/dex/j;->d:Lcom/tencent/tinker/android/dex/j$k;

    new-instance v1, Lcom/tencent/tinker/android/dex/j$g;

    invoke-direct {v1, p0, v2}, Lcom/tencent/tinker/android/dex/j$g;-><init>(Lcom/tencent/tinker/android/dex/j;Lcom/tencent/tinker/android/dex/j$a;)V

    iput-object v1, p0, Lcom/tencent/tinker/android/dex/j;->e:Lcom/tencent/tinker/android/dex/j$g;

    new-instance v1, Lcom/tencent/tinker/android/dex/j$d;

    invoke-direct {v1, p0, v2}, Lcom/tencent/tinker/android/dex/j$d;-><init>(Lcom/tencent/tinker/android/dex/j;Lcom/tencent/tinker/android/dex/j$a;)V

    iput-object v1, p0, Lcom/tencent/tinker/android/dex/j;->f:Lcom/tencent/tinker/android/dex/j$d;

    new-instance v1, Lcom/tencent/tinker/android/dex/j$f;

    invoke-direct {v1, p0, v2}, Lcom/tencent/tinker/android/dex/j$f;-><init>(Lcom/tencent/tinker/android/dex/j;Lcom/tencent/tinker/android/dex/j$a;)V

    iput-object v1, p0, Lcom/tencent/tinker/android/dex/j;->g:Lcom/tencent/tinker/android/dex/j$f;

    new-instance v1, Lcom/tencent/tinker/android/dex/j$b;

    invoke-direct {v1, p0, v2}, Lcom/tencent/tinker/android/dex/j$b;-><init>(Lcom/tencent/tinker/android/dex/j;Lcom/tencent/tinker/android/dex/j$a;)V

    iput-object v1, p0, Lcom/tencent/tinker/android/dex/j;->h:Lcom/tencent/tinker/android/dex/j$b;

    new-instance v1, Lcom/tencent/tinker/android/dex/j$e;

    invoke-direct {v1, p0, v2}, Lcom/tencent/tinker/android/dex/j$e;-><init>(Lcom/tencent/tinker/android/dex/j;Lcom/tencent/tinker/android/dex/j$a;)V

    iput-object v1, p0, Lcom/tencent/tinker/android/dex/j;->i:Lcom/tencent/tinker/android/dex/j$e;

    new-instance v1, Lcom/tencent/tinker/android/dex/j$c;

    invoke-direct {v1, p0, v2}, Lcom/tencent/tinker/android/dex/j$c;-><init>(Lcom/tencent/tinker/android/dex/j;Lcom/tencent/tinker/android/dex/j$a;)V

    iput-object v1, p0, Lcom/tencent/tinker/android/dex/j;->j:Lcom/tencent/tinker/android/dex/j$c;

    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/tinker/android/dex/j;->l:I

    iput-object v2, p0, Lcom/tencent/tinker/android/dex/j;->m:[B

    new-array v1, p1, [B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/tinker/android/dex/j;->k:Ljava/nio/ByteBuffer;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iput p1, v0, Lcom/tencent/tinker/android/dex/v;->y:I

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/tinker/android/dex/v;

    invoke-direct {v0}, Lcom/tencent/tinker/android/dex/v;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/android/dex/j;->a:Lcom/tencent/tinker/android/dex/v;

    new-instance v0, Lcom/tencent/tinker/android/dex/j$i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/tinker/android/dex/j$i;-><init>(Lcom/tencent/tinker/android/dex/j;Lcom/tencent/tinker/android/dex/j$a;)V

    iput-object v0, p0, Lcom/tencent/tinker/android/dex/j;->b:Lcom/tencent/tinker/android/dex/j$i;

    new-instance v0, Lcom/tencent/tinker/android/dex/j$j;

    invoke-direct {v0, p0, v1}, Lcom/tencent/tinker/android/dex/j$j;-><init>(Lcom/tencent/tinker/android/dex/j;Lcom/tencent/tinker/android/dex/j$a;)V

    iput-object v0, p0, Lcom/tencent/tinker/android/dex/j;->c:Lcom/tencent/tinker/android/dex/j$j;

    new-instance v0, Lcom/tencent/tinker/android/dex/j$k;

    invoke-direct {v0, p0, v1}, Lcom/tencent/tinker/android/dex/j$k;-><init>(Lcom/tencent/tinker/android/dex/j;Lcom/tencent/tinker/android/dex/j$a;)V

    iput-object v0, p0, Lcom/tencent/tinker/android/dex/j;->d:Lcom/tencent/tinker/android/dex/j$k;

    new-instance v0, Lcom/tencent/tinker/android/dex/j$g;

    invoke-direct {v0, p0, v1}, Lcom/tencent/tinker/android/dex/j$g;-><init>(Lcom/tencent/tinker/android/dex/j;Lcom/tencent/tinker/android/dex/j$a;)V

    iput-object v0, p0, Lcom/tencent/tinker/android/dex/j;->e:Lcom/tencent/tinker/android/dex/j$g;

    new-instance v0, Lcom/tencent/tinker/android/dex/j$d;

    invoke-direct {v0, p0, v1}, Lcom/tencent/tinker/android/dex/j$d;-><init>(Lcom/tencent/tinker/android/dex/j;Lcom/tencent/tinker/android/dex/j$a;)V

    iput-object v0, p0, Lcom/tencent/tinker/android/dex/j;->f:Lcom/tencent/tinker/android/dex/j$d;

    new-instance v0, Lcom/tencent/tinker/android/dex/j$f;

    invoke-direct {v0, p0, v1}, Lcom/tencent/tinker/android/dex/j$f;-><init>(Lcom/tencent/tinker/android/dex/j;Lcom/tencent/tinker/android/dex/j$a;)V

    iput-object v0, p0, Lcom/tencent/tinker/android/dex/j;->g:Lcom/tencent/tinker/android/dex/j$f;

    new-instance v0, Lcom/tencent/tinker/android/dex/j$b;

    invoke-direct {v0, p0, v1}, Lcom/tencent/tinker/android/dex/j$b;-><init>(Lcom/tencent/tinker/android/dex/j;Lcom/tencent/tinker/android/dex/j$a;)V

    iput-object v0, p0, Lcom/tencent/tinker/android/dex/j;->h:Lcom/tencent/tinker/android/dex/j$b;

    new-instance v0, Lcom/tencent/tinker/android/dex/j$e;

    invoke-direct {v0, p0, v1}, Lcom/tencent/tinker/android/dex/j$e;-><init>(Lcom/tencent/tinker/android/dex/j;Lcom/tencent/tinker/android/dex/j$a;)V

    iput-object v0, p0, Lcom/tencent/tinker/android/dex/j;->i:Lcom/tencent/tinker/android/dex/j$e;

    new-instance v0, Lcom/tencent/tinker/android/dex/j$c;

    invoke-direct {v0, p0, v1}, Lcom/tencent/tinker/android/dex/j$c;-><init>(Lcom/tencent/tinker/android/dex/j;Lcom/tencent/tinker/android/dex/j$a;)V

    iput-object v0, p0, Lcom/tencent/tinker/android/dex/j;->j:Lcom/tencent/tinker/android/dex/j$c;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tinker/android/dex/j;->l:I

    iput-object v1, p0, Lcom/tencent/tinker/android/dex/j;->m:[B

    invoke-direct {p0, p1}, Lcom/tencent/tinker/android/dex/j;->j(Ljava/io/InputStream;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/tinker/android/dex/j;)Lcom/tencent/tinker/android/dex/v;
    .locals 0

    iget-object p0, p0, Lcom/tencent/tinker/android/dex/j;->a:Lcom/tencent/tinker/android/dex/v;

    return-object p0
.end method

.method static synthetic b(II)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/tinker/android/dex/j;->d(II)V

    return-void
.end method

.method static synthetic c(Lcom/tencent/tinker/android/dex/j;)Lcom/tencent/tinker/android/dex/j$i;
    .locals 0

    iget-object p0, p0, Lcom/tencent/tinker/android/dex/j;->b:Lcom/tencent/tinker/android/dex/j$i;

    return-object p0
.end method

.method private static d(II)V
    .locals 3

    if-ltz p0, :cond_0

    if-ge p0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", length="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private j(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/tinker/android/dex/j;->k(Ljava/io/InputStream;I)V

    return-void
.end method

.method private k(Ljava/io/InputStream;I)V
    .locals 0

    invoke-static {p1, p2}, Lgf/d;->b(Ljava/io/InputStream;I)[B

    move-result-object p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/tinker/android/dex/j;->k:Ljava/nio/ByteBuffer;

    sget-object p2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lcom/tencent/tinker/android/dex/j;->a:Lcom/tencent/tinker/android/dex/v;

    invoke-virtual {p1, p0}, Lcom/tencent/tinker/android/dex/v;->c(Lcom/tencent/tinker/android/dex/j;)V

    return-void
.end method


# virtual methods
.method public e()I
    .locals 6

    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    const/16 v1, 0x2000

    new-array v2, v1, [B

    iget-object v3, p0, Lcom/tencent/tinker/android/dex/j;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/Buffer;->capacity()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    :goto_0
    invoke-virtual {v3}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2, v5, v4}, Ljava/util/zip/Adler32;->update([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public f(Z)[B
    .locals 5

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/j;->m:[B

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string p1, "SHA-1"

    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0x2000

    new-array v1, v0, [B

    iget-object v2, p0, Lcom/tencent/tinker/android/dex/j;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    :goto_0
    invoke-virtual {v2}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v4, v3}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/tinker/android/dex/j;->m:[B

    return-object p1

    :catch_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public g(I)I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/j;->a:Lcom/tencent/tinker/android/dex/v;

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/v;->c:Lcom/tencent/tinker/android/dex/v$a;

    iget v0, v0, Lcom/tencent/tinker/android/dex/v$a;->c:I

    invoke-static {p1, v0}, Lcom/tencent/tinker/android/dex/j;->d(II)V

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/j;->a:Lcom/tencent/tinker/android/dex/v;

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/v;->c:Lcom/tencent/tinker/android/dex/v$a;

    iget v0, v0, Lcom/tencent/tinker/android/dex/v$a;->d:I

    mul-int/lit8 p1, p1, 0x4

    add-int/2addr v0, p1

    iget-object p1, p0, Lcom/tencent/tinker/android/dex/j;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    return p1
.end method

.method public h()Lcom/tencent/tinker/android/dex/v;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/j;->a:Lcom/tencent/tinker/android/dex/v;

    return-object v0
.end method

.method public i(Lcom/tencent/tinker/android/dex/g;)[S
    .locals 4

    iget p1, p1, Lcom/tencent/tinker/android/dex/g;->e:I

    if-nez p1, :cond_0

    sget-object p1, Lcom/tencent/tinker/android/dex/j;->n:[S

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/j;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    if-lez v0, :cond_2

    add-int/lit8 p1, p1, 0x4

    new-array v1, v0, [S

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/tencent/tinker/android/dex/j;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v3

    aput-short v3, v1, v2

    add-int/lit8 p1, p1, 0x2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected interfaces list size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public l(I)Lcom/tencent/tinker/android/dex/j$h;
    .locals 3

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/j;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/j;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lcom/tencent/tinker/android/dex/j;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    new-instance p1, Lcom/tencent/tinker/android/dex/j$h;

    const-string v1, "temp-section"

    const/4 v2, 0x0

    invoke-direct {p1, p0, v1, v0, v2}, Lcom/tencent/tinker/android/dex/j$h;-><init>(Lcom/tencent/tinker/android/dex/j;Ljava/lang/String;Ljava/nio/ByteBuffer;Lcom/tencent/tinker/android/dex/j$a;)V

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " length="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/tencent/tinker/android/dex/j;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public m(Lcom/tencent/tinker/android/dex/v$a;)Lcom/tencent/tinker/android/dex/j$h;
    .locals 3

    iget v0, p1, Lcom/tencent/tinker/android/dex/v$a;->d:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/tinker/android/dex/j;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/tencent/tinker/android/dex/j;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    iget p1, p1, Lcom/tencent/tinker/android/dex/v$a;->e:I

    add-int/2addr v0, p1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    new-instance p1, Lcom/tencent/tinker/android/dex/j$h;

    const-string v0, "section"

    const/4 v2, 0x0

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/tencent/tinker/android/dex/j$h;-><init>(Lcom/tencent/tinker/android/dex/j;Ljava/lang/String;Ljava/nio/ByteBuffer;Lcom/tencent/tinker/android/dex/j$a;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " length="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/j;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public n()V
    .locals 2

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/tencent/tinker/android/dex/j;->l(I)Lcom/tencent/tinker/android/dex/j$h;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/j;->f(Z)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lff/a;->M([B)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/tencent/tinker/android/dex/j;->l(I)Lcom/tencent/tinker/android/dex/j$h;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/j;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lff/a;->c0(I)V

    return-void
.end method

.method public o(Ljava/io/OutputStream;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/j;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void
.end method
