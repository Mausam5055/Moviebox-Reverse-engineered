.class Lcom/mbridge/msdk/mbbanner/common/manager/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mbridge/msdk/mbbanner/common/listener/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/mbbanner/common/manager/a;->b(Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/mbbanner/common/data/a;Lcom/mbridge/msdk/mbbanner/common/listener/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/mbbanner/common/data/a;

.field final synthetic b:Lcom/mbridge/msdk/mbbanner/common/manager/a;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/mbbanner/common/manager/a;Lcom/mbridge/msdk/mbbanner/common/data/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/a$a;->b:Lcom/mbridge/msdk/mbbanner/common/manager/a;

    iput-object p2, p0, Lcom/mbridge/msdk/mbbanner/common/manager/a$a;->a:Lcom/mbridge/msdk/mbbanner/common/data/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/mbridge/msdk/mbbanner/common/manager/a;->b()Lcom/mbridge/msdk/mbbanner/common/manager/a;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/a$a;->a:Lcom/mbridge/msdk/mbbanner/common/data/a;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/mbbanner/common/data/a;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/a$a;->b:Lcom/mbridge/msdk/mbbanner/common/manager/a;

    invoke-static {v1}, Lcom/mbridge/msdk/mbbanner/common/manager/a;->a(Lcom/mbridge/msdk/mbbanner/common/manager/a;)Ljava/util/Map;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
