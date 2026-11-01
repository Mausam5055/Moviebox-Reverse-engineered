.class public Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj/Sj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;


# instance fields
.field private Dq:Ljava/lang/String;

.field private EjP:B

.field private HiB:J

.field private Jcg:J

.field protected Sj:Lorg/json/JSONObject;

.field private TEQ:B

.field private TKC:B

.field private Ym:Ljava/lang/String;

.field private aa:I

.field private sP:Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj/sP;

.field private uA:Ljava/lang/String;

.field private vS:J


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj/sP;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj/Sj;->uA:Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj/Sj;->sP:Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj/sP;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj/Sj;->uA:Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj/Sj;->Sj:Lorg/json/JSONObject;

    return-void
.end method

.method public static TKC(Ljava/lang/String;)Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "type"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    const-string v1, "priority"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj/Sj;

    invoke-direct {v2}, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj/Sj;-><init>()V

    int-to-byte p0, p0

    invoke-interface {v2, p0}, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;->Sj(B)V

    int-to-byte p0, v1

    invoke-interface {v2, p0}, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;->sP(B)V

    const-string p0, "event"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-interface {v2, p0}, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;->Sj(Lorg/json/JSONObject;)V

    const-string p0, "localId"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2, p0}, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;->Sj(Ljava/lang/String;)V

    const-string p0, "genTime"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2, p0}, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;->sP(Ljava/lang/String;)V

    const-string p0, "channel"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v2, p0}, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;->Sj(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public Dq()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj/Sj;->HiB:J

    return-wide v0
.end method

.method public EjP()B
    .locals 1

    iget-byte v0, p0, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj/Sj;->TKC:B

    return v0
.end method

.method public HiB()B
    .locals 1

    iget-byte v0, p0, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj/Sj;->EjP:B

    return v0
.end method

.method public declared-synchronized Jcg()Lorg/json/JSONObject;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj/Sj;->Sj:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj/Sj;->sP:Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj/sP;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj/Sj;->Ym()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj/sP;->Sj(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj/Sj;->Sj:Lorg/json/JSONObject;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj/Sj;->Sj:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public Sj()Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj/sP;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj/Sj;->sP:Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj/sP;

    return-object v0
.end method

.method public Sj(B)V
    .locals 0

    iput-byte p1, p0, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj/Sj;->TKC:B

    return-void
.end method

.method public Sj(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj/Sj;->aa:I

    return-void
.end method

.method public Sj(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj/Sj;->HiB:J

    return-void
.end method

.method public Sj(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj/Sj;->uA:Ljava/lang/String;

    return-void
.end method

.method public Sj(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj/Sj;->Sj:Lorg/json/JSONObject;

    return-void
.end method

.method public TEQ()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj/Sj;->aa:I

    return v0
.end method

.method public TKC()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj/Sj;->uA:Ljava/lang/String;

    return-object v0
.end method

.method public TKC(B)V
    .locals 0

    iput-byte p1, p0, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj/Sj;->TEQ:B

    return-void
.end method

.method public TKC(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj/Sj;->Jcg:J

    return-void
.end method

.method public Ym()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj/Sj;->Ym:Ljava/lang/String;

    return-object v0
.end method

.method public aa()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj/Sj;->Dq:Ljava/lang/String;

    return-object v0
.end method

.method public sP()B
    .locals 1

    iget-byte v0, p0, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj/Sj;->TEQ:B

    return v0
.end method

.method public sP(B)V
    .locals 0

    iput-byte p1, p0, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj/Sj;->EjP:B

    return-void
.end method

.method public sP(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj/Sj;->vS:J

    return-void
.end method

.method public sP(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj/Sj;->Dq:Ljava/lang/String;

    return-void
.end method

.method public uA()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj/Sj;->vS:J

    return-wide v0
.end method

.method public vS()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj/Sj;->uA:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "localId"

    iget-object v2, p0, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj/Sj;->uA:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "event"

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj/Sj;->Jcg()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "genTime"

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj/Sj;->aa()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "priority"

    iget-byte v2, p0, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj/Sj;->EjP:B

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "type"

    iget-byte v2, p0, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj/Sj;->TKC:B

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "channel"

    iget v2, p0, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj/Sj;->aa:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
