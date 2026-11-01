.class public final synthetic Lcom/transsion/player/longvideo/intercept/l0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lho/j;

.field public final synthetic b:Lcom/transsion/player/longvideo/intercept/d;

.field public final synthetic c:Lcom/transsion/player/ui/longvideo/a;


# direct methods
.method public synthetic constructor <init>(Lho/j;Lcom/transsion/player/longvideo/intercept/d;Lcom/transsion/player/ui/longvideo/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/player/longvideo/intercept/l0;->a:Lho/j;

    iput-object p2, p0, Lcom/transsion/player/longvideo/intercept/l0;->b:Lcom/transsion/player/longvideo/intercept/d;

    iput-object p3, p0, Lcom/transsion/player/longvideo/intercept/l0;->c:Lcom/transsion/player/ui/longvideo/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/player/longvideo/intercept/l0;->a:Lho/j;

    iget-object v1, p0, Lcom/transsion/player/longvideo/intercept/l0;->b:Lcom/transsion/player/longvideo/intercept/d;

    iget-object v2, p0, Lcom/transsion/player/longvideo/intercept/l0;->c:Lcom/transsion/player/ui/longvideo/a;

    invoke-static {v0, v1, v2}, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager;->d(Lho/j;Lcom/transsion/player/longvideo/intercept/d;Lcom/transsion/player/ui/longvideo/a;)V

    return-void
.end method
