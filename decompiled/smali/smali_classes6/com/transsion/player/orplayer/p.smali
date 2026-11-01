.class public final synthetic Lcom/transsion/player/orplayer/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aliyun/player/IPlayer$OnRenderingStartListener;


# instance fields
.field public final synthetic a:Lcom/transsion/player/orplayer/w;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/player/orplayer/w;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/player/orplayer/p;->a:Lcom/transsion/player/orplayer/w;

    return-void
.end method


# virtual methods
.method public final onRenderingStart()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/player/orplayer/p;->a:Lcom/transsion/player/orplayer/w;

    invoke-static {v0}, Lcom/transsion/player/orplayer/w;->p(Lcom/transsion/player/orplayer/w;)V

    return-void
.end method
