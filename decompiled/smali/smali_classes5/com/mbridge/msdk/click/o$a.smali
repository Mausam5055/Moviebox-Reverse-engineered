.class Lcom/mbridge/msdk/click/o$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/click/o;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/mbridge/msdk/click/o;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/click/o;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mbridge/msdk/click/o$a;->d:Lcom/mbridge/msdk/click/o;

    iput-object p2, p0, Lcom/mbridge/msdk/click/o$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/mbridge/msdk/click/o$a;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/mbridge/msdk/click/o$a;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/mbridge/msdk/click/o$a;->d:Lcom/mbridge/msdk/click/o;

    iget-object v1, p0, Lcom/mbridge/msdk/click/o$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/mbridge/msdk/click/o$a;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/mbridge/msdk/click/o$a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/mbridge/msdk/click/o;->a(Lcom/mbridge/msdk/click/o;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/mbridge/msdk/click/o;->a(Lcom/mbridge/msdk/click/o;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
