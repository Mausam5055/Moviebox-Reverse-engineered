.class Lcom/bytedance/sdk/openadsdk/core/sU$9;
.super Lcom/bytedance/sdk/component/Jcg/Sj/sP;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/sU;->sP(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/ib;ILcom/bytedance/sdk/openadsdk/core/RiZ$Sj;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Dq:Lcom/bytedance/sdk/openadsdk/core/model/ib;

.field final synthetic EjP:Lcom/bytedance/sdk/openadsdk/utils/WMZ;

.field final synthetic HiB:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field final synthetic Jcg:Lcom/bytedance/sdk/openadsdk/core/RiZ$Sj;

.field final synthetic Sj:Ljava/lang/String;

.field final synthetic TEQ:Lcom/bytedance/sdk/openadsdk/core/sU;

.field final synthetic TKC:Ljava/util/Map;

.field final synthetic sP:Z

.field final synthetic uA:I

.field final synthetic vS:Lcom/bytedance/sdk/openadsdk/core/model/TKC;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/sU;Ljava/lang/String;ZLjava/util/Map;Lcom/bytedance/sdk/openadsdk/utils/WMZ;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/TKC;Lcom/bytedance/sdk/openadsdk/core/RiZ$Sj;Lcom/bytedance/sdk/openadsdk/core/model/ib;I)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/sU$9;->TEQ:Lcom/bytedance/sdk/openadsdk/core/sU;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/sU$9;->Sj:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/core/sU$9;->sP:Z

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/sU$9;->TKC:Ljava/util/Map;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/sU$9;->EjP:Lcom/bytedance/sdk/openadsdk/utils/WMZ;

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/core/sU$9;->HiB:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iput-object p7, p0, Lcom/bytedance/sdk/openadsdk/core/sU$9;->vS:Lcom/bytedance/sdk/openadsdk/core/model/TKC;

    iput-object p8, p0, Lcom/bytedance/sdk/openadsdk/core/sU$9;->Jcg:Lcom/bytedance/sdk/openadsdk/core/RiZ$Sj;

    iput-object p9, p0, Lcom/bytedance/sdk/openadsdk/core/sU$9;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/ib;

    iput p10, p0, Lcom/bytedance/sdk/openadsdk/core/sU$9;->uA:I

    invoke-direct {p0}, Lcom/bytedance/sdk/component/Jcg/Sj/sP;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj(Lcom/bytedance/sdk/component/Jcg/sP/TKC;Lcom/bytedance/sdk/component/Jcg/sP;)V
    .locals 11

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/sU$9;->TEQ:Lcom/bytedance/sdk/openadsdk/core/sU;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/sU$9;->Sj:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/sU$9;->sP:Z

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/sU$9;->TKC:Ljava/util/Map;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/sU$9;->EjP:Lcom/bytedance/sdk/openadsdk/utils/WMZ;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/sU$9;->HiB:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/sU$9;->vS:Lcom/bytedance/sdk/openadsdk/core/model/TKC;

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/sU$9;->Jcg:Lcom/bytedance/sdk/openadsdk/core/RiZ$Sj;

    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/core/sU$9;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/ib;

    iget v10, p0, Lcom/bytedance/sdk/openadsdk/core/sU$9;->uA:I

    move-object v2, p2

    invoke-static/range {v0 .. v10}, Lcom/bytedance/sdk/openadsdk/core/sU;->Sj(Lcom/bytedance/sdk/openadsdk/core/sU;Ljava/lang/String;Lcom/bytedance/sdk/component/Jcg/sP;ZLjava/util/Map;Lcom/bytedance/sdk/openadsdk/utils/WMZ;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/TKC;Lcom/bytedance/sdk/openadsdk/core/RiZ$Sj;Lcom/bytedance/sdk/openadsdk/core/model/ib;I)V

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/component/Jcg/sP/TKC;Ljava/io/IOException;Lcom/bytedance/sdk/component/Jcg/sP;)V
    .locals 9

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/sU$9;->TEQ:Lcom/bytedance/sdk/openadsdk/core/sU;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/sU$9;->Sj:Ljava/lang/String;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/sU$9;->HiB:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iget-boolean v5, p0, Lcom/bytedance/sdk/openadsdk/core/sU$9;->sP:Z

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/sU$9;->TKC:Ljava/util/Map;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/sU$9;->Jcg:Lcom/bytedance/sdk/openadsdk/core/RiZ$Sj;

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/sU$9;->vS:Lcom/bytedance/sdk/openadsdk/core/model/TKC;

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v8}, Lcom/bytedance/sdk/openadsdk/core/sU;->Sj(Lcom/bytedance/sdk/openadsdk/core/sU;Ljava/lang/String;Ljava/io/IOException;Lcom/bytedance/sdk/component/Jcg/sP;Lcom/bytedance/sdk/openadsdk/AdSlot;ZLjava/util/Map;Lcom/bytedance/sdk/openadsdk/core/RiZ$Sj;Lcom/bytedance/sdk/openadsdk/core/model/TKC;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->EjP()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/sU;->Sj(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
