.class public Lcom/bytedance/sdk/openadsdk/Ym/Sj/Fmk;
.super Lcom/bytedance/sdk/component/Sj/HiB;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/component/Sj/HiB<",
        "Lorg/json/JSONObject;",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field private EjP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field private Sj:Lcom/bytedance/sdk/component/uA/vS;

.field private TKC:Lcom/bytedance/sdk/openadsdk/core/Yf;

.field private sP:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/uA/vS;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Yf;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/component/Sj/HiB;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Fmk;->Sj:Lcom/bytedance/sdk/component/uA/vS;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Fmk;->sP:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Fmk;->TKC:Lcom/bytedance/sdk/openadsdk/core/Yf;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Fmk;->EjP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/Ym/Sj/Fmk;)Lcom/bytedance/sdk/component/uA/vS;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Fmk;->Sj:Lcom/bytedance/sdk/component/uA/vS;

    return-object p0
.end method

.method public static Sj(Lcom/bytedance/sdk/component/Sj/dNu;Lcom/bytedance/sdk/component/uA/vS;Lcom/bytedance/sdk/openadsdk/core/Yf;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Fmk;

    const-string v1, "closeWebview"

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Fmk;-><init>(Lcom/bytedance/sdk/component/uA/vS;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Yf;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/Sj/dNu;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/Sj/HiB;)Lcom/bytedance/sdk/component/Sj/dNu;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Fmk;

    const-string v1, "makeVisible"

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Fmk;-><init>(Lcom/bytedance/sdk/component/uA/vS;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Yf;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/Sj/dNu;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/Sj/HiB;)Lcom/bytedance/sdk/component/Sj/dNu;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Fmk;

    const-string v1, "getCurrentVisibleState"

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Fmk;-><init>(Lcom/bytedance/sdk/component/uA/vS;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Yf;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/Sj/dNu;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/Sj/HiB;)Lcom/bytedance/sdk/component/Sj/dNu;

    return-void
.end method


# virtual methods
.method public bridge synthetic Sj(Ljava/lang/Object;Lcom/bytedance/sdk/component/Sj/vS;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Fmk;->Sj(Lorg/json/JSONObject;Lcom/bytedance/sdk/component/Sj/vS;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public Sj(Lorg/json/JSONObject;Lcom/bytedance/sdk/component/Sj/vS;)Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p1, 0x0

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Fmk;->sP:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v1, 0x1

    const-string v2, "success"

    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v4, "makeVisible"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_1
    const-string v4, "closeWebview"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v3, v1

    goto :goto_0

    :sswitch_2
    const-string v4, "getCurrentVisibleState"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v3, p1

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Fmk;->Sj:Lcom/bytedance/sdk/component/uA/vS;

    if-eqz v0, :cond_3

    invoke-virtual {p2, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    new-instance p1, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Fmk$2;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Fmk$2;-><init>(Lcom/bytedance/sdk/openadsdk/Ym/Sj/Fmk;)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p2, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_1

    :pswitch_1
    new-instance p1, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Fmk$1;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Fmk$1;-><init>(Lcom/bytedance/sdk/openadsdk/Ym/Sj/Fmk;)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj(Ljava/lang/Runnable;)V

    invoke-virtual {p2, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_1

    :pswitch_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Fmk;->EjP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Fmk;->Sj:Lcom/bytedance/sdk/component/uA/vS;

    const/16 v2, 0x14

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->DKj()I

    move-result p1

    invoke-static {v0, v2, p1}, Lcom/bytedance/sdk/openadsdk/core/LD;->Sj(Landroid/view/View;II)Z

    move-result p1

    xor-int/2addr p1, v1

    const-string v0, "visibleState"

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_4
    :goto_1
    return-object p2

    :sswitch_data_0
    .sparse-switch
        -0x5a6a23de -> :sswitch_2
        -0x731311f -> :sswitch_1
        0x68af9aa4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
