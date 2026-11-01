.class Lcom/bytedance/sdk/component/vS/Sj/EjP$5;
.super Lcom/bytedance/sdk/component/vS/Sj/HiB/HiB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/vS/Sj/EjP;->Sj(Ljava/lang/String;Ljava/util/List;ZLjava/util/Map;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic EjP:Lcom/bytedance/sdk/component/vS/Sj/HiB;

.field final synthetic HiB:I

.field final synthetic Jcg:Lcom/bytedance/sdk/component/vS/Sj/EjP;

.field final synthetic Sj:Ljava/lang/String;

.field final synthetic TKC:Z

.field final synthetic sP:Ljava/util/List;

.field final synthetic vS:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/vS/Sj/EjP;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLcom/bytedance/sdk/component/vS/Sj/HiB;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/vS/Sj/EjP$5;->Jcg:Lcom/bytedance/sdk/component/vS/Sj/EjP;

    iput-object p3, p0, Lcom/bytedance/sdk/component/vS/Sj/EjP$5;->Sj:Ljava/lang/String;

    iput-object p4, p0, Lcom/bytedance/sdk/component/vS/Sj/EjP$5;->sP:Ljava/util/List;

    iput-boolean p5, p0, Lcom/bytedance/sdk/component/vS/Sj/EjP$5;->TKC:Z

    iput-object p6, p0, Lcom/bytedance/sdk/component/vS/Sj/EjP$5;->EjP:Lcom/bytedance/sdk/component/vS/Sj/HiB;

    iput p7, p0, Lcom/bytedance/sdk/component/vS/Sj/EjP$5;->HiB:I

    iput-object p8, p0, Lcom/bytedance/sdk/component/vS/Sj/EjP$5;->vS:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/vS/Sj/HiB/HiB;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/EjP$5;->Jcg:Lcom/bytedance/sdk/component/vS/Sj/EjP;

    iget-object v1, p0, Lcom/bytedance/sdk/component/vS/Sj/EjP$5;->Sj:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/component/vS/Sj/EjP$5;->sP:Ljava/util/List;

    iget-boolean v3, p0, Lcom/bytedance/sdk/component/vS/Sj/EjP$5;->TKC:Z

    iget-object v4, p0, Lcom/bytedance/sdk/component/vS/Sj/EjP$5;->EjP:Lcom/bytedance/sdk/component/vS/Sj/HiB;

    invoke-interface {v4}, Lcom/bytedance/sdk/component/vS/Sj/HiB;->vS()I

    move-result v4

    iget v5, p0, Lcom/bytedance/sdk/component/vS/Sj/EjP$5;->HiB:I

    iget-object v6, p0, Lcom/bytedance/sdk/component/vS/Sj/EjP$5;->vS:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/bytedance/sdk/component/vS/Sj/EjP;->Sj(Lcom/bytedance/sdk/component/vS/Sj/EjP;Ljava/lang/String;Ljava/util/List;ZIILjava/lang/String;)V

    return-void
.end method
