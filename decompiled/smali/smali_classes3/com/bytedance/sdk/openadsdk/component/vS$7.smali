.class Lcom/bytedance/sdk/openadsdk/component/vS$7;
.super Ljava/lang/Object;

# interfaces
.implements Lv5/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/vS;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/ley;Lcom/bytedance/sdk/openadsdk/component/vS$TKC;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic EjP:Lcom/bytedance/sdk/openadsdk/core/model/ley;

.field final synthetic HiB:Lcom/bytedance/sdk/openadsdk/component/vS$TKC;

.field final synthetic Jcg:Lcom/bytedance/sdk/openadsdk/component/vS;

.field final synthetic Sj:I

.field final synthetic TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/utils/WMZ;

.field final synthetic vS:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/vS;ILcom/bytedance/sdk/openadsdk/utils/WMZ;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/model/ley;Lcom/bytedance/sdk/openadsdk/component/vS$TKC;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/vS$7;->Jcg:Lcom/bytedance/sdk/openadsdk/component/vS;

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/component/vS$7;->Sj:I

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/vS$7;->sP:Lcom/bytedance/sdk/openadsdk/utils/WMZ;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/vS$7;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/component/vS$7;->EjP:Lcom/bytedance/sdk/openadsdk/core/model/ley;

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/component/vS$7;->HiB:Lcom/bytedance/sdk/openadsdk/component/vS$TKC;

    iput-object p7, p0, Lcom/bytedance/sdk/openadsdk/component/vS$7;->vS:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;I)V
    .locals 2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/vS$7;->Jcg:Lcom/bytedance/sdk/openadsdk/component/vS;

    iget p2, p0, Lcom/bytedance/sdk/openadsdk/component/vS$7;->Sj:I

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/vS;->Sj(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/vS$7;->sP:Lcom/bytedance/sdk/openadsdk/utils/WMZ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/utils/WMZ;->EjP()J

    move-result-wide p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/vS$7;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Lcom/bytedance/sdk/openadsdk/component/EjP/Sj;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;JZ)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/vS$7;->EjP:Lcom/bytedance/sdk/openadsdk/core/model/ley;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/model/ley;->Sj(J)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/vS$7;->EjP:Lcom/bytedance/sdk/openadsdk/core/model/ley;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/model/ley;->Sj(I)V

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/vS$7;->HiB:Lcom/bytedance/sdk/openadsdk/component/vS$TKC;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/component/vS$TKC;->Sj()V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/vS$7;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/vS;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/component/vS$EjP;)V

    return-void
.end method

.method public Sj(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;ILjava/lang/String;)V
    .locals 3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/vS$7;->sP:Lcom/bytedance/sdk/openadsdk/utils/WMZ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/utils/WMZ;->EjP()J

    move-result-wide v0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/vS$7;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/EjP/Sj;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;JZ)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/vS$7;->EjP:Lcom/bytedance/sdk/openadsdk/core/model/ley;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/ley;->Sj(J)V

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/vS$7;->HiB:Lcom/bytedance/sdk/openadsdk/component/vS$TKC;

    invoke-interface {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/component/vS$TKC;->Sj(ILjava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/vS$7;->vS:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/vS$7;->vS:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/vS$7;->vS:Ljava/io/File;

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/Jcg;->TKC(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method public sP(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;I)V
    .locals 0

    return-void
.end method
