.class Lcom/bytedance/sdk/openadsdk/core/Yf$TKC;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/Yf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TKC"
.end annotation


# instance fields
.field private final Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/sef;

.field private final sP:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/Dq/sef;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf$TKC;->Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/sef;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/Yf$TKC;->sP:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf$TKC;->Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/sef;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf$TKC;->sP:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/sef;Lorg/json/JSONObject;)V

    return-void
.end method
