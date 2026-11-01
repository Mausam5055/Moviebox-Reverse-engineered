.class public final synthetic Lcom/cloud/tmc/integration/defaultImpl/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/kernel/node/Node;

.field public final synthetic b:Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;

.field public final synthetic c:Landroid/app/Activity;

.field public final synthetic d:Lcom/cloud/tmc/kernel/engine/IEngine;

.field public final synthetic e:Lcom/cloud/tmc/kernel/model/CreateParams;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Lcom/cloud/tmc/render/IRenderFactory$IRenderListener;

.field public final synthetic i:Lkotlin/jvm/internal/Ref$LongRef;

.field public final synthetic j:Lkotlin/jvm/internal/Ref$LongRef;

.field public final synthetic k:Lkotlin/jvm/internal/Ref$LongRef;

.field public final synthetic l:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;Landroid/app/Activity;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/model/CreateParams;Ljava/lang/String;Ljava/lang/Object;Lcom/cloud/tmc/render/IRenderFactory$IRenderListener;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/integration/defaultImpl/g;->a:Lcom/cloud/tmc/kernel/node/Node;

    iput-object p2, p0, Lcom/cloud/tmc/integration/defaultImpl/g;->b:Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;

    iput-object p3, p0, Lcom/cloud/tmc/integration/defaultImpl/g;->c:Landroid/app/Activity;

    iput-object p4, p0, Lcom/cloud/tmc/integration/defaultImpl/g;->d:Lcom/cloud/tmc/kernel/engine/IEngine;

    iput-object p5, p0, Lcom/cloud/tmc/integration/defaultImpl/g;->e:Lcom/cloud/tmc/kernel/model/CreateParams;

    iput-object p6, p0, Lcom/cloud/tmc/integration/defaultImpl/g;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/cloud/tmc/integration/defaultImpl/g;->g:Ljava/lang/Object;

    iput-object p8, p0, Lcom/cloud/tmc/integration/defaultImpl/g;->h:Lcom/cloud/tmc/render/IRenderFactory$IRenderListener;

    iput-object p9, p0, Lcom/cloud/tmc/integration/defaultImpl/g;->i:Lkotlin/jvm/internal/Ref$LongRef;

    iput-object p10, p0, Lcom/cloud/tmc/integration/defaultImpl/g;->j:Lkotlin/jvm/internal/Ref$LongRef;

    iput-object p11, p0, Lcom/cloud/tmc/integration/defaultImpl/g;->k:Lkotlin/jvm/internal/Ref$LongRef;

    iput-object p12, p0, Lcom/cloud/tmc/integration/defaultImpl/g;->l:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/g;->a:Lcom/cloud/tmc/kernel/node/Node;

    iget-object v1, p0, Lcom/cloud/tmc/integration/defaultImpl/g;->b:Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;

    iget-object v2, p0, Lcom/cloud/tmc/integration/defaultImpl/g;->c:Landroid/app/Activity;

    iget-object v3, p0, Lcom/cloud/tmc/integration/defaultImpl/g;->d:Lcom/cloud/tmc/kernel/engine/IEngine;

    iget-object v4, p0, Lcom/cloud/tmc/integration/defaultImpl/g;->e:Lcom/cloud/tmc/kernel/model/CreateParams;

    iget-object v5, p0, Lcom/cloud/tmc/integration/defaultImpl/g;->f:Ljava/lang/String;

    iget-object v6, p0, Lcom/cloud/tmc/integration/defaultImpl/g;->g:Ljava/lang/Object;

    iget-object v7, p0, Lcom/cloud/tmc/integration/defaultImpl/g;->h:Lcom/cloud/tmc/render/IRenderFactory$IRenderListener;

    iget-object v8, p0, Lcom/cloud/tmc/integration/defaultImpl/g;->i:Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v9, p0, Lcom/cloud/tmc/integration/defaultImpl/g;->j:Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v10, p0, Lcom/cloud/tmc/integration/defaultImpl/g;->k:Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v11, p0, Lcom/cloud/tmc/integration/defaultImpl/g;->l:Landroid/os/Bundle;

    invoke-static/range {v0 .. v11}, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->c(Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;Landroid/app/Activity;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/model/CreateParams;Ljava/lang/String;Ljava/lang/Object;Lcom/cloud/tmc/render/IRenderFactory$IRenderListener;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Landroid/os/Bundle;)V

    return-void
.end method
