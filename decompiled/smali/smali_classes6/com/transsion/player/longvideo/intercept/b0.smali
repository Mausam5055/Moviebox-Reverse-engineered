.class public final synthetic Lcom/transsion/player/longvideo/intercept/b0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/player/longvideo/intercept/VideoContentInterceptView;

.field public final synthetic b:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;

.field public final synthetic c:Lcom/transsion/player/longvideo/intercept/d;

.field public final synthetic d:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/player/longvideo/intercept/VideoContentInterceptView;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;Lcom/transsion/player/longvideo/intercept/d;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/player/longvideo/intercept/b0;->a:Lcom/transsion/player/longvideo/intercept/VideoContentInterceptView;

    iput-object p2, p0, Lcom/transsion/player/longvideo/intercept/b0;->b:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;

    iput-object p3, p0, Lcom/transsion/player/longvideo/intercept/b0;->c:Lcom/transsion/player/longvideo/intercept/d;

    iput-object p4, p0, Lcom/transsion/player/longvideo/intercept/b0;->d:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/player/longvideo/intercept/b0;->a:Lcom/transsion/player/longvideo/intercept/VideoContentInterceptView;

    iget-object v1, p0, Lcom/transsion/player/longvideo/intercept/b0;->b:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;

    iget-object v2, p0, Lcom/transsion/player/longvideo/intercept/b0;->c:Lcom/transsion/player/longvideo/intercept/d;

    iget-object v3, p0, Lcom/transsion/player/longvideo/intercept/b0;->d:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;

    invoke-static {v0, v1, v2, v3}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager$e;->g(Lcom/transsion/player/longvideo/intercept/VideoContentInterceptView;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;Lcom/transsion/player/longvideo/intercept/d;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)V

    return-void
.end method
