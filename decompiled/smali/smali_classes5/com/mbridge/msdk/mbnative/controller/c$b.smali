.class Lcom/mbridge/msdk/mbnative/controller/c$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/mbnative/controller/c;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/mbnative/controller/c;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/mbnative/controller/c;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/mbnative/controller/c$b;->a:Lcom/mbridge/msdk/mbnative/controller/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/c$b;->a:Lcom/mbridge/msdk/mbnative/controller/c;

    invoke-static {v0}, Lcom/mbridge/msdk/mbnative/controller/c;->b(Lcom/mbridge/msdk/mbnative/controller/c;)V

    return-void
.end method
