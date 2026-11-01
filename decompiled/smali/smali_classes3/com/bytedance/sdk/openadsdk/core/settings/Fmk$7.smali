.class Lcom/bytedance/sdk/openadsdk/core/settings/Fmk$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->Sj(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Ljava/lang/String;

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk$7;->sP:Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk$7;->Sj:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk$7;->sP:Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->Sj(Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;)Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    move-result-object v0

    const-string v1, "dyn_draw_engine_url"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->Grp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk$7;->Sj:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/Sj/sP/HiB;->sP()Lcom/bytedance/sdk/component/adexpress/Sj/sP/HiB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/Sj/sP/HiB;->TKC()V

    return-void
.end method
