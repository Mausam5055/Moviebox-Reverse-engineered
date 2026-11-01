.class Lcom/mbridge/msdk/mbbanner/common/manager/a$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/mbbanner/common/manager/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/mbbanner/common/data/a;Lcom/mbridge/msdk/mbbanner/common/listener/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/mbridge/msdk/out/MBridgeIds;

.field final synthetic c:Lcom/mbridge/msdk/mbbanner/common/listener/b;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/mbridge/msdk/mbbanner/common/data/a;

.field final synthetic f:Lcom/mbridge/msdk/mbbanner/common/manager/a;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/mbbanner/common/manager/a;Ljava/lang/String;Lcom/mbridge/msdk/out/MBridgeIds;Lcom/mbridge/msdk/mbbanner/common/listener/b;Ljava/lang/String;Lcom/mbridge/msdk/mbbanner/common/data/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/a$b;->f:Lcom/mbridge/msdk/mbbanner/common/manager/a;

    iput-object p2, p0, Lcom/mbridge/msdk/mbbanner/common/manager/a$b;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/mbridge/msdk/mbbanner/common/manager/a$b;->b:Lcom/mbridge/msdk/out/MBridgeIds;

    iput-object p4, p0, Lcom/mbridge/msdk/mbbanner/common/manager/a$b;->c:Lcom/mbridge/msdk/mbbanner/common/listener/b;

    iput-object p5, p0, Lcom/mbridge/msdk/mbbanner/common/manager/a$b;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/mbridge/msdk/mbbanner/common/manager/a$b;->e:Lcom/mbridge/msdk/mbbanner/common/data/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/a$b;->f:Lcom/mbridge/msdk/mbbanner/common/manager/a;

    invoke-static {v0}, Lcom/mbridge/msdk/mbbanner/common/manager/a;->a(Lcom/mbridge/msdk/mbbanner/common/manager/a;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/a$b;->f:Lcom/mbridge/msdk/mbbanner/common/manager/a;

    invoke-static {v0}, Lcom/mbridge/msdk/mbbanner/common/manager/a;->a(Lcom/mbridge/msdk/mbbanner/common/manager/a;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/a$b;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/a$b;->f:Lcom/mbridge/msdk/mbbanner/common/manager/a;

    invoke-static {v0}, Lcom/mbridge/msdk/mbbanner/common/manager/a;->a(Lcom/mbridge/msdk/mbbanner/common/manager/a;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/a$b;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/a$b;->f:Lcom/mbridge/msdk/mbbanner/common/manager/a;

    invoke-static {v0}, Lcom/mbridge/msdk/mbbanner/common/manager/a;->b(Lcom/mbridge/msdk/mbbanner/common/manager/a;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/a$b;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/a$b;->f:Lcom/mbridge/msdk/mbbanner/common/manager/a;

    invoke-static {v0}, Lcom/mbridge/msdk/mbbanner/common/manager/a;->b(Lcom/mbridge/msdk/mbbanner/common/manager/a;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/a$b;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    :cond_2
    invoke-static {}, Lcom/mbridge/msdk/mbbanner/common/manager/a;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doUnitRotation: autoRotationStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " && unitId="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/a$b;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/a$b;->f:Lcom/mbridge/msdk/mbbanner/common/manager/a;

    invoke-static {v0}, Lcom/mbridge/msdk/mbbanner/common/manager/a;->c(Lcom/mbridge/msdk/mbbanner/common/manager/a;)Lcom/mbridge/msdk/mbbanner/common/util/a;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/mbridge/msdk/foundation/error/b;

    const v1, 0xd6d9a

    invoke-direct {v0, v1}, Lcom/mbridge/msdk/foundation/error/b;-><init>(I)V

    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/a$b;->b:Lcom/mbridge/msdk/out/MBridgeIds;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/error/b;->a(Lcom/mbridge/msdk/out/MBridgeIds;)V

    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/a$b;->f:Lcom/mbridge/msdk/mbbanner/common/manager/a;

    invoke-static {v1}, Lcom/mbridge/msdk/mbbanner/common/manager/a;->c(Lcom/mbridge/msdk/mbbanner/common/manager/a;)Lcom/mbridge/msdk/mbbanner/common/util/a;

    move-result-object v1

    iget-object v2, p0, Lcom/mbridge/msdk/mbbanner/common/manager/a$b;->c:Lcom/mbridge/msdk/mbbanner/common/listener/b;

    invoke-virtual {v1, v2, v0}, Lcom/mbridge/msdk/mbbanner/common/util/a;->a(Lcom/mbridge/msdk/mbbanner/common/listener/b;Lcom/mbridge/msdk/foundation/error/b;)V

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/a$b;->f:Lcom/mbridge/msdk/mbbanner/common/manager/a;

    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/a$b;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/mbridge/msdk/mbbanner/common/manager/a$b;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/mbridge/msdk/mbbanner/common/manager/a$b;->e:Lcom/mbridge/msdk/mbbanner/common/data/a;

    iget-object v4, p0, Lcom/mbridge/msdk/mbbanner/common/manager/a$b;->c:Lcom/mbridge/msdk/mbbanner/common/listener/b;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mbridge/msdk/mbbanner/common/manager/a;->b(Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/mbbanner/common/data/a;Lcom/mbridge/msdk/mbbanner/common/listener/b;)V

    return-void
.end method
