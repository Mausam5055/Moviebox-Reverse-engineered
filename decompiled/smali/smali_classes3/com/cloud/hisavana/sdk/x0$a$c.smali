.class public final Lcom/cloud/hisavana/sdk/x0$a$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/x0$a;->a(ILandroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field final synthetic b:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic c:Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;

.field final synthetic d:Landroid/content/Context;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/x0$a$c;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/x0$a$c;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lcom/cloud/hisavana/sdk/x0$a$c;->c:Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;

    iput-object p4, p0, Lcom/cloud/hisavana/sdk/x0$a$c;->d:Landroid/content/Context;

    iput-object p5, p0, Lcom/cloud/hisavana/sdk/x0$a$c;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v1, "MiniApp"

    const-string v2, "On click miniapp guide\'s skip button."

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/x0$a$c;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->U(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/x0$a$c;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/x0$a$c;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/N0;->R(Landroid/content/Context;Ljava/lang/String;)Z

    return-void
.end method

.method public b()V
    .locals 7

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v1, "MiniApp"

    const-string v2, "On click miniapp guide\'s sure button and show system add homescreen."

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/x0$a$c;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->U(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    sget-object v0, Lcom/cloud/hisavana/sdk/y0;->a:Lcom/cloud/hisavana/sdk/y0;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/x0$a$c;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/x0$a$c;->c:Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;

    new-instance v3, Lcom/cloud/hisavana/sdk/x0$a$c$a;

    iget-object v4, p0, Lcom/cloud/hisavana/sdk/x0$a$c;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-object v5, p0, Lcom/cloud/hisavana/sdk/x0$a$c;->d:Landroid/content/Context;

    iget-object v6, p0, Lcom/cloud/hisavana/sdk/x0$a$c;->e:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v6}, Lcom/cloud/hisavana/sdk/x0$a$c$a;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/cloud/hisavana/sdk/y0;->g(Ljava/lang/String;Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public c()V
    .locals 3

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v1, "MiniApp"

    const-string v2, "On click miniapp guide\'s cancel button."

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/x0$a$c;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->U(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    return-void
.end method
