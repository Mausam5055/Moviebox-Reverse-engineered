.class final Lcom/bytedance/sdk/openadsdk/utils/dx$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$BindCustomTabsServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/utils/dx;->Sj(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic EjP:Ljava/lang/String;

.field final synthetic HiB:Ljava/lang/String;

.field final synthetic Jcg:Ljava/lang/String;

.field final synthetic Sj:Landroidx/browser/customtabs/d$b;

.field final synthetic TKC:Ljava/lang/String;

.field final synthetic sP:Landroid/content/Context;

.field final synthetic vS:Lcom/bytedance/sdk/openadsdk/core/model/sU;


# direct methods
.method constructor <init>(Landroidx/browser/customtabs/d$b;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/dx$1;->Sj:Landroidx/browser/customtabs/d$b;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/utils/dx$1;->sP:Landroid/content/Context;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/utils/dx$1;->TKC:Ljava/lang/String;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/utils/dx$1;->EjP:Ljava/lang/String;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/utils/dx$1;->HiB:Ljava/lang/String;

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/utils/dx$1;->vS:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iput-object p7, p0, Lcom/bytedance/sdk/openadsdk/utils/dx$1;->Jcg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindFail(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/dx$1;->HiB:Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/utils/dx$1;->vS:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/utils/dx;->Sj(Ljava/lang/String;ILcom/bytedance/sdk/openadsdk/core/model/sU;)Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->TKC(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/dx$1;->sP:Landroid/content/Context;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/utils/dx$1;->EjP:Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/dx$1;->vS:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/utils/dx$1;->HiB:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/utils/dx$1;->Jcg:Ljava/lang/String;

    invoke-static {p1, p2, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/dx;->Sj(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public onBindSuccess(Landroidx/browser/customtabs/j;)V
    .locals 4

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/dx$1;->Sj:Landroidx/browser/customtabs/d$b;

    invoke-virtual {v0, p1}, Landroidx/browser/customtabs/d$b;->c(Landroidx/browser/customtabs/j;)Landroidx/browser/customtabs/d$b;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/dx$1;->Sj:Landroidx/browser/customtabs/d$b;

    invoke-virtual {p1}, Landroidx/browser/customtabs/d$b;->a()Landroidx/browser/customtabs/d;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/dx$1;->sP:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    iget-object v0, p1, Landroidx/browser/customtabs/d;->a:Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/dx$1;->sP:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/utils/dx$1;->TKC:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/utils/dx$1;->EjP:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lcom/bytedance/sdk/openadsdk/core/act/TKC;->Sj(Landroid/content/Context;Ljava/lang/String;Landroidx/browser/customtabs/d;Landroid/net/Uri;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/dx$1;->sP:Landroid/content/Context;

    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/activity/TTBaseActivity;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    check-cast p1, Lcom/bytedance/sdk/openadsdk/activity/TTBaseActivity;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseActivity;->sP(Z)V

    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/dx$1;->HiB:Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/dx$1;->vS:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    const/16 v2, 0x64

    invoke-static {p1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/dx;->Sj(Ljava/lang/String;ILcom/bytedance/sdk/openadsdk/core/model/sU;)Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->Sj(Z)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->sP(I)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpenUtils"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/dx$1;->HiB:Ljava/lang/String;

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/utils/dx$1;->vS:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/dx;->Sj(Ljava/lang/String;ILcom/bytedance/sdk/openadsdk/core/model/sU;)Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->TKC(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/dx$1;->sP:Landroid/content/Context;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/dx$1;->EjP:Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/utils/dx$1;->vS:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/utils/dx$1;->HiB:Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/utils/dx$1;->Jcg:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/dx;->Sj(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
