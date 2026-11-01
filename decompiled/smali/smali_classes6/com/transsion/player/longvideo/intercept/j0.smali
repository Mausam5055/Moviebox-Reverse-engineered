.class public final synthetic Lcom/transsion/player/longvideo/intercept/j0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager;

.field public final synthetic b:I

.field public final synthetic c:Lcom/transsion/baselib/db/video/PlaybackRecordTable;

.field public final synthetic d:Lho/j;

.field public final synthetic e:Lcom/transsion/player/longvideo/intercept/d;

.field public final synthetic f:Lcom/transsion/player/ui/longvideo/a;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager;ILcom/transsion/baselib/db/video/PlaybackRecordTable;Lho/j;Lcom/transsion/player/longvideo/intercept/d;Lcom/transsion/player/ui/longvideo/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/player/longvideo/intercept/j0;->a:Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager;

    iput p2, p0, Lcom/transsion/player/longvideo/intercept/j0;->b:I

    iput-object p3, p0, Lcom/transsion/player/longvideo/intercept/j0;->c:Lcom/transsion/baselib/db/video/PlaybackRecordTable;

    iput-object p4, p0, Lcom/transsion/player/longvideo/intercept/j0;->d:Lho/j;

    iput-object p5, p0, Lcom/transsion/player/longvideo/intercept/j0;->e:Lcom/transsion/player/longvideo/intercept/d;

    iput-object p6, p0, Lcom/transsion/player/longvideo/intercept/j0;->f:Lcom/transsion/player/ui/longvideo/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/transsion/player/longvideo/intercept/j0;->a:Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager;

    iget v1, p0, Lcom/transsion/player/longvideo/intercept/j0;->b:I

    iget-object v2, p0, Lcom/transsion/player/longvideo/intercept/j0;->c:Lcom/transsion/baselib/db/video/PlaybackRecordTable;

    iget-object v3, p0, Lcom/transsion/player/longvideo/intercept/j0;->d:Lho/j;

    iget-object v4, p0, Lcom/transsion/player/longvideo/intercept/j0;->e:Lcom/transsion/player/longvideo/intercept/d;

    iget-object v5, p0, Lcom/transsion/player/longvideo/intercept/j0;->f:Lcom/transsion/player/ui/longvideo/a;

    invoke-static/range {v0 .. v5}, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager;->c(Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager;ILcom/transsion/baselib/db/video/PlaybackRecordTable;Lho/j;Lcom/transsion/player/longvideo/intercept/d;Lcom/transsion/player/ui/longvideo/a;)V

    return-void
.end method
