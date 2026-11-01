.class public final synthetic Lcom/transsion/player/orplayer/i;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Landroid/view/TextureView;

.field public final synthetic b:Lcom/transsion/player/orplayer/w;

.field public final synthetic c:Landroid/graphics/SurfaceTexture;


# direct methods
.method public synthetic constructor <init>(Landroid/view/TextureView;Lcom/transsion/player/orplayer/w;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/player/orplayer/i;->a:Landroid/view/TextureView;

    iput-object p2, p0, Lcom/transsion/player/orplayer/i;->b:Lcom/transsion/player/orplayer/w;

    iput-object p3, p0, Lcom/transsion/player/orplayer/i;->c:Landroid/graphics/SurfaceTexture;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/transsion/player/orplayer/i;->a:Landroid/view/TextureView;

    iget-object v1, p0, Lcom/transsion/player/orplayer/i;->b:Lcom/transsion/player/orplayer/w;

    iget-object v2, p0, Lcom/transsion/player/orplayer/i;->c:Landroid/graphics/SurfaceTexture;

    invoke-static {v0, v1, v2}, Lcom/transsion/player/orplayer/w;->c(Landroid/view/TextureView;Lcom/transsion/player/orplayer/w;Landroid/graphics/SurfaceTexture;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
