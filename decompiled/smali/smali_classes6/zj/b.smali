.class public final Lzj/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lzj/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lzj/b;

    invoke-direct {v0}, Lzj/b;-><init>()V

    sput-object v0, Lzj/b;->a:Lzj/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lzj/c;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lzj/b;->f(Lzj/c;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final b(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "/common/dialog"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public static synthetic d(Lzj/b;Landroid/content/Context;Ljava/lang/String;Lzj/c;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lzj/b;->c(Landroid/content/Context;Ljava/lang/String;Lzj/c;)V

    return-void
.end method

.method private final e(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Lzj/c;)V
    .locals 6

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v0, "name"

    invoke-virtual {p2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "MemberPageVideoTaskDialog"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-class v2, Lcom/transsion/commercializationapi/ITaskCenterApi;

    if-eqz v0, :cond_0

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v2, p2}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/commercializationapi/ITaskCenterApi;

    if-eqz p2, :cond_2

    new-instance v0, Lzj/a;

    invoke-direct {v0, p3}, Lzj/a;-><init>(Lzj/c;)V

    invoke-interface {p2, p1, v0}, Lcom/transsion/commercializationapi/ITaskCenterApi;->b(Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    :cond_0
    const-string p1, "DownloadInterceptDialog"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v2, p1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/commercializationapi/ITaskCenterApi;

    if-eqz p1, :cond_2

    new-instance p2, Lzj/b$a;

    invoke-direct {p2, p3}, Lzj/b$a;-><init>(Lzj/c;)V

    invoke-interface {p1, p2}, Lcom/transsion/commercializationapi/ITaskCenterApi;->c(Lok/b;)V

    goto :goto_0

    :cond_1
    sget-object v0, Llg/a;->a:Llg/a$a;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "name = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " --> \u6ca1\u6709\u5339\u914d\u5230"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "cm_dialog"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static final f(Lzj/c;Z)Lkotlin/Unit;
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lzj/c;->a(Z)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final c(Landroid/content/Context;Ljava/lang/String;Lzj/c;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deeplink"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p2}, Lzj/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_2

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p0, p1, p2, p3}, Lzj/b;->e(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Lzj/c;)V

    goto :goto_1

    :cond_1
    :try_start_0
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "parse(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lak/k;->o(Landroid/net/Uri;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    :cond_2
    :goto_1
    return-void
.end method
