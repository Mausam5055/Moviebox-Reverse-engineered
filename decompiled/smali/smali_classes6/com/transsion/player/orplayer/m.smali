.class public final synthetic Lcom/transsion/player/orplayer/m;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsion/player/orplayer/w;

.field public final synthetic b:Lao/e;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/player/orplayer/w;Lao/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/player/orplayer/m;->a:Lcom/transsion/player/orplayer/w;

    iput-object p2, p0, Lcom/transsion/player/orplayer/m;->b:Lao/e;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/player/orplayer/m;->a:Lcom/transsion/player/orplayer/w;

    iget-object v1, p0, Lcom/transsion/player/orplayer/m;->b:Lao/e;

    invoke-static {v0, v1}, Lcom/transsion/player/orplayer/w;->h(Lcom/transsion/player/orplayer/w;Lao/e;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
