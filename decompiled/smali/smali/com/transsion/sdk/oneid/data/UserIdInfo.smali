.class public Lcom/transsion/sdk/oneid/data/UserIdInfo;
.super Lcom/transsion/sdk/oneid/data/OneBaseInfo;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public account_id:Ljava/lang/String;

.field public account_type:Ljava/lang/String;

.field public tripartite_id:Ljava/lang/String;

.field public tripartite_type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/sdk/oneid/data/OneBaseInfo;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/UserIdInfo;->account_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/UserIdInfo;->account_type:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/UserIdInfo;->tripartite_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/UserIdInfo;->tripartite_type:Ljava/lang/String;

    :try_start_0
    invoke-static {p1}, Ln00/b;->b(Landroid/content/Context;)Ln00/b;

    move-result-object p1

    const-string v0, "user_id"

    invoke-virtual {p1, v0}, Ln00/b;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "account_type"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/sdk/oneid/data/UserIdInfo;->account_type:Ljava/lang/String;

    const-string p1, "account_id"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/sdk/oneid/data/UserIdInfo;->account_id:Ljava/lang/String;

    const-string p1, "tripartite_type"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/sdk/oneid/data/UserIdInfo;->tripartite_type:Ljava/lang/String;

    const-string p1, "tripartite_id"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/sdk/oneid/data/UserIdInfo;->tripartite_id:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public setAccount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sdk/oneid/data/UserIdInfo;->account_type:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/sdk/oneid/data/UserIdInfo;->account_id:Ljava/lang/String;

    return-void
.end method

.method public setAccount_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sdk/oneid/data/UserIdInfo;->account_id:Ljava/lang/String;

    return-void
.end method

.method public setAccount_type(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sdk/oneid/data/UserIdInfo;->account_type:Ljava/lang/String;

    return-void
.end method

.method public setTripartite(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sdk/oneid/data/UserIdInfo;->tripartite_type:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/sdk/oneid/data/UserIdInfo;->tripartite_id:Ljava/lang/String;

    return-void
.end method

.method public setTripartite_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sdk/oneid/data/UserIdInfo;->tripartite_id:Ljava/lang/String;

    return-void
.end method

.method public setTripartite_type(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sdk/oneid/data/UserIdInfo;->tripartite_type:Ljava/lang/String;

    return-void
.end method
