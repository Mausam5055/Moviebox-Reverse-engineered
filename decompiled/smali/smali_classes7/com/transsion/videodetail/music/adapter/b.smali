.class public final Lcom/transsion/videodetail/music/adapter/b;
.super Landroidx/recyclerview/widget/DiffUtil$a;


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 1

    const-string v0, "oldList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$a;-><init>()V

    iput-object p1, p0, Lcom/transsion/videodetail/music/adapter/b;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/transsion/videodetail/music/adapter/b;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(II)Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/videodetail/music/adapter/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/videodetail/music/adapter/b;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public b(II)Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/videodetail/music/adapter/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/videodetail/music/bean/MusicLikedMultiItemEntity;

    invoke-virtual {p1}, Lcom/transsion/videodetail/music/bean/MusicLikedMultiItemEntity;->getMusicLikedDbBean()Lcom/transsion/baselib/db/music/MusicLikedDbBean;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/baselib/db/music/MusicLikedDbBean;->getSubjectId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iget-object v1, p0, Lcom/transsion/videodetail/music/adapter/b;->b:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/videodetail/music/bean/MusicLikedMultiItemEntity;

    invoke-virtual {p2}, Lcom/transsion/videodetail/music/bean/MusicLikedMultiItemEntity;->getMusicLikedDbBean()Lcom/transsion/baselib/db/music/MusicLikedDbBean;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/transsion/baselib/db/music/MusicLikedDbBean;->getSubjectId()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/videodetail/music/adapter/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/videodetail/music/adapter/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
