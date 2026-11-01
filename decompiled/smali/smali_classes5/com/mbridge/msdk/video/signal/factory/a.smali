.class public Lcom/mbridge/msdk/video/signal/factory/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mbridge/msdk/video/signal/factory/IJSFactory;


# instance fields
.field protected a:Lcom/mbridge/msdk/video/signal/b;

.field protected b:Lcom/mbridge/msdk/video/signal/d;

.field protected c:Lcom/mbridge/msdk/video/signal/j;

.field protected d:Lcom/mbridge/msdk/video/signal/g;

.field protected e:Lcom/mbridge/msdk/video/signal/f;

.field protected f:Lcom/mbridge/msdk/video/signal/i;

.field protected g:Lcom/mbridge/msdk/video/signal/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivityProxy()Lcom/mbridge/msdk/video/signal/b;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/factory/a;->a:Lcom/mbridge/msdk/video/signal/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mbridge/msdk/video/signal/impl/b;

    invoke-direct {v0}, Lcom/mbridge/msdk/video/signal/impl/b;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/video/signal/factory/a;->a:Lcom/mbridge/msdk/video/signal/b;

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/factory/a;->a:Lcom/mbridge/msdk/video/signal/b;

    return-object v0
.end method

.method public getIJSRewardVideoV1()Lcom/mbridge/msdk/video/signal/i;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/factory/a;->f:Lcom/mbridge/msdk/video/signal/i;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mbridge/msdk/video/signal/impl/g;

    invoke-direct {v0}, Lcom/mbridge/msdk/video/signal/impl/g;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/video/signal/factory/a;->f:Lcom/mbridge/msdk/video/signal/i;

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/factory/a;->f:Lcom/mbridge/msdk/video/signal/i;

    return-object v0
.end method

.method public getJSBTModule()Lcom/mbridge/msdk/video/signal/c;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/factory/a;->g:Lcom/mbridge/msdk/video/signal/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mbridge/msdk/video/signal/impl/c;

    invoke-direct {v0}, Lcom/mbridge/msdk/video/signal/impl/c;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/video/signal/factory/a;->g:Lcom/mbridge/msdk/video/signal/c;

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/factory/a;->g:Lcom/mbridge/msdk/video/signal/c;

    return-object v0
.end method

.method public getJSCommon()Lcom/mbridge/msdk/video/signal/d;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/factory/a;->b:Lcom/mbridge/msdk/video/signal/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mbridge/msdk/video/signal/impl/d;

    invoke-direct {v0}, Lcom/mbridge/msdk/video/signal/impl/d;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/video/signal/factory/a;->b:Lcom/mbridge/msdk/video/signal/d;

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/factory/a;->b:Lcom/mbridge/msdk/video/signal/d;

    return-object v0
.end method

.method public getJSContainerModule()Lcom/mbridge/msdk/video/signal/f;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/factory/a;->e:Lcom/mbridge/msdk/video/signal/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mbridge/msdk/video/signal/impl/e;

    invoke-direct {v0}, Lcom/mbridge/msdk/video/signal/impl/e;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/video/signal/factory/a;->e:Lcom/mbridge/msdk/video/signal/f;

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/factory/a;->e:Lcom/mbridge/msdk/video/signal/f;

    return-object v0
.end method

.method public getJSNotifyProxy()Lcom/mbridge/msdk/video/signal/g;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/factory/a;->d:Lcom/mbridge/msdk/video/signal/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mbridge/msdk/video/signal/impl/f;

    invoke-direct {v0}, Lcom/mbridge/msdk/video/signal/impl/f;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/video/signal/factory/a;->d:Lcom/mbridge/msdk/video/signal/g;

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/factory/a;->d:Lcom/mbridge/msdk/video/signal/g;

    return-object v0
.end method

.method public getJSVideoModule()Lcom/mbridge/msdk/video/signal/j;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/factory/a;->c:Lcom/mbridge/msdk/video/signal/j;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mbridge/msdk/video/signal/impl/h;

    invoke-direct {v0}, Lcom/mbridge/msdk/video/signal/impl/h;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/video/signal/factory/a;->c:Lcom/mbridge/msdk/video/signal/j;

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/factory/a;->c:Lcom/mbridge/msdk/video/signal/j;

    return-object v0
.end method
