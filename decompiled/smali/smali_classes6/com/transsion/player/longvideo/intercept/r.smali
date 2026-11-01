.class public final synthetic Lcom/transsion/player/longvideo/intercept/r;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/player/longvideo/intercept/r;->a:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/player/longvideo/intercept/r;->a:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;

    invoke-static {v0}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->f(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
