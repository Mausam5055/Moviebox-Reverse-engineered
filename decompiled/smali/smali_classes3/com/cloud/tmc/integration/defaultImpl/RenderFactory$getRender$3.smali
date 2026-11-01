.class public final Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;->getRender(Landroid/app/Activity;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/model/CreateParams;Ljava/lang/String;Ljava/lang/Object;Landroid/os/Bundle;ZLcom/cloud/tmc/render/IRenderFactory$IRenderListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016J\u0010\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0008\u0010\u0008\u001a\u00020\u0003H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3",
        "Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderListener;",
        "createRenderSuccess",
        "",
        "loadRenderFrameworkSuccess",
        "warmupFail",
        "step",
        "",
        "warmupSuccess",
        "com.cloud.tmc.integration"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic $context:Ljava/lang/Object;

.field final synthetic $createParams:Lcom/cloud/tmc/kernel/model/CreateParams;

.field final synthetic $createRenderEndTime:Lkotlin/jvm/internal/Ref$LongRef;

.field final synthetic $data:Landroid/os/Bundle;

.field final synthetic $engineProxy:Lcom/cloud/tmc/kernel/engine/IEngine;

.field final synthetic $listener:Lcom/cloud/tmc/render/IRenderFactory$IRenderListener;

.field final synthetic $loadRenderFrameworkEndTime:Lkotlin/jvm/internal/Ref$LongRef;

.field final synthetic $loadRenderFrameworkStartTime:Lkotlin/jvm/internal/Ref$LongRef;

.field final synthetic $node:Lcom/cloud/tmc/kernel/node/Node;

.field final synthetic $pageId:Ljava/lang/String;

.field final synthetic this$0:Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lcom/cloud/tmc/kernel/engine/IEngine;Lkotlin/jvm/internal/Ref$LongRef;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;Landroid/app/Activity;Lcom/cloud/tmc/kernel/model/CreateParams;Ljava/lang/String;Ljava/lang/Object;Lcom/cloud/tmc/render/IRenderFactory$IRenderListener;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$createRenderEndTime:Lkotlin/jvm/internal/Ref$LongRef;

    iput-object p2, p0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$loadRenderFrameworkStartTime:Lkotlin/jvm/internal/Ref$LongRef;

    iput-object p3, p0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$engineProxy:Lcom/cloud/tmc/kernel/engine/IEngine;

    iput-object p4, p0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$loadRenderFrameworkEndTime:Lkotlin/jvm/internal/Ref$LongRef;

    iput-object p5, p0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$node:Lcom/cloud/tmc/kernel/node/Node;

    iput-object p6, p0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->this$0:Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;

    iput-object p7, p0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$activity:Landroid/app/Activity;

    iput-object p8, p0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$createParams:Lcom/cloud/tmc/kernel/model/CreateParams;

    iput-object p9, p0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$pageId:Ljava/lang/String;

    iput-object p10, p0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$context:Ljava/lang/Object;

    iput-object p11, p0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$listener:Lcom/cloud/tmc/render/IRenderFactory$IRenderListener;

    iput-object p12, p0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$data:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;Landroid/app/Activity;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/model/CreateParams;Ljava/lang/String;Ljava/lang/Object;Lcom/cloud/tmc/render/IRenderFactory$IRenderListener;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Landroid/os/Bundle;)V
    .locals 0

    invoke-static/range {p0 .. p11}, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->loadRenderFrameworkSuccess$lambda$0(Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;Landroid/app/Activity;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/model/CreateParams;Ljava/lang/String;Ljava/lang/Object;Lcom/cloud/tmc/render/IRenderFactory$IRenderListener;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic b(Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;Landroid/app/Activity;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/model/CreateParams;Ljava/lang/String;Ljava/lang/Object;Lcom/cloud/tmc/render/IRenderFactory$IRenderListener;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Landroid/os/Bundle;)V
    .locals 0

    invoke-static/range {p0 .. p11}, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->warmupFail$lambda$2(Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;Landroid/app/Activity;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/model/CreateParams;Ljava/lang/String;Ljava/lang/Object;Lcom/cloud/tmc/render/IRenderFactory$IRenderListener;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic c(Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;Landroid/app/Activity;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/model/CreateParams;Ljava/lang/String;Ljava/lang/Object;Lcom/cloud/tmc/render/IRenderFactory$IRenderListener;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Landroid/os/Bundle;)V
    .locals 0

    invoke-static/range {p0 .. p11}, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->warmupSuccess$lambda$1(Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;Landroid/app/Activity;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/model/CreateParams;Ljava/lang/String;Ljava/lang/Object;Lcom/cloud/tmc/render/IRenderFactory$IRenderListener;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Landroid/os/Bundle;)V

    return-void
.end method

.method private static final loadRenderFrameworkSuccess$lambda$0(Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;Landroid/app/Activity;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/model/CreateParams;Ljava/lang/String;Ljava/lang/Object;Lcom/cloud/tmc/render/IRenderFactory$IRenderListener;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Landroid/os/Bundle;)V
    .locals 18

    move-object/from16 v3, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p8

    move-object/from16 v2, p9

    move-object/from16 v4, p10

    const-string v5, "this$0"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$pageId"

    move-object/from16 v6, p5

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$context"

    move-object/from16 v7, p6

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$listener"

    move-object/from16 v8, p7

    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$createRenderEndTime"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$loadRenderFrameworkStartTime"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$loadRenderFrameworkEndTime"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$data"

    move-object/from16 v15, p11

    invoke-static {v15, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v5, v3, Lcom/cloud/tmc/integration/structure/node/PageNode;

    const/4 v9, 0x0

    if-eqz v5, :cond_0

    move-object v5, v3

    check-cast v5, Lcom/cloud/tmc/integration/structure/node/PageNode;

    goto :goto_0

    :cond_0
    move-object v5, v9

    :goto_0
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v9

    :cond_1
    if-nez v9, :cond_2

    const-string v0, "InnerWarmup"

    const-string v1, "app\u5df2\u6467\u6bc1\uff0c\u4e0d\u518d\u7ee7\u7eed\u6267\u884cRender"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    move-object/from16 v5, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-static {v0, v5, v9, v3, v10}, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;->access$createRender(Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;Landroid/app/Activity;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/model/CreateParams;)Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object v11

    iget-wide v12, v1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    iget-wide v1, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    iget-wide v14, v4, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    move-object/from16 v0, p1

    move-wide/from16 v16, v1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p0

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object v7, v11

    move-object/from16 v8, p7

    move-wide v9, v12

    move-wide/from16 v11, v16

    move-wide v13, v14

    move-object/from16 v15, p11

    invoke-static/range {v0 .. v15}, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;->access$initRenderEnv(Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;Landroid/app/Activity;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/model/CreateParams;Ljava/lang/String;Ljava/lang/Object;Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/render/IRenderFactory$IRenderListener;JJJLandroid/os/Bundle;)V

    return-void
.end method

.method private static final warmupFail$lambda$2(Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;Landroid/app/Activity;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/model/CreateParams;Ljava/lang/String;Ljava/lang/Object;Lcom/cloud/tmc/render/IRenderFactory$IRenderListener;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Landroid/os/Bundle;)V
    .locals 18

    move-object/from16 v3, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p8

    move-object/from16 v2, p9

    move-object/from16 v4, p10

    const-string v5, "this$0"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$pageId"

    move-object/from16 v6, p5

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$context"

    move-object/from16 v7, p6

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$listener"

    move-object/from16 v8, p7

    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$createRenderEndTime"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$loadRenderFrameworkStartTime"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$loadRenderFrameworkEndTime"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$data"

    move-object/from16 v15, p11

    invoke-static {v15, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v5, v3, Lcom/cloud/tmc/integration/structure/node/PageNode;

    const/4 v9, 0x0

    if-eqz v5, :cond_0

    move-object v5, v3

    check-cast v5, Lcom/cloud/tmc/integration/structure/node/PageNode;

    goto :goto_0

    :cond_0
    move-object v5, v9

    :goto_0
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v9

    :cond_1
    if-nez v9, :cond_2

    const-string v0, "InnerWarmup"

    const-string v1, "app\u5df2\u6467\u6bc1\uff0c\u4e0d\u518d\u7ee7\u7eed\u6267\u884cRender"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    move-object/from16 v5, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-static {v0, v5, v9, v3, v10}, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;->access$createRender(Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;Landroid/app/Activity;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/model/CreateParams;)Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object v11

    iget-wide v12, v1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    iget-wide v1, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    iget-wide v14, v4, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    move-object/from16 v0, p1

    move-wide/from16 v16, v1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p0

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object v7, v11

    move-object/from16 v8, p7

    move-wide v9, v12

    move-wide/from16 v11, v16

    move-wide v13, v14

    move-object/from16 v15, p11

    invoke-static/range {v0 .. v15}, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;->access$initRenderEnv(Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;Landroid/app/Activity;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/model/CreateParams;Ljava/lang/String;Ljava/lang/Object;Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/render/IRenderFactory$IRenderListener;JJJLandroid/os/Bundle;)V

    return-void
.end method

.method private static final warmupSuccess$lambda$1(Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;Landroid/app/Activity;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/model/CreateParams;Ljava/lang/String;Ljava/lang/Object;Lcom/cloud/tmc/render/IRenderFactory$IRenderListener;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Landroid/os/Bundle;)V
    .locals 18

    move-object/from16 v3, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p8

    move-object/from16 v2, p9

    move-object/from16 v4, p10

    const-string v5, "this$0"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$pageId"

    move-object/from16 v6, p5

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$context"

    move-object/from16 v7, p6

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$listener"

    move-object/from16 v8, p7

    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$createRenderEndTime"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$loadRenderFrameworkStartTime"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$loadRenderFrameworkEndTime"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$data"

    move-object/from16 v15, p11

    invoke-static {v15, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v5, v3, Lcom/cloud/tmc/integration/structure/node/PageNode;

    const/4 v9, 0x0

    if-eqz v5, :cond_0

    move-object v5, v3

    check-cast v5, Lcom/cloud/tmc/integration/structure/node/PageNode;

    goto :goto_0

    :cond_0
    move-object v5, v9

    :goto_0
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v9

    :cond_1
    if-nez v9, :cond_2

    const-string v0, "InnerWarmup"

    const-string v1, "app\u5df2\u6467\u6bc1\uff0c\u4e0d\u518d\u7ee7\u7eed\u6267\u884cRender"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    move-object/from16 v5, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-static {v0, v5, v9, v3, v10}, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;->access$createRender(Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;Landroid/app/Activity;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/model/CreateParams;)Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object v11

    iget-wide v12, v1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    iget-wide v1, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    iget-wide v14, v4, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    move-object/from16 v0, p1

    move-wide/from16 v16, v1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p0

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object v7, v11

    move-object/from16 v8, p7

    move-wide v9, v12

    move-wide/from16 v11, v16

    move-wide v13, v14

    move-object/from16 v15, p11

    invoke-static/range {v0 .. v15}, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;->access$initRenderEnv(Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;Landroid/app/Activity;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/model/CreateParams;Ljava/lang/String;Ljava/lang/Object;Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/render/IRenderFactory$IRenderListener;JJJLandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public createRenderSuccess()V
    .locals 3

    const-string v0, "InnerWarmup"

    const-string v1, "listener callback => createRenderSuccess"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$createRenderEndTime:Lkotlin/jvm/internal/Ref$LongRef;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$loadRenderFrameworkStartTime:Lkotlin/jvm/internal/Ref$LongRef;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    return-void
.end method

.method public loadRenderFrameworkSuccess()V
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "InnerWarmup"

    const-string v2, "listener callback => loadRenderFrameworkSuccess"

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-class v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceImprovesProxy;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceImprovesProxy;

    iget-object v2, v0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$engineProxy:Lcom/cloud/tmc/kernel/engine/IEngine;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/cloud/tmc/kernel/engine/IEngine;->getAppId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "render"

    invoke-interface {v1, v2, v3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceImprovesProxy;->addPeroformanceImprove(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$loadRenderFrameworkEndTime:Lkotlin/jvm/internal/Ref$LongRef;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    iget-object v5, v0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$node:Lcom/cloud/tmc/kernel/node/Node;

    iget-object v6, v0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->this$0:Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;

    iget-object v7, v0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$activity:Landroid/app/Activity;

    iget-object v8, v0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$engineProxy:Lcom/cloud/tmc/kernel/engine/IEngine;

    iget-object v9, v0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$createParams:Lcom/cloud/tmc/kernel/model/CreateParams;

    iget-object v10, v0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$pageId:Ljava/lang/String;

    iget-object v11, v0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$context:Ljava/lang/Object;

    iget-object v12, v0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$listener:Lcom/cloud/tmc/render/IRenderFactory$IRenderListener;

    iget-object v13, v0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$createRenderEndTime:Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v14, v0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$loadRenderFrameworkStartTime:Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v15, v0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$loadRenderFrameworkEndTime:Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v1, v0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$data:Landroid/os/Bundle;

    new-instance v2, Lcom/cloud/tmc/integration/defaultImpl/f;

    move-object v4, v2

    move-object/from16 v16, v1

    invoke-direct/range {v4 .. v16}, Lcom/cloud/tmc/integration/defaultImpl/f;-><init>(Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;Landroid/app/Activity;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/model/CreateParams;Ljava/lang/String;Ljava/lang/Object;Lcom/cloud/tmc/render/IRenderFactory$IRenderListener;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Landroid/os/Bundle;)V

    invoke-static {v2}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;)V

    return-void
.end method

.method public warmupFail(I)V
    .locals 14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "listener callback => render warmupFail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "InnerWarmup"

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$createRenderEndTime:Lkotlin/jvm/internal/Ref$LongRef;

    const-wide/16 v0, 0x0

    iput-wide v0, v10, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    iget-object v11, p0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$loadRenderFrameworkStartTime:Lkotlin/jvm/internal/Ref$LongRef;

    iput-wide v0, v11, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    iget-object v12, p0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$loadRenderFrameworkEndTime:Lkotlin/jvm/internal/Ref$LongRef;

    iput-wide v0, v12, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    iget-object v2, p0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$node:Lcom/cloud/tmc/kernel/node/Node;

    iget-object v3, p0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->this$0:Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;

    iget-object v4, p0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$activity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$engineProxy:Lcom/cloud/tmc/kernel/engine/IEngine;

    iget-object v6, p0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$createParams:Lcom/cloud/tmc/kernel/model/CreateParams;

    iget-object v7, p0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$pageId:Ljava/lang/String;

    iget-object v8, p0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$context:Ljava/lang/Object;

    iget-object v9, p0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$listener:Lcom/cloud/tmc/render/IRenderFactory$IRenderListener;

    iget-object v13, p0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$data:Landroid/os/Bundle;

    new-instance p1, Lcom/cloud/tmc/integration/defaultImpl/e;

    move-object v1, p1

    invoke-direct/range {v1 .. v13}, Lcom/cloud/tmc/integration/defaultImpl/e;-><init>(Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;Landroid/app/Activity;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/model/CreateParams;Ljava/lang/String;Ljava/lang/Object;Lcom/cloud/tmc/render/IRenderFactory$IRenderListener;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Landroid/os/Bundle;)V

    invoke-static {p1}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;)V

    return-void
.end method

.method public warmupSuccess()V
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "InnerWarmup"

    const-string v2, "listener callback => render warmupSuccess"

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-class v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceImprovesProxy;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceImprovesProxy;

    iget-object v2, v0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$engineProxy:Lcom/cloud/tmc/kernel/engine/IEngine;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/cloud/tmc/kernel/engine/IEngine;->getAppId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "render"

    invoke-interface {v1, v2, v3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceImprovesProxy;->addPeroformanceImprove(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$createRenderEndTime:Lkotlin/jvm/internal/Ref$LongRef;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    iget-object v1, v0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$loadRenderFrameworkStartTime:Lkotlin/jvm/internal/Ref$LongRef;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    iget-object v1, v0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$loadRenderFrameworkEndTime:Lkotlin/jvm/internal/Ref$LongRef;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    iget-object v5, v0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$node:Lcom/cloud/tmc/kernel/node/Node;

    iget-object v6, v0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->this$0:Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;

    iget-object v7, v0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$activity:Landroid/app/Activity;

    iget-object v8, v0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$engineProxy:Lcom/cloud/tmc/kernel/engine/IEngine;

    iget-object v9, v0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$createParams:Lcom/cloud/tmc/kernel/model/CreateParams;

    iget-object v10, v0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$pageId:Ljava/lang/String;

    iget-object v11, v0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$context:Ljava/lang/Object;

    iget-object v12, v0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$listener:Lcom/cloud/tmc/render/IRenderFactory$IRenderListener;

    iget-object v13, v0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$createRenderEndTime:Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v14, v0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$loadRenderFrameworkStartTime:Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v15, v0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$loadRenderFrameworkEndTime:Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v1, v0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$data:Landroid/os/Bundle;

    new-instance v2, Lcom/cloud/tmc/integration/defaultImpl/g;

    move-object v4, v2

    move-object/from16 v16, v1

    invoke-direct/range {v4 .. v16}, Lcom/cloud/tmc/integration/defaultImpl/g;-><init>(Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;Landroid/app/Activity;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/model/CreateParams;Ljava/lang/String;Ljava/lang/Object;Lcom/cloud/tmc/render/IRenderFactory$IRenderListener;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Landroid/os/Bundle;)V

    invoke-static {v2}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;)V

    return-void
.end method
