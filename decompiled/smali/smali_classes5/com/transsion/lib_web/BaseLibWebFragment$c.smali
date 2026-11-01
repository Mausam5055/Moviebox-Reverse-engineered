.class public final Lcom/transsion/lib_web/BaseLibWebFragment$c;
.super Landroidx/activity/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/lib_web/BaseLibWebFragment;->b0(Lcom/github/lzyzsd/jsbridge/BridgeWebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/lib_web/BaseLibWebFragment;


# direct methods
.method constructor <init>(Lcom/transsion/lib_web/BaseLibWebFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/lib_web/BaseLibWebFragment$c;->a:Lcom/transsion/lib_web/BaseLibWebFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroidx/activity/u;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/lib_web/BaseLibWebFragment$c;->a:Lcom/transsion/lib_web/BaseLibWebFragment;

    invoke-virtual {v0}, Lcom/transsion/lib_web/BaseLibWebFragment;->l0()Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/lib_web/BaseLibWebFragment$c;->a:Lcom/transsion/lib_web/BaseLibWebFragment;

    invoke-virtual {v0}, Lcom/transsion/lib_web/BaseLibWebFragment;->l0()Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/lib_web/BaseLibWebFragment$c;->a:Lcom/transsion/lib_web/BaseLibWebFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method
