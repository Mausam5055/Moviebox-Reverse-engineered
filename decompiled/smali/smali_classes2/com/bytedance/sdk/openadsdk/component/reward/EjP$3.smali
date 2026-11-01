.class Lcom/bytedance/sdk/openadsdk/component/reward/EjP$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/Zq/sP;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/EjP;->Sj(ZLcom/bytedance/sdk/openadsdk/core/model/sU;JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic EjP:J

.field final synthetic HiB:Ljava/lang/String;

.field final synthetic Jcg:Lcom/bytedance/sdk/openadsdk/component/reward/EjP;

.field final synthetic Sj:Z

.field final synthetic TKC:J

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field final synthetic vS:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/EjP;ZLcom/bytedance/sdk/openadsdk/core/model/sU;JJLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/EjP$3;->Jcg:Lcom/bytedance/sdk/openadsdk/component/reward/EjP;

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/EjP$3;->Sj:Z

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/EjP$3;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iput-wide p4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/EjP$3;->TKC:J

    iput-wide p6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/EjP$3;->EjP:J

    iput-object p8, p0, Lcom/bytedance/sdk/openadsdk/component/reward/EjP$3;->HiB:Ljava/lang/String;

    iput-object p9, p0, Lcom/bytedance/sdk/openadsdk/component/reward/EjP$3;->vS:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLogStats()Lcom/bytedance/sdk/openadsdk/Zq/Sj/TKC;
    .locals 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/EjP$3;->Sj:Z

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/EjP$3;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/EjP$3;->TKC:J

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/EjP$3;->EjP:J

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/EjP$3;->HiB:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(ZLcom/bytedance/sdk/openadsdk/core/model/sU;JJLjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/EjP;->sP()Lcom/bytedance/sdk/openadsdk/Zq/Sj/EjP;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/EjP$3;->vS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/EjP;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Zq/Sj/EjP;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/EjP;->sP(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Zq/Sj/EjP;

    move-result-object v0

    return-object v0
.end method
