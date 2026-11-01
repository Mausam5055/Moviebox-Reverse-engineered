.class Lcom/google/android/exoplayer2/upstream/cache/k$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/cache/k$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/cache/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Z

.field private final b:Ljavax/crypto/Cipher;

.field private final c:Ljavax/crypto/spec/SecretKeySpec;

.field private final d:Ljava/security/SecureRandom;

.field private final e:Lcom/google/android/exoplayer2/util/b;

.field private f:Z

.field private g:Lcom/google/android/exoplayer2/upstream/cache/r;


# direct methods
.method public constructor <init>(Ljava/io/File;[BZ)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    array-length v3, p2

    const/16 v4, 0x10

    if-ne v3, v4, :cond_2

    move v0, v1

    :cond_2
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    :try_start_0
    invoke-static {}, Lcom/google/android/exoplayer2/upstream/cache/k;->a()Ljavax/crypto/Cipher;

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v1, p2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    :goto_2
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_3
    xor-int/lit8 p2, p3, 0x1

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    move-object v0, v2

    move-object v1, v0

    :goto_3
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/upstream/cache/k$b;->a:Z

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/k$b;->b:Ljavax/crypto/Cipher;

    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/k$b;->c:Ljavax/crypto/spec/SecretKeySpec;

    if-eqz p3, :cond_4

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    :cond_4
    iput-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/k$b;->d:Ljava/security/SecureRandom;

    new-instance p2, Lcom/google/android/exoplayer2/util/b;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/util/b;-><init>(Ljava/io/File;)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/cache/k$b;->e:Lcom/google/android/exoplayer2/util/b;

    return-void
.end method

.method private i(Lcom/google/android/exoplayer2/upstream/cache/j;I)I
    .locals 3

    iget v0, p1, Lcom/google/android/exoplayer2/upstream/cache/j;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/cache/j;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x2

    if-ge p2, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/cache/j;->d()Lcom/google/android/exoplayer2/upstream/cache/o;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/cache/l;->a(Lcom/google/android/exoplayer2/upstream/cache/m;)J

    move-result-wide p1

    mul-int/lit8 v0, v0, 0x1f

    const/16 v1, 0x20

    ushr-long v1, p1, v1

    xor-long/2addr p1, v1

    long-to-int p1, p1

    :goto_0
    add-int/2addr v0, p1

    goto :goto_1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/cache/j;->d()Lcom/google/android/exoplayer2/upstream/cache/o;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/cache/o;->hashCode()I

    move-result p1

    goto :goto_0

    :goto_1
    return v0
.end method

.method private j(ILjava/io/DataInputStream;)Lcom/google/android/exoplayer2/upstream/cache/j;
    .locals 3

    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-virtual {p2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    if-ge p1, v2, :cond_0

    invoke-virtual {p2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide p1

    new-instance v2, Lcom/google/android/exoplayer2/upstream/cache/n;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/upstream/cache/n;-><init>()V

    invoke-static {v2, p1, p2}, Lcom/google/android/exoplayer2/upstream/cache/n;->g(Lcom/google/android/exoplayer2/upstream/cache/n;J)Lcom/google/android/exoplayer2/upstream/cache/n;

    sget-object p1, Lcom/google/android/exoplayer2/upstream/cache/o;->c:Lcom/google/android/exoplayer2/upstream/cache/o;

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/upstream/cache/o;->c(Lcom/google/android/exoplayer2/upstream/cache/n;)Lcom/google/android/exoplayer2/upstream/cache/o;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/google/android/exoplayer2/upstream/cache/k;->b(Ljava/io/DataInputStream;)Lcom/google/android/exoplayer2/upstream/cache/o;

    move-result-object p1

    :goto_0
    new-instance p2, Lcom/google/android/exoplayer2/upstream/cache/j;

    invoke-direct {p2, v0, v1, p1}, Lcom/google/android/exoplayer2/upstream/cache/j;-><init>(ILjava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/o;)V

    return-object p2
.end method

.method private k(Ljava/util/HashMap;Landroid/util/SparseArray;)Z
    .locals 10

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/k$b;->e:Lcom/google/android/exoplayer2/util/b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/b;->c()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/BufferedInputStream;

    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/cache/k$b;->e:Lcom/google/android/exoplayer2/util/b;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/b;->d()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    if-ltz v2, :cond_9

    const/4 v5, 0x2

    if-le v2, v5, :cond_1

    goto/16 :goto_5

    :cond_1
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    and-int/2addr v6, v1

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/google/android/exoplayer2/upstream/cache/k$b;->b:Ljavax/crypto/Cipher;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v6, :cond_2

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/p0;->n(Ljava/io/Closeable;)V

    return v0

    :cond_2
    const/16 v6, 0x10

    :try_start_2
    new-array v6, v6, [B

    invoke-virtual {v4, v6}, Ljava/io/DataInputStream;->readFully([B)V

    new-instance v7, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v7, v6}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v6, p0, Lcom/google/android/exoplayer2/upstream/cache/k$b;->b:Ljavax/crypto/Cipher;

    iget-object v8, p0, Lcom/google/android/exoplayer2/upstream/cache/k$b;->c:Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {v8}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/Key;

    invoke-virtual {v6, v5, v8, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_3
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    new-instance v5, Ljava/io/DataInputStream;

    new-instance v6, Ljavax/crypto/CipherInputStream;

    iget-object v7, p0, Lcom/google/android/exoplayer2/upstream/cache/k$b;->b:Ljavax/crypto/Cipher;

    invoke-direct {v6, v3, v7}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    invoke-direct {v5, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v4, v5

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v2, v4

    goto :goto_6

    :catch_0
    move-object v2, v4

    goto :goto_7

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    :goto_0
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_3
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/upstream/cache/k$b;->a:Z

    if-eqz v3, :cond_4

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/cache/k$b;->f:Z

    :cond_4
    :goto_1
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    move v5, v0

    move v6, v5

    :goto_2
    if-ge v5, v3, :cond_5

    invoke-direct {p0, v2, v4}, Lcom/google/android/exoplayer2/upstream/cache/k$b;->j(ILjava/io/DataInputStream;)Lcom/google/android/exoplayer2/upstream/cache/j;

    move-result-object v7

    iget-object v8, v7, Lcom/google/android/exoplayer2/upstream/cache/j;->b:Ljava/lang/String;

    invoke-virtual {p1, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v8, v7, Lcom/google/android/exoplayer2/upstream/cache/j;->a:I

    iget-object v9, v7, Lcom/google/android/exoplayer2/upstream/cache/j;->b:Ljava/lang/String;

    invoke-virtual {p2, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-direct {p0, v7, v2}, Lcom/google/android/exoplayer2/upstream/cache/k$b;->i(Lcom/google/android/exoplayer2/upstream/cache/j;I)I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result p2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v2, -0x1

    if-ne p2, v2, :cond_6

    move p2, v1

    goto :goto_3

    :cond_6
    move p2, v0

    :goto_3
    if-ne p1, v6, :cond_8

    if-nez p2, :cond_7

    goto :goto_4

    :cond_7
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/p0;->n(Ljava/io/Closeable;)V

    return v1

    :cond_8
    :goto_4
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/p0;->n(Ljava/io/Closeable;)V

    return v0

    :cond_9
    :goto_5
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/p0;->n(Ljava/io/Closeable;)V

    return v0

    :catchall_1
    move-exception p1

    :goto_6
    if-eqz v2, :cond_a

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/p0;->n(Ljava/io/Closeable;)V

    :cond_a
    throw p1

    :catch_3
    :goto_7
    if-eqz v2, :cond_b

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/p0;->n(Ljava/io/Closeable;)V

    :cond_b
    return v0
.end method

.method private l(Lcom/google/android/exoplayer2/upstream/cache/j;Ljava/io/DataOutputStream;)V
    .locals 1

    iget v0, p1, Lcom/google/android/exoplayer2/upstream/cache/j;->a:I

    invoke-virtual {p2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/cache/j;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/cache/j;->d()Lcom/google/android/exoplayer2/upstream/cache/o;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/upstream/cache/k;->c(Lcom/google/android/exoplayer2/upstream/cache/o;Ljava/io/DataOutputStream;)V

    return-void
.end method

.method private m(Ljava/util/HashMap;)V
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/k$b;->e:Lcom/google/android/exoplayer2/util/b;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/b;->f()Ljava/io/OutputStream;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/k$b;->g:Lcom/google/android/exoplayer2/upstream/cache/r;

    if-nez v2, :cond_0

    new-instance v2, Lcom/google/android/exoplayer2/upstream/cache/r;

    invoke-direct {v2, v1}, Lcom/google/android/exoplayer2/upstream/cache/r;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/k$b;->g:Lcom/google/android/exoplayer2/upstream/cache/r;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/upstream/cache/r;->b(Ljava/io/OutputStream;)V

    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/k$b;->g:Lcom/google/android/exoplayer2/upstream/cache/r;

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x2

    :try_start_1
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-boolean v4, p0, Lcom/google/android/exoplayer2/upstream/cache/k$b;->a:Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-boolean v4, p0, Lcom/google/android/exoplayer2/upstream/cache/k$b;->a:Z

    if-eqz v4, :cond_1

    const/16 v4, 0x10

    new-array v4, v4, [B

    iget-object v7, p0, Lcom/google/android/exoplayer2/upstream/cache/k$b;->d:Ljava/security/SecureRandom;

    invoke-static {v7}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/SecureRandom;

    invoke-virtual {v7, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write([B)V

    new-instance v7, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v7, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/cache/k$b;->b:Ljavax/crypto/Cipher;

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/crypto/Cipher;

    iget-object v8, p0, Lcom/google/android/exoplayer2/upstream/cache/k$b;->c:Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {v8}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/Key;

    invoke-virtual {v4, v6, v8, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_2
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    new-instance v4, Ljava/io/DataOutputStream;

    new-instance v6, Ljavax/crypto/CipherOutputStream;

    iget-object v7, p0, Lcom/google/android/exoplayer2/upstream/cache/k$b;->b:Ljavax/crypto/Cipher;

    invoke-direct {v6, v1, v7}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    invoke-direct {v4, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v2, v4

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v0, v2

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :goto_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    :goto_2
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/upstream/cache/j;

    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/upstream/cache/k$b;->l(Lcom/google/android/exoplayer2/upstream/cache/j;Ljava/io/DataOutputStream;)V

    invoke-direct {p0, v1, v3}, Lcom/google/android/exoplayer2/upstream/cache/k$b;->i(Lcom/google/android/exoplayer2/upstream/cache/j;I)I

    move-result v1

    add-int/2addr v5, v1

    goto :goto_3

    :cond_2
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/k$b;->e:Lcom/google/android/exoplayer2/util/b;

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/util/b;->b(Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/p0;->n(Ljava/io/Closeable;)V

    return-void

    :goto_4
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/p0;->n(Ljava/io/Closeable;)V

    throw p1
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/k$b;->e:Lcom/google/android/exoplayer2/util/b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/b;->c()Z

    move-result v0

    return v0
.end method

.method public b(Ljava/util/HashMap;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/k$b;->f:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/k$b;->d(Ljava/util/HashMap;)V

    return-void
.end method

.method public c(J)V
    .locals 0

    return-void
.end method

.method public d(Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/k$b;->m(Ljava/util/HashMap;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/upstream/cache/k$b;->f:Z

    return-void
.end method

.method public e(Ljava/util/HashMap;Landroid/util/SparseArray;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/k$b;->f:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/upstream/cache/k$b;->k(Ljava/util/HashMap;Landroid/util/SparseArray;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/k$b;->e:Lcom/google/android/exoplayer2/util/b;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/b;->a()V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/k$b;->e:Lcom/google/android/exoplayer2/util/b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/b;->a()V

    return-void
.end method

.method public g(Lcom/google/android/exoplayer2/upstream/cache/j;Z)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/upstream/cache/k$b;->f:Z

    return-void
.end method

.method public h(Lcom/google/android/exoplayer2/upstream/cache/j;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/upstream/cache/k$b;->f:Z

    return-void
.end method
