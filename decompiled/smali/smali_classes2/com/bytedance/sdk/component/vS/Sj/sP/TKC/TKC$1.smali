.class Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/TKC$1;
.super Lcom/bytedance/sdk/component/vS/Sj/HiB/HiB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/TKC;->Sj(Ljava/util/List;ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic EjP:Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/TKC;

.field final synthetic Sj:Ljava/util/List;

.field final synthetic TKC:J

.field final synthetic sP:Z


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/TKC;Ljava/lang/String;Ljava/util/List;ZJ)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/TKC$1;->EjP:Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/TKC;

    iput-object p3, p0, Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/TKC$1;->Sj:Ljava/util/List;

    iput-boolean p4, p0, Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/TKC$1;->sP:Z

    iput-wide p5, p0, Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/TKC$1;->TKC:J

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/vS/Sj/HiB/HiB;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/TKC$1;->EjP:Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/TKC;

    iget-object v1, p0, Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/TKC$1;->Sj:Ljava/util/List;

    iget-boolean v2, p0, Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/TKC$1;->sP:Z

    iget-wide v3, p0, Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/TKC$1;->TKC:J

    invoke-static {v0}, Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/TKC;->Sj(Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/TKC;)I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/TKC;->Sj(Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/TKC;Ljava/util/List;ZJI)V

    return-void
.end method
