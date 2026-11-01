.class public final Lcom/transsion/commercialization/task/TaskCenterProvider$a;
.super Ljava/lang/Object;

# interfaces
.implements Lzm/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/commercialization/task/TaskCenterProvider;->i(Lok/b;Ljava/lang/Integer;Ljava/lang/String;Lcom/transsion/memberapi/MemberSceneType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/commercialization/task/TaskCenterProvider;

.field final synthetic b:Lok/b;

.field final synthetic c:Lcom/transsion/memberapi/MemberSceneType;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/transsion/commercialization/task/TaskCenterProvider;Lok/b;Lcom/transsion/memberapi/MemberSceneType;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/commercialization/task/TaskCenterProvider$a;->a:Lcom/transsion/commercialization/task/TaskCenterProvider;

    iput-object p2, p0, Lcom/transsion/commercialization/task/TaskCenterProvider$a;->b:Lok/b;

    iput-object p3, p0, Lcom/transsion/commercialization/task/TaskCenterProvider$a;->c:Lcom/transsion/memberapi/MemberSceneType;

    iput-object p4, p0, Lcom/transsion/commercialization/task/TaskCenterProvider$a;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic g(Lcom/transsion/commercialization/task/TaskCenterProvider;Lcom/transsion/memberapi/MemberSceneType;Ljava/lang/Object;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/commercialization/task/TaskCenterProvider$a;->h(Lcom/transsion/commercialization/task/TaskCenterProvider;Lcom/transsion/memberapi/MemberSceneType;Ljava/lang/Object;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final h(Lcom/transsion/commercialization/task/TaskCenterProvider;Lcom/transsion/memberapi/MemberSceneType;Ljava/lang/Object;)Lkotlin/Unit;
    .locals 1

    sget-object p2, Lok/c;->a:Lok/c;

    invoke-virtual {p0}, Lcom/transsion/commercialization/task/TaskCenterProvider;->j()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " --> checkMemberRights() --> sceneType = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " --> success"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lok/c;->a(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/transsion/memberapi/MemberCheckResult;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/commercialization/task/TaskCenterProvider$a;->a:Lcom/transsion/commercialization/task/TaskCenterProvider;

    iget-object v1, p0, Lcom/transsion/commercialization/task/TaskCenterProvider$a;->b:Lok/b;

    invoke-static {v0, v1, p1}, Lcom/transsion/commercialization/task/TaskCenterProvider;->h(Lcom/transsion/commercialization/task/TaskCenterProvider;Lok/b;Lcom/transsion/memberapi/MemberCheckResult;)V

    return-void
.end method

.method public b(Lcom/transsion/memberapi/MemberCheckResult;)V
    .locals 8

    new-instance v7, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;

    iget-object v1, p0, Lcom/transsion/commercialization/task/TaskCenterProvider$a;->b:Lok/b;

    iget-object v3, p0, Lcom/transsion/commercialization/task/TaskCenterProvider$a;->d:Ljava/lang/String;

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, v7

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;-><init>(Lok/b;Lcom/transsion/memberapi/MemberCheckResult;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v7}, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;->h()V

    return-void
.end method

.method public c(Lcom/transsion/memberapi/MemberCheckResult;)V
    .locals 2

    invoke-static {p0, p1}, Lzm/a$a;->g(Lzm/a;Lcom/transsion/memberapi/MemberCheckResult;)V

    new-instance v0, Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;

    invoke-direct {v0}, Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;-><init>()V

    invoke-virtual {v0, p1}, Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;->z0(Lcom/transsion/memberapi/MemberCheckResult;)Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/commercialization/task/TaskCenterProvider$a;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;->x0(Ljava/lang/String;)Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/commercialization/task/TaskCenterProvider$a;->c:Lcom/transsion/memberapi/MemberSceneType;

    invoke-virtual {p1, v0}, Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;->A0(Lcom/transsion/memberapi/MemberSceneType;)Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/commercialization/task/TaskCenterProvider$a;->b:Lok/b;

    invoke-virtual {p1, v0}, Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;->y0(Lok/b;)Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;

    move-result-object p1

    invoke-static {}, Lcom/blankj/utilcode/util/a;->b()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "TreasureStyleADialog"

    invoke-virtual {p1, v0, v1}, Lcom/transsion/baseui/dialog/BaseDialog;->k0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public d(Lcom/transsion/memberapi/MemberCheckResult;)V
    .locals 8

    new-instance v7, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;

    iget-object v1, p0, Lcom/transsion/commercialization/task/TaskCenterProvider$a;->b:Lok/b;

    iget-object v3, p0, Lcom/transsion/commercialization/task/TaskCenterProvider$a;->d:Ljava/lang/String;

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, v7

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;-><init>(Lok/b;Lcom/transsion/memberapi/MemberCheckResult;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v7}, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;->h()V

    return-void
.end method

.method public e()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/commercialization/task/TaskCenterProvider$a;->b:Lok/b;

    invoke-interface {v0}, Lok/b;->onSuccess()V

    sget-object v0, Lok/c;->a:Lok/c;

    iget-object v1, p0, Lcom/transsion/commercialization/task/TaskCenterProvider$a;->a:Lcom/transsion/commercialization/task/TaskCenterProvider;

    invoke-virtual {v1}, Lcom/transsion/commercialization/task/TaskCenterProvider;->j()Ljava/lang/String;

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

    iget-object v2, p0, Lcom/transsion/commercialization/task/TaskCenterProvider$a;->a:Lcom/transsion/commercialization/task/TaskCenterProvider;

    iget-object v3, p0, Lcom/transsion/commercialization/task/TaskCenterProvider$a;->c:Lcom/transsion/memberapi/MemberSceneType;

    new-instance v4, Lcom/transsion/commercialization/task/p;

    invoke-direct {v4, v2, v3}, Lcom/transsion/commercialization/task/p;-><init>(Lcom/transsion/commercialization/task/TaskCenterProvider;Lcom/transsion/memberapi/MemberSceneType;)V

    invoke-interface {v0, v1, v4}, Lcom/transsion/memberapi/IMemberApi;->n(Lcom/transsion/memberapi/OpType;Lkotlin/jvm/functions/Function1;)V

    :cond_0
    return-void
.end method

.method public f(Lcom/transsion/memberapi/MemberCheckResult;)V
    .locals 2

    invoke-static {p0, p1}, Lzm/a$a;->a(Lzm/a;Lcom/transsion/memberapi/MemberCheckResult;)V

    sget-object p1, Lok/c;->a:Lok/c;

    iget-object v0, p0, Lcom/transsion/commercialization/task/TaskCenterProvider$a;->a:Lcom/transsion/commercialization/task/TaskCenterProvider;

    invoke-virtual {v0}, Lcom/transsion/commercialization/task/TaskCenterProvider;->j()Ljava/lang/String;

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

    iget-object v1, p0, Lcom/transsion/commercialization/task/TaskCenterProvider$a;->a:Lcom/transsion/commercialization/task/TaskCenterProvider;

    invoke-virtual {v1}, Lcom/transsion/commercialization/task/TaskCenterProvider;->j()Ljava/lang/String;

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

    iget-object p1, p0, Lcom/transsion/commercialization/task/TaskCenterProvider$a;->b:Lok/b;

    invoke-interface {p1}, Lok/b;->onFail()V

    return-void
.end method
