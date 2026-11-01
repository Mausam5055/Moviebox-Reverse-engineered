.class public final Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView$a;
.super Ljava/lang/Object;

# interfaces
.implements Lzm/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;


# direct methods
.method constructor <init>(Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView$a;->a:Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic g(Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;Ljava/lang/Object;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView$a;->h(Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;Ljava/lang/Object;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final h(Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;Ljava/lang/Object;)Lkotlin/Unit;
    .locals 1

    sget-object p1, Lok/c;->a:Lok/c;

    invoke-static {p0}, Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;->access$getClassTag(Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " --> checkMemberRights() --> sceneType = MemberSceneType.SCENE_PREDL --> success"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lok/c;->a(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/transsion/memberapi/MemberCheckResult;)V
    .locals 8

    iget-object p1, p0, Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView$a;->a:Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of v0, p1, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    :goto_0
    move-object v1, p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView$a;->a:Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-class v2, Lcom/transsion/memberapi/IMemberApi;

    invoke-static {v2, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/memberapi/IMemberApi;

    if-eqz v0, :cond_1

    sget-object v2, Lcom/transsion/memberapi/MemberSource;->SOURCE_STREAM_RESOLUTION_START_PLAY_ERROR:Lcom/transsion/memberapi/MemberSource;

    new-instance v3, Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView$a$a;

    invoke-direct {v3, p1, v1}, Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView$a$a;-><init>(Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;Landroidx/appcompat/app/AppCompatActivity;)V

    const/16 v6, 0x18

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v7}, Lcom/transsion/memberapi/IMemberApi$a;->c(Lcom/transsion/memberapi/IMemberApi;Landroid/app/Activity;Lcom/transsion/memberapi/MemberSource;Lzm/b;ZLjava/lang/String;ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public b(Lcom/transsion/memberapi/MemberCheckResult;)V
    .locals 0

    invoke-static {p0, p1}, Lzm/a$a;->d(Lzm/a;Lcom/transsion/memberapi/MemberCheckResult;)V

    return-void
.end method

.method public c(Lcom/transsion/memberapi/MemberCheckResult;)V
    .locals 3

    invoke-static {p0, p1}, Lzm/a$a;->g(Lzm/a;Lcom/transsion/memberapi/MemberCheckResult;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lcom/transsion/commercializationapi/ITaskCenterApi;

    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/commercializationapi/ITaskCenterApi;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView$a$b;

    iget-object v2, p0, Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView$a;->a:Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;

    invoke-direct {v1, v2}, Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView$a$b;-><init>(Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;)V

    const-string v2, ""

    invoke-interface {v0, v2, p1, v1}, Lcom/transsion/commercializationapi/ITaskCenterApi;->d(Ljava/lang/String;Lcom/transsion/memberapi/MemberCheckResult;Lok/b;)V

    :cond_0
    return-void
.end method

.method public d(Lcom/transsion/memberapi/MemberCheckResult;)V
    .locals 0

    invoke-static {p0, p1}, Lzm/a$a;->e(Lzm/a;Lcom/transsion/memberapi/MemberCheckResult;)V

    return-void
.end method

.method public e()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView$a;->a:Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;

    invoke-static {v0}, Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;->access$unlock(Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;)V

    sget-object v0, Lok/c;->a:Lok/c;

    iget-object v1, p0, Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView$a;->a:Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;

    invoke-static {v1}, Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;->access$getClassTag(Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> checkMemberRights() --> passed() --> \u4f1a\u5458\u6743\u76ca\u901a\u8fc7\u9a8c\u8bc1 --> \u7ee7\u7eed\u4e0b\u8f7d\u4efb\u52a1"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lok/c;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lcom/transsion/memberapi/IMemberApi;

    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/memberapi/IMemberApi;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/transsion/memberapi/OpType;->OP_DOWNLOAD:Lcom/transsion/memberapi/OpType;

    iget-object v2, p0, Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView$a;->a:Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;

    new-instance v3, Lcom/transsion/player/longvideo/member/b;

    invoke-direct {v3, v2}, Lcom/transsion/player/longvideo/member/b;-><init>(Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;)V

    invoke-interface {v0, v1, v3}, Lcom/transsion/memberapi/IMemberApi;->n(Lcom/transsion/memberapi/OpType;Lkotlin/jvm/functions/Function1;)V

    :cond_0
    return-void
.end method

.method public f(Lcom/transsion/memberapi/MemberCheckResult;)V
    .locals 2

    invoke-static {p0, p1}, Lzm/a$a;->a(Lzm/a;Lcom/transsion/memberapi/MemberCheckResult;)V

    sget-object p1, Lok/c;->a:Lok/c;

    iget-object v0, p0, Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView$a;->a:Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;

    invoke-static {v0}, Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;->access$getClassTag(Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> triggerDownload() --> showCheckMemberRights() --> notImplement() --> \u5f53\u524d\u7c7b\u578b\u6ca1\u6709\u5b9e\u73b0"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lok/c;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onFail(Ljava/lang/String;)V
    .locals 3

    const-string v0, "errorMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lzm/a$a;->b(Lzm/a;Ljava/lang/String;)V

    sget-object v0, Lok/c;->a:Lok/c;

    iget-object v1, p0, Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView$a;->a:Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;

    invoke-static {v1}, Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;->access$getClassTag(Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> checkMemberRights() --> showCheckMemberRightsDialog() --> "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lok/c;->b(Ljava/lang/String;)V

    return-void
.end method
