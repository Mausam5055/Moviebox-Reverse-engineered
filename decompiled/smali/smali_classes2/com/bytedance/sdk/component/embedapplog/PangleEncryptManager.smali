.class public Lcom/bytedance/sdk/component/embedapplog/PangleEncryptManager;
.super Ljava/lang/Object;


# static fields
.field public static final CYPHER_VERSION_V4:I = 0x4

.field public static final KEY_CYPHER:Ljava/lang/String; = "cypher"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decryptType4(Ljava/lang/String;)Landroid/util/Pair;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptUtilsType4;->decrypt(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static decryptV3([BI)[B
    .locals 0

    if-eqz p0, :cond_1

    array-length p1, p0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    array-length p1, p0

    invoke-static {p0, p1}, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptUtils;->decrypt([BI)[B

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static encryptType4(Lorg/json/JSONObject;Lcom/bytedance/sdk/component/embedapplog/IDefaultEncrypt;)Lorg/json/JSONObject;
    .locals 0

    invoke-static {p0, p1}, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptUtilsType4;->encrypt(Lorg/json/JSONObject;Lcom/bytedance/sdk/component/embedapplog/IDefaultEncrypt;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static encryptType4WithNoWrapBase64(Lorg/json/JSONObject;Lcom/bytedance/sdk/component/embedapplog/IDefaultEncrypt;)Lorg/json/JSONObject;
    .locals 0

    invoke-static {p0, p1}, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptUtilsType4;->encryptType4WithNoWrapBase64(Lorg/json/JSONObject;Lcom/bytedance/sdk/component/embedapplog/IDefaultEncrypt;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static encryptType4WithoutBase64([B)Landroid/util/Pair;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptUtilsType4;->encryptWithoutBase64([B)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static encryptV3([B)[B
    .locals 1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    array-length v0, p0

    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptUtils;->encrypt([BI)[B

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
