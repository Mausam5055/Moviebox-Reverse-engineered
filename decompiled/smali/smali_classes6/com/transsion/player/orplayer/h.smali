.class public final synthetic Lcom/transsion/player/orplayer/h;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/player/orplayer/w;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/player/orplayer/w;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/player/orplayer/h;->a:Lcom/transsion/player/orplayer/w;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/player/orplayer/h;->a:Lcom/transsion/player/orplayer/w;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/transsion/player/orplayer/w;->d(Lcom/transsion/player/orplayer/w;Z)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
