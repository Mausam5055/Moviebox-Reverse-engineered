.class public final Lcom/transsion/usercenter/me/MeViewmodel;
.super Landroidx/lifecycle/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/usercenter/me/MeViewmodel$a;
    }
.end annotation


# static fields
.field public static final s:Lcom/transsion/usercenter/me/MeViewmodel$a;


# instance fields
.field private final b:Lkotlin/Lazy;

.field private final c:Lkotlin/Lazy;

.field private final d:Lkotlin/Lazy;

.field private final e:Lkotlin/Lazy;

.field private final f:Ljava/util/List;

.field private g:Lcom/transsion/usercenter/profile/bean/ZeroConfig;

.field private final h:Lkotlin/Lazy;

.field private i:Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;

.field private final j:I

.field private final k:Landroidx/lifecycle/b0;

.field private volatile l:Ljava/util/List;

.field private final m:Lkotlin/Lazy;

.field private final n:Lkotlin/Lazy;

.field private final o:Lkotlin/Lazy;

.field private p:Lcom/transsion/usercenter/profile/bean/MinePageInfo;

.field private final q:Landroidx/lifecycle/b0;

.field private r:Lkotlinx/coroutines/t1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/usercenter/me/MeViewmodel$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/usercenter/me/MeViewmodel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/usercenter/me/MeViewmodel;->s:Lcom/transsion/usercenter/me/MeViewmodel$a;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/lifecycle/b;-><init>(Landroid/app/Application;)V

    new-instance p1, Lcom/transsion/usercenter/me/v;

    invoke-direct {p1}, Lcom/transsion/usercenter/me/v;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/usercenter/me/MeViewmodel;->b:Lkotlin/Lazy;

    new-instance p1, Lcom/transsion/usercenter/me/w;

    invoke-direct {p1}, Lcom/transsion/usercenter/me/w;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/usercenter/me/MeViewmodel;->c:Lkotlin/Lazy;

    new-instance p1, Lcom/transsion/usercenter/me/x;

    invoke-direct {p1}, Lcom/transsion/usercenter/me/x;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/usercenter/me/MeViewmodel;->d:Lkotlin/Lazy;

    new-instance p1, Lcom/transsion/usercenter/me/y;

    invoke-direct {p1}, Lcom/transsion/usercenter/me/y;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/usercenter/me/MeViewmodel;->e:Lkotlin/Lazy;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/usercenter/me/MeViewmodel;->f:Ljava/util/List;

    new-instance p1, Lcom/transsion/usercenter/me/z;

    invoke-direct {p1}, Lcom/transsion/usercenter/me/z;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/usercenter/me/MeViewmodel;->h:Lkotlin/Lazy;

    const/16 p1, 0xa

    iput p1, p0, Lcom/transsion/usercenter/me/MeViewmodel;->j:I

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/usercenter/me/MeViewmodel;->k:Landroidx/lifecycle/b0;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/usercenter/me/MeViewmodel;->l:Ljava/util/List;

    new-instance p1, Lcom/transsion/usercenter/me/a0;

    invoke-direct {p1}, Lcom/transsion/usercenter/me/a0;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/usercenter/me/MeViewmodel;->m:Lkotlin/Lazy;

    new-instance p1, Lcom/transsion/usercenter/me/b0;

    invoke-direct {p1}, Lcom/transsion/usercenter/me/b0;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/usercenter/me/MeViewmodel;->n:Lkotlin/Lazy;

    new-instance p1, Lcom/transsion/usercenter/me/c0;

    invoke-direct {p1}, Lcom/transsion/usercenter/me/c0;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/usercenter/me/MeViewmodel;->o:Lkotlin/Lazy;

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/usercenter/me/MeViewmodel;->q:Landroidx/lifecycle/b0;

    return-void
.end method

.method private final B()V
    .locals 3

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v0, Lsm/f;->c:Lsm/f$a;

    invoke-virtual {v0}, Lsm/f$a;->a()Lsm/f;

    move-result-object v0

    const-string v1, "free_buy_config"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lsm/f;->c(Ljava/lang/String;Z)Lcom/transsion/mb/config/manager/ConfigBean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-class v1, Lcom/transsion/usercenter/profile/bean/ZeroConfig;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/reflect/Type;

    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/o;->h(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/o;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/usercenter/profile/bean/ZeroConfig;

    iput-object v0, p0, Lcom/transsion/usercenter/me/MeViewmodel;->g:Lcom/transsion/usercenter/profile/bean/ZeroConfig;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-void
.end method

.method private final D()Lcom/transsion/memberapi/IMemberApi;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/me/MeViewmodel;->e:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/memberapi/IMemberApi;

    return-object v0
.end method

.method private final E()Lcom/transsion/memberapi/IPremiumApi;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/me/MeViewmodel;->d:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/memberapi/IPremiumApi;

    return-object v0
.end method

.method private final F()Lcom/transsnet/loginapi/ILoginApi;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/me/MeViewmodel;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsnet/loginapi/ILoginApi;

    return-object v0
.end method

.method private final G()Lcom/transsion/usercenter/profile/b;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/me/MeViewmodel;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/usercenter/profile/b;

    return-object v0
.end method

.method private final H()Lcom/transsion/usercenter/profile/d;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/me/MeViewmodel;->h:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/usercenter/profile/d;

    return-object v0
.end method

.method private final J()V
    .locals 3

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v0, Lsm/f;->c:Lsm/f$a;

    invoke-virtual {v0}, Lsm/f$a;->a()Lsm/f;

    move-result-object v0

    const-string v1, "mine_notice_config_key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lsm/f;->c(Ljava/lang/String;Z)Lcom/transsion/mb/config/manager/ConfigBean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-class v1, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/reflect/Type;

    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/o;->h(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/o;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;

    iput-object v0, p0, Lcom/transsion/usercenter/me/MeViewmodel;->i:Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-void
.end method

.method private final K()Lcom/transsion/baselib/db/video/ShortTVPlayDao;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/me/MeViewmodel;->n:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/baselib/db/video/ShortTVPlayDao;

    return-object v0
.end method

.method private final L()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/me/MeViewmodel;->o:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    return-object v0
.end method

.method private final M()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/me/MeViewmodel;->m:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    return-object v0
.end method

.method private static final N()Lcom/transsion/memberapi/IMemberApi;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lcom/transsion/memberapi/IMemberApi;

    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/memberapi/IMemberApi;

    return-object v0
.end method

.method private static final O()Lcom/transsion/memberapi/IPremiumApi;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lcom/transsion/memberapi/IPremiumApi;

    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/memberapi/IPremiumApi;

    return-object v0
.end method

.method private static final P()Lcom/transsnet/loginapi/ILoginApi;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lcom/transsnet/loginapi/ILoginApi;

    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsnet/loginapi/ILoginApi;

    return-object v0
.end method

.method private static final Q()Lcom/transsion/usercenter/profile/b;
    .locals 2

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Lcom/transsion/usercenter/profile/b;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/usercenter/profile/b;

    return-object v0
.end method

.method private static final R()Lcom/transsion/usercenter/profile/d;
    .locals 2

    sget-object v0, Ltw/b;->c:Ltw/b$a;

    invoke-virtual {v0}, Ltw/b$a;->a()Ltw/b;

    move-result-object v0

    const-class v1, Lcom/transsion/usercenter/profile/d;

    invoke-virtual {v0, v1}, Ltw/b;->e(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/usercenter/profile/d;

    return-object v0
.end method

.method private final S()V
    .locals 18

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, v0, Lcom/transsion/usercenter/me/MeViewmodel;->p:Lcom/transsion/usercenter/profile/bean/MinePageInfo;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/transsion/usercenter/profile/bean/MinePageInfo;->getUserInfo()Lcom/transsnet/loginapi/bean/UserInfo;

    move-result-object v3

    if-nez v3, :cond_2

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/transsion/usercenter/me/MeViewmodel;->F()Lcom/transsnet/loginapi/ILoginApi;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/transsnet/loginapi/ILoginApi;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    move-result-object v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :cond_2
    :goto_0
    new-instance v4, Lcom/transsion/usercenter/profile/bean/MeItemInfo;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v3}, Lcom/transsion/usercenter/profile/bean/MeItemInfo;-><init>(ILjava/lang/Object;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/transsion/usercenter/profile/bean/MeItemInfo;

    new-instance v4, Lcom/transsion/usercenter/profile/bean/MeHistoryInfo;

    iget-object v5, v0, Lcom/transsion/usercenter/me/MeViewmodel;->l:Ljava/util/List;

    invoke-direct {v4, v5}, Lcom/transsion/usercenter/profile/bean/MeHistoryInfo;-><init>(Ljava/util/List;)V

    const/4 v5, 0x4

    invoke-direct {v3, v5, v4}, Lcom/transsion/usercenter/profile/bean/MeItemInfo;-><init>(ILjava/lang/Object;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/transsion/usercenter/profile/bean/MeItemInfo;

    new-instance v15, Lcom/transsion/usercenter/profile/bean/IconItemInfo;

    sget v4, Lcom/transsion/usercenter/R$string;->user_switch_profile:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget v8, Lcom/tn/lib/widget/R$drawable;->ic_me_switch_profile:I

    sget v9, Lcom/transsion/baseui/R$drawable;->bg_radius_bottom_6_color_white_6p:I

    const/16 v2, 0x2e0

    const/16 v16, 0x0

    const/4 v6, 0x0

    const-string v7, "study_mode_type"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, "study_mode"

    const/4 v14, 0x0

    move-object v4, v15

    move-object/from16 v17, v15

    move v15, v2

    invoke-direct/range {v4 .. v16}, Lcom/transsion/usercenter/profile/bean/IconItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZIZLjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v2, 0x5

    move-object/from16 v4, v17

    invoke-direct {v3, v2, v4}, Lcom/transsion/usercenter/profile/bean/MeItemInfo;-><init>(ILjava/lang/Object;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/transsion/usercenter/me/MeViewmodel;->q:Landroidx/lifecycle/b0;

    invoke-virtual {v2, v1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    return-void
.end method

.method private final T()V
    .locals 34

    move-object/from16 v0, p0

    sget-object v1, Lak/o;->a:Lak/o;

    invoke-virtual {v1}, Lak/o;->i()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/transsion/usercenter/me/MeViewmodel;->S()V

    return-void

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v0, Lcom/transsion/usercenter/me/MeViewmodel;->p:Lcom/transsion/usercenter/profile/bean/MinePageInfo;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/transsion/usercenter/profile/bean/MinePageInfo;->getUserInfo()Lcom/transsnet/loginapi/bean/UserInfo;

    move-result-object v6

    if-nez v6, :cond_3

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/transsion/usercenter/me/MeViewmodel;->F()Lcom/transsnet/loginapi/ILoginApi;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v6}, Lcom/transsnet/loginapi/ILoginApi;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    move-result-object v6

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    :cond_3
    :goto_0
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/transsion/usercenter/profile/bean/MinePageInfo;->getVipInfo()Lcom/transsion/memberapi/MemberInfo;

    move-result-object v7

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    :goto_1
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/transsion/usercenter/profile/bean/MinePageInfo;->getNovelEntry()Lcom/transsion/usercenter/profile/bean/MineNovel;

    move-result-object v8

    goto :goto_2

    :cond_5
    const/4 v8, 0x0

    :goto_2
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/transsion/usercenter/profile/bean/MinePageInfo;->getMyGroup()Lcom/transsion/usercenter/profile/bean/MyGroup;

    move-result-object v10

    if-eqz v10, :cond_6

    invoke-virtual {v10}, Lcom/transsion/usercenter/profile/bean/MyGroup;->getCount()I

    move-result v10

    goto :goto_3

    :cond_6
    const/4 v10, 0x0

    :goto_3
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/transsion/usercenter/profile/bean/MinePageInfo;->getMySubject()Lcom/transsion/usercenter/profile/bean/MySubject;

    move-result-object v11

    if-eqz v11, :cond_7

    invoke-virtual {v11}, Lcom/transsion/usercenter/profile/bean/MySubject;->getWantToSeeCount()I

    move-result v11

    goto :goto_4

    :cond_7
    const/4 v11, 0x0

    :goto_4
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/transsion/usercenter/profile/bean/MinePageInfo;->getFavoriteInfo()Lcom/transsion/usercenter/profile/bean/BffFavoriteInfo;

    move-result-object v12

    if-eqz v12, :cond_8

    invoke-virtual {v12}, Lcom/transsion/usercenter/profile/bean/BffFavoriteInfo;->getFavoriteCount()Ljava/lang/Integer;

    move-result-object v12

    if-eqz v12, :cond_8

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    goto :goto_5

    :cond_8
    const/4 v12, 0x0

    :goto_5
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lcom/transsion/usercenter/profile/bean/MinePageInfo;->getMyPost()Lcom/transsion/usercenter/profile/bean/CountInfo;

    move-result-object v13

    if-eqz v13, :cond_9

    invoke-virtual {v13}, Lcom/transsion/usercenter/profile/bean/CountInfo;->getCount()I

    move-result v13

    goto :goto_6

    :cond_9
    const/4 v13, 0x0

    :goto_6
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lcom/transsion/usercenter/profile/bean/MinePageInfo;->getMyLike()Lcom/transsion/usercenter/profile/bean/CountInfo;

    move-result-object v14

    if-eqz v14, :cond_a

    invoke-virtual {v14}, Lcom/transsion/usercenter/profile/bean/CountInfo;->getCount()I

    move-result v14

    goto :goto_7

    :cond_a
    const/4 v14, 0x0

    :goto_7
    if-eqz v3, :cond_b

    invoke-virtual {v3}, Lcom/transsion/usercenter/profile/bean/MinePageInfo;->getMyComment()Lcom/transsion/usercenter/profile/bean/CountInfo;

    move-result-object v15

    if-eqz v15, :cond_b

    invoke-virtual {v15}, Lcom/transsion/usercenter/profile/bean/CountInfo;->getCount()I

    move-result v15

    goto :goto_8

    :cond_b
    const/4 v15, 0x0

    :goto_8
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Lcom/transsion/usercenter/profile/bean/MinePageInfo;->getSubscribeInfo()Lcom/transsion/usercenter/profile/bean/SubscribeInfo;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Lcom/transsion/usercenter/profile/bean/SubscribeInfo;->getSubscribeCount()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_9

    :cond_c
    const/4 v3, 0x0

    :goto_9
    new-instance v5, Lcom/transsion/usercenter/profile/bean/MeItemInfo;

    const/4 v9, 0x1

    invoke-direct {v5, v9, v6}, Lcom/transsion/usercenter/profile/bean/MeItemInfo;-><init>(ILjava/lang/Object;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, v0, Lcom/transsion/usercenter/me/MeViewmodel;->i:Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;

    const/16 v6, 0x8

    if-eqz v5, :cond_e

    invoke-virtual {v5}, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;->getNoticeEnable()Z

    move-result v18

    if-eqz v18, :cond_e

    invoke-virtual {v5}, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;->getNoticeContent()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_e

    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->length()I

    move-result v18

    if-nez v18, :cond_d

    goto :goto_a

    :cond_d
    new-instance v9, Lcom/transsion/usercenter/profile/bean/MeItemInfo;

    invoke-direct {v9, v6, v5}, Lcom/transsion/usercenter/profile/bean/MeItemInfo;-><init>(ILjava/lang/Object;)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    :goto_a
    if-eqz v7, :cond_17

    new-instance v9, Lcom/transsion/usercenter/profile/bean/MeItemInfo;

    const/4 v6, 0x2

    invoke-direct {v9, v6, v7}, Lcom/transsion/usercenter/profile/bean/MeItemInfo;-><init>(ILjava/lang/Object;)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct/range {p0 .. p0}, Lcom/transsion/usercenter/me/MeViewmodel;->E()Lcom/transsion/memberapi/IPremiumApi;

    move-result-object v6

    if-eqz v6, :cond_f

    invoke-interface {v6}, Lcom/transsion/memberapi/IPremiumApi;->u()Z

    move-result v6

    goto :goto_b

    :cond_f
    const/4 v6, 0x0

    :goto_b
    invoke-direct/range {p0 .. p0}, Lcom/transsion/usercenter/me/MeViewmodel;->E()Lcom/transsion/memberapi/IPremiumApi;

    move-result-object v9

    if-eqz v9, :cond_10

    invoke-interface {v9}, Lcom/transsion/memberapi/IPremiumApi;->k()Z

    move-result v9

    goto :goto_c

    :cond_10
    const/4 v9, 0x0

    :goto_c
    invoke-direct/range {p0 .. p0}, Lcom/transsion/usercenter/me/MeViewmodel;->F()Lcom/transsnet/loginapi/ILoginApi;

    move-result-object v20

    if-eqz v20, :cond_11

    invoke-interface/range {v20 .. v20}, Lcom/transsnet/loginapi/ILoginApi;->a()Z

    move-result v20

    goto :goto_d

    :cond_11
    const/16 v20, 0x0

    :goto_d
    invoke-direct/range {p0 .. p0}, Lcom/transsion/usercenter/me/MeViewmodel;->D()Lcom/transsion/memberapi/IMemberApi;

    move-result-object v21

    if-eqz v21, :cond_12

    invoke-interface/range {v21 .. v21}, Lcom/transsion/memberapi/IMemberApi;->f()Z

    move-result v21

    goto :goto_e

    :cond_12
    const/16 v21, 0x0

    :goto_e
    if-eqz v20, :cond_16

    if-nez v6, :cond_13

    if-eqz v9, :cond_16

    :cond_13
    if-eqz v21, :cond_16

    new-instance v6, Lcom/transsion/usercenter/profile/bean/MeItemInfo;

    new-instance v9, Lcom/transsion/usercenter/profile/bean/IconItemInfo;

    sget v5, Lcom/transsion/usercenter/R$string;->user_linked_devices:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v7}, Lcom/transsion/memberapi/MemberInfo;->getDeviceCount()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_15

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_14

    goto :goto_10

    :cond_14
    :goto_f
    move-object/from16 v22, v5

    goto :goto_11

    :cond_15
    :goto_10
    const-string v5, "0"

    goto :goto_f

    :goto_11
    sget v24, Lcom/tn/lib/widget/R$drawable;->user_linked_devices_icon:I

    sget v25, Lcom/transsion/baseui/R$drawable;->bg_radius_bottom_6_color_white_6p:I

    const/16 v31, 0x2c0

    const/16 v32, 0x0

    const/16 v23, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const-string v29, "linked_devices"

    const/16 v30, 0x0

    move-object/from16 v20, v9

    invoke-direct/range {v20 .. v32}, Lcom/transsion/usercenter/profile/bean/IconItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZIZLjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v5, 0x5

    invoke-direct {v6, v5, v9}, Lcom/transsion/usercenter/profile/bean/MeItemInfo;-><init>(ILjava/lang/Object;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_16
    new-instance v5, Lcom/transsion/usercenter/profile/bean/MeItemInfo;

    const/16 v6, 0xb

    invoke-direct {v5, v6, v7}, Lcom/transsion/usercenter/profile/bean/MeItemInfo;-><init>(ILjava/lang/Object;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_17
    iget-object v5, v0, Lcom/transsion/usercenter/me/MeViewmodel;->f:Ljava/util/List;

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/usercenter/profile/bean/ZeroInfo;

    if-eqz v5, :cond_18

    new-instance v6, Lcom/transsion/usercenter/profile/bean/MeItemInfo;

    const/4 v7, 0x3

    invoke-direct {v6, v7, v5}, Lcom/transsion/usercenter/profile/bean/MeItemInfo;-><init>(ILjava/lang/Object;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_18
    if-eqz v8, :cond_19

    new-instance v5, Lcom/transsion/usercenter/profile/bean/MeItemInfo;

    const/4 v6, 0x7

    invoke-direct {v5, v6, v8}, Lcom/transsion/usercenter/profile/bean/MeItemInfo;-><init>(ILjava/lang/Object;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_19
    sget-object v5, Lak/g;->a:Lak/g;

    invoke-virtual {v5}, Lak/g;->b()Z

    move-result v6

    if-eqz v6, :cond_1a

    const-string v6, "/postdetail/favorite"

    goto :goto_12

    :cond_1a
    const-string v6, "/profile/see"

    :goto_12
    invoke-virtual {v5}, Lak/g;->b()Z

    move-result v7

    if-eqz v7, :cond_1b

    move v11, v12

    :cond_1b
    new-instance v7, Lcom/transsion/usercenter/profile/bean/MeItemInfo;

    new-instance v8, Lcom/transsion/usercenter/profile/bean/MeHistoryInfo;

    iget-object v9, v0, Lcom/transsion/usercenter/me/MeViewmodel;->l:Ljava/util/List;

    invoke-direct {v8, v9}, Lcom/transsion/usercenter/profile/bean/MeHistoryInfo;-><init>(Ljava/util/List;)V

    const/4 v9, 0x4

    invoke-direct {v7, v9, v8}, Lcom/transsion/usercenter/profile/bean/MeItemInfo;-><init>(ILjava/lang/Object;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Lak/g;->b()Z

    move-result v5

    if-eqz v5, :cond_1c

    new-instance v5, Lcom/transsion/usercenter/profile/bean/MeItemInfo;

    new-instance v7, Lcom/transsion/usercenter/profile/bean/IconItemInfo;

    sget v8, Lcom/transsion/usercenter/R$string;->profile_my_subscribers:I

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    sget v24, Lcom/tn/lib/widget/R$drawable;->ic_me_subscriptions:I

    sget v25, Lcom/tn/lib/widget/R$color;->white_6:I

    const/16 v31, 0x2c0

    const/16 v32, 0x0

    const-string v23, "subscribe_list_type"

    const/16 v26, 0x1

    const/16 v27, 0x0

    const/16 v28, 0x0

    const-string v29, "subscribe"

    const/16 v30, 0x0

    move-object/from16 v20, v7

    invoke-direct/range {v20 .. v32}, Lcom/transsion/usercenter/profile/bean/IconItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZIZLjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v3, 0x5

    invoke-direct {v5, v3, v7}, Lcom/transsion/usercenter/profile/bean/MeItemInfo;-><init>(ILjava/lang/Object;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1c
    new-instance v3, Lcom/transsion/usercenter/profile/bean/MeItemInfo;

    new-instance v5, Lcom/transsion/usercenter/profile/bean/IconItemInfo;

    sget v7, Lcom/transsion/usercenter/R$string;->profile_your_list:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "oneroom://com.community.oneroom"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    sget v24, Lcom/tn/lib/widget/R$drawable;->ic_me_my_list:I

    sget v25, Lcom/tn/lib/widget/R$color;->white_6:I

    const/4 v6, 0x0

    invoke-static {v6}, Ldk/a;->b(I)I

    move-result v27

    const/16 v31, 0x280

    const/16 v32, 0x0

    const/16 v26, 0x1

    const/16 v28, 0x0

    const-string v29, "want_to_see"

    const/16 v30, 0x0

    move-object/from16 v20, v5

    invoke-direct/range {v20 .. v32}, Lcom/transsion/usercenter/profile/bean/IconItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZIZLjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v6, 0x5

    invoke-direct {v3, v6, v5}, Lcom/transsion/usercenter/profile/bean/MeItemInfo;-><init>(ILjava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/transsion/usercenter/profile/bean/MeItemInfo;

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-direct {v3, v5, v6}, Lcom/transsion/usercenter/profile/bean/MeItemInfo;-><init>(ILjava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/transsion/usercenter/profile/bean/MeItemInfo;

    new-instance v5, Lcom/transsion/usercenter/profile/bean/IconItemInfo;

    sget v6, Lcom/transsion/usercenter/R$string;->user_tv_download_web_link:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    sget v24, Lcom/tn/lib/widget/R$drawable;->ic_me_tv_download_web_link:I

    sget v25, Lcom/transsion/baseui/R$drawable;->bg_radius_bottom_6_color_white_6p:I

    sget-object v6, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {v6}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v6

    const-string v7, "key_tv_download_web_link_clicked"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    const/4 v7, 0x1

    xor-int/lit8 v30, v6, 0x1

    const/16 v31, 0xc0

    const/16 v32, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const-string v29, "tv_download_web_link"

    move-object/from16 v20, v5

    invoke-direct/range {v20 .. v32}, Lcom/transsion/usercenter/profile/bean/IconItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZIZLjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v6, 0x5

    invoke-direct {v3, v6, v5}, Lcom/transsion/usercenter/profile/bean/MeItemInfo;-><init>(ILjava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/transsion/usercenter/profile/bean/MeItemInfo;

    new-instance v5, Lcom/transsion/usercenter/profile/bean/IconItemInfo;

    sget v6, Lcom/transsion/usercenter/R$string;->profile_my_room:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {p0 .. p0}, Lcom/transsion/usercenter/me/MeViewmodel;->F()Lcom/transsnet/loginapi/ILoginApi;

    move-result-object v6

    if-eqz v6, :cond_1d

    invoke-interface {v6}, Lcom/transsnet/loginapi/ILoginApi;->a()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1d

    const-string v6, "oneroom://com.community.oneroom/room/list"

    :goto_13
    move-object/from16 v23, v6

    goto :goto_14

    :cond_1d
    const-string v6, "oneroom://com.community.oneroom/room/list?index=1"

    goto :goto_13

    :goto_14
    sget v24, Lcom/tn/lib/widget/R$drawable;->ic_me_room:I

    sget v25, Lcom/transsion/baseui/R$drawable;->bg_radius_top_6_color_white_6p:I

    const/16 v6, 0x8

    invoke-static {v6}, Ldk/a;->b(I)I

    move-result v27

    const/16 v31, 0x200

    const/16 v32, 0x0

    const/16 v26, 0x1

    const/16 v28, 0x0

    const-string v29, "myrooms"

    const/16 v30, 0x0

    move-object/from16 v20, v5

    invoke-direct/range {v20 .. v32}, Lcom/transsion/usercenter/profile/bean/IconItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZIZLjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v6, 0x5

    invoke-direct {v3, v6, v5}, Lcom/transsion/usercenter/profile/bean/MeItemInfo;-><init>(ILjava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v13, v14

    add-int/2addr v13, v15

    new-instance v3, Lcom/transsion/usercenter/profile/bean/MeItemInfo;

    new-instance v5, Lcom/transsion/usercenter/profile/bean/IconItemInfo;

    sget v6, Lcom/tn/lib/widget/R$string;->my_activity:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    sget v24, Lcom/tn/lib/widget/R$drawable;->ic_mine_activity:I

    sget v25, Lcom/transsion/baseui/R$drawable;->bg_radius_bottom_6_color_white_6p:I

    const/16 v31, 0x260

    const-string v23, "my_activity_type"

    const/16 v26, 0x0

    const/16 v27, 0x0

    const-string v29, "my_activity"

    move-object/from16 v20, v5

    invoke-direct/range {v20 .. v32}, Lcom/transsion/usercenter/profile/bean/IconItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZIZLjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v6, 0x5

    invoke-direct {v3, v6, v5}, Lcom/transsion/usercenter/profile/bean/MeItemInfo;-><init>(ILjava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/transsion/usercenter/profile/bean/MeItemInfo;

    sget v5, Lcom/transsion/usercenter/R$string;->user_setting:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v10, Lcom/tn/lib/widget/R$drawable;->ic_me_setting:I

    sget v11, Lcom/transsion/baseui/R$drawable;->bg_radius_top_6_color_white_6p:I

    const/16 v5, 0x8

    invoke-static {v5}, Ldk/a;->b(I)I

    move-result v13

    new-instance v5, Lcom/transsion/usercenter/profile/bean/IconItemInfo;

    const/16 v17, 0x280

    const/16 v18, 0x0

    const/4 v8, 0x0

    const-string v9, "oneroom://com.community.oneroom/profile/setting"

    const/4 v12, 0x1

    const/4 v14, 0x0

    const-string v15, "setting"

    const/16 v16, 0x0

    move-object v6, v5

    invoke-direct/range {v6 .. v18}, Lcom/transsion/usercenter/profile/bean/IconItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZIZLjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v6, 0x5

    invoke-direct {v3, v6, v5}, Lcom/transsion/usercenter/profile/bean/MeItemInfo;-><init>(ILjava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/transsion/baselib/kids/KidsAccountManager;->a:Lcom/transsion/baselib/kids/KidsAccountManager;

    invoke-virtual {v3}, Lcom/transsion/baselib/kids/KidsAccountManager;->e()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_20

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_1e

    goto :goto_17

    :cond_1e
    invoke-virtual {v1}, Lak/o;->j()Z

    move-result v6

    if-eqz v6, :cond_20

    new-instance v6, Lcom/transsion/usercenter/profile/bean/MeItemInfo;

    new-instance v15, Lcom/transsion/usercenter/profile/bean/IconItemInfo;

    sget v7, Lcom/transsion/usercenter/R$string;->user_parental_pin:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Lcom/transsion/baselib/kids/KidsAccountManager;->i()Z

    move-result v3

    if-nez v3, :cond_1f

    sget v3, Lcom/transsion/usercenter/R$string;->user_parental_pin_hint:I

    :goto_15
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v9, v3

    goto :goto_16

    :cond_1f
    sget v3, Lcom/transsion/usercenter/R$string;->user_parental_pin_hint_on:I

    goto :goto_15

    :goto_16
    sget v11, Lcom/tn/lib/widget/R$drawable;->ic_user_kids_settings_pin:I

    sget v12, Lcom/tn/lib/widget/R$color;->white_6:I

    const/16 v18, 0x2c0

    const/16 v19, 0x0

    const-string v10, "parental_pin_type"

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v3, 0x0

    const-string v16, "parental_pin"

    const/16 v17, 0x0

    move-object v7, v15

    move-object/from16 v33, v15

    move v15, v3

    invoke-direct/range {v7 .. v19}, Lcom/transsion/usercenter/profile/bean/IconItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZIZLjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v7, v33

    const/4 v3, 0x5

    invoke-direct {v6, v3, v7}, Lcom/transsion/usercenter/profile/bean/MeItemInfo;-><init>(ILjava/lang/Object;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_20
    :goto_17
    invoke-virtual {v1}, Lak/o;->j()Z

    move-result v1

    if-eqz v1, :cond_23

    new-instance v1, Lcom/transsion/usercenter/profile/bean/MeItemInfo;

    new-instance v3, Lcom/transsion/usercenter/profile/bean/IconItemInfo;

    sget v6, Lcom/transsion/usercenter/R$string;->user_safe_kids:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v5, :cond_22

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_21

    goto :goto_19

    :cond_21
    sget v5, Lcom/transsion/usercenter/R$string;->user_switch_profile:I

    :goto_18
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v8, v5

    goto :goto_1a

    :cond_22
    :goto_19
    sget v5, Lcom/transsion/usercenter/R$string;->user_create_study_profile:I

    goto :goto_18

    :goto_1a
    sget v10, Lcom/tn/lib/widget/R$drawable;->ic_me_study_mode:I

    sget v11, Lcom/tn/lib/widget/R$color;->white_6:I

    const/16 v17, 0x2c0

    const/16 v18, 0x0

    const-string v9, "study_mode_type"

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v15, "study_mode"

    const/16 v16, 0x0

    move-object v6, v3

    invoke-direct/range {v6 .. v18}, Lcom/transsion/usercenter/profile/bean/IconItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZIZLjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v5, 0x5

    invoke-direct {v1, v5, v3}, Lcom/transsion/usercenter/profile/bean/MeItemInfo;-><init>(ILjava/lang/Object;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_23
    new-instance v1, Lcom/transsion/usercenter/profile/bean/MeItemInfo;

    new-instance v3, Lcom/transsion/usercenter/profile/bean/IconItemInfo;

    sget v5, Lcom/transsion/usercenter/R$string;->user_setting_feedback:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v9, Lcom/tn/lib/widget/R$drawable;->ic_me_feedback:I

    sget v10, Lcom/transsion/baseui/R$drawable;->bg_radius_bottom_6_color_white_6p:I

    const/16 v16, 0x2e0

    const/16 v17, 0x0

    const/4 v7, 0x0

    const-string v8, "oneroom://com.community.oneroom/profile/user_center_labels_feedback"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v14, "feedback"

    const/4 v15, 0x0

    move-object v5, v3

    invoke-direct/range {v5 .. v17}, Lcom/transsion/usercenter/profile/bean/IconItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZIZLjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v4, 0x5

    invoke-direct {v1, v4, v3}, Lcom/transsion/usercenter/profile/bean/MeItemInfo;-><init>(ILjava/lang/Object;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/transsion/usercenter/me/MeViewmodel;->i:Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;

    if-eqz v1, :cond_25

    invoke-virtual {v1}, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;->getBottomContent()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_25

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_24

    goto :goto_1b

    :cond_24
    new-instance v3, Lcom/transsion/usercenter/profile/bean/MeItemInfo;

    const/16 v4, 0x9

    invoke-direct {v3, v4, v1}, Lcom/transsion/usercenter/profile/bean/MeItemInfo;-><init>(ILjava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_25
    :goto_1b
    iget-object v1, v0, Lcom/transsion/usercenter/me/MeViewmodel;->q:Landroidx/lifecycle/b0;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    return-void
.end method

.method private static final U()Lcom/transsion/baselib/db/video/ShortTVPlayDao;
    .locals 3

    sget-object v0, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$g1;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    const-string v2, "getApp(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/AppDatabase$g1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/baselib/db/AppDatabase;->x1()Lcom/transsion/baselib/db/video/ShortTVPlayDao;

    move-result-object v0

    return-object v0
.end method

.method private static final V()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;
    .locals 3

    sget-object v0, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$g1;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    const-string v2, "getApp(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/AppDatabase$g1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/baselib/db/AppDatabase;->C1()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    move-result-object v0

    return-object v0
.end method

.method private static final W()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
    .locals 3

    sget-object v0, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$g1;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    const-string v2, "getApp(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/AppDatabase$g1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/baselib/db/AppDatabase;->D1()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c()Lcom/transsion/memberapi/IPremiumApi;
    .locals 1

    invoke-static {}, Lcom/transsion/usercenter/me/MeViewmodel;->O()Lcom/transsion/memberapi/IPremiumApi;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic d()Lcom/transsion/baselib/db/video/ShortTVPlayDao;
    .locals 1

    invoke-static {}, Lcom/transsion/usercenter/me/MeViewmodel;->U()Lcom/transsion/baselib/db/video/ShortTVPlayDao;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic e()Lcom/transsnet/loginapi/ILoginApi;
    .locals 1

    invoke-static {}, Lcom/transsion/usercenter/me/MeViewmodel;->P()Lcom/transsnet/loginapi/ILoginApi;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic f()Lcom/transsion/usercenter/profile/b;
    .locals 1

    invoke-static {}, Lcom/transsion/usercenter/me/MeViewmodel;->Q()Lcom/transsion/usercenter/profile/b;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic g()Lcom/transsion/usercenter/profile/d;
    .locals 1

    invoke-static {}, Lcom/transsion/usercenter/me/MeViewmodel;->R()Lcom/transsion/usercenter/profile/d;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic h()Lcom/transsion/memberapi/IMemberApi;
    .locals 1

    invoke-static {}, Lcom/transsion/usercenter/me/MeViewmodel;->N()Lcom/transsion/memberapi/IMemberApi;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic i()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;
    .locals 1

    invoke-static {}, Lcom/transsion/usercenter/me/MeViewmodel;->V()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic j()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
    .locals 1

    invoke-static {}, Lcom/transsion/usercenter/me/MeViewmodel;->W()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic k(Lcom/transsion/usercenter/me/MeViewmodel;)I
    .locals 0

    iget p0, p0, Lcom/transsion/usercenter/me/MeViewmodel;->j:I

    return p0
.end method

.method public static final synthetic l(Lcom/transsion/usercenter/me/MeViewmodel;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/usercenter/me/MeViewmodel;->l:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic m(Lcom/transsion/usercenter/me/MeViewmodel;)Lcom/transsnet/loginapi/ILoginApi;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/usercenter/me/MeViewmodel;->F()Lcom/transsnet/loginapi/ILoginApi;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic n(Lcom/transsion/usercenter/me/MeViewmodel;)Lcom/transsion/usercenter/profile/b;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/usercenter/me/MeViewmodel;->G()Lcom/transsion/usercenter/profile/b;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic o(Lcom/transsion/usercenter/me/MeViewmodel;)Lcom/transsion/usercenter/profile/d;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/usercenter/me/MeViewmodel;->H()Lcom/transsion/usercenter/profile/d;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic p(Lcom/transsion/usercenter/me/MeViewmodel;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/usercenter/me/MeViewmodel;->J()V

    return-void
.end method

.method public static final synthetic q(Lcom/transsion/usercenter/me/MeViewmodel;)Lcom/transsion/baselib/db/video/ShortTVPlayDao;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/usercenter/me/MeViewmodel;->K()Lcom/transsion/baselib/db/video/ShortTVPlayDao;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic r(Lcom/transsion/usercenter/me/MeViewmodel;)Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/usercenter/me/MeViewmodel;->L()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic s(Lcom/transsion/usercenter/me/MeViewmodel;)Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/usercenter/me/MeViewmodel;->M()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic t(Lcom/transsion/usercenter/me/MeViewmodel;)Lcom/transsion/usercenter/profile/bean/ZeroConfig;
    .locals 0

    iget-object p0, p0, Lcom/transsion/usercenter/me/MeViewmodel;->g:Lcom/transsion/usercenter/profile/bean/ZeroConfig;

    return-object p0
.end method

.method public static final synthetic u(Lcom/transsion/usercenter/me/MeViewmodel;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/usercenter/me/MeViewmodel;->f:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic v(Lcom/transsion/usercenter/me/MeViewmodel;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/usercenter/me/MeViewmodel;->T()V

    return-void
.end method

.method public static final synthetic w(Lcom/transsion/usercenter/me/MeViewmodel;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/usercenter/me/MeViewmodel;->l:Ljava/util/List;

    return-void
.end method

.method public static final synthetic x(Lcom/transsion/usercenter/me/MeViewmodel;Lcom/transsion/usercenter/profile/bean/MinePageInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/usercenter/me/MeViewmodel;->p:Lcom/transsion/usercenter/profile/bean/MinePageInfo;

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 8

    iget-object v0, p0, Lcom/transsion/usercenter/me/MeViewmodel;->g:Lcom/transsion/usercenter/profile/bean/ZeroConfig;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/usercenter/me/MeViewmodel;->B()V

    :cond_0
    sget-object v1, Llg/a;->a:Llg/a$a;

    iget-object v0, p0, Lcom/transsion/usercenter/me/MeViewmodel;->g:Lcom/transsion/usercenter/profile/bean/ZeroConfig;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "zeroConfig:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "MeViewmodel"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/usercenter/me/MeViewmodel;->g:Lcom/transsion/usercenter/profile/bean/ZeroConfig;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/usercenter/profile/bean/ZeroConfig;->getEnable()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v2

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v3

    new-instance v5, Lcom/transsion/usercenter/me/MeViewmodel$fetchPurchase$1;

    const/4 v0, 0x0

    invoke-direct {v5, p0, v0}, Lcom/transsion/usercenter/me/MeViewmodel$fetchPurchase$1;-><init>(Lcom/transsion/usercenter/me/MeViewmodel;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_1
    return-void
.end method

.method public final C()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/me/MeViewmodel;->k:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final I()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/me/MeViewmodel;->q:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final y()V
    .locals 6

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v1

    new-instance v3, Lcom/transsion/usercenter/me/MeViewmodel$fetchHistory$1;

    const/4 v2, 0x0

    invoke-direct {v3, p0, v2}, Lcom/transsion/usercenter/me/MeViewmodel$fetchHistory$1;-><init>(Lcom/transsion/usercenter/me/MeViewmodel;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final z()V
    .locals 9

    invoke-virtual {p0}, Lcom/transsion/usercenter/me/MeViewmodel;->y()V

    iget-object v0, p0, Lcom/transsion/usercenter/me/MeViewmodel;->r:Lkotlinx/coroutines/t1;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/t1$a;->b(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v3

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v4

    new-instance v6, Lcom/transsion/usercenter/me/MeViewmodel$fetchProfile$1;

    invoke-direct {v6, p0, v1}, Lcom/transsion/usercenter/me/MeViewmodel$fetchProfile$1;-><init>(Lcom/transsion/usercenter/me/MeViewmodel;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/usercenter/me/MeViewmodel;->r:Lkotlinx/coroutines/t1;

    return-void
.end method
