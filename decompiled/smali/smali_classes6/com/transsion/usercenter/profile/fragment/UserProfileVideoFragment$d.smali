.class public final Lcom/transsion/usercenter/profile/fragment/UserProfileVideoFragment$d;
.super Ljava/lang/Object;

# interfaces
.implements Lsj/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/usercenter/profile/fragment/UserProfileVideoFragment;->r0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/usercenter/profile/fragment/UserProfileVideoFragment;


# direct methods
.method constructor <init>(Lcom/transsion/usercenter/profile/fragment/UserProfileVideoFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileVideoFragment$d;->a:Lcom/transsion/usercenter/profile/fragment/UserProfileVideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IJLandroid/view/View;)V
    .locals 1

    iget-object p4, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileVideoFragment$d;->a:Lcom/transsion/usercenter/profile/fragment/UserProfileVideoFragment;

    invoke-static {p4}, Lcom/transsion/usercenter/profile/fragment/UserProfileVideoFragment;->g0(Lcom/transsion/usercenter/profile/fragment/UserProfileVideoFragment;)Lcom/transsion/usercenter/profile/adapter/c;

    move-result-object p4

    if-nez p4, :cond_0

    return-void

    :cond_0
    invoke-virtual {p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p4

    invoke-static {p4, p1}, Lkotlin/collections/CollectionsKt;->l0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    if-nez p1, :cond_1

    return-void

    :cond_1
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    const-string v0, "browse_duration"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p4, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "module_name"

    const-string p3, "item"

    invoke-interface {p4, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileVideoFragment$d;->a:Lcom/transsion/usercenter/profile/fragment/UserProfileVideoFragment;

    sget p3, Lcom/transsion/usercenter/R$string;->profile_video:I

    invoke-virtual {p2, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "page_tab_name"

    invoke-interface {p4, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getBelongToCollection()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;

    move-result-object p2

    const-string p3, ""

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;->getCollectionId()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3

    :cond_2
    move-object p2, p3

    :cond_3
    const-string v0, "belong_to_collection_id"

    invoke-interface {p4, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_4

    move-object p2, p3

    :cond_4
    const-string v0, "content_id"

    invoke-interface {p4, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getSubjectId()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_5

    move-object p2, p3

    :cond_5
    const-string v0, "refer_subject_id"

    invoke-interface {p4, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "content_type"

    const-string v0, "ugc_video"

    invoke-interface {p4, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getOps()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    move-object p3, p1

    :goto_0
    const-string p1, "ops"

    invoke-interface {p4, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileVideoFragment$d;->a:Lcom/transsion/usercenter/profile/fragment/UserProfileVideoFragment;

    invoke-static {p1}, Lcom/transsion/usercenter/profile/fragment/UserProfileVideoFragment;->h0(Lcom/transsion/usercenter/profile/fragment/UserProfileVideoFragment;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-class p3, Lcom/transsnet/loginapi/ILoginApi;

    invoke-static {p3, p2}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsnet/loginapi/ILoginApi;

    if-eqz p2, :cond_7

    invoke-interface {p2}, Lcom/transsnet/loginapi/ILoginApi;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_7
    const/4 p2, 0x0

    :goto_1
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "me"

    goto :goto_2

    :cond_8
    const-string p1, "others"

    :goto_2
    const-string p2, "uploader_type"

    invoke-interface {p4, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    const-string p2, "Userpage"

    invoke-virtual {p1, p2, p4}, Lcom/transsion/baselib/helper/a;->e(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
