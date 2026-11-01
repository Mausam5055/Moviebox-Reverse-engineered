.class public final synthetic Lcom/transsion/player/orplayer/y;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Landroid/view/SurfaceHolder;

.field public final synthetic b:Lcom/transsion/player/orplayer/w;


# direct methods
.method public synthetic constructor <init>(Landroid/view/SurfaceHolder;Lcom/transsion/player/orplayer/w;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/player/orplayer/y;->a:Landroid/view/SurfaceHolder;

    iput-object p2, p0, Lcom/transsion/player/orplayer/y;->b:Lcom/transsion/player/orplayer/w;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/player/orplayer/y;->a:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/transsion/player/orplayer/y;->b:Lcom/transsion/player/orplayer/w;

    invoke-static {v0, v1}, Lcom/transsion/player/orplayer/w$g;->b(Landroid/view/SurfaceHolder;Lcom/transsion/player/orplayer/w;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
