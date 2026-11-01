.class public final Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->downloadImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;

.field final synthetic b:Lcom/transsion/moviedetailapi/bean/Image;


# direct methods
.method constructor <init>(Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;Lcom/transsion/moviedetailapi/bean/Image;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$d;->a:Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;

    iput-object p2, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$d;->b:Lcom/transsion/moviedetailapi/bean/Image;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0

    const-string p5, "resource"

    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "model"

    invoke-static {p2, p5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "target"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "dataSource"

    invoke-static {p4, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$d;->a:Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;

    iget-object p3, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$d;->b:Lcom/transsion/moviedetailapi/bean/Image;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/transsion/moviedetailapi/bean/Image;->getUrl()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-static {p2, p1, p3}, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->access$saveToAlbum(Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;Ljava/io/File;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z
    .locals 0

    const-string p1, "target"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Luh/b;->a:Luh/b$a;

    sget p2, Lcom/transsion/ninegridview/R$string;->download_failed:I

    invoke-virtual {p1, p2}, Luh/b$a;->d(I)V

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0

    check-cast p1, Ljava/io/File;

    invoke-virtual/range {p0 .. p5}, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$d;->a(Ljava/io/File;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z

    move-result p1

    return p1
.end method
