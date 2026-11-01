.class public final synthetic Lcom/transsion/player/orplayer/c0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Landroid/view/TextureView;

.field public final synthetic b:Lcom/transsion/player/orplayer/w;


# direct methods
.method public synthetic constructor <init>(Landroid/view/TextureView;Lcom/transsion/player/orplayer/w;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/player/orplayer/c0;->a:Landroid/view/TextureView;

    iput-object p2, p0, Lcom/transsion/player/orplayer/c0;->b:Lcom/transsion/player/orplayer/w;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/player/orplayer/c0;->a:Landroid/view/TextureView;

    iget-object v1, p0, Lcom/transsion/player/orplayer/c0;->b:Lcom/transsion/player/orplayer/w;

    invoke-static {v0, v1}, Lcom/transsion/player/orplayer/w$h;->a(Landroid/view/TextureView;Lcom/transsion/player/orplayer/w;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
