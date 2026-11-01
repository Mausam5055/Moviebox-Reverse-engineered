.class public final synthetic Lcom/transsion/player/orplayer/u;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aliyun/player/IPlayer$OnStateChangedListener;


# instance fields
.field public final synthetic a:Lcom/transsion/player/orplayer/w;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/player/orplayer/w;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/player/orplayer/u;->a:Lcom/transsion/player/orplayer/w;

    return-void
.end method


# virtual methods
.method public final onStateChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/player/orplayer/u;->a:Lcom/transsion/player/orplayer/w;

    invoke-static {v0, p1}, Lcom/transsion/player/orplayer/w;->o(Lcom/transsion/player/orplayer/w;I)V

    return-void
.end method
