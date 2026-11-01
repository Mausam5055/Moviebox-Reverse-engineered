.class public final synthetic Lcom/transsion/publish/ui/q1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field public final synthetic a:Lcom/transsion/publish/ui/VideoPreviewActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/publish/ui/VideoPreviewActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/publish/ui/q1;->a:Lcom/transsion/publish/ui/VideoPreviewActivity;

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/ui/q1;->a:Lcom/transsion/publish/ui/VideoPreviewActivity;

    invoke-static {v0, p1}, Lcom/transsion/publish/ui/VideoPreviewActivity;->g0(Lcom/transsion/publish/ui/VideoPreviewActivity;Landroid/media/MediaPlayer;)V

    return-void
.end method
