.class public abstract Lbw/j;
.super Ljava/lang/Object;


# static fields
.field public static final a:[B

.field public static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lkotlin/text/Charsets;->b:Ljava/nio/charset/Charset;

    const-string v1, "#PART#"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v1, "this as java.lang.String).getBytes(charset)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lbw/j;->a:[B

    const-string v0, "rsa_public_key.pem"

    sput-object v0, Lbw/j;->b:Ljava/lang/String;

    return-void
.end method

.method public static a([B[B)[B
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "data"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "publicKey"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v4, v0

    const-string v5, "doFinal(...)"

    const-string v6, "RSA/ECB/PKCS1Padding"

    const-string v7, "RSA"

    const/4 v8, 0x1

    const/16 v9, 0xf5

    if-gt v4, v9, :cond_0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-static {v7}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v1

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    invoke-virtual {v2, v8, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v2, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-array v11, v9, [B

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_0
    if-ge v13, v4, :cond_6

    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "null cannot be cast to non-null type kotlin.ByteArray"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v12, v11

    check-cast v12, [B

    aget-byte v16, v0, v13

    aput-byte v16, v12, v14

    add-int/2addr v14, v8

    if-eq v14, v9, :cond_2

    add-int/lit8 v12, v4, -0x1

    if-ne v13, v12, :cond_1

    goto :goto_1

    :cond_1
    move/from16 v18, v9

    move v9, v8

    move-object v8, v11

    move/from16 v11, v18

    goto :goto_5

    :cond_2
    :goto_1
    add-int/lit8 v15, v15, 0x1

    if-eq v15, v8, :cond_3

    sget-object v12, Lbw/j;->a:[B

    array-length v14, v12

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v14, :cond_3

    aget-byte v17, v12, v9

    invoke-static/range {v17 .. v17}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    const/4 v8, 0x1

    goto :goto_2

    :cond_3
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v8, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-static {v7}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v8

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v9

    const/4 v12, 0x1

    invoke-virtual {v9, v12, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v9, v11}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v8

    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v9, v8

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v9, :cond_4

    aget-byte v12, v8, v11

    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v8, v4, -0x1

    if-ne v13, v8, :cond_5

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/16 v11, 0xf5

    :goto_4
    const/4 v14, 0x0

    goto :goto_5

    :cond_5
    sub-int v8, v4, v13

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    const/16 v11, 0xf5

    invoke-static {v11, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    new-array v8, v8, [B

    goto :goto_4

    :goto_5
    add-int/lit8 v13, v13, 0x1

    move/from16 v18, v11

    move-object v11, v8

    move v8, v9

    move/from16 v9, v18

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v12, 0x0

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    add-int/lit8 v3, v12, 0x1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v0, v12

    move v12, v3

    goto :goto_6

    :cond_7
    return-object v0
.end method
