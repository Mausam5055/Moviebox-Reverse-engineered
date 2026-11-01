.class public final Lcom/transsion/room/sub/fragment/likes/UgcLikesFragment$b;
.super Ljava/lang/Object;

# interfaces
.implements Lsj/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/room/sub/fragment/likes/UgcLikesFragment;->r0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/room/sub/fragment/likes/UgcLikesFragment;


# direct methods
.method constructor <init>(Lcom/transsion/room/sub/fragment/likes/UgcLikesFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/room/sub/fragment/likes/UgcLikesFragment$b;->a:Lcom/transsion/room/sub/fragment/likes/UgcLikesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IJLandroid/view/View;)V
    .locals 4

    iget-object p4, p0, Lcom/transsion/room/sub/fragment/likes/UgcLikesFragment$b;->a:Lcom/transsion/room/sub/fragment/likes/UgcLikesFragment;

    invoke-static {p4}, Lcom/transsion/room/sub/fragment/likes/UgcLikesFragment;->p0(Lcom/transsion/room/sub/fragment/likes/UgcLikesFragment;)Lcom/transsion/room/sub/adapter/likes/c;

    move-result-object p4

    if-eqz p4, :cond_4

    invoke-virtual {p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p4

    if-eqz p4, :cond_4

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    iget-object v0, p0, Lcom/transsion/room/sub/fragment/likes/UgcLikesFragment$b;->a:Lcom/transsion/room/sub/fragment/likes/UgcLikesFragment;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u66dd\u5149\u7684\u4f4d\u7f6eposition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u66dd\u5149\u7684\u4f4d\u7f6eduration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    if-lt p1, p4, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {v0}, Lcom/transsion/room/sub/fragment/likes/UgcLikesFragment;->p0(Lcom/transsion/room/sub/fragment/likes/UgcLikesFragment;)Lcom/transsion/room/sub/adapter/likes/c;

    move-result-object p4

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    invoke-virtual {p4, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    goto :goto_0

    :cond_1
    move-object p4, v0

    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "module_name"

    const-string v3, "item"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getOps()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v0

    :goto_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ops"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "position"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_3

    invoke-virtual {p4}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getSubjectId()Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p4, "refer_subject_id"

    invoke-interface {v1, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "content_type"

    const-string p4, "ugc_video"

    invoke-interface {v1, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "browse_duration"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    const-string p2, "/ugc/likes"

    invoke-virtual {p1, p2, v1}, Lcom/transsion/baselib/helper/a;->e(Ljava/lang/String;Ljava/util/Map;)V

    :cond_4
    :goto_2
    return-void
.end method
