.class Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/Sj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:I

.field final synthetic TKC:Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3;

.field final synthetic sP:Lcom/bytedance/sdk/component/uA/vS;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3;ILcom/bytedance/sdk/component/uA/vS;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3$1;->TKC:Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3;

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3$1;->Sj:I

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3$1;->sP:Lcom/bytedance/sdk/component/uA/vS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj(Landroid/app/Activity;)V
    .locals 4

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3$1;->Sj:I

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3$1;->sP:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/uA/vS;->TKC()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3$1;->TKC:Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3;

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3;->HiB:Lcom/bytedance/sdk/openadsdk/Fmk/Sj;

    iget v1, p1, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3;->sP:I

    iget-object v2, p1, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3;->TKC:Ljava/lang/String;

    const/4 v3, 0x5

    invoke-static {v0, v1, v3, v2, p1}, Lcom/bytedance/sdk/openadsdk/Fmk/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/Fmk/Sj;IILcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
