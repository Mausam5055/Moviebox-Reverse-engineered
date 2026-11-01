.class public final synthetic Lcom/transsion/audio/player/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aliyun/player/IPlayer$OnVideoSizeChangedListener;


# instance fields
.field public final synthetic a:Lcom/transsion/audio/player/l;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/player/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/audio/player/g;->a:Lcom/transsion/audio/player/l;

    return-void
.end method


# virtual methods
.method public final onVideoSizeChanged(II)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/player/g;->a:Lcom/transsion/audio/player/l;

    invoke-static {v0, p1, p2}, Lcom/transsion/audio/player/l;->d(Lcom/transsion/audio/player/l;II)V

    return-void
.end method
