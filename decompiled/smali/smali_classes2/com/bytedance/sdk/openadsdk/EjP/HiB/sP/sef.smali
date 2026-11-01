.class public Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/sef;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/TKC;


# instance fields
.field private final EjP:I

.field private final HiB:Ljava/lang/String;

.field private Sj:J

.field private final TKC:I

.field private sP:J


# direct methods
.method public constructor <init>(Ly5/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ly5/a;->a()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/sef;->TKC:I

    invoke-virtual {p1}, Ly5/a;->d()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/sef;->EjP:I

    invoke-virtual {p1}, Ly5/a;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/sef;->HiB:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public Sj(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/sef;->Sj:J

    return-void
.end method

.method public Sj(Lorg/json/JSONObject;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "buffers_time"

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/sef;->Sj:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "total_duration"

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/sef;->sP:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "error_code"

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/sef;->TKC:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "extra_error_code"

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/sef;->EjP:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "error_message"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/sef;->HiB:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "PlayErrorModel"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sP(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/sef;->sP:J

    return-void
.end method
