.class Lcom/bytedance/sdk/component/vS/Sj/vS/TKC$2;
.super Lcom/bytedance/sdk/component/vS/Sj/HiB/HiB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/vS/Sj/vS/TKC;->Sj(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Ljava/lang/String;

.field final synthetic TKC:Lcom/bytedance/sdk/component/vS/Sj/vS/TKC;

.field final synthetic sP:Z


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/vS/Sj/vS/TKC;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC$2;->TKC:Lcom/bytedance/sdk/component/vS/Sj/vS/TKC;

    iput-object p3, p0, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC$2;->Sj:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC$2;->sP:Z

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/vS/Sj/HiB/HiB;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC$2;->TKC:Lcom/bytedance/sdk/component/vS/Sj/vS/TKC;

    invoke-static {v0}, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC;->Sj(Lcom/bytedance/sdk/component/vS/Sj/vS/TKC;)Lcom/bytedance/sdk/component/vS/Sj/vS/HiB;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/vS/Sj/vS/HiB;->Sj()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC$2;->TKC:Lcom/bytedance/sdk/component/vS/Sj/vS/TKC;

    iget-object v2, p0, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC$2;->Sj:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC$2;->sP:Z

    invoke-static {v1, v0, v2, v3}, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC;->Sj(Lcom/bytedance/sdk/component/vS/Sj/vS/TKC;Ljava/util/List;Ljava/lang/String;Z)V

    return-void
.end method
