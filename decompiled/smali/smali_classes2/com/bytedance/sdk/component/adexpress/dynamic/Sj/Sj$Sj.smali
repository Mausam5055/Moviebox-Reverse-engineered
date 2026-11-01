.class Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj$Sj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Sj"
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj;

.field private sP:I


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj;I)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj$Sj;->Sj:Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj$Sj;->sP:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj$Sj;->sP:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj$Sj;->Sj:Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj;->HiB(Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj;)Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/Dq;

    move-result-object v0

    instance-of v0, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/Jcg;

    if-eqz v0, :cond_0

    const/16 v0, 0x7f

    goto :goto_0

    :cond_0
    const/16 v0, 0x75

    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj$Sj;->Sj:Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj;

    invoke-static {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj;->EjP(Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj;)Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;->callBackRenderFail(ILjava/lang/String;)V

    :cond_1
    return-void
.end method
