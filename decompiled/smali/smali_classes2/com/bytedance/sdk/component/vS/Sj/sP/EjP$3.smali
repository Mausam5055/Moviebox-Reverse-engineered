.class Lcom/bytedance/sdk/component/vS/Sj/sP/EjP$3;
.super Lcom/bytedance/sdk/component/vS/Sj/HiB/HiB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/vS/Sj/sP/EjP;->HiB()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/TKC;

.field final synthetic sP:Lcom/bytedance/sdk/component/vS/Sj/sP/EjP;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/vS/Sj/sP/EjP;Ljava/lang/String;Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/TKC;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/vS/Sj/sP/EjP$3;->sP:Lcom/bytedance/sdk/component/vS/Sj/sP/EjP;

    iput-object p3, p0, Lcom/bytedance/sdk/component/vS/Sj/sP/EjP$3;->Sj:Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/TKC;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/vS/Sj/HiB/HiB;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/sP/EjP$3;->Sj:Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/TKC;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/TKC;->TKC(I)V

    :cond_0
    return-void
.end method
