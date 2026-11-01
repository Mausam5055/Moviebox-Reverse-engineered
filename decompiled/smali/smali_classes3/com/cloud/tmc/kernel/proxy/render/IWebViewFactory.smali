.class public interface abstract Lcom/cloud/tmc/kernel/proxy/render/IWebViewFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/Proxiable;


# annotations
.annotation runtime Lcom/cloud/tmc/kernel/annotation/DefaultImpl;
    value = "com.cloud.tmc.miniapp.defaultimpl.WebViewImp"
.end annotation


# virtual methods
.method public abstract clear()V
.end method

.method public abstract createWebView(Landroid/content/Context;)Lcom/cloud/tmc/kernel/render/IWebView;
.end method

.method public abstract createWebView(Landroid/content/Context;I)Lcom/cloud/tmc/kernel/render/IWebView;
.end method
