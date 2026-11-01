.class public final Lcom/transsion/videofloat/manager/i;
.super Ljava/lang/Object;

# interfaces
.implements Lox/b;


# instance fields
.field private b:Lcom/transsion/videofloat/view/VideoFloatView;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/videofloat/manager/i;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/baseui/dialog/BaseDialog;Ljava/lang/Boolean;Lcom/permissionx/guolindev/callback/PermissionDialogClickType;)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/transsion/videofloat/manager/i;->y(Lcom/transsion/videofloat/manager/i;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/baseui/dialog/BaseDialog;Ljava/lang/Boolean;Lcom/permissionx/guolindev/callback/PermissionDialogClickType;)V

    return-void
.end method

.method public static synthetic h(Lkotlin/jvm/functions/Function1;Lcom/transsion/videofloat/manager/i;Lpx/a;ZLsx/a;Z)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/transsion/videofloat/manager/i;->o(Lkotlin/jvm/functions/Function1;Lcom/transsion/videofloat/manager/i;Lpx/a;ZLsx/a;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(ZLcom/transsion/videofloat/manager/i;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcf/f;Ljava/util/List;ZZ)V
    .locals 0

    invoke-static/range {p0 .. p9}, Lcom/transsion/videofloat/manager/i;->x(ZLcom/transsion/videofloat/manager/i;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcf/f;Ljava/util/List;ZZ)V

    return-void
.end method

.method public static synthetic j(Lcom/transsion/videofloat/manager/i;Lkotlin/jvm/functions/Function1;ZLjava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/videofloat/manager/i;->z(Lcom/transsion/videofloat/manager/i;Lkotlin/jvm/functions/Function1;ZLjava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic k(Lcom/transsion/videofloat/manager/i;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/videofloat/manager/i;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic l(Lcom/transsion/videofloat/manager/i;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/videofloat/manager/i;->c:Z

    return-void
.end method

.method public static final synthetic m(Lcom/transsion/videofloat/manager/i;Lcom/transsion/videofloat/view/VideoFloatView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/videofloat/manager/i;->b:Lcom/transsion/videofloat/view/VideoFloatView;

    return-void
.end method

.method private final n(Landroidx/fragment/app/FragmentActivity;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    invoke-direct {p0}, Lcom/transsion/videofloat/manager/i;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v9, 0x40

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-static/range {v1 .. v10}, Lcom/transsion/videofloat/manager/i;->w(Lcom/transsion/videofloat/manager/i;Landroidx/fragment/app/FragmentActivity;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method private static final o(Lkotlin/jvm/functions/Function1;Lcom/transsion/videofloat/manager/i;Lpx/a;ZLsx/a;Z)Lkotlin/Unit;
    .locals 0

    if-eqz p5, :cond_1

    if-eqz p0, :cond_0

    sget-object p5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-direct {p1, p2, p3, p4}, Lcom/transsion/videofloat/manager/i;->u(Lpx/a;ZLsx/a;)V

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final p()Z
    .locals 1

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private final q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    const-string v1, "subject_id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p4, :cond_1

    const-string p1, "ops"

    invoke-interface {v0, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p2, :cond_2

    const-string p1, "ugc_video_id"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string p1, "opt_type"

    const-string p2, "float_back_page"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "type"

    const-string p2, "float"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lhj/i;->a:Lhj/i;

    invoke-virtual {p1, p3, v0}, Lhj/i;->p(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private final r(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_0

    const-string v1, "subject_id"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p3, :cond_1

    const-string p2, "ugc_video_id"

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p5, :cond_2

    const-string p2, "ops"

    invoke-interface {v0, p2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz p1, :cond_3

    const-string p1, "allow"

    goto :goto_0

    :cond_3
    const-string p1, "cancel"

    :goto_0
    const-string p2, "opt_type"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "page_from"

    invoke-interface {v0, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lhj/i;->a:Lhj/i;

    sget-object p2, Lox/b;->a:Lox/b$a;

    invoke-virtual {p2}, Lox/b$a;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lhj/i;->p(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private final s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    const-string v1, "subject_id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p2, :cond_1

    const-string p1, "ugc_video_id"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p4, :cond_2

    const-string p1, "ops"

    invoke-interface {v0, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string p1, "page_from"

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lhj/i;->a:Lhj/i;

    sget-object p2, Lox/b;->a:Lox/b$a;

    invoke-virtual {p2}, Lox/b$a;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lhj/i;->r(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private final t(ZZ)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "has_permission"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    const-string p1, "click"

    goto :goto_0

    :cond_0
    const-string p1, "auto"

    :goto_0
    const-string p2, "action"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lhj/i;->a:Lhj/i;

    const-string p2, "float_opt"

    const-string v1, "app_perf"

    invoke-virtual {p1, p2, v1, v0}, Lhj/i;->s(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private final u(Lpx/a;ZLsx/a;)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v1, v2, v0}, Lox/b$b;->a(Lox/b;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/videofloat/manager/i;->b:Lcom/transsion/videofloat/view/VideoFloatView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/videofloat/view/VideoFloatView;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    const-string v3, "getApp(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/transsion/videofloat/view/VideoFloatView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/videofloat/manager/i;->b:Lcom/transsion/videofloat/view/VideoFloatView;

    :cond_0
    iget-object v0, p0, Lcom/transsion/videofloat/manager/i;->b:Lcom/transsion/videofloat/view/VideoFloatView;

    if-eqz v0, :cond_1

    sget-object v3, Llg/a;->a:Llg/a$a;

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "VideoFloat"

    const-string v5, "showFloat"

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object v1, Lcom/transsion/videofloat/manager/a0;->a:Lcom/transsion/videofloat/manager/a0;

    invoke-virtual {p1}, Lpx/a;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lpx/a;->f()Lcom/transsion/player/orplayer/g;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/transsion/videofloat/manager/a0;->a(Ljava/lang/String;Lcom/transsion/player/orplayer/g;)V

    iput-boolean v2, p0, Lcom/transsion/videofloat/manager/i;->c:Z

    invoke-virtual {v0, p2, p1}, Lcom/transsion/videofloat/view/VideoFloatView;->addToWindow(ZLpx/a;)V

    new-instance p1, Lcom/transsion/videofloat/manager/i$a;

    invoke-direct {p1, p3, p0}, Lcom/transsion/videofloat/manager/i$a;-><init>(Lsx/a;Lcom/transsion/videofloat/manager/i;)V

    invoke-virtual {v0, p1}, Lcom/transsion/videofloat/view/VideoFloatView;->setVideoFloatListener(Lsx/a;)V

    :cond_1
    return-void
.end method

.method private final v(Landroidx/fragment/app/FragmentActivity;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 8

    sget-object v0, Lye/c;->a:Lye/c;

    invoke-virtual {v0, p1}, Lye/c;->e(Landroidx/fragment/app/FragmentActivity;)Lye/a;

    move-result-object p1

    const-string v0, "android.permission.SYSTEM_ALERT_WINDOW"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lye/a;->b([Ljava/lang/String;)Lcf/h;

    move-result-object p1

    invoke-interface {p1}, Lcf/h;->b()Lcf/h;

    move-result-object p1

    new-instance v7, Lcom/transsion/videofloat/manager/e;

    move-object v0, v7

    move v1, p2

    move-object v2, p0

    move-object v3, p4

    move-object v4, p5

    move-object v5, p3

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/transsion/videofloat/manager/e;-><init>(ZLcom/transsion/videofloat/manager/i;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v7}, Lcf/h;->c(Lze/b;)Lcf/h;

    move-result-object p1

    new-instance p2, Lcom/transsion/videofloat/manager/f;

    move-object v0, p2

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p3

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/transsion/videofloat/manager/f;-><init>(Lcom/transsion/videofloat/manager/i;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcf/h;->d(Lze/a;)Lcf/h;

    move-result-object p1

    new-instance p2, Lcom/transsion/videofloat/manager/g;

    invoke-direct {p2, p0, p7}, Lcom/transsion/videofloat/manager/g;-><init>(Lcom/transsion/videofloat/manager/i;Lkotlin/jvm/functions/Function1;)V

    invoke-interface {p1, p2}, Lcf/h;->a(Lze/c;)V

    return-void
.end method

.method static synthetic w(Lcom/transsion/videofloat/manager/i;Landroidx/fragment/app/FragmentActivity;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 9

    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v8, v0

    goto :goto_0

    :cond_0
    move-object/from16 v8, p7

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/transsion/videofloat/manager/i;->v(Landroidx/fragment/app/FragmentActivity;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final x(ZLcom/transsion/videofloat/manager/i;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcf/f;Ljava/util/List;ZZ)V
    .locals 12

    move v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    const-string v3, "scope"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "deniedList"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p8, :cond_0

    sget-object v0, Llg/a;->a:Llg/a$a;

    const/4 v1, 0x4

    const/4 v2, 0x0

    const-string v3, "VideoFloat"

    const-string v4, "\u8bf7\u6c42\u6743\u9650\u4e4b\u540e\uff0c"

    const/4 v5, 0x0

    move-object p0, v0

    move-object p1, v3

    move-object p2, v4

    move p3, v5

    move/from16 p4, v1

    move-object/from16 p5, v2

    invoke-static/range {p0 .. p5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_0
    sget-object v6, Llg/a;->a:Llg/a$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u8bf7\u6c42\u6743\u9650\u524d\uff0c\u63d0\u793a\u5f39\u7a97\uff0cisFullLand\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x4

    const/4 v11, 0x0

    const-string v7, "VideoFloat"

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    if-eqz v0, :cond_1

    new-instance v0, Lcom/transsion/videofloat/dialog/VideoFloatPermissionDialog;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2}, Lcom/transsion/videofloat/dialog/VideoFloatPermissionDialog;-><init>(ZLjava/util/List;)V

    invoke-virtual {v1, v0}, Lcf/f;->d(Lcom/permissionx/guolindev/dialog/RationaleDialog;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lbf/a;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v3

    sget v4, Lcom/transsion/videofloat/R$string;->video_float_tips_v2:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v3

    sget v4, Lcom/transsion/videofloat/R$string;->video_float_enable:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v3, Lcom/transsion/videofloat/R$mipmap;->video_float_ic_permission_img:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sget v3, Lcom/tn/lib/widget/R$color;->white_20:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v5, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v11}, Lbf/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v1, v2, v0}, Lcf/f;->e(Ljava/util/List;Lbf/a;)V

    :goto_0
    invoke-direct/range {p1 .. p5}, Lcom/transsion/videofloat/manager/i;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final y(Lcom/transsion/videofloat/manager/i;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/baseui/dialog/BaseDialog;Ljava/lang/Boolean;Lcom/permissionx/guolindev/callback/PermissionDialogClickType;)V
    .locals 6

    sget-object p5, Lcom/permissionx/guolindev/callback/PermissionDialogClickType;->POSITIVE:Lcom/permissionx/guolindev/callback/PermissionDialogClickType;

    if-ne p7, p5, :cond_0

    const/4 p5, 0x1

    :goto_0
    move v1, p5

    goto :goto_1

    :cond_0
    const/4 p5, 0x0

    goto :goto_0

    :goto_1
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/transsion/videofloat/manager/i;->r(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final z(Lcom/transsion/videofloat/manager/i;Lkotlin/jvm/functions/Function1;ZLjava/util/List;Ljava/util/List;)V
    .locals 6

    const-string v0, "grantedList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "deniedList"

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Llg/a;->a:Llg/a$a;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "\u8bf7\u6c42\u6743\u9650\u7ed3\u679c:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "VideoFloat"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const/4 p3, 0x1

    invoke-direct {p0, p3, p2}, Lcom/transsion/videofloat/manager/i;->t(ZZ)V

    if-eqz p2, :cond_0

    if-eqz p1, :cond_1

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/videofloat/manager/i;->b:Lcom/transsion/videofloat/view/VideoFloatView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/videofloat/view/VideoFloatView;->getFloatBean()Lpx/a;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lpx/a;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lpx/a;->q()I

    move-result v2

    invoke-virtual {v0}, Lpx/a;->c()I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public c(Lcom/transsion/player/orplayer/g;)Z
    .locals 7

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-boolean v1, p0, Lcom/transsion/videofloat/manager/i;->c:Z

    iget-object v2, p0, Lcom/transsion/videofloat/manager/i;->b:Lcom/transsion/videofloat/view/VideoFloatView;

    const/4 v6, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/transsion/videofloat/view/VideoFloatView;->getPlayer()Lcom/transsion/player/orplayer/g;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v6

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "1-isEnterFloat\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "VideoFloat"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-boolean v0, p0, Lcom/transsion/videofloat/manager/i;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/videofloat/manager/i;->b:Lcom/transsion/videofloat/view/VideoFloatView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/videofloat/view/VideoFloatView;->getPlayer()Lcom/transsion/player/orplayer/g;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v6

    :goto_1
    if-nez v0, :cond_2

    move p1, v1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/transsion/videofloat/manager/i;->b:Lcom/transsion/videofloat/view/VideoFloatView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/videofloat/view/VideoFloatView;->getPlayer()Lcom/transsion/player/orplayer/g;

    move-result-object v6

    :cond_3
    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    :goto_2
    if-eqz p1, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public d()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/transsion/videofloat/manager/i;->p()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/transsion/videofloat/manager/i;->t(ZZ)V

    return-void
.end method

.method public e(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageName"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lko/l0;->a:Lko/l0;

    invoke-virtual {v0}, Lko/l0;->p()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lox/e;->a:Lox/e$a;

    invoke-virtual {v0}, Lox/e$a;->b()Lox/e;

    move-result-object v0

    invoke-interface {v0}, Lox/e;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v2

    sget-object v3, Lox/b;->a:Lox/b$a;

    invoke-virtual {v3}, Lox/b$a;->b()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    invoke-virtual {v3}, Lox/b$a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/4 v5, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v6, p4

    move-object v7, p2

    move-object v8, p3

    move-object v9, p5

    invoke-direct/range {v3 .. v9}, Lcom/transsion/videofloat/manager/i;->n(Landroidx/fragment/app/FragmentActivity;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public f(Z)V
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Lcom/transsion/videofloat/manager/a0;->a:Lcom/transsion/videofloat/manager/a0;

    invoke-virtual {p1}, Lcom/transsion/videofloat/manager/a0;->d()V

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/videofloat/manager/i;->c:Z

    iget-object p1, p0, Lcom/transsion/videofloat/manager/i;->b:Lcom/transsion/videofloat/view/VideoFloatView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/videofloat/view/VideoFloatView;->removeFromWindow()V

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/videofloat/manager/i;->b:Lcom/transsion/videofloat/view/VideoFloatView;

    return-void
.end method

.method public g(Landroidx/fragment/app/FragmentActivity;Lpx/a;ZZLkotlin/jvm/functions/Function1;Lsx/a;)V
    .locals 12

    move-object v3, p2

    move v4, p3

    move-object/from16 v1, p5

    const-string v0, "activity"

    move-object v6, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "floatBean"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lko/l0;->a:Lko/l0;

    invoke-virtual {v0}, Lko/l0;->p()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    const-string v2, "VideoFloat"

    const/4 v5, 0x1

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v5, :cond_5

    invoke-virtual {p2, p3}, Lpx/a;->D(Z)V

    invoke-direct {p0}, Lcom/transsion/videofloat/manager/i;->p()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Llg/a;->a:Llg/a$a;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkShowFloatView no permission proactive:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v2, v7, v5}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v4, :cond_1

    invoke-virtual {p2}, Lpx/a;->h()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Lpx/a;->r()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2}, Lpx/a;->v()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v9, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    invoke-virtual {p2}, Lpx/a;->e()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/transsion/videofloat/manager/h;

    move-object v0, v11

    move-object/from16 v1, p5

    move-object v2, p0

    move-object v3, p2

    move v4, p3

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/transsion/videofloat/manager/h;-><init>(Lkotlin/jvm/functions/Function1;Lcom/transsion/videofloat/manager/i;Lpx/a;ZLsx/a;)V

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p4

    move-object v4, v7

    move-object v5, v8

    move-object v6, v9

    move-object v7, v10

    move-object v8, v11

    invoke-direct/range {v1 .. v8}, Lcom/transsion/videofloat/manager/i;->v(Landroidx/fragment/app/FragmentActivity;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    goto :goto_2

    :cond_1
    if-eqz v1, :cond_2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_2
    return-void

    :cond_3
    sget-object v5, Llg/a;->a:Llg/a$a;

    const/4 v9, 0x4

    const/4 v10, 0x0

    const-string v6, "VideoFloat"

    const-string v7, "checkShowFloatView--has permission showFloat"

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    if-eqz v1, :cond_4

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    move-object v0, p0

    move-object/from16 v1, p6

    invoke-direct {p0, p2, p3, v1}, Lcom/transsion/videofloat/manager/i;->u(Lpx/a;ZLsx/a;)V

    return-void

    :cond_5
    move-object v0, p0

    if-eqz v1, :cond_6

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    sget-object v1, Llg/a;->a:Llg/a$a;

    const-string v3, "\u5355\u64ad\u653e\u5668 \u7981\u7528pip\u529f\u80fd"

    invoke-virtual {v1, v2, v3, v5}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public isPlaying()Z
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/videofloat/manager/i;->c:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/transsion/videofloat/manager/i;->b:Lcom/transsion/videofloat/view/VideoFloatView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/videofloat/view/VideoFloatView;->isPlaying()Z

    move-result v1

    :cond_1
    return v1
.end method
