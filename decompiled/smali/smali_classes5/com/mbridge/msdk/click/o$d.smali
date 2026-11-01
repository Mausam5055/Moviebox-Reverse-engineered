.class Lcom/mbridge/msdk/click/o$d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/click/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/click/o;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/click/o;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/click/o$d;->a:Lcom/mbridge/msdk/click/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/click/o$d;->a:Lcom/mbridge/msdk/click/o;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/click/o;->a(Lcom/mbridge/msdk/click/o;Z)Z

    iget-object v0, p0, Lcom/mbridge/msdk/click/o$d;->a:Lcom/mbridge/msdk/click/o;

    invoke-static {v0, v1}, Lcom/mbridge/msdk/click/o;->a(Lcom/mbridge/msdk/click/o;I)I

    iget-object v0, p0, Lcom/mbridge/msdk/click/o$d;->a:Lcom/mbridge/msdk/click/o;

    invoke-static {v0}, Lcom/mbridge/msdk/click/o;->g(Lcom/mbridge/msdk/click/o;)V

    return-void
.end method
