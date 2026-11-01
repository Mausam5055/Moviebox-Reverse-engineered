.class public Lcom/bytedance/sdk/component/Dq/sP/Sj;
.super Ljava/lang/Object;


# instance fields
.field public EjP:I

.field public Sj:I

.field public TKC:I

.field public sP:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/bytedance/sdk/component/Dq/sP/Sj;->Sj:I

    iput p2, p0, Lcom/bytedance/sdk/component/Dq/sP/Sj;->sP:I

    iput p3, p0, Lcom/bytedance/sdk/component/Dq/sP/Sj;->TKC:I

    iput p4, p0, Lcom/bytedance/sdk/component/Dq/sP/Sj;->EjP:I

    return-void
.end method


# virtual methods
.method public Sj()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "sdk_thread_num"

    iget v2, p0, Lcom/bytedance/sdk/component/Dq/sP/Sj;->Sj:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "sdk_max_thread_num"

    iget v2, p0, Lcom/bytedance/sdk/component/Dq/sP/Sj;->sP:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "app_thread_num"

    iget v2, p0, Lcom/bytedance/sdk/component/Dq/sP/Sj;->TKC:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "app_max_thread_num"

    iget v2, p0, Lcom/bytedance/sdk/component/Dq/sP/Sj;->EjP:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-object v0
.end method
