.class Lcom/mbridge/msdk/splash/manager/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mbridge/msdk/foundation/feedback/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/splash/manager/a;->a(Lcom/mbridge/msdk/splash/middle/a;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/dycreator/viewdata/base/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/splash/middle/a;

.field final synthetic b:I

.field final synthetic c:Lcom/mbridge/msdk/splash/manager/a;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/splash/manager/a;Lcom/mbridge/msdk/splash/middle/a;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mbridge/msdk/splash/manager/a$a;->c:Lcom/mbridge/msdk/splash/manager/a;

    iput-object p2, p0, Lcom/mbridge/msdk/splash/manager/a$a;->a:Lcom/mbridge/msdk/splash/middle/a;

    iput p3, p0, Lcom/mbridge/msdk/splash/manager/a$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object p1, p0, Lcom/mbridge/msdk/splash/manager/a$a;->a:Lcom/mbridge/msdk/splash/middle/a;

    iget v0, p0, Lcom/mbridge/msdk/splash/manager/a$a;->b:I

    const/4 v1, 0x2

    invoke-interface {p1, v1, v0}, Lcom/mbridge/msdk/splash/middle/a;->a(II)V

    return-void
.end method

.method public close()V
    .locals 3

    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/a$a;->a:Lcom/mbridge/msdk/splash/middle/a;

    iget v1, p0, Lcom/mbridge/msdk/splash/manager/a$a;->b:I

    const/4 v2, 0x2

    invoke-interface {v0, v2, v1}, Lcom/mbridge/msdk/splash/middle/a;->a(II)V

    return-void
.end method
