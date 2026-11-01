.class public final Lfx/h;
.super Lck/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfx/h$a;
    }
.end annotation


# static fields
.field public static final g:Lfx/h$a;


# instance fields
.field private final b:Lex/b;

.field private c:Lkotlin/jvm/functions/Function1;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Lcom/transsion/version/update/RemoteVersionInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lfx/h$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfx/h$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lfx/h;->g:Lfx/h$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/transsion/version/update/R$style;->BottomDialogTheme:I

    invoke-direct {p0, p1, v0}, Lck/j;-><init>(Landroid/content/Context;I)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lex/b;->c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lex/b;

    move-result-object v0

    const-string v3, "inflate(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lfx/h;->b:Lex/b;

    const-string v3, ""

    iput-object v3, p0, Lfx/h;->d:Ljava/lang/String;

    invoke-virtual {v0}, Lex/b;->b()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v2, 0x50

    invoke-virtual {v0, v2}, Landroid/view/Window;->setGravity(I)V

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v2}, Landroid/view/Window;->setDimAmount(F)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    :cond_0
    sget-object v3, Lgk/a;->a:Lgk/a;

    invoke-virtual {v3, p1}, Lgk/a;->a(Landroid/content/Context;)I

    move-result p1

    iput p1, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 p1, -0x2

    iput p1, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    new-instance p1, Lfx/d;

    invoke-direct {p1, p0}, Lfx/d;-><init>(Lfx/h;)V

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-direct {p0}, Lfx/h;->p()V

    return-void
.end method

.method public static synthetic h(Lfx/h;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lfx/h;->s(Lfx/h;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic i(Lfx/h;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lfx/h;->r(Lfx/h;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic j(Lfx/h;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lfx/h;->l(Lfx/h;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic k(Lfx/h;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lfx/h;->q(Lfx/h;Landroid/view/View;)V

    return-void
.end method

.method private static final l(Lfx/h;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-virtual {p0}, Lck/j;->e()V

    return-void
.end method

.method private final m(Lcom/transsion/version/update/RemoteVersionInfo;)V
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/version/update/RemoteVersionInfo;->getForceUpdate()Z

    move-result v2

    if-ne v2, v0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const/4 v3, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/version/update/RemoteVersionInfo;->getNoticeConfig()Lcom/transsion/version/update/NoticeConfig;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/transsion/version/update/NoticeConfig;->getUpdateTitle()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v3

    :goto_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/version/update/RemoteVersionInfo;->getNoticeConfig()Lcom/transsion/version/update/NoticeConfig;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/transsion/version/update/NoticeConfig;->getUpdateDesc()Ljava/lang/String;

    move-result-object v3

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/version/update/RemoteVersionInfo;->getInstallPkgSize()J

    move-result-wide v5

    goto :goto_2

    :cond_3
    const-wide/16 v5, 0x0

    :goto_2
    const/high16 v7, 0x100000

    invoke-static {v5, v6, v7}, Lcom/blankj/utilcode/util/i;->f(JI)J

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/transsion/version/update/RemoteVersionInfo;->getNoticeConfig()Lcom/transsion/version/update/NoticeConfig;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/transsion/version/update/NoticeConfig;->getUpdateVersionName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_5

    :cond_4
    const-string p1, ""

    :cond_5
    iput-object p1, p0, Lfx/h;->d:Ljava/lang/String;

    const/16 p1, 0x8

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const-string v6, "getApplicationIcon(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, p0, Lfx/h;->b:Lex/b;

    iget-object v6, v6, Lex/b;->d:Landroid/widget/ImageView;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    iget-object v5, p0, Lfx/h;->b:Lex/b;

    iget-object v5, v5, Lex/b;->d:Landroid/widget/ImageView;

    invoke-virtual {v5, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3
    iget-object v5, p0, Lfx/h;->b:Lex/b;

    iget-object v5, v5, Lex/b;->k:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/transsion/version/update/R$string;->version:I

    iget-object v8, p0, Lfx/h;->d:Ljava/lang/String;

    new-array v9, v0, [Ljava/lang/Object;

    aput-object v8, v9, v1

    invoke-virtual {v6, v7, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v4, :cond_7

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_6

    goto :goto_4

    :cond_6
    iget-object v5, p0, Lfx/h;->b:Lex/b;

    iget-object v5, v5, Lex/b;->j:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    :goto_4
    if-eqz v3, :cond_9

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_8

    goto :goto_5

    :cond_8
    iget-object v4, p0, Lfx/h;->b:Lex/b;

    iget-object v4, v4, Lex/b;->g:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    :goto_5
    xor-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    xor-int/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lfx/h;->b:Lex/b;

    iget-object v0, v0, Lex/b;->b:Landroid/widget/TextView;

    if-eqz v2, :cond_a

    move v1, p1

    :cond_a
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private final p()V
    .locals 2

    iget-object v0, p0, Lfx/h;->b:Lex/b;

    iget-object v0, v0, Lex/b;->b:Landroid/widget/TextView;

    new-instance v1, Lfx/e;

    invoke-direct {v1, p0}, Lfx/e;-><init>(Lfx/h;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lfx/h;->b:Lex/b;

    iget-object v0, v0, Lex/b;->c:Landroid/widget/TextView;

    new-instance v1, Lfx/f;

    invoke-direct {v1, p0}, Lfx/f;-><init>(Lfx/h;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lfx/g;

    invoke-direct {v0, p0}, Lfx/g;-><init>(Lfx/h;)V

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-void
.end method

.method private static final q(Lfx/h;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    iget-object p0, p0, Lfx/h;->c:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static final r(Lfx/h;Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lfx/h;->f:Lcom/transsion/version/update/RemoteVersionInfo;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/version/update/RemoteVersionInfo;->getForceUpdate()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :goto_0
    iget-object p0, p0, Lfx/h;->c:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private static final s(Lfx/h;Landroid/content/DialogInterface;)V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onShow Listener  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "update"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-boolean p1, p0, Lfx/h;->e:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    sget-object p1, Lcom/transsion/version/update/UpdateManager;->f:Lcom/transsion/version/update/UpdateManager$a;

    invoke-virtual {p1}, Lcom/transsion/version/update/UpdateManager$a;->a()Lcom/transsion/version/update/UpdateManager;

    move-result-object p1

    iget-object p0, p0, Lfx/h;->d:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/transsion/version/update/UpdateManager;->h(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 5

    iget-boolean v0, p0, Lfx/h;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    sget-object v0, Llg/a;->a:Llg/a$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u88ab\u5f39\u7a97\u62e6\u622a\u7b56\u7565\u62e6\u622a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Llg/a$a;->g(Llg/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    return v4
.end method

.method public f()V
    .locals 6

    invoke-super {p0}, Lck/j;->f()V

    sget-object v0, Llg/a;->a:Llg/a$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShow "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "update"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final n(Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lfx/h;->c:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final o(Lcom/transsion/version/update/RemoteVersionInfo;Z)V
    .locals 0

    iput-object p1, p0, Lfx/h;->f:Lcom/transsion/version/update/RemoteVersionInfo;

    invoke-direct {p0, p1}, Lfx/h;->m(Lcom/transsion/version/update/RemoteVersionInfo;)V

    iput-boolean p2, p0, Lfx/h;->e:Z

    return-void
.end method
