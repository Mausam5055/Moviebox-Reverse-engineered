.class public Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView$h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field private a:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView$h;->a:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "MediaViewPlayerView"

    :try_start_0
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView$h;->a:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {v1}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->c(Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "play end and display endcardView"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView$h;->a:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {v1}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->d(Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
