.class Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b;->a(Landroid/content/Context;Lcom/mbridge/msdk/out/OnCompletionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/mbridge/msdk/out/OnCompletionListener;

.field final synthetic c:Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b;Landroid/content/Context;Lcom/mbridge/msdk/out/OnCompletionListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b$a;->c:Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b;

    iput-object p2, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b$a;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b$a;->b:Lcom/mbridge/msdk/out/OnCompletionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b$a;->c:Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b;

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b$a;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b;->a(Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b$a;->b:Lcom/mbridge/msdk/out/OnCompletionListener;

    invoke-interface {v0}, Lcom/mbridge/msdk/out/OnCompletionListener;->onCompletion()V

    return-void
.end method
