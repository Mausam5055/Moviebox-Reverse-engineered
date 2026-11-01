.class public final Lcom/transsion/postdetail/util/PostSaveHelper$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/util/PostSaveHelper;->b(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic b:Lcom/transsion/moviedetailapi/bean/Image;

.field final synthetic c:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$IntRef;Lcom/transsion/moviedetailapi/bean/Image;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/util/PostSaveHelper$a;->a:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p2, p0, Lcom/transsion/postdetail/util/PostSaveHelper$a;->b:Lcom/transsion/moviedetailapi/bean/Image;

    iput-object p3, p0, Lcom/transsion/postdetail/util/PostSaveHelper$a;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 2

    const-string p5, "resource"

    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "model"

    invoke-static {p2, p5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "target"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "dataSource"

    invoke-static {p4, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/postdetail/util/PostSaveHelper$a;->a:Lkotlin/jvm/internal/Ref$IntRef;

    iget p3, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 p4, 0x1

    add-int/2addr p3, p4

    iput p3, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    sget-object p2, Lcom/transsion/postdetail/util/PostSaveHelper;->a:Lcom/transsion/postdetail/util/PostSaveHelper;

    iget-object p3, p0, Lcom/transsion/postdetail/util/PostSaveHelper$a;->b:Lcom/transsion/moviedetailapi/bean/Image;

    invoke-virtual {p3}, Lcom/transsion/moviedetailapi/bean/Image;->getUrl()Ljava/lang/String;

    move-result-object p3

    iget-object p5, p0, Lcom/transsion/postdetail/util/PostSaveHelper$a;->a:Lkotlin/jvm/internal/Ref$IntRef;

    iget p5, p5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget-object v0, p0, Lcom/transsion/postdetail/util/PostSaveHelper$a;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-ne p5, v0, :cond_0

    goto :goto_0

    :cond_0
    move p4, v1

    :goto_0
    invoke-static {p2, p1, p3, p4}, Lcom/transsion/postdetail/util/PostSaveHelper;->a(Lcom/transsion/postdetail/util/PostSaveHelper;Ljava/io/File;Ljava/lang/String;Z)V

    return v1
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

    invoke-virtual/range {p0 .. p5}, Lcom/transsion/postdetail/util/PostSaveHelper$a;->a(Ljava/io/File;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z

    move-result p1

    return p1
.end method
