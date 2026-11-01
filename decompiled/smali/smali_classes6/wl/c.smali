.class public Lwl/c;
.super Ljava/lang/Object;

# interfaces
.implements Lwl/e;


# instance fields
.field private final b:Ljava/lang/String;

.field private c:Ljava/net/URL;

.field private volatile d:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "@#&=*+-_.,:!?()/~\'%"

    invoke-static {p1, v0}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwl/c;->b:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "url must be can not null or empty"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Ljava/security/MessageDigest;)V
    .locals 2

    iget-object v0, p0, Lwl/c;->d:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lwl/c;->b:Ljava/lang/String;

    sget-object v1, Lwl/e;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Lwl/c;->d:[B

    :cond_0
    iget-object v0, p0, Lwl/c;->d:[B

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method

.method public b()Ljava/net/URL;
    .locals 2

    iget-object v0, p0, Lwl/c;->c:Ljava/net/URL;

    if-nez v0, :cond_0

    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lwl/c;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lwl/c;->c:Ljava/net/URL;

    :cond_0
    iget-object v0, p0, Lwl/c;->c:Ljava/net/URL;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lwl/c;->b:Ljava/lang/String;

    return-object v0
.end method
