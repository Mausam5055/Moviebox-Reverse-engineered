.class public interface abstract Lcom/cloud/tmc/kernel/proxy/renderprocess/IOnRenderProcessGoneProxy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/Proxiable;


# annotations
.annotation runtime Lcom/cloud/tmc/kernel/annotation/DefaultImpl;
    value = "com.cloud.tmc.integration.defaultImpl.OnRenderProcessGoneManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/kernel/proxy/renderprocess/IOnRenderProcessGoneProxy$Listener;
    }
.end annotation


# virtual methods
.method public abstract received(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)V
.end method

.method public abstract register(Lcom/cloud/tmc/kernel/proxy/renderprocess/IOnRenderProcessGoneProxy$Listener;)V
.end method

.method public abstract unRegister(Lcom/cloud/tmc/kernel/proxy/renderprocess/IOnRenderProcessGoneProxy$Listener;)V
.end method
