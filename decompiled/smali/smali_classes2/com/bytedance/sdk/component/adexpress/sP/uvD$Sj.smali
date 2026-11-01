.class Lcom/bytedance/sdk/component/adexpress/sP/uvD$Sj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/adexpress/sP/uvD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Sj"
.end annotation


# instance fields
.field Sj:Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;

.field private TKC:I

.field final synthetic sP:Lcom/bytedance/sdk/component/adexpress/sP/uvD;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/adexpress/sP/uvD;ILcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/sP/uvD$Sj;->sP:Lcom/bytedance/sdk/component/adexpress/sP/uvD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/bytedance/sdk/component/adexpress/sP/uvD$Sj;->TKC:I

    iput-object p3, p0, Lcom/bytedance/sdk/component/adexpress/sP/uvD$Sj;->Sj:Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/sP/uvD$Sj;->TKC:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/sP/uvD$Sj;->sP:Lcom/bytedance/sdk/component/adexpress/sP/uvD;

    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/sP/uvD;->sP(Lcom/bytedance/sdk/component/adexpress/sP/uvD;)Lcom/bytedance/sdk/component/adexpress/HiB/Sj;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->Sj(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/sP/uvD$Sj;->sP:Lcom/bytedance/sdk/component/adexpress/sP/uvD;

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/sP/uvD$Sj;->Sj:Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;

    const/16 v2, 0x6b

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/component/adexpress/sP/uvD;->Sj(Lcom/bytedance/sdk/component/adexpress/sP/uvD;Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;ILjava/lang/String;)V

    :cond_0
    return-void
.end method
