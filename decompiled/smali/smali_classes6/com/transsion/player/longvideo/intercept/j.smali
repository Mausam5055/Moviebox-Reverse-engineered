.class public final synthetic Lcom/transsion/player/longvideo/intercept/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/player/longvideo/intercept/d;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/player/longvideo/intercept/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/player/longvideo/intercept/j;->a:Lcom/transsion/player/longvideo/intercept/d;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/player/longvideo/intercept/j;->a:Lcom/transsion/player/longvideo/intercept/d;

    invoke-static {v0}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$innerLoadAd$1;->a(Lcom/transsion/player/longvideo/intercept/d;)V

    return-void
.end method
