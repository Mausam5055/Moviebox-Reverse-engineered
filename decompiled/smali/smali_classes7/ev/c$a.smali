.class Lev/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/transfer/androidasync/w$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lev/c;->F(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/ByteBufferList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:I

.field b:Z

.field final synthetic c:Lcom/transsion/transfer/androidasync/p;

.field final synthetic d:Lcom/transsion/transfer/androidasync/w;

.field final synthetic e:Lev/c;


# direct methods
.method constructor <init>(Lev/c;Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/w;)V
    .locals 0

    iput-object p1, p0, Lev/c$a;->e:Lev/c;

    iput-object p2, p0, Lev/c$a;->c:Lcom/transsion/transfer/androidasync/p;

    iput-object p3, p0, Lev/c$a;->d:Lcom/transsion/transfer/androidasync/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bridge synthetic b(Lev/c$a;)V
    .locals 0

    invoke-direct {p0}, Lev/c$a;->d()V

    return-void
.end method

.method static bridge synthetic c(Lev/c$a;)V
    .locals 0

    invoke-direct {p0}, Lev/c$a;->e()V

    return-void
.end method

.method private d()V
    .locals 3

    iget-boolean v0, p0, Lev/c$a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lev/c$a;->d:Lcom/transsion/transfer/androidasync/w;

    new-instance v1, Lev/c$a$c;

    invoke-direct {v1, p0}, Lev/c$a$c;-><init>(Lev/c$a;)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/transsion/transfer/androidasync/w;->b(ILcom/transsion/transfer/androidasync/w$j;)Lcom/transsion/transfer/androidasync/w;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lev/c$a;->e:Lev/c;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lev/c;->i:Z

    iget-object v1, p0, Lev/c$a;->c:Lcom/transsion/transfer/androidasync/p;

    invoke-virtual {v0, v1}, Lcom/transsion/transfer/androidasync/t;->N(Lcom/transsion/transfer/androidasync/p;)V

    :goto_0
    return-void
.end method

.method private e()V
    .locals 5

    new-instance v0, Lcom/transsion/transfer/androidasync/w;

    iget-object v1, p0, Lev/c$a;->c:Lcom/transsion/transfer/androidasync/p;

    invoke-direct {v0, v1}, Lcom/transsion/transfer/androidasync/w;-><init>(Lcom/transsion/transfer/androidasync/p;)V

    new-instance v1, Lev/c$a$b;

    invoke-direct {v1, p0}, Lev/c$a$b;-><init>(Lev/c$a;)V

    iget v2, p0, Lev/c$a;->a:I

    and-int/lit8 v3, v2, 0x8

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v0, v4, v1}, Lcom/transsion/transfer/androidasync/w;->c(BLbv/d;)Lcom/transsion/transfer/androidasync/w;

    return-void

    :cond_0
    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_1

    invoke-virtual {v0, v4, v1}, Lcom/transsion/transfer/androidasync/w;->c(BLbv/d;)Lcom/transsion/transfer/androidasync/w;

    return-void

    :cond_1
    invoke-direct {p0}, Lev/c$a;->d()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lev/c$a;->f([B)V

    return-void
.end method

.method public f([B)V
    .locals 5

    const/4 v0, 0x1

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v2, 0x0

    invoke-static {p1, v2, v1}, Lev/c;->O([BILjava/nio/ByteOrder;)S

    move-result v1

    const/16 v3, -0x74e1

    if-eq v1, v3, :cond_0

    iget-object p1, p0, Lev/c$a;->e:Lev/c;

    new-instance v3, Ljava/io/IOException;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v1, v0, v2

    const-string v1, "unknown format (magic number %x)"

    invoke-static {v4, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lev/d;->M(Ljava/lang/Exception;)V

    iget-object p1, p0, Lev/c$a;->c:Lcom/transsion/transfer/androidasync/p;

    new-instance v0, Lbv/d$a;

    invoke-direct {v0}, Lbv/d$a;-><init>()V

    invoke-interface {p1, v0}, Lcom/transsion/transfer/androidasync/p;->t(Lbv/d;)V

    return-void

    :cond_0
    const/4 v1, 0x3

    aget-byte v1, p1, v1

    iput v1, p0, Lev/c$a;->a:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lev/c$a;->b:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lev/c$a;->e:Lev/c;

    iget-object v0, v0, Lev/c;->j:Ljava/util/zip/CRC32;

    array-length v1, p1

    invoke-virtual {v0, p1, v2, v1}, Ljava/util/zip/CRC32;->update([BII)V

    :cond_2
    iget p1, p0, Lev/c$a;->a:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_3

    iget-object p1, p0, Lev/c$a;->d:Lcom/transsion/transfer/androidasync/w;

    new-instance v0, Lev/c$a$a;

    invoke-direct {v0, p0}, Lev/c$a$a;-><init>(Lev/c$a;)V

    invoke-virtual {p1, v3, v0}, Lcom/transsion/transfer/androidasync/w;->b(ILcom/transsion/transfer/androidasync/w$j;)Lcom/transsion/transfer/androidasync/w;

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lev/c$a;->e()V

    :goto_1
    return-void
.end method
