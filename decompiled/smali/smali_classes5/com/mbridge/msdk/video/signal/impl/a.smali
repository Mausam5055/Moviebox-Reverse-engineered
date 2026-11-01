.class public abstract Lcom/mbridge/msdk/video/signal/impl/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mbridge/msdk/video/signal/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/video/signal/impl/a$a;,
        Lcom/mbridge/msdk/video/signal/impl/a$b;
    }
.end annotation


# instance fields
.field protected a:Z

.field protected b:Z

.field protected c:I

.field protected d:I

.field protected e:I

.field protected f:I

.field protected g:I

.field protected h:I

.field protected i:I

.field protected j:Ljava/lang/String;

.field protected k:Lcom/mbridge/msdk/videocommon/setting/c;

.field protected l:Lcom/mbridge/msdk/click/a;

.field public m:Lcom/mbridge/msdk/video/signal/a$a;

.field protected n:I

.field protected o:I

.field private p:Lcom/iab/omid/library/mmadbridge/adsession/b;

.field private q:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

.field private r:Lcom/iab/omid/library/mmadbridge/adsession/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/signal/impl/a;->a:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/signal/impl/a;->b:Z

    iput v0, p0, Lcom/mbridge/msdk/video/signal/impl/a;->c:I

    iput v0, p0, Lcom/mbridge/msdk/video/signal/impl/a;->d:I

    iput v0, p0, Lcom/mbridge/msdk/video/signal/impl/a;->e:I

    iput v0, p0, Lcom/mbridge/msdk/video/signal/impl/a;->f:I

    iput v0, p0, Lcom/mbridge/msdk/video/signal/impl/a;->g:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/mbridge/msdk/video/signal/impl/a;->h:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/mbridge/msdk/video/signal/impl/a;->i:I

    new-instance v0, Lcom/mbridge/msdk/video/signal/impl/a$a;

    invoke-direct {v0}, Lcom/mbridge/msdk/video/signal/impl/a$a;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/video/signal/impl/a;->m:Lcom/mbridge/msdk/video/signal/a$a;

    const/4 v0, 0x2

    iput v0, p0, Lcom/mbridge/msdk/video/signal/impl/a;->n:I

    iput v0, p0, Lcom/mbridge/msdk/video/signal/impl/a;->o:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mbridge/msdk/video/signal/impl/a;->p:Lcom/iab/omid/library/mmadbridge/adsession/b;

    iput-object v0, p0, Lcom/mbridge/msdk/video/signal/impl/a;->q:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    iput-object v0, p0, Lcom/mbridge/msdk/video/signal/impl/a;->r:Lcom/iab/omid/library/mmadbridge/adsession/a;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/video/signal/impl/a;->i:I

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "statistics,type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",json:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DefaultJSCommon"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/mbridge/msdk/video/signal/a$a;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTrackingListener:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultJSCommon"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/mbridge/msdk/video/signal/impl/a;->m:Lcom/mbridge/msdk/video/signal/a$a;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    const-string p1, "DefaultJSCommon"

    const-string v0, "setNotchArea"

    invoke-static {p1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIsShowingTransparent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultJSCommon"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/mbridge/msdk/video/signal/impl/a;->b:Z

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/signal/impl/a;->a:Z

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/video/signal/impl/a;->g:I

    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/video/signal/impl/a;->c:I

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mbridge/msdk/video/signal/impl/a;->a:Z

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 2

    const-string v0, "DefaultJSCommon"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "{}"

    return-object v0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/video/signal/impl/a;->e:I

    return-void
.end method

.method public click(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "click:type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",pt:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DefaultJSCommon"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d()I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAlertDialogRole "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mbridge/msdk/video/signal/impl/a;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultJSCommon"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/mbridge/msdk/video/signal/impl/a;->h:I

    return v0
.end method

.method public d(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAlertDialogRole "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultJSCommon"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/mbridge/msdk/video/signal/impl/a;->h:I

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 2

    const-string v0, "DefaultJSCommon"

    const-string v1, "getNotchArea"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public e(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/video/signal/impl/a;->d:I

    return-void
.end method

.method public f(I)Ljava/lang/String;
    .locals 1

    const-string p1, "DefaultJSCommon"

    const-string v0, "getSDKInfo"

    invoke-static {p1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "{}"

    return-object p1
.end method

.method public f()V
    .locals 2

    const-string v0, "DefaultJSCommon"

    const-string v1, "finish"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    const-string v0, "{}"

    return-object v0
.end method

.method public g(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/video/signal/impl/a;->n:I

    return-void
.end method

.method public h()V
    .locals 0

    return-void
.end method

.method public handlerH5Exception(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handlerH5Exception,code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",msg:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DefaultJSCommon"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/video/signal/impl/a;->i:I

    return v0
.end method

.method public j()Lcom/iab/omid/library/mmadbridge/adsession/a;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/impl/a;->r:Lcom/iab/omid/library/mmadbridge/adsession/a;

    return-object v0
.end method

.method public k()Lcom/iab/omid/library/mmadbridge/adsession/b;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/impl/a;->p:Lcom/iab/omid/library/mmadbridge/adsession/b;

    return-object v0
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/video/signal/impl/a;->c:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/signal/impl/a;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/mbridge/msdk/video/signal/impl/a;->c:I

    :cond_0
    iget v0, p0, Lcom/mbridge/msdk/video/signal/impl/a;->c:I

    return v0
.end method

.method public m()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/video/signal/impl/a;->d:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/signal/impl/a;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/mbridge/msdk/video/signal/impl/a;->d:I

    :cond_0
    iget v0, p0, Lcom/mbridge/msdk/video/signal/impl/a;->d:I

    return v0
.end method

.method public n()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/video/signal/impl/a;->e:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/signal/impl/a;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/mbridge/msdk/video/signal/impl/a;->e:I

    :cond_0
    iget v0, p0, Lcom/mbridge/msdk/video/signal/impl/a;->e:I

    return v0
.end method

.method public o()Lcom/iab/omid/library/mmadbridge/adsession/media/a;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/impl/a;->q:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    return-object v0
.end method

.method public p()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/signal/impl/a;->b:Z

    return v0
.end method

.method public release()V
    .locals 2

    const-string v0, "DefaultJSCommon"

    const-string v1, "release"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/impl/a;->l:Lcom/mbridge/msdk/click/a;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/click/a;->a(Z)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/impl/a;->l:Lcom/mbridge/msdk/click/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/click/a;->a(Lcom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/impl/a;->l:Lcom/mbridge/msdk/click/a;

    invoke-virtual {v0}, Lcom/mbridge/msdk/click/a;->c()V

    :cond_0
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 1

    const-string p1, "DefaultJSCommon"

    const-string v0, "setActivity "

    invoke-static {p1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAdEvents(Lcom/iab/omid/library/mmadbridge/adsession/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/video/signal/impl/a;->r:Lcom/iab/omid/library/mmadbridge/adsession/a;

    return-void
.end method

.method public setAdSession(Lcom/iab/omid/library/mmadbridge/adsession/b;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/video/signal/impl/a;->p:Lcom/iab/omid/library/mmadbridge/adsession/b;

    return-void
.end method

.method public setRewardUnitSetting(Lcom/mbridge/msdk/videocommon/setting/c;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSetting:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultJSCommon"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/mbridge/msdk/video/signal/impl/a;->k:Lcom/mbridge/msdk/videocommon/setting/c;

    return-void
.end method

.method public setUnitId(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUnitId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultJSCommon"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/mbridge/msdk/video/signal/impl/a;->j:Ljava/lang/String;

    return-void
.end method

.method public setVideoEvents(Lcom/iab/omid/library/mmadbridge/adsession/media/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/video/signal/impl/a;->q:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    return-void
.end method

.method public setWebViewFront(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/video/signal/impl/a;->g:I

    return-void
.end method
