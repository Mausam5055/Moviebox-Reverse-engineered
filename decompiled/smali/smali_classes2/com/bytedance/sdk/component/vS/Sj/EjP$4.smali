.class Lcom/bytedance/sdk/component/vS/Sj/EjP$4;
.super Lcom/bytedance/sdk/component/vS/Sj/HiB/HiB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/vS/Sj/EjP;->sP(Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;

.field final synthetic TKC:Lcom/bytedance/sdk/component/vS/Sj/EjP;

.field final synthetic sP:Lcom/bytedance/sdk/component/vS/Sj/HiB;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/vS/Sj/EjP;Ljava/lang/String;Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;Lcom/bytedance/sdk/component/vS/Sj/HiB;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/vS/Sj/EjP$4;->TKC:Lcom/bytedance/sdk/component/vS/Sj/EjP;

    iput-object p3, p0, Lcom/bytedance/sdk/component/vS/Sj/EjP$4;->Sj:Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;

    iput-object p4, p0, Lcom/bytedance/sdk/component/vS/Sj/EjP$4;->sP:Lcom/bytedance/sdk/component/vS/Sj/HiB;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/vS/Sj/HiB/HiB;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/EjP$4;->TKC:Lcom/bytedance/sdk/component/vS/Sj/EjP;

    iget-object v1, p0, Lcom/bytedance/sdk/component/vS/Sj/EjP$4;->Sj:Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;

    iget-object v2, p0, Lcom/bytedance/sdk/component/vS/Sj/EjP$4;->sP:Lcom/bytedance/sdk/component/vS/Sj/HiB;

    invoke-interface {v2}, Lcom/bytedance/sdk/component/vS/Sj/HiB;->vS()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/component/vS/Sj/EjP;->Sj(Lcom/bytedance/sdk/component/vS/Sj/EjP;Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;I)V

    return-void
.end method
