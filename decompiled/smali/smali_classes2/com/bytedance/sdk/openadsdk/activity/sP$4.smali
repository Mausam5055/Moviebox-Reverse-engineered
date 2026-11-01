.class Lcom/bytedance/sdk/openadsdk/activity/sP$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/sP;->Sj(Lcom/bytedance/sdk/openadsdk/activity/vS;ZILjava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic EjP:Ljava/lang/String;

.field final synthetic HiB:I

.field final synthetic Jcg:Lcom/bytedance/sdk/openadsdk/activity/sP;

.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/activity/vS;

.field final synthetic TKC:I

.field final synthetic sP:Z

.field final synthetic vS:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/sP;Lcom/bytedance/sdk/openadsdk/activity/vS;ZILjava/lang/String;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$4;->Jcg:Lcom/bytedance/sdk/openadsdk/activity/sP;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$4;->Sj:Lcom/bytedance/sdk/openadsdk/activity/vS;

    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$4;->sP:Z

    iput p4, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$4;->TKC:I

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$4;->EjP:Ljava/lang/String;

    iput p6, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$4;->HiB:I

    iput-object p7, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$4;->vS:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$4;->Jcg:Lcom/bytedance/sdk/openadsdk/activity/sP;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$4;->Sj:Lcom/bytedance/sdk/openadsdk/activity/vS;

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$4;->sP:Z

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$4;->TKC:I

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$4;->EjP:Ljava/lang/String;

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$4;->HiB:I

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$4;->vS:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/activity/sP;->Sj(Lcom/bytedance/sdk/openadsdk/activity/vS;ZILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method
