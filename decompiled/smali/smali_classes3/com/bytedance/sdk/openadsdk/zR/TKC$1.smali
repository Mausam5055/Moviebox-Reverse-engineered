.class Lcom/bytedance/sdk/openadsdk/zR/TKC$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/zR/TKC;->sP()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/zR/TKC;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/zR/TKC;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/zR/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/zR/TKC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/zR/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/zR/TKC;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/zR/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/zR/TKC;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/zR/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/zR/TKC;I)I

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/zR/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/zR/TKC;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/zR/TKC;->sP(Lcom/bytedance/sdk/openadsdk/zR/TKC;)Lcom/bytedance/sdk/openadsdk/zR/Sj;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/zR/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/zR/TKC;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/zR/TKC;->sP(Lcom/bytedance/sdk/openadsdk/zR/TKC;)Lcom/bytedance/sdk/openadsdk/zR/Sj;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/zR/Sj;->Sj()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_0
    :goto_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/zR/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/zR/TKC;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/zR/TKC;->TKC(Lcom/bytedance/sdk/openadsdk/zR/TKC;)Lcom/bytedance/sdk/openadsdk/zR/EjP;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/zR/EjP;->HiB()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URLConnection;

    check-cast v0, Ljava/net/HttpURLConnection;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/zR/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/zR/TKC;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/zR/TKC;->TKC(Lcom/bytedance/sdk/openadsdk/zR/TKC;)Lcom/bytedance/sdk/openadsdk/zR/EjP;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/zR/EjP;->Jcg()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/zR/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/zR/TKC;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/zR/TKC;->TKC(Lcom/bytedance/sdk/openadsdk/zR/TKC;)Lcom/bytedance/sdk/openadsdk/zR/EjP;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/zR/EjP;->Jcg()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/zR/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/zR/TKC;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/zR/TKC;->TKC(Lcom/bytedance/sdk/openadsdk/zR/TKC;)Lcom/bytedance/sdk/openadsdk/zR/EjP;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/zR/EjP;->Jcg()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v1, "Content-Type"

    const-string v2, "application/json"

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/zR/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/zR/TKC;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/zR/TKC;->TKC(Lcom/bytedance/sdk/openadsdk/zR/TKC;)Lcom/bytedance/sdk/openadsdk/zR/EjP;

    move-result-object v2

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/zR/EjP;->vS()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_3

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :goto_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/zR/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/zR/TKC;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/zR/TKC;->TKC(Lcom/bytedance/sdk/openadsdk/zR/TKC;)Lcom/bytedance/sdk/openadsdk/zR/EjP;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/zR/EjP;->Sj(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/zR/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/zR/TKC;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/zR/TKC;->EjP(Lcom/bytedance/sdk/openadsdk/zR/TKC;)Lcom/bytedance/sdk/openadsdk/zR/sP;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/zR/sP;->Sj()V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/zR/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/zR/TKC;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/zR/TKC;->EjP(Lcom/bytedance/sdk/openadsdk/zR/TKC;)Lcom/bytedance/sdk/openadsdk/zR/sP;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/zR/sP;->Sj(Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/zR/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/zR/TKC;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/zR/TKC;->sP(Lcom/bytedance/sdk/openadsdk/zR/TKC;)Lcom/bytedance/sdk/openadsdk/zR/Sj;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/zR/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/zR/TKC;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/zR/TKC;->sP(Lcom/bytedance/sdk/openadsdk/zR/TKC;)Lcom/bytedance/sdk/openadsdk/zR/Sj;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/zR/Sj;->sP()V

    goto :goto_6

    :cond_3
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/zR/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/zR/TKC;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/zR/TKC;->sP(Lcom/bytedance/sdk/openadsdk/zR/TKC;)Lcom/bytedance/sdk/openadsdk/zR/Sj;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/zR/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/zR/TKC;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/zR/TKC;->sP(Lcom/bytedance/sdk/openadsdk/zR/TKC;)Lcom/bytedance/sdk/openadsdk/zR/Sj;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/bytedance/sdk/openadsdk/zR/Sj;->Sj(ILjava/lang/String;)V

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_4
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    const-string v1, "error "

    goto :goto_5

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    :goto_5
    const-string v2, "StrategyCenter"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/zR/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/zR/TKC;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/zR/TKC;->sP(Lcom/bytedance/sdk/openadsdk/zR/TKC;)Lcom/bytedance/sdk/openadsdk/zR/Sj;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/zR/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/zR/TKC;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/zR/TKC;->sP(Lcom/bytedance/sdk/openadsdk/zR/TKC;)Lcom/bytedance/sdk/openadsdk/zR/Sj;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/zR/Sj;->Sj(ILjava/lang/String;)V

    :cond_6
    :goto_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/zR/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/zR/TKC;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/zR/TKC;->EjP(Lcom/bytedance/sdk/openadsdk/zR/TKC;)Lcom/bytedance/sdk/openadsdk/zR/sP;

    move-result-object v0

    const-string v1, "local_last_update_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/zR/sP;->Sj(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/zR/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/zR/TKC;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/zR/TKC;->Sj()V

    return-void
.end method
