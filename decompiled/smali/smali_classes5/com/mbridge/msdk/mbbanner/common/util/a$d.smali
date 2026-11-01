.class Lcom/mbridge/msdk/mbbanner/common/util/a$d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/mbbanner/common/util/a;->b(Lcom/mbridge/msdk/mbbanner/common/listener/b;Lcom/mbridge/msdk/foundation/error/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/mbbanner/common/listener/b;

.field final synthetic b:Lcom/mbridge/msdk/foundation/error/b;

.field final synthetic c:Lcom/mbridge/msdk/mbbanner/common/util/a;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/mbbanner/common/util/a;Lcom/mbridge/msdk/mbbanner/common/listener/b;Lcom/mbridge/msdk/foundation/error/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mbridge/msdk/mbbanner/common/util/a$d;->c:Lcom/mbridge/msdk/mbbanner/common/util/a;

    iput-object p2, p0, Lcom/mbridge/msdk/mbbanner/common/util/a$d;->a:Lcom/mbridge/msdk/mbbanner/common/listener/b;

    iput-object p3, p0, Lcom/mbridge/msdk/mbbanner/common/util/a$d;->b:Lcom/mbridge/msdk/foundation/error/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/util/a$d;->a:Lcom/mbridge/msdk/mbbanner/common/listener/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/util/a$d;->b:Lcom/mbridge/msdk/foundation/error/b;

    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/common/util/a$d;->c:Lcom/mbridge/msdk/mbbanner/common/util/a;

    invoke-static {v1}, Lcom/mbridge/msdk/mbbanner/common/util/a;->a(Lcom/mbridge/msdk/mbbanner/common/util/a;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/error/b;->a(Z)V

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/util/a$d;->a:Lcom/mbridge/msdk/mbbanner/common/listener/b;

    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/common/util/a$d;->b:Lcom/mbridge/msdk/foundation/error/b;

    invoke-interface {v0, v1}, Lcom/mbridge/msdk/mbbanner/common/listener/b;->b(Lcom/mbridge/msdk/foundation/error/b;)V

    :cond_0
    return-void
.end method
