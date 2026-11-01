.class public final Lcom/transsion/lib_web/BaseLibWebFragment$f;
.super Lgm/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/lib_web/BaseLibWebFragment;->x0(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/transsion/lib_web/BaseLibWebFragment;


# direct methods
.method constructor <init>(Lcom/github/lzyzsd/jsbridge/BridgeWebView;Lcom/transsion/lib_web/BaseLibWebFragment;)V
    .locals 0

    iput-object p2, p0, Lcom/transsion/lib_web/BaseLibWebFragment$f;->b:Lcom/transsion/lib_web/BaseLibWebFragment;

    invoke-direct {p0, p1}, Lgm/g;-><init>(Lcom/github/lzyzsd/jsbridge/BridgeWebView;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-super {p0}, Lgm/g;->close()V

    iget-object v0, p0, Lcom/transsion/lib_web/BaseLibWebFragment$f;->b:Lcom/transsion/lib_web/BaseLibWebFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
