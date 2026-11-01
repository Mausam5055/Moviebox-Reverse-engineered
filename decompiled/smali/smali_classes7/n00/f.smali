.class public abstract Ln00/f;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\\d+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    const/4 v0, 0x0

    sput-object v0, Ln00/f;->a:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;I)Ln00/i;
    .locals 12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Post url : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nBody : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/sdk/oneid/b;->i(Ljava/lang/Object;)V

    new-instance v0, Ln00/i;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ln00/i;-><init>(ILjava/lang/Object;)V

    :try_start_0
    invoke-static {}, Ln00/c;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ln00/d;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ln00/d;-><init>([B)V

    invoke-virtual {v4, p1}, Ln00/d;->a(Ljava/lang/String;)[B

    move-result-object p1

    new-instance v4, Lnq/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v5, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAoj6/eaT17WcI4r6GJxLVIDfQkYLRLGWyObKO1kj1FS+7NvAIIhNxjNpplefKGWSLOyuKdkLlH53q+HQeyo3ngDf3IPp8evvBfWaoCk1H33q35hm+W+XKsL5bMbzZhJDVEqYpebXRqL6Cz+79xyWPEHbp1l2G5FKQ76/tKAqZ+7LNeEBhgoX1duXcAXrSR7dOP6loh2DUwagVta/o2poAVzxKQKDJeJs0+VV741yJSjjVMGWAl0enK4MA0lvtmin6LVQMgNuHL5UXmdrbsEcbiVvE7z9Ol6MGDRzxyUBufklb3Orr9tbLNydKJ0mrdHZMcg8yGpuJMMOOs+CBiqA+MQIDAQAB"

    :try_start_1
    invoke-direct {v4, v5}, Lnq/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lnq/a;->d(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    invoke-static {v5}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/URLConnection;

    check-cast v5, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    instance-of v6, v5, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v6, :cond_1

    sget-object v6, Ln00/f;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v6, :cond_0

    invoke-static {}, Ln00/k;->a()Ljavax/net/ssl/SSLContext;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v6

    sput-object v6, Ln00/f;->a:Ljavax/net/ssl/SSLSocketFactory;

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v2, v5

    goto/16 :goto_b

    :catch_0
    move-exception p0

    goto/16 :goto_7

    :cond_0
    :goto_0
    sget-object v6, Ln00/f;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v6, :cond_1

    move-object v7, v5

    check-cast v7, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v7, v6}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    move-object v6, v5

    check-cast v6, Ljavax/net/ssl/HttpsURLConnection;

    sget-object v7, Ln00/k;->a:Ln00/k$b;

    invoke-virtual {v6, v7}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    const-string v6, "application/json"

    const-string v7, "*/*"

    const-string v8, "POST"

    if-lez p2, :cond_2

    :try_start_3
    new-instance v9, Lcom/transsion/infra/gateway/core/bean/GatewaySignKey;

    invoke-static {}, Ln00/l;->d()Ln00/l;

    move-result-object v10

    invoke-virtual {v10}, Ln00/l;->b()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/transsion/infra/gateway/core/sercurity/SignAlgorithm;->HmacMD5:Lcom/transsion/infra/gateway/core/sercurity/SignAlgorithm;

    invoke-direct {v9, v10, v4, v11}, Lcom/transsion/infra/gateway/core/bean/GatewaySignKey;-><init>(Ljava/lang/String;ILcom/transsion/infra/gateway/core/sercurity/SignAlgorithm;)V

    new-instance v4, Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;

    invoke-direct {v4}, Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;-><init>()V

    invoke-virtual {v4, v8}, Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;->method(Ljava/lang/String;)Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;->accept(Ljava/lang/String;)Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;->contentType(Ljava/lang/String;)Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;->url(Ljava/lang/String;)Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;

    move-result-object p0

    invoke-virtual {p0, v9}, Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;->key(Lcom/transsion/infra/gateway/core/bean/GatewaySignKey;)Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;->body(Ljava/lang/String;)Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;->build()Lcom/transsion/infra/gateway/core/bean/RequestBean;

    move-result-object p0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Gateway requestBean : "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/infra/gateway/core/bean/RequestBean;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/transsion/sdk/oneid/b;->i(Ljava/lang/Object;)V

    invoke-static {p0}, Ldm/a;->a(Lcom/transsion/infra/gateway/core/bean/RequestBean;)Ljava/lang/String;

    move-result-object p0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Gateway sign : "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/transsion/sdk/oneid/b;->i(Ljava/lang/Object;)V

    const-string v4, "x-tr-signature"

    invoke-virtual {v5, v4, p0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v9, v2

    :goto_1
    const-string p0, "accept"

    invoke-virtual {v5, p0, v7}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "Content-Type"

    invoke-virtual {v5, p0, v6}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string p0, "Content-Length"

    :try_start_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, p0, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string p0, "appid"

    :try_start_5
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p0, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 p0, 0x4e20

    invoke-virtual {v5, p0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const/16 p0, 0x7530

    invoke-virtual {v5, p0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/4 p0, 0x1

    invoke-virtual {v5, p0}, Ljava/net/URLConnection;->setDoInput(Z)V

    invoke-virtual {v5, p0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    new-instance p2, Ljava/io/PrintWriter;

    invoke-virtual {v5}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {p2, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->close()V

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "url:"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " code:"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/transsion/sdk/oneid/b;->i(Ljava/lang/Object;)V

    const/16 p2, 0xc8

    if-ne p1, p2, :cond_6

    invoke-virtual {v5}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    new-instance p2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "{}"

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v1, Ln00/i;

    invoke-direct {v1, p0, v2}, Ln00/i;-><init>(ILjava/lang/Object;)V

    goto :goto_3

    :cond_4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    new-instance p0, Ln00/i;

    invoke-direct {p0, v1, v2}, Ln00/i;-><init>(ILjava/lang/Object;)V

    move-object v1, p0

    :goto_3
    move-object v0, v1

    goto :goto_4

    :cond_5
    new-instance p0, Ln00/i;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v3}, Ln00/i;-><init>(ILjava/lang/Object;)V

    move-object v0, p0

    :goto_4
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_a

    :cond_6
    const-string p0, "429&503&504"

    :try_start_6
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p0

    new-instance p1, Ljava/io/BufferedReader;

    new-instance p2, Ljava/io/InputStreamReader;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p2, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p1, p2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_5
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_7
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ln00/i;

    const/4 p2, 0x4

    invoke-direct {p1, p2, p0}, Ln00/i;-><init>(ILjava/lang/Object;)V

    move-object v0, p1

    goto/16 :goto_a

    :cond_8
    const/16 p0, 0x190

    if-lt p1, p0, :cond_c

    if-eqz v9, :cond_c

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "result from server : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/sdk/oneid/b;->i(Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p0

    new-instance p2, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_6
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v9}, Ldm/a;->c(ILjava/lang/String;Lcom/transsion/infra/gateway/core/bean/GatewaySignKey;)Z

    move-result p1

    if-eqz p1, :cond_a

    new-instance p1, Ln00/i;

    const/4 v2, 0x3

    invoke-direct {p1, v2, v1}, Ln00/i;-><init>(ILjava/lang/Object;)V

    move-object v0, p1

    :cond_a
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_a

    :goto_7
    move-object v2, v5

    goto :goto_8

    :catchall_1
    move-exception p0

    goto :goto_b

    :catch_1
    move-exception p0

    :goto_8
    :try_start_7
    instance-of p1, p0, Ljava/net/UnknownHostException;

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/sdk/oneid/b;->m(Ljava/lang/Object;)V

    goto :goto_9

    :cond_b
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/sdk/oneid/b;->m(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_9
    if-eqz v2, :cond_d

    move-object v5, v2

    :cond_c
    :goto_a
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_d
    return-object v0

    :goto_b
    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_e
    throw p0
.end method
