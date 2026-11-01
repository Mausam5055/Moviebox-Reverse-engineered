.class public Lcom/mbridge/msdk/mbbanner/common/listener/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mbridge/msdk/mbbanner/common/listener/c;


# instance fields
.field private a:Lcom/mbridge/msdk/mbbanner/common/listener/c;

.field private b:Lcom/mbridge/msdk/setting/l;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/mbridge/msdk/mbbanner/common/listener/c;Lcom/mbridge/msdk/setting/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/mbridge/msdk/mbbanner/common/listener/e;->b:Lcom/mbridge/msdk/setting/l;

    iput-object p1, p0, Lcom/mbridge/msdk/mbbanner/common/listener/e;->a:Lcom/mbridge/msdk/mbbanner/common/listener/c;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/listener/e;->a:Lcom/mbridge/msdk/mbbanner/common/listener/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mbridge/msdk/mbbanner/common/listener/c;->a()V

    :cond_0
    return-void
.end method

.method public a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/listener/e;->a:Lcom/mbridge/msdk/mbbanner/common/listener/c;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/mbridge/msdk/mbbanner/common/listener/c;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/mbridge/msdk/foundation/error/b;)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/listener/e;->a:Lcom/mbridge/msdk/mbbanner/common/listener/c;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/mbridge/msdk/mbbanner/common/listener/c;->a(Lcom/mbridge/msdk/foundation/error/b;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/listener/e;->a:Lcom/mbridge/msdk/mbbanner/common/listener/c;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/mbridge/msdk/mbbanner/common/listener/c;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/listener/e;->a:Lcom/mbridge/msdk/mbbanner/common/listener/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mbridge/msdk/mbbanner/common/listener/c;->b()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/listener/e;->a:Lcom/mbridge/msdk/mbbanner/common/listener/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mbridge/msdk/mbbanner/common/listener/c;->c()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/listener/e;->a:Lcom/mbridge/msdk/mbbanner/common/listener/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mbridge/msdk/mbbanner/common/listener/c;->d()V

    :cond_0
    return-void
.end method

.method public onLeaveApp()V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/listener/e;->a:Lcom/mbridge/msdk/mbbanner/common/listener/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mbridge/msdk/mbbanner/common/listener/c;->onLeaveApp()V

    :cond_0
    return-void
.end method
