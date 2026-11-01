.class Lcom/bytedance/sdk/component/vS/Sj/sP/EjP$2;
.super Lcom/bytedance/sdk/component/vS/Sj/HiB/HiB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/vS/Sj/sP/EjP;->Sj(Lcom/bytedance/sdk/component/vS/Sj/HiB;Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/component/vS/Sj/HiB;

.field final synthetic TKC:Lcom/bytedance/sdk/component/vS/Sj/sP/EjP;

.field final synthetic sP:J


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/vS/Sj/sP/EjP;Ljava/lang/String;Lcom/bytedance/sdk/component/vS/Sj/HiB;J)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/vS/Sj/sP/EjP$2;->TKC:Lcom/bytedance/sdk/component/vS/Sj/sP/EjP;

    iput-object p3, p0, Lcom/bytedance/sdk/component/vS/Sj/sP/EjP$2;->Sj:Lcom/bytedance/sdk/component/vS/Sj/HiB;

    iput-wide p4, p0, Lcom/bytedance/sdk/component/vS/Sj/sP/EjP$2;->sP:J

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/vS/Sj/HiB/HiB;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/sP/EjP$2;->TKC:Lcom/bytedance/sdk/component/vS/Sj/sP/EjP;

    iget-object v1, p0, Lcom/bytedance/sdk/component/vS/Sj/sP/EjP$2;->Sj:Lcom/bytedance/sdk/component/vS/Sj/HiB;

    iget-wide v2, p0, Lcom/bytedance/sdk/component/vS/Sj/sP/EjP$2;->sP:J

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/component/vS/Sj/sP/EjP;->Sj(Lcom/bytedance/sdk/component/vS/Sj/sP/EjP;Lcom/bytedance/sdk/component/vS/Sj/HiB;J)V

    return-void
.end method
