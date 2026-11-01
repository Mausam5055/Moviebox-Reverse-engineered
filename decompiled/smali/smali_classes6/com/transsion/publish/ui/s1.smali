.class public final synthetic Lcom/transsion/publish/ui/s1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# instance fields
.field public final synthetic a:Lcom/transsion/publish/ui/VideoPreviewActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/publish/ui/VideoPreviewActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/publish/ui/s1;->a:Lcom/transsion/publish/ui/VideoPreviewActivity;

    return-void
.end method


# virtual methods
.method public final onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/ui/s1;->a:Lcom/transsion/publish/ui/VideoPreviewActivity;

    invoke-static {v0, p1, p2, p3}, Lcom/transsion/publish/ui/VideoPreviewActivity;->e0(Lcom/transsion/publish/ui/VideoPreviewActivity;Landroid/media/MediaPlayer;II)Z

    move-result p1

    return p1
.end method
