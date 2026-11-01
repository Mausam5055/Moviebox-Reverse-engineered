.class public final Lcom/transsion/postdetail/shorttv/factory/k;
.super Ljava/lang/Object;

# interfaces
.implements Lqs/k;


# instance fields
.field private a:Lcom/transsion/share/share/ShareDialogFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/share/share/ShareDialogFragment;
    .locals 15

    sget-object v0, Lcom/transsion/share/share/ShareDialogFragment;->s:Lcom/transsion/share/share/ShareDialogFragment$a;

    sget-object v1, Lcom/transsion/share/bean/PostType;->SHORT_TV_TYPE:Lcom/transsion/share/bean/PostType;

    const/16 v13, 0xc00

    const/4 v14, 0x0

    const-string v3, ""

    const-string v4, "TYPE_SUBJECT"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v2, p1

    move-object/from16 v5, p2

    move-object/from16 v10, p3

    invoke-static/range {v0 .. v14}, Lcom/transsion/share/share/ShareDialogFragment$a;->b(Lcom/transsion/share/share/ShareDialogFragment$a;Lcom/transsion/share/bean/PostType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/transsion/share/share/ShareDialogFragment;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "share"

    const-string v1, "pageName"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/postdetail/shorttv/factory/k;->a:Lcom/transsion/share/share/ShareDialogFragment;

    if-nez v1, :cond_1

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    invoke-direct {p0, p2, p3, p4}, Lcom/transsion/postdetail/shorttv/factory/k;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/share/share/ShareDialogFragment;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/postdetail/shorttv/factory/k;->a:Lcom/transsion/share/share/ShareDialogFragment;

    if-eqz p2, :cond_1

    new-instance p3, Lcom/transsion/postdetail/shorttv/factory/k$a;

    invoke-direct {p3}, Lcom/transsion/postdetail/shorttv/factory/k$a;-><init>()V

    invoke-virtual {p2, p3}, Lcom/transsion/share/share/ShareDialogFragment;->G0(Lcom/transsion/share/share/a;)V

    :cond_1
    if-eqz p1, :cond_4

    :try_start_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_4

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->g0()Z

    iget-object p2, p0, Lcom/transsion/postdetail/shorttv/factory/k;->a:Lcom/transsion/share/share/ShareDialogFragment;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p2

    if-ne p2, p3, :cond_2

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->k0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p2

    if-eqz p2, :cond_3

    :goto_0
    return-void

    :cond_3
    iget-object p2, p0, Lcom/transsion/postdetail/shorttv/factory/k;->a:Lcom/transsion/share/share/ShareDialogFragment;

    if-eqz p2, :cond_4

    invoke-virtual {p2, p1, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_2
    return-void
.end method
