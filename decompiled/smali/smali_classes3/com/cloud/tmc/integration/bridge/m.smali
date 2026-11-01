.class public final synthetic Lcom/cloud/tmc/integration/bridge/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/PixelCopy$OnPixelCopyFinishedListener;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/integration/structure/App;

.field public final synthetic b:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic c:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic d:I

.field public final synthetic e:Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/integration/structure/App;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;ILkotlin/jvm/functions/Function2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/integration/bridge/m;->a:Lcom/cloud/tmc/integration/structure/App;

    iput-object p2, p0, Lcom/cloud/tmc/integration/bridge/m;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lcom/cloud/tmc/integration/bridge/m;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput p4, p0, Lcom/cloud/tmc/integration/bridge/m;->d:I

    iput-object p5, p0, Lcom/cloud/tmc/integration/bridge/m;->e:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public final onPixelCopyFinished(I)V
    .locals 6

    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/m;->a:Lcom/cloud/tmc/integration/structure/App;

    iget-object v1, p0, Lcom/cloud/tmc/integration/bridge/m;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, p0, Lcom/cloud/tmc/integration/bridge/m;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget v3, p0, Lcom/cloud/tmc/integration/bridge/m;->d:I

    iget-object v4, p0, Lcom/cloud/tmc/integration/bridge/m;->e:Lkotlin/jvm/functions/Function2;

    move v5, p1

    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/ScreenShotBridge;->a(Lcom/cloud/tmc/integration/structure/App;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;ILkotlin/jvm/functions/Function2;I)V

    return-void
.end method
