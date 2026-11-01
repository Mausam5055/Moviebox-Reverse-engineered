.class Lcom/bytedance/sdk/openadsdk/activity/sP$5;
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
.field final synthetic EjP:I

.field final synthetic HiB:Ljava/lang/String;

.field final synthetic Sj:Z

.field final synthetic TKC:Ljava/lang/String;

.field final synthetic sP:I

.field final synthetic vS:Lcom/bytedance/sdk/openadsdk/activity/sP;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/sP;ZILjava/lang/String;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$5;->vS:Lcom/bytedance/sdk/openadsdk/activity/sP;

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$5;->Sj:Z

    iput p3, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$5;->sP:I

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$5;->TKC:Ljava/lang/String;

    iput p5, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$5;->EjP:I

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$5;->HiB:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$5;->vS:Lcom/bytedance/sdk/openadsdk/activity/sP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->TKC(Lcom/bytedance/sdk/openadsdk/activity/sP;)Lcom/bytedance/sdk/openadsdk/Sj/HiB/Sj;

    move-result-object v1

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$5;->Sj:Z

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$5;->sP:I

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$5;->TKC:Ljava/lang/String;

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$5;->EjP:I

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$5;->HiB:Ljava/lang/String;

    invoke-interface/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/Sj/HiB/Sj;->Sj(ZILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method
