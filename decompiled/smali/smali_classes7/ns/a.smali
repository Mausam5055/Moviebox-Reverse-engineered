.class public final Lns/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lns/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lns/a;

    invoke-direct {v0}, Lns/a;-><init>()V

    sput-object v0, Lns/a;->a:Lns/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b(Lns/a;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/transsion/shorttv/bean/Subject;Ljava/lang/String;Ljava/lang/Boolean;ILjava/lang/Object;)V
    .locals 12

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x8

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v7, v2

    goto :goto_0

    :cond_0
    move-object/from16 v7, p4

    :goto_0
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    move v8, v1

    goto :goto_1

    :cond_1
    move/from16 v8, p5

    :goto_1
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_2

    move-object v9, v2

    goto :goto_2

    :cond_2
    move-object/from16 v9, p6

    :goto_2
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_3

    move-object v10, v2

    goto :goto_3

    :cond_3
    move-object/from16 v10, p7

    :goto_3
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_4

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v11, v0

    goto :goto_4

    :cond_4
    move-object/from16 v11, p8

    :goto_4
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v3 .. v11}, Lns/a;->a(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/transsion/shorttv/bean/Subject;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/transsion/shorttv/bean/Subject;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 11

    move-object v0, p1

    move-object v1, p3

    const-string v2, "activity"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "ops"

    const-string v3, "download"

    const/4 v4, 0x0

    if-nez p5, :cond_2

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v6, p8

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Lls/a;->a:Lls/a;

    invoke-virtual {v5}, Lls/a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v3, v6}, Lcom/therouter/router/Navigator;->z(Ljava/lang/String;Z)Lcom/therouter/router/Navigator;

    move-result-object v3

    if-nez p7, :cond_1

    if-eqz p6, :cond_0

    invoke-virtual/range {p6 .. p6}, Lcom/transsion/shorttv/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, v4

    goto :goto_0

    :cond_1
    move-object/from16 v5, p7

    :goto_0
    const-string v6, "id"

    invoke-virtual {v3, v6, v5}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v3

    invoke-virtual {v3, v2, p3}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, p1, v4, v2, v4}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    return-void

    :cond_2
    if-eqz v1, :cond_4

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    move-object v8, v1

    goto :goto_3

    :cond_4
    :goto_2
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_5
    move-object v1, v4

    goto :goto_1

    :goto_3
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "getSupportFragmentManager(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lhj/i;->a:Lhj/i;

    invoke-virtual {v1}, Lhj/i;->i()Ljava/lang/String;

    move-result-object v6

    sget-object v4, Lcom/transsion/shorttv/ui/dialog/ShortTvDownloadResDialog;->i:Lcom/transsion/shorttv/ui/dialog/ShortTvDownloadResDialog$a;

    move-object v5, p2

    move-object/from16 v7, p6

    move-object v9, p4

    move/from16 v10, p5

    invoke-virtual/range {v4 .. v10}, Lcom/transsion/shorttv/ui/dialog/ShortTvDownloadResDialog$a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv/bean/Subject;Ljava/lang/String;Ljava/lang/String;Z)Lcom/transsion/shorttv/ui/dialog/ShortTvDownloadResDialog;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lcom/transsion/shorttv/ui/dialog/ShortTvDownloadResDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
