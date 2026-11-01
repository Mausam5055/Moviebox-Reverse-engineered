.class public final synthetic Lcom/transsion/player/longvideo/intercept/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/player/longvideo/intercept/d;

.field public final synthetic b:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/player/longvideo/intercept/d;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/player/longvideo/intercept/p;->a:Lcom/transsion/player/longvideo/intercept/d;

    iput-object p2, p0, Lcom/transsion/player/longvideo/intercept/p;->b:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/player/longvideo/intercept/p;->a:Lcom/transsion/player/longvideo/intercept/d;

    iget-object v1, p0, Lcom/transsion/player/longvideo/intercept/p;->b:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;

    invoke-static {v0, v1}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->b(Lcom/transsion/player/longvideo/intercept/d;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)V

    return-void
.end method
