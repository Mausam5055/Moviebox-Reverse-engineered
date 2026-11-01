.class Lcom/bytedance/sdk/component/vS/Sj/EjP$3;
.super Lcom/bytedance/sdk/component/vS/Sj/HiB/HiB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/vS/Sj/EjP;->sP()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/component/vS/Sj/HiB;

.field final synthetic sP:Lcom/bytedance/sdk/component/vS/Sj/EjP;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/vS/Sj/EjP;Ljava/lang/String;Lcom/bytedance/sdk/component/vS/Sj/HiB;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/vS/Sj/EjP$3;->sP:Lcom/bytedance/sdk/component/vS/Sj/EjP;

    iput-object p3, p0, Lcom/bytedance/sdk/component/vS/Sj/EjP$3;->Sj:Lcom/bytedance/sdk/component/vS/Sj/HiB;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/vS/Sj/HiB/HiB;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/EjP$3;->sP:Lcom/bytedance/sdk/component/vS/Sj/EjP;

    iget-object v1, p0, Lcom/bytedance/sdk/component/vS/Sj/EjP$3;->Sj:Lcom/bytedance/sdk/component/vS/Sj/HiB;

    invoke-interface {v1}, Lcom/bytedance/sdk/component/vS/Sj/HiB;->vS()I

    move-result v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/vS/Sj/EjP;->sP(Lcom/bytedance/sdk/component/vS/Sj/EjP;I)V

    return-void
.end method
