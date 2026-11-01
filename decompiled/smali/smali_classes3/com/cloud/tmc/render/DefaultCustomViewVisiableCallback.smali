.class public final Lcom/cloud/tmc/render/DefaultCustomViewVisiableCallback;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/render/CustomViewVisiableCallback;
.implements Lcom/cloud/tmc/render/IRegisterCustomViewVisiable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\t\u001a\u00020\nH\u0016J\u001c\u0010\u000b\u001a\u00020\n2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u0012\u0010\u0010\u001a\u00020\n2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0016R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\u0005\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/cloud/tmc/render/DefaultCustomViewVisiableCallback;",
        "Lcom/cloud/tmc/kernel/render/CustomViewVisiableCallback;",
        "Lcom/cloud/tmc/render/IRegisterCustomViewVisiable;",
        "customViewVisiable",
        "Lcom/cloud/tmc/kernel/render/ICustomViewVisiable;",
        "(Lcom/cloud/tmc/kernel/render/ICustomViewVisiable;)V",
        "getCustomViewVisiable",
        "()Lcom/cloud/tmc/kernel/render/ICustomViewVisiable;",
        "setCustomViewVisiable",
        "onHideCustomView",
        "",
        "onShowCustomView",
        "view",
        "Landroid/view/View;",
        "callback",
        "Landroid/webkit/WebChromeClient$CustomViewCallback;",
        "register",
        "com.cloud.tmc.render"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private customViewVisiable:Lcom/cloud/tmc/kernel/render/ICustomViewVisiable;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/kernel/render/ICustomViewVisiable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/render/DefaultCustomViewVisiableCallback;->customViewVisiable:Lcom/cloud/tmc/kernel/render/ICustomViewVisiable;

    return-void
.end method


# virtual methods
.method public final getCustomViewVisiable()Lcom/cloud/tmc/kernel/render/ICustomViewVisiable;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/render/DefaultCustomViewVisiableCallback;->customViewVisiable:Lcom/cloud/tmc/kernel/render/ICustomViewVisiable;

    return-object v0
.end method

.method public onHideCustomView()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/render/DefaultCustomViewVisiableCallback;->customViewVisiable:Lcom/cloud/tmc/kernel/render/ICustomViewVisiable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/ICustomViewVisiable;->onHideCustomView()V

    :cond_0
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/render/DefaultCustomViewVisiableCallback;->customViewVisiable:Lcom/cloud/tmc/kernel/render/ICustomViewVisiable;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/cloud/tmc/kernel/render/ICustomViewVisiable;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    :cond_0
    return-void
.end method

.method public register(Lcom/cloud/tmc/kernel/render/ICustomViewVisiable;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/render/DefaultCustomViewVisiableCallback;->customViewVisiable:Lcom/cloud/tmc/kernel/render/ICustomViewVisiable;

    return-void
.end method

.method public final setCustomViewVisiable(Lcom/cloud/tmc/kernel/render/ICustomViewVisiable;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/render/DefaultCustomViewVisiableCallback;->customViewVisiable:Lcom/cloud/tmc/kernel/render/ICustomViewVisiable;

    return-void
.end method
