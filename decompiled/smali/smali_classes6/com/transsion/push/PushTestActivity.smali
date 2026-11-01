.class public final Lcom/transsion/push/PushTestActivity;
.super Landroidx/appcompat/app/AppCompatActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/push/PushTestActivity$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 &2\u00020\u0001:\u0001&B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0003J\u000f\u0010\n\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u0003J\u000f\u0010\u000b\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u0003J\u0017\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0003J\u000f\u0010\u0011\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0003J\u0010\u0010\u0015\u001a\u00020\u0014H\u0082@\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0015\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u0017H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0011\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0019\u0010\u001f\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u001e\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u001f\u0010 J\u000f\u0010!\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008!\u0010\u0008J\u0019\u0010$\u001a\u00020\u00042\u0008\u0010#\u001a\u0004\u0018\u00010\"H\u0014\u00a2\u0006\u0004\u0008$\u0010%\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/transsion/push/PushTestActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "<init>",
        "()V",
        "",
        "initView",
        "",
        "d0",
        "()Ljava/lang/String;",
        "x0",
        "u0",
        "w0",
        "",
        "grouped",
        "t0",
        "(Z)V",
        "c0",
        "o0",
        "()Z",
        "v0",
        "",
        "s0",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "",
        "Lcom/transsion/mpush/api/LocalPushMessage;",
        "p0",
        "()Ljava/util/List;",
        "Lcom/transsion/mpush/core/net/SdkPullMsgResp;",
        "q0",
        "()Lcom/transsion/mpush/core/net/SdkPullMsgResp;",
        "path",
        "r0",
        "(Ljava/lang/String;)Ljava/lang/String;",
        "e0",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "a",
        "push_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final a:Lcom/transsion/push/PushTestActivity$a;

.field private static final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final c:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/push/PushTestActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/push/PushTestActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/push/PushTestActivity;->a:Lcom/transsion/push/PushTestActivity$a;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const v1, 0x30d40

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/transsion/push/PushTestActivity;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/transsion/push/PushTestActivity;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static synthetic R(Lcom/transsion/push/PushTestActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/push/PushTestActivity;->f0(Lcom/transsion/push/PushTestActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic T(Lcom/transsion/push/PushTestActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/push/PushTestActivity;->i0(Lcom/transsion/push/PushTestActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic U(Lcom/transsion/push/PushTestActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/push/PushTestActivity;->h0(Lcom/transsion/push/PushTestActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic V(Lcom/transsion/push/PushTestActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/push/PushTestActivity;->m0(Lcom/transsion/push/PushTestActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic W(Lcom/transsion/push/PushTestActivity;Landroidx/appcompat/widget/AppCompatButton;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/push/PushTestActivity;->k0(Lcom/transsion/push/PushTestActivity;Landroidx/appcompat/widget/AppCompatButton;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic X(Lcom/transsion/push/PushTestActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/push/PushTestActivity;->l0(Lcom/transsion/push/PushTestActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Y(Lcom/transsion/push/PushTestActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/push/PushTestActivity;->n0(Lcom/transsion/push/PushTestActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Z(Lcom/transsion/push/PushTestActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/push/PushTestActivity;->g0(Lcom/transsion/push/PushTestActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic a0(Lcom/transsion/push/PushTestActivity;Landroidx/appcompat/widget/AppCompatButton;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/push/PushTestActivity;->j0(Lcom/transsion/push/PushTestActivity;Landroidx/appcompat/widget/AppCompatButton;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic b0(Lcom/transsion/push/PushTestActivity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/push/PushTestActivity;->s0(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final c0()V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v1, "push_test_independent_channel"

    invoke-static {v0, v1}, Lm/a;->a(Landroid/app/NotificationManager;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v2

    if-eqz v2, :cond_2

    return-void

    :cond_2
    invoke-static {}, Landroidx/media3/common/util/g0;->a()V

    const-string v2, "Push Test Independent"

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Lm/f;->a(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    move-result-object v1

    const-string v2, "Push independent test channel"

    invoke-static {v1, v2}, Landroidx/media3/common/util/f0;->a(Landroid/app/NotificationChannel;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/transsion/mpush/core/renderer/e;->a(Landroid/app/NotificationChannel;Z)V

    invoke-static {v0, v1}, Lm/c;->a(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    return-void
.end method

.method private final d0()Ljava/lang/String;
    .locals 2

    sget v0, Lcom/transsion/lib/push/R$id;->edTitle:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_1
    const-string v0, "Notification Title Test ------- Notification Title Test ------- Notification Title Test"

    return-object v0
.end method

.method private final e0()Ljava/lang/String;
    .locals 1

    const-string v0, "push/notification.json"

    return-object v0
.end method

.method private static final f0(Lcom/transsion/push/PushTestActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/push/PushTestActivity;->v0()V

    return-void
.end method

.method private static final g0(Lcom/transsion/push/PushTestActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/push/PushTestActivity;->w0()V

    return-void
.end method

.method private static final h0(Lcom/transsion/push/PushTestActivity;Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/transsion/push/PushTestActivity;->t0(Z)V

    return-void
.end method

.method private static final i0(Lcom/transsion/push/PushTestActivity;Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/transsion/push/PushTestActivity;->t0(Z)V

    return-void
.end method

.method private final initView()V
    .locals 3

    sget v0, Lcom/transsion/lib/push/R$id;->simulate_schedule_push:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    sget v1, Lcom/transsion/lib/push/R$id;->show_permanent_notification:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatButton;

    new-instance v2, Lcom/transsion/push/g;

    invoke-direct {v2, p0}, Lcom/transsion/push/g;-><init>(Lcom/transsion/push/PushTestActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/transsion/lib/push/R$id;->show_notification:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatButton;

    new-instance v2, Lcom/transsion/push/h;

    invoke-direct {v2, p0}, Lcom/transsion/push/h;-><init>(Lcom/transsion/push/PushTestActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/transsion/lib/push/R$id;->show_independent_notification_no_group:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatButton;

    new-instance v2, Lcom/transsion/push/i;

    invoke-direct {v2, p0}, Lcom/transsion/push/i;-><init>(Lcom/transsion/push/PushTestActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/transsion/lib/push/R$id;->show_independent_notification_group:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatButton;

    new-instance v2, Lcom/transsion/push/j;

    invoke-direct {v2, p0}, Lcom/transsion/push/j;-><init>(Lcom/transsion/push/PushTestActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/transsion/lib/push/R$id;->pull_local_push:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatButton;

    new-instance v2, Lcom/transsion/push/k;

    invoke-direct {v2, p0, v0}, Lcom/transsion/push/k;-><init>(Lcom/transsion/push/PushTestActivity;Landroidx/appcompat/widget/AppCompatButton;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/transsion/lib/push/R$id;->pull_local_push_mock:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatButton;

    new-instance v2, Lcom/transsion/push/l;

    invoke-direct {v2, p0, v0}, Lcom/transsion/push/l;-><init>(Lcom/transsion/push/PushTestActivity;Landroidx/appcompat/widget/AppCompatButton;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/transsion/lib/push/R$id;->simulate_schedule_push:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    new-instance v1, Lcom/transsion/push/m;

    invoke-direct {v1, p0}, Lcom/transsion/push/m;-><init>(Lcom/transsion/push/PushTestActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/transsion/lib/push/R$id;->show_local_list:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    new-instance v1, Lcom/transsion/push/n;

    invoke-direct {v1, p0}, Lcom/transsion/push/n;-><init>(Lcom/transsion/push/PushTestActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/transsion/lib/push/R$id;->btn_test_activate_push:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    new-instance v1, Lcom/transsion/push/o;

    invoke-direct {v1, p0}, Lcom/transsion/push/o;-><init>(Lcom/transsion/push/PushTestActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final j0(Lcom/transsion/push/PushTestActivity;Landroidx/appcompat/widget/AppCompatButton;Landroid/view/View;)V
    .locals 6

    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    new-instance v3, Lcom/transsion/push/PushTestActivity$initView$5$1;

    const/4 p2, 0x0

    invoke-direct {v3, p1, p0, p2}, Lcom/transsion/push/PushTestActivity$initView$5$1;-><init>(Landroidx/appcompat/widget/AppCompatButton;Lcom/transsion/push/PushTestActivity;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method private static final k0(Lcom/transsion/push/PushTestActivity;Landroidx/appcompat/widget/AppCompatButton;Landroid/view/View;)V
    .locals 6

    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    new-instance v3, Lcom/transsion/push/PushTestActivity$initView$6$1;

    const/4 p2, 0x0

    invoke-direct {v3, p1, p0, p2}, Lcom/transsion/push/PushTestActivity$initView$6$1;-><init>(Landroidx/appcompat/widget/AppCompatButton;Lcom/transsion/push/PushTestActivity;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method private static final l0(Lcom/transsion/push/PushTestActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/push/PushTestActivity;->x0()V

    return-void
.end method

.method private static final m0(Lcom/transsion/push/PushTestActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/push/PushTestActivity;->u0()V

    return-void
.end method

.method private static final n0(Lcom/transsion/push/PushTestActivity;Landroid/view/View;)V
    .locals 1

    const-string p1, "\u89e6\u53d1\u6fc0\u6d3b\u5e7f\u544a\u63a8\u9001"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    new-instance p1, Lcom/transsion/push/feature/activate/ActivatePushFeature;

    invoke-direct {p1}, Lcom/transsion/push/feature/activate/ActivatePushFeature;-><init>()V

    invoke-virtual {p1, p0}, Lcom/transsion/push/feature/activate/ActivatePushFeature;->init(Landroid/content/Context;)V

    const/4 p0, 0x4

    invoke-virtual {p1, p0}, Lcom/transsion/push/feature/activate/ActivatePushFeature;->onTrigger(I)V

    return-void
.end method

.method private final o0()Z
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    const-string v0, "android.permission.POST_NOTIFICATIONS"

    invoke-static {p0, v0}, Landroidx/core/content/b;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private final p0()Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/transsion/push/PushTestActivity;->q0()Lcom/transsion/mpush/core/net/SdkPullMsgResp;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/mpush/core/net/SdkPullMsgResp;->getItems()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private final q0()Lcom/transsion/mpush/core/net/SdkPullMsgResp;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-direct {p0}, Lcom/transsion/push/PushTestActivity;->e0()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/transsion/push/PushTestActivity;->r0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const-class v2, Lcom/transsion/mpush/core/net/SdkPullMsgResp;

    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/mpush/core/net/SdkPullMsgResp;

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    check-cast v0, Lcom/transsion/mpush/core/net/SdkPullMsgResp;

    return-object v0
.end method

.method private final r0(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "open(...)"

    const/16 v1, 0x2000

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lkotlin/text/Charsets;->b:Ljava/nio/charset/Charset;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    new-instance p1, Ljava/io/BufferedReader;

    invoke-direct {p1, v4, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {p1}, Lkotlin/io/TextStreamsKt;->e(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {p1, v2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v4

    :try_start_4
    invoke-static {p1, v3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object p1, v2

    :cond_0
    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_2

    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v3, "push/1/notification.json"

    invoke-virtual {p1, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/text/Charsets;->b:Ljava/nio/charset/Charset;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    new-instance p1, Ljava/io/BufferedReader;

    invoke-direct {p1, v3, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    invoke-static {p1}, Lkotlin/io/TextStreamsKt;->e(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :try_start_7
    invoke-static {p1, v2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p1

    goto :goto_2

    :catchall_4
    move-exception v0

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :catchall_5
    move-exception v1

    :try_start_9
    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :goto_2
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_3
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_4

    :cond_1
    move-object v2, p1

    :goto_4
    move-object p1, v2

    check-cast p1, Ljava/lang/String;

    :cond_2
    return-object p1
.end method

.method private final s0(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Lcom/transsion/push/PushTestActivity$seedLocalPushFromPreset$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/transsion/push/PushTestActivity$seedLocalPushFromPreset$1;

    iget v3, v2, Lcom/transsion/push/PushTestActivity$seedLocalPushFromPreset$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/transsion/push/PushTestActivity$seedLocalPushFromPreset$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/transsion/push/PushTestActivity$seedLocalPushFromPreset$1;

    invoke-direct {v2, v0, v1}, Lcom/transsion/push/PushTestActivity$seedLocalPushFromPreset$1;-><init>(Lcom/transsion/push/PushTestActivity;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/transsion/push/PushTestActivity$seedLocalPushFromPreset$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v3

    iget v4, v2, Lcom/transsion/push/PushTestActivity$seedLocalPushFromPreset$1;->label:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    iget-wide v3, v2, Lcom/transsion/push/PushTestActivity$seedLocalPushFromPreset$1;->J$0:J

    iget-object v5, v2, Lcom/transsion/push/PushTestActivity$seedLocalPushFromPreset$1;->L$1:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    iget-object v2, v2, Lcom/transsion/push/PushTestActivity$seedLocalPushFromPreset$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/transsion/mpush/core/net/SdkPullMsgResp;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/transsion/push/PushTestActivity;->q0()Lcom/transsion/mpush/core/net/SdkPullMsgResp;

    move-result-object v1

    const/4 v4, 0x0

    if-nez v1, :cond_3

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    :cond_3
    invoke-virtual {v1}, Lcom/transsion/mpush/core/net/SdkPullMsgResp;->getItems()Ljava/util/List;

    move-result-object v6

    if-nez v6, :cond_4

    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    check-cast v6, Ljava/lang/Iterable;

    new-instance v9, Ljava/util/ArrayList;

    const/16 v10, 0xa

    invoke-static {v6, v10}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v12, v4, 0x1

    if-gez v4, :cond_6

    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    :cond_6
    move-object v13, v10

    check-cast v13, Lcom/transsion/mpush/api/LocalPushMessage;

    invoke-virtual {v13}, Lcom/transsion/mpush/api/LocalPushMessage;->getMessageId()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, "_"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_7
    invoke-virtual {v13}, Lcom/transsion/mpush/api/LocalPushMessage;->getSource()Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_8

    const-string v14, "push"

    :cond_8
    move-object/from16 v21, v14

    invoke-virtual {v13}, Lcom/transsion/mpush/api/LocalPushMessage;->getType()Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_9

    const-string v14, "1"

    :cond_9
    move-object/from16 v23, v14

    int-to-long v14, v4

    add-long v24, v7, v14

    const v34, 0x2f17c

    const/16 v35, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x1

    const/16 v33, 0x0

    move-object v15, v10

    invoke-static/range {v13 .. v35}, Lcom/transsion/mpush/api/LocalPushMessage;->copy$default(Lcom/transsion/mpush/api/LocalPushMessage;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIJZZLjava/lang/String;ZIILjava/lang/Object;)Lcom/transsion/mpush/api/LocalPushMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/mpush/api/LocalPushMessage;->getDeeplink()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_a

    const/16 v18, 0x4

    const/16 v19, 0x0

    const-string v15, "%MSGID%"

    const/16 v17, 0x0

    move-object/from16 v16, v10

    invoke-static/range {v14 .. v19}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    :cond_a
    invoke-virtual {v4, v11}, Lcom/transsion/mpush/api/LocalPushMessage;->setDeeplink(Ljava/lang/String;)V

    invoke-interface {v9, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v4, v12

    goto/16 :goto_1

    :cond_b
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v4

    new-instance v6, Lcom/transsion/push/PushTestActivity$seedLocalPushFromPreset$2;

    invoke-direct {v6, v9, v11}, Lcom/transsion/push/PushTestActivity$seedLocalPushFromPreset$2;-><init>(Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    iput-object v1, v2, Lcom/transsion/push/PushTestActivity$seedLocalPushFromPreset$1;->L$0:Ljava/lang/Object;

    iput-object v9, v2, Lcom/transsion/push/PushTestActivity$seedLocalPushFromPreset$1;->L$1:Ljava/lang/Object;

    iput-wide v7, v2, Lcom/transsion/push/PushTestActivity$seedLocalPushFromPreset$1;->J$0:J

    iput v5, v2, Lcom/transsion/push/PushTestActivity$seedLocalPushFromPreset$1;->label:I

    invoke-static {v4, v6, v2}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_c

    return-object v3

    :cond_c
    move-object v2, v1

    move-wide v3, v7

    move-object v5, v9

    :goto_2
    invoke-virtual {v2}, Lcom/transsion/mpush/core/net/SdkPullMsgResp;->getConfig()Lcom/transsion/mpush/core/config/PushConfig;

    move-result-object v1

    if-eqz v1, :cond_d

    sget-object v2, Lcom/transsion/mpush/core/utils/PushPreference;->a:Lcom/transsion/mpush/core/utils/PushPreference;

    invoke-virtual {v2, v0, v1}, Lcom/transsion/mpush/core/utils/PushPreference;->o(Landroid/content/Context;Lcom/transsion/mpush/core/config/PushConfig;)V

    :cond_d
    sget-object v1, Lcom/transsion/mpush/core/utils/PushPreference;->a:Lcom/transsion/mpush/core/utils/PushPreference;

    invoke-virtual {v1, v0, v3, v4}, Lcom/transsion/mpush/core/utils/PushPreference;->x(Landroid/content/Context;J)V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method private final t0(Z)V
    .locals 11

    invoke-direct {p0}, Lcom/transsion/push/PushTestActivity;->o0()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget p1, Lcom/transsion/lib/push/R$string;->push_test_no_notification_permission:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/transsion/push/PushTestActivity;->c0()V

    if-eqz p1, :cond_1

    const-string v0, "RAW-GROUP"

    goto :goto_0

    :cond_1
    const-string v0, "RAW-NO-GROUP"

    :goto_0
    move v2, v1

    :goto_1
    const/4 v3, 0x4

    if-ge v2, v3, :cond_3

    sget-object v3, Lcom/transsion/push/PushTestActivity;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    sget-object v4, Lcom/transsion/push/PushTestActivity;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v2, v2, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pkg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", seq="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", idx="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/4, grouped="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroidx/core/app/NotificationCompat$m;

    const-string v7, "push_test_independent_channel"

    invoke-direct {v6, p0, v7}, Landroidx/core/app/NotificationCompat$m;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget v7, Lcom/transsion/lib/push/R$drawable;->push_small_logo:I

    invoke-virtual {v6, v7}, Landroidx/core/app/NotificationCompat$m;->J(I)Landroidx/core/app/NotificationCompat$m;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroidx/core/app/NotificationCompat$m;->l(Z)Landroidx/core/app/NotificationCompat$m;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroidx/core/app/NotificationCompat$m;->G(I)Landroidx/core/app/NotificationCompat$m;

    move-result-object v6

    invoke-direct {p0}, Lcom/transsion/push/PushTestActivity;->d0()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " #"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroidx/core/app/NotificationCompat$m;->q(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$m;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroidx/core/app/NotificationCompat$m;->p(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$m;

    move-result-object v3

    new-instance v6, Landroidx/core/app/NotificationCompat$k;

    invoke-direct {v6}, Landroidx/core/app/NotificationCompat$k;-><init>()V

    invoke-virtual {v6, v5}, Landroidx/core/app/NotificationCompat$k;->q(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$k;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/core/app/NotificationCompat$m;->L(Landroidx/core/app/NotificationCompat$p;)Landroidx/core/app/NotificationCompat$m;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Landroidx/core/app/NotificationCompat$m;->P(J)Landroidx/core/app/NotificationCompat$m;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroidx/core/app/NotificationCompat$m;->I(Z)Landroidx/core/app/NotificationCompat$m;

    move-result-object v3

    const-string v5, "setShowWhen(...)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    const-string v5, "push_test_independent_group_key"

    invoke-virtual {v3, v5}, Landroidx/core/app/NotificationCompat$m;->y(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$m;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroidx/core/app/NotificationCompat$m;->z(Z)Landroidx/core/app/NotificationCompat$m;

    :cond_2
    invoke-static {p0}, Landroidx/core/app/t;->d(Landroid/content/Context;)Landroidx/core/app/t;

    move-result-object v5

    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$m;->c()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v5, v4, v3}, Landroidx/core/app/t;->f(ILandroid/app/Notification;)V

    goto/16 :goto_1

    :cond_3
    if-eqz p1, :cond_4

    sget p1, Lcom/transsion/lib/push/R$string;->push_test_raw_group_sent:I

    :goto_2
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_4
    sget p1, Lcom/transsion/lib/push/R$string;->push_test_raw_no_group_sent:I

    goto :goto_2

    :goto_3
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private final u0()V
    .locals 6

    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    new-instance v3, Lcom/transsion/push/PushTestActivity$showLocalPushList$1;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v1}, Lcom/transsion/push/PushTestActivity$showLocalPushList$1;-><init>(Lcom/transsion/push/PushTestActivity;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method private final v0()V
    .locals 18

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/transsion/push/PushTestActivity;->p0()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    sget v1, Lcom/transsion/lib/push/R$string;->push_test_pull_parse_failed:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    check-cast v1, Ljava/lang/Iterable;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->K0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v3

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v8, v2, 0x1

    if-gez v2, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    :cond_1
    check-cast v7, Lcom/transsion/mpush/api/LocalPushMessage;

    invoke-virtual {v7}, Lcom/transsion/mpush/api/LocalPushMessage;->getMessageId()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_2
    new-instance v2, Lcom/transsion/mpush/api/PermanentPushMessage;

    invoke-virtual {v7}, Lcom/transsion/mpush/api/LocalPushMessage;->getDeeplink()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3

    const/4 v14, 0x4

    const/4 v15, 0x0

    const-string v11, "%MSGID%"

    const/4 v13, 0x0

    move-object v12, v9

    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    :goto_1
    move-object v12, v10

    goto :goto_2

    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    :goto_2
    invoke-virtual {v7}, Lcom/transsion/mpush/api/LocalPushMessage;->getImageArray()Ljava/util/List;

    move-result-object v10

    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v10

    move-object v14, v10

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v7}, Lcom/transsion/mpush/api/LocalPushMessage;->getTitle()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/4 v11, 0x0

    move-object v10, v2

    move-object v13, v9

    invoke-direct/range {v10 .. v17}, Lcom/transsion/mpush/api/PermanentPushMessage;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v6, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v2, v8

    goto :goto_0

    :cond_4
    new-instance v1, Lcom/transsion/mpush/core/renderer/v;

    invoke-direct {v1}, Lcom/transsion/mpush/core/renderer/v;-><init>()V

    new-instance v2, Lcom/transsion/mpush/core/config/PermanentConfig;

    invoke-direct/range {p0 .. p0}, Lcom/transsion/push/PushTestActivity;->d0()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x4

    const/4 v13, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Lcom/transsion/mpush/core/config/PermanentConfig;-><init>(ZLjava/lang/String;ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v1, v0, v6, v2}, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;->J(Landroid/content/Context;Ljava/util/List;Lcom/transsion/mpush/core/config/PermanentConfig;)V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "show permanent size="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private final w0()V
    .locals 27

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/transsion/push/PushTestActivity;->p0()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/transsion/mpush/api/LocalPushMessage;

    const/4 v1, 0x0

    if-nez v2, :cond_0

    sget v2, Lcom/transsion/lib/push/R$string;->push_test_pull_parse_failed:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {p0 .. p0}, Lcom/transsion/push/PushTestActivity;->d0()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/transsion/mpush/api/LocalPushMessage;->getSource()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, "push"

    :cond_1
    move-object v10, v3

    invoke-virtual {v2}, Lcom/transsion/mpush/api/LocalPushMessage;->getType()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v3, "1"

    :cond_2
    move-object/from16 v25, v3

    const v23, 0x2f178

    const/16 v24, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object v4, v12

    move-object/from16 v26, v12

    move-object/from16 v12, v25

    invoke-static/range {v2 .. v24}, Lcom/transsion/mpush/api/LocalPushMessage;->copy$default(Lcom/transsion/mpush/api/LocalPushMessage;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIJZZLjava/lang/String;ZIILjava/lang/Object;)Lcom/transsion/mpush/api/LocalPushMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/mpush/api/LocalPushMessage;->getDeeplink()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "%MSGID%"

    const/4 v6, 0x0

    move-object/from16 v5, v26

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Lcom/transsion/mpush/api/LocalPushMessage;->setDeeplink(Ljava/lang/String;)V

    new-instance v3, Lcom/transsion/mpush/core/renderer/s;

    invoke-direct {v3}, Lcom/transsion/mpush/core/renderer/s;-><init>()V

    invoke-virtual {v3, v0, v2}, Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer;->show(Landroid/content/Context;Lcom/transsion/mpush/api/LocalPushMessage;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "show standard msgId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v26

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private final x0()V
    .locals 6

    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    new-instance v3, Lcom/transsion/push/PushTestActivity$simulateSchedulePush$1;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v1}, Lcom/transsion/push/PushTestActivity$simulateSchedulePush$1;-><init>(Lcom/transsion/push/PushTestActivity;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/transsion/lib/push/R$layout;->activity_push_test:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/transsion/push/PushTestActivity;->initView()V

    return-void
.end method
