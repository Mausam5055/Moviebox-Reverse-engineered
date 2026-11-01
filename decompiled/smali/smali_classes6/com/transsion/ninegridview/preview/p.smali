.class public final synthetic Lcom/transsion/ninegridview/preview/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/ninegridview/preview/q;

.field public final synthetic b:Lcom/transsion/ninegridview/ImageInfo;

.field public final synthetic c:Lcom/transsion/photoview/PhotoView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/ninegridview/preview/q;Lcom/transsion/ninegridview/ImageInfo;Lcom/transsion/photoview/PhotoView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/ninegridview/preview/p;->a:Lcom/transsion/ninegridview/preview/q;

    iput-object p2, p0, Lcom/transsion/ninegridview/preview/p;->b:Lcom/transsion/ninegridview/ImageInfo;

    iput-object p3, p0, Lcom/transsion/ninegridview/preview/p;->c:Lcom/transsion/photoview/PhotoView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/ninegridview/preview/p;->a:Lcom/transsion/ninegridview/preview/q;

    iget-object v1, p0, Lcom/transsion/ninegridview/preview/p;->b:Lcom/transsion/ninegridview/ImageInfo;

    iget-object v2, p0, Lcom/transsion/ninegridview/preview/p;->c:Lcom/transsion/photoview/PhotoView;

    invoke-static {v0, v1, v2}, Lcom/transsion/ninegridview/preview/q;->c(Lcom/transsion/ninegridview/preview/q;Lcom/transsion/ninegridview/ImageInfo;Lcom/transsion/photoview/PhotoView;)V

    return-void
.end method
