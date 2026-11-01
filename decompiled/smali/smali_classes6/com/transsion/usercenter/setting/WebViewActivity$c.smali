.class public final Lcom/transsion/usercenter/setting/WebViewActivity$c;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/usercenter/setting/WebViewActivity;->l0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/usercenter/setting/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/transsion/usercenter/setting/WebViewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/usercenter/setting/WebViewActivity$c;->a:Lcom/transsion/usercenter/setting/WebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detail"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/usercenter/setting/WebViewActivity$c;->a:Lcom/transsion/usercenter/setting/WebViewActivity;

    invoke-static {v0}, Lcom/transsion/usercenter/setting/WebViewActivity;->f0(Lcom/transsion/usercenter/setting/WebViewActivity;)Landroid/webkit/WebView;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/transsion/usercenter/setting/WebViewActivity$c;->a:Lcom/transsion/usercenter/setting/WebViewActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/usercenter/setting/WebViewActivity;->g0(Lcom/transsion/usercenter/setting/WebViewActivity;Landroid/webkit/WebView;)V

    :cond_0
    sget-object v0, Llg/a;->a:Llg/a$a;

    invoke-static {p2}, Lgm/j;->a(Landroid/webkit/RenderProcessGoneDetail;)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "renderer gone, didCrash="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "WebViewActivity"

    invoke-virtual {v0, v3, v1, v2}, Llg/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v0, Lgm/n;->a:Lgm/n;

    const-string v1, "user_center"

    invoke-virtual {v0, p1, p2, v1}, Lgm/n;->c(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;Ljava/lang/String;)Z

    move-result p1

    iget-object p2, p0, Lcom/transsion/usercenter/setting/WebViewActivity$c;->a:Lcom/transsion/usercenter/setting/WebViewActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->isDestroyed()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/transsion/usercenter/setting/WebViewActivity$c;->a:Lcom/transsion/usercenter/setting/WebViewActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/transsion/usercenter/setting/WebViewActivity$c;->a:Lcom/transsion/usercenter/setting/WebViewActivity;

    invoke-virtual {p2}, Lcom/transsion/baseui/activity/BaseCommonActivity;->finish()V

    :cond_1
    return p1
.end method
