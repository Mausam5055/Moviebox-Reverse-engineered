.class final Lcom/bytedance/sdk/component/utils/sP$1;
.super Lcom/bytedance/sdk/component/Dq/Dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/utils/sP;->Sj(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/component/utils/sP$sP;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Landroid/content/Context;

.field final synthetic TKC:Lcom/bytedance/sdk/component/utils/sP$sP;

.field final synthetic sP:Landroid/content/Intent;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/component/utils/sP$sP;)V
    .locals 0

    iput-object p2, p0, Lcom/bytedance/sdk/component/utils/sP$1;->Sj:Landroid/content/Context;

    iput-object p3, p0, Lcom/bytedance/sdk/component/utils/sP$1;->sP:Landroid/content/Intent;

    iput-object p4, p0, Lcom/bytedance/sdk/component/utils/sP$1;->TKC:Lcom/bytedance/sdk/component/utils/sP$sP;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/Dq/Dq;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/utils/sP$1;->Sj:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/component/utils/sP$1;->sP:Landroid/content/Intent;

    iget-object v2, p0, Lcom/bytedance/sdk/component/utils/sP$1;->TKC:Lcom/bytedance/sdk/component/utils/sP$sP;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/component/utils/sP;->sP(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/component/utils/sP$sP;)Z

    return-void
.end method
