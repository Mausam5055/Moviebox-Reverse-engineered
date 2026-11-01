.class public Lcom/mbridge/msdk/out/MBNativeAdvancedHandler;
.super Ljava/lang/Object;


# instance fields
.field private nativeAdvancedProvider:Lcom/mbridge/msdk/advanced/middle/c;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p3}, Lcom/mbridge/msdk/foundation/tools/t0;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p3, v0}, Lcom/mbridge/msdk/foundation/tools/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/mbridge/msdk/advanced/middle/c;

    invoke-direct {v0, p2, p3, p1}, Lcom/mbridge/msdk/advanced/middle/c;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/mbridge/msdk/out/MBNativeAdvancedHandler;->nativeAdvancedProvider:Lcom/mbridge/msdk/advanced/middle/c;

    return-void
.end method


# virtual methods
.method public autoLoopPlay(I)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBNativeAdvancedHandler;->nativeAdvancedProvider:Lcom/mbridge/msdk/advanced/middle/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/advanced/middle/c;->h(I)V

    :cond_0
    return-void
.end method

.method public getAdViewGroup()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBNativeAdvancedHandler;->nativeAdvancedProvider:Lcom/mbridge/msdk/advanced/middle/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/advanced/middle/c;->d()Lcom/mbridge/msdk/advanced/view/MBOutNativeAdvancedViewGroup;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCreativeIdWithUnitId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBNativeAdvancedHandler;->nativeAdvancedProvider:Lcom/mbridge/msdk/advanced/middle/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/advanced/middle/c;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBNativeAdvancedHandler;->nativeAdvancedProvider:Lcom/mbridge/msdk/advanced/middle/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/advanced/middle/c;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public isReady()Z
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/out/MBNativeAdvancedHandler;->isReady(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isReady(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBNativeAdvancedHandler;->nativeAdvancedProvider:Lcom/mbridge/msdk/advanced/middle/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/advanced/middle/c;->b(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public load()V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBNativeAdvancedHandler;->nativeAdvancedProvider:Lcom/mbridge/msdk/advanced/middle/c;

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/advanced/middle/c;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public loadByToken(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBNativeAdvancedHandler;->nativeAdvancedProvider:Lcom/mbridge/msdk/advanced/middle/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/advanced/middle/c;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBNativeAdvancedHandler;->nativeAdvancedProvider:Lcom/mbridge/msdk/advanced/middle/c;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/advanced/middle/c;->f(I)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBNativeAdvancedHandler;->nativeAdvancedProvider:Lcom/mbridge/msdk/advanced/middle/c;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/advanced/middle/c;->i(I)V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBNativeAdvancedHandler;->nativeAdvancedProvider:Lcom/mbridge/msdk/advanced/middle/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/advanced/middle/c;->b()V

    :cond_0
    return-void
.end method

.method public setAdListener(Lcom/mbridge/msdk/out/NativeAdvancedAdListener;)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBNativeAdvancedHandler;->nativeAdvancedProvider:Lcom/mbridge/msdk/advanced/middle/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/advanced/middle/c;->a(Lcom/mbridge/msdk/out/NativeAdvancedAdListener;)V

    :cond_0
    return-void
.end method

.method public setCloseButtonState(Lcom/mbridge/msdk/out/MBMultiStateEnum;)V
    .locals 2

    sget-object v0, Lcom/mbridge/msdk/out/MBNativeAdvancedHandler$1;->$SwitchMap$com$mbridge$msdk$out$MBMultiStateEnum:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/mbridge/msdk/out/MBNativeAdvancedHandler;->nativeAdvancedProvider:Lcom/mbridge/msdk/advanced/middle/c;

    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/advanced/middle/c;->b(I)V

    return-void
.end method

.method public setNativeViewSize(II)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBNativeAdvancedHandler;->nativeAdvancedProvider:Lcom/mbridge/msdk/advanced/middle/c;

    invoke-virtual {v0, p2, p1}, Lcom/mbridge/msdk/advanced/middle/c;->b(II)V

    return-void
.end method

.method public setPlayMuteState(I)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBNativeAdvancedHandler;->nativeAdvancedProvider:Lcom/mbridge/msdk/advanced/middle/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/advanced/middle/c;->d(I)V

    :cond_0
    return-void
.end method

.method public setViewElementStyle(Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBNativeAdvancedHandler;->nativeAdvancedProvider:Lcom/mbridge/msdk/advanced/middle/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/advanced/middle/c;->b(Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method
