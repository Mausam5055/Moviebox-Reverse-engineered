.class public final synthetic Lcom/transsion/player/longvideo/intercept/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;

.field public final synthetic b:Lcom/transsion/player/longvideo/intercept/d;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;Lcom/transsion/player/longvideo/intercept/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/player/longvideo/intercept/z;->a:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;

    iput-object p2, p0, Lcom/transsion/player/longvideo/intercept/z;->b:Lcom/transsion/player/longvideo/intercept/d;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/player/longvideo/intercept/z;->a:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;

    iget-object v1, p0, Lcom/transsion/player/longvideo/intercept/z;->b:Lcom/transsion/player/longvideo/intercept/d;

    invoke-static {v0, v1}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager$b;->g(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;Lcom/transsion/player/longvideo/intercept/d;)V

    return-void
.end method
