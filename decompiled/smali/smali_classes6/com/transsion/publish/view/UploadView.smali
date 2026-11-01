.class public final Lcom/transsion/publish/view/UploadView;
.super Lcom/transsion/publish/view/BaseFloatView;

# interfaces
.implements Landroidx/lifecycle/u;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/publish/view/UploadView$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0083\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006*\u0001V\u0018\u0000 ]2\u00020\u00012\u00020\u0002:\u0001^B\u0011\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006B\u001b\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\tB%\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0008\u0001\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0005\u0010\u000cJ\u0017\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0004\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u0006J\u000f\u0010\u000f\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0010J\u000f\u0010\u0013\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0010J\u000f\u0010\u0014\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0010J\u000f\u0010\u0015\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0010J\u0019\u0010\u0017\u001a\u00020\r2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\nH\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u0010J\u000f\u0010\u001a\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u0010J\u000f\u0010\u001b\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u0010J\u0017\u0010\u001e\u001a\u00020\r2\u0006\u0010\u001d\u001a\u00020\u001cH\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\u001cH\u0002\u00a2\u0006\u0004\u0008 \u0010!J\u0017\u0010$\u001a\u00020\r2\u0008\u0010#\u001a\u0004\u0018\u00010\"\u00a2\u0006\u0004\u0008$\u0010%J\u0017\u0010(\u001a\u00020\r2\u0008\u0010\'\u001a\u0004\u0018\u00010&\u00a2\u0006\u0004\u0008(\u0010)R\u0018\u0010#\u001a\u0004\u0018\u00010\"8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008*\u0010+R\u0014\u0010/\u001a\u00020,8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008-\u0010.R\u0018\u0010\'\u001a\u0004\u0018\u00010&8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00080\u00101R\u0018\u00105\u001a\u0004\u0018\u0001028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00083\u00104R\u0018\u00107\u001a\u0004\u0018\u0001028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00086\u00104R\u0018\u0010;\u001a\u0004\u0018\u0001088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00089\u0010:R\u0018\u0010=\u001a\u0004\u0018\u0001028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008<\u00104R\u0018\u0010A\u001a\u0004\u0018\u00010>8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008?\u0010@R\u0018\u0010E\u001a\u0004\u0018\u00010B8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008C\u0010DR\u0016\u0010G\u001a\u00020&8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008F\u00101R\u0016\u0010I\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008H\u0010\u001aR\u0016\u0010K\u001a\u00020,8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008J\u0010.R\u0016\u0010N\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008L\u0010MR\u0016\u0010P\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008O\u0010MR\u0014\u0010S\u001a\u00020Q8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010RR\u0014\u0010T\u001a\u00020Q8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010RR\u0014\u0010U\u001a\u00020Q8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010RR\u0014\u0010X\u001a\u00020V8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010WR\u0014\u0010\\\u001a\u00020Y8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008Z\u0010[\u00a8\u0006_"
    }
    d2 = {
        "Lcom/transsion/publish/view/UploadView;",
        "Lcom/transsion/publish/view/BaseFloatView;",
        "Landroidx/lifecycle/u;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/util/AttributeSet;",
        "attrs",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "defStyleAttr",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "",
        "x",
        "E",
        "()V",
        "C",
        "t",
        "u",
        "s",
        "H",
        "progress",
        "K",
        "(Ljava/lang/Integer;)V",
        "G",
        "I",
        "w",
        "",
        "collapse",
        "v",
        "(Z)V",
        "A",
        "()Z",
        "Lcom/transsion/publish/bean/PublishResult;",
        "eventBean",
        "showFloatView",
        "(Lcom/transsion/publish/bean/PublishResult;)V",
        "",
        "pageName",
        "setPageName",
        "(Ljava/lang/String;)V",
        "e",
        "Lcom/transsion/publish/bean/PublishResult;",
        "",
        "f",
        "J",
        "dismissTime",
        "g",
        "Ljava/lang/String;",
        "Landroid/widget/TextView;",
        "h",
        "Landroid/widget/TextView;",
        "ufv_tv_progress",
        "i",
        "ufv_tv_status",
        "Landroid/widget/ImageView;",
        "j",
        "Landroid/widget/ImageView;",
        "ufv_iv_retry",
        "k",
        "right_state",
        "Landroid/widget/RelativeLayout;",
        "l",
        "Landroid/widget/RelativeLayout;",
        "ufv_view2",
        "Landroidx/lifecycle/w;",
        "m",
        "Landroidx/lifecycle/w;",
        "mLifecycleRegistry",
        "n",
        "postId",
        "o",
        "sourceType",
        "p",
        "lastSucceedTime",
        "q",
        "Z",
        "isLoadCover",
        "r",
        "isShowAnima",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Runnable;",
        "runnable",
        "netRunnable",
        "allAnimaRunnable",
        "com/transsion/publish/view/UploadView$c",
        "Lcom/transsion/publish/view/UploadView$c;",
        "netListener",
        "Landroidx/lifecycle/Lifecycle;",
        "getLifecycle",
        "()Landroidx/lifecycle/Lifecycle;",
        "lifecycle",
        "Companion",
        "a",
        "Publish_psRelease"
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
.field public static final Companion:Lcom/transsion/publish/view/UploadView$a;

.field public static final failed:I = 0x3

.field public static final posting:I = 0x1

.field public static final success:I = 0x2

.field private static final w:Ljava/lang/String;


# instance fields
.field private e:Lcom/transsion/publish/bean/PublishResult;

.field private final f:J

.field private g:Ljava/lang/String;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/RelativeLayout;

.field private m:Landroidx/lifecycle/w;

.field private n:Ljava/lang/String;

.field private o:I

.field private p:J

.field private q:Z

.field private r:Z

.field private final s:Ljava/lang/Runnable;

.field private final t:Ljava/lang/Runnable;

.field private final u:Ljava/lang/Runnable;

.field private final v:Lcom/transsion/publish/view/UploadView$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/publish/view/UploadView$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/publish/view/UploadView$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/publish/view/UploadView;->Companion:Lcom/transsion/publish/view/UploadView$a;

    const-string v0, "UploadView"

    sput-object v0, Lcom/transsion/publish/view/UploadView;->w:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/transsion/publish/view/BaseFloatView;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/transsion/publish/view/UploadView;->f:J

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/publish/view/UploadView;->n:Ljava/lang/String;

    new-instance v0, Landroidx/lifecycle/w;

    invoke-direct {v0, p0}, Landroidx/lifecycle/w;-><init>(Landroidx/lifecycle/u;)V

    iput-object v0, p0, Lcom/transsion/publish/view/UploadView;->m:Landroidx/lifecycle/w;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/w;->n(Landroidx/lifecycle/Lifecycle$State;)V

    new-instance v0, Lnp/p;

    invoke-direct {v0, p0}, Lnp/p;-><init>(Lcom/transsion/publish/view/UploadView;)V

    iput-object v0, p0, Lcom/transsion/publish/view/UploadView;->s:Ljava/lang/Runnable;

    new-instance v0, Lnp/q;

    invoke-direct {v0, p0}, Lnp/q;-><init>(Lcom/transsion/publish/view/UploadView;)V

    iput-object v0, p0, Lcom/transsion/publish/view/UploadView;->t:Ljava/lang/Runnable;

    new-instance v0, Lnp/r;

    invoke-direct {v0, p0}, Lnp/r;-><init>(Lcom/transsion/publish/view/UploadView;)V

    iput-object v0, p0, Lcom/transsion/publish/view/UploadView;->u:Ljava/lang/Runnable;

    new-instance v0, Lcom/transsion/publish/view/UploadView$c;

    invoke-direct {v0}, Lcom/transsion/publish/view/UploadView$c;-><init>()V

    iput-object v0, p0, Lcom/transsion/publish/view/UploadView;->v:Lcom/transsion/publish/view/UploadView$c;

    invoke-direct {p0, p1}, Lcom/transsion/publish/view/UploadView;->x(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/transsion/publish/view/BaseFloatView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/transsion/publish/view/UploadView;->f:J

    const-string p2, ""

    iput-object p2, p0, Lcom/transsion/publish/view/UploadView;->n:Ljava/lang/String;

    new-instance p2, Landroidx/lifecycle/w;

    invoke-direct {p2, p0}, Landroidx/lifecycle/w;-><init>(Landroidx/lifecycle/u;)V

    iput-object p2, p0, Lcom/transsion/publish/view/UploadView;->m:Landroidx/lifecycle/w;

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p2, v0}, Landroidx/lifecycle/w;->n(Landroidx/lifecycle/Lifecycle$State;)V

    new-instance p2, Lnp/p;

    invoke-direct {p2, p0}, Lnp/p;-><init>(Lcom/transsion/publish/view/UploadView;)V

    iput-object p2, p0, Lcom/transsion/publish/view/UploadView;->s:Ljava/lang/Runnable;

    new-instance p2, Lnp/q;

    invoke-direct {p2, p0}, Lnp/q;-><init>(Lcom/transsion/publish/view/UploadView;)V

    iput-object p2, p0, Lcom/transsion/publish/view/UploadView;->t:Ljava/lang/Runnable;

    new-instance p2, Lnp/r;

    invoke-direct {p2, p0}, Lnp/r;-><init>(Lcom/transsion/publish/view/UploadView;)V

    iput-object p2, p0, Lcom/transsion/publish/view/UploadView;->u:Ljava/lang/Runnable;

    new-instance p2, Lcom/transsion/publish/view/UploadView$c;

    invoke-direct {p2}, Lcom/transsion/publish/view/UploadView$c;-><init>()V

    iput-object p2, p0, Lcom/transsion/publish/view/UploadView;->v:Lcom/transsion/publish/view/UploadView$c;

    invoke-direct {p0, p1}, Lcom/transsion/publish/view/UploadView;->x(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/publish/view/BaseFloatView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 p2, 0x1388

    iput-wide p2, p0, Lcom/transsion/publish/view/UploadView;->f:J

    const-string p2, ""

    iput-object p2, p0, Lcom/transsion/publish/view/UploadView;->n:Ljava/lang/String;

    new-instance p2, Landroidx/lifecycle/w;

    invoke-direct {p2, p0}, Landroidx/lifecycle/w;-><init>(Landroidx/lifecycle/u;)V

    iput-object p2, p0, Lcom/transsion/publish/view/UploadView;->m:Landroidx/lifecycle/w;

    sget-object p3, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p2, p3}, Landroidx/lifecycle/w;->n(Landroidx/lifecycle/Lifecycle$State;)V

    new-instance p2, Lnp/p;

    invoke-direct {p2, p0}, Lnp/p;-><init>(Lcom/transsion/publish/view/UploadView;)V

    iput-object p2, p0, Lcom/transsion/publish/view/UploadView;->s:Ljava/lang/Runnable;

    new-instance p2, Lnp/q;

    invoke-direct {p2, p0}, Lnp/q;-><init>(Lcom/transsion/publish/view/UploadView;)V

    iput-object p2, p0, Lcom/transsion/publish/view/UploadView;->t:Ljava/lang/Runnable;

    new-instance p2, Lnp/r;

    invoke-direct {p2, p0}, Lnp/r;-><init>(Lcom/transsion/publish/view/UploadView;)V

    iput-object p2, p0, Lcom/transsion/publish/view/UploadView;->u:Ljava/lang/Runnable;

    new-instance p2, Lcom/transsion/publish/view/UploadView$c;

    invoke-direct {p2}, Lcom/transsion/publish/view/UploadView$c;-><init>()V

    iput-object p2, p0, Lcom/transsion/publish/view/UploadView;->v:Lcom/transsion/publish/view/UploadView$c;

    invoke-direct {p0, p1}, Lcom/transsion/publish/view/UploadView;->x(Landroid/content/Context;)V

    return-void
.end method

.method private final A()Z
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static final B(Lcom/transsion/publish/view/UploadView;)V
    .locals 1

    sget-object v0, Lnh/m;->a:Lnh/m;

    iget-object p0, p0, Lcom/transsion/publish/view/UploadView;->v:Lcom/transsion/publish/view/UploadView$c;

    invoke-virtual {v0, p0}, Lnh/m;->m(Lnh/n;)V

    return-void
.end method

.method private final C()V
    .locals 7

    new-instance v6, Lnp/v;

    invoke-direct {v6, p0}, Lnp/v;-><init>(Lcom/transsion/publish/view/UploadView;)V

    sget-object v0, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    const-class v1, Lcom/transsnet/flow/event/FlowEventBus;

    invoke-virtual {v0, v1}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object v0

    check-cast v0, Lcom/transsnet/flow/event/FlowEventBus;

    const-class v1, Lcom/transsion/publish/bean/PublishResult;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v1, "getName(...)"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v1

    invoke-virtual {v1}, Lkotlinx/coroutines/a2;->d()Lkotlinx/coroutines/a2;

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/transsnet/flow/event/FlowEventBus;->observeEvent(Landroidx/lifecycle/u;Ljava/lang/String;Landroidx/lifecycle/Lifecycle$State;Lkotlinx/coroutines/i0;ZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method private static final D(Lcom/transsion/publish/view/UploadView;Lcom/transsion/publish/bean/PublishResult;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/transsion/publish/view/UploadView;->showFloatView(Lcom/transsion/publish/bean/PublishResult;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final E()V
    .locals 1

    sget-object v0, Lcom/transsion/publish/PublishManager;->Companion:Lcom/transsion/publish/PublishManager$a;

    invoke-virtual {v0}, Lcom/transsion/publish/PublishManager$a;->a()Lcom/transsion/publish/PublishManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/publish/PublishManager;->retry()V

    return-void
.end method

.method private static final F(Lcom/transsion/publish/view/UploadView;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/transsion/publish/view/UploadView;->v(Z)V

    return-void
.end method

.method private final G()V
    .locals 6

    invoke-direct {p0}, Lcom/transsion/publish/view/UploadView;->u()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/publish/view/UploadView;->q:Z

    iput-boolean v0, p0, Lcom/transsion/publish/view/UploadView;->r:Z

    iget-object v1, p0, Lcom/transsion/publish/view/UploadView;->h:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/transsion/publish/view/UploadView;->i:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-direct {p0, v0}, Lcom/transsion/publish/view/UploadView;->v(Z)V

    iget-object v0, p0, Lcom/transsion/publish/view/UploadView;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    sget v1, Lcom/transsion/publish/R$string;->postint_state_fail:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/publish/view/UploadView;->k:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    sget v1, Lcom/transsion/publish/R$string;->postint_state_retry:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_3
    iget-object v0, p0, Lcom/transsion/publish/view/UploadView;->k:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    sget v1, Lcom/tn/lib/widget/R$color;->cl01:I

    invoke-static {v1}, Lcom/blankj/utilcode/util/h;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    invoke-virtual {p0}, Lcom/transsion/publish/view/BaseFloatView;->getH()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/publish/view/UploadView;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/transsion/publish/view/BaseFloatView;->getH()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/publish/view/UploadView;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/transsion/publish/view/BaseFloatView;->getH()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/publish/view/UploadView;->u:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/transsion/publish/view/UploadView;->f:J

    const/4 v4, 0x2

    int-to-long v4, v4

    mul-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private final H()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/publish/view/UploadView;->s()V

    iget-object v0, p0, Lcom/transsion/publish/view/UploadView;->h:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/publish/view/UploadView;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/publish/view/UploadView;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    sget v1, Lcom/transsion/publish/R$string;->postint_state_posted:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/publish/view/UploadView;->k:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    sget v1, Lcom/transsion/publish/R$string;->postint_state_cancel:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_3
    iget-object v0, p0, Lcom/transsion/publish/view/UploadView;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    const-string v1, "0%"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method private final I()V
    .locals 6

    iget-wide v0, p0, Lcom/transsion/publish/view/UploadView;->p:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/publish/view/UploadView;->p:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {p0}, Lcom/transsion/publish/view/BaseFloatView;->dismiss()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/transsion/publish/view/UploadView;->t()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/publish/view/UploadView;->q:Z

    iput-boolean v0, p0, Lcom/transsion/publish/view/UploadView;->r:Z

    iget-object v1, p0, Lcom/transsion/publish/view/UploadView;->h:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v1, p0, Lcom/transsion/publish/view/UploadView;->i:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v1, p0, Lcom/transsion/publish/view/UploadView;->i:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    sget v2, Lcom/transsion/publish/R$string;->postint_state_posted:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_3
    iget v1, p0, Lcom/transsion/publish/view/UploadView;->o:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/transsion/publish/view/UploadView;->k:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/transsion/publish/view/UploadView;->k:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    sget v2, Lcom/tn/lib/widget/R$string;->View:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_5
    :goto_0
    iget-object v1, p0, Lcom/transsion/publish/view/UploadView;->k:Landroid/widget/TextView;

    if-eqz v1, :cond_6

    sget v2, Lcom/transsion/publish/R$color;->color_191F2B:I

    invoke-static {v2}, Lcom/blankj/utilcode/util/h;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_6
    iget-object v1, p0, Lcom/transsion/publish/view/UploadView;->k:Landroid/widget/TextView;

    if-eqz v1, :cond_7

    sget v2, Lcom/transsion/baseui/R$drawable;->bg_btn_01_radius_4:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_7
    invoke-direct {p0, v0}, Lcom/transsion/publish/view/UploadView;->v(Z)V

    invoke-virtual {p0}, Lcom/transsion/publish/view/BaseFloatView;->getH()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/publish/view/UploadView;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/transsion/publish/view/BaseFloatView;->getH()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/publish/view/UploadView;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/transsion/publish/view/BaseFloatView;->getH()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/publish/view/UploadView;->u:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/transsion/publish/view/UploadView;->f:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Lcom/transsion/publish/view/BaseFloatView;->getH()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lnp/s;

    invoke-direct {v1, p0}, Lnp/s;-><init>(Lcom/transsion/publish/view/UploadView;)V

    iget-wide v2, p0, Lcom/transsion/publish/view/UploadView;->f:J

    const/16 v4, 0x3e8

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/publish/view/UploadView;->p:J

    return-void
.end method

.method private static final J(Lcom/transsion/publish/view/UploadView;)V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/publish/view/BaseFloatView;->isShow()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/transsion/publish/view/UploadView;->p:J

    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {p0}, Lcom/transsion/publish/view/BaseFloatView;->dismiss()V

    :cond_0
    return-void
.end method

.method private final K(Ljava/lang/Integer;)V
    .locals 6

    invoke-direct {p0}, Lcom/transsion/publish/view/UploadView;->s()V

    sget-object v0, Llg/a;->a:Llg/a$a;

    sget-object v1, Lcom/transsion/publish/view/UploadView;->w:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uploading:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/publish/view/UploadView;->h:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/publish/view/UploadView;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/publish/view/UploadView;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    sget v1, Lcom/transsion/publish/R$string;->postint_state_posted:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/publish/view/UploadView;->k:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    sget v1, Lcom/transsion/publish/R$string;->postint_state_cancel:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/publish/view/UploadView;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/publish/view/UploadView;->w:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$setLastSucceedTime$p(Lcom/transsion/publish/view/UploadView;J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/publish/view/UploadView;->p:J

    return-void
.end method

.method public static synthetic k(Lcom/transsion/publish/view/UploadView;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/publish/view/UploadView;->B(Lcom/transsion/publish/view/UploadView;)V

    return-void
.end method

.method public static synthetic l(Lcom/transsion/publish/view/UploadView;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/publish/view/UploadView;->F(Lcom/transsion/publish/view/UploadView;)V

    return-void
.end method

.method public static synthetic m(Lcom/transsion/publish/view/UploadView;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/publish/view/UploadView;->z(Lcom/transsion/publish/view/UploadView;Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic n(Lcom/transsion/publish/view/UploadView;Lcom/transsion/publish/bean/PublishResult;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/publish/view/UploadView;->D(Lcom/transsion/publish/view/UploadView;Lcom/transsion/publish/bean/PublishResult;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Lcom/transsion/publish/view/UploadView;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/publish/view/UploadView;->J(Lcom/transsion/publish/view/UploadView;)V

    return-void
.end method

.method public static synthetic p(Lcom/transsion/publish/view/UploadView;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/publish/view/UploadView;->r(Lcom/transsion/publish/view/UploadView;)V

    return-void
.end method

.method public static synthetic q(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/publish/view/UploadView;->y(Landroid/view/View;)V

    return-void
.end method

.method private static final r(Lcom/transsion/publish/view/UploadView;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/publish/view/UploadView;->w()V

    return-void
.end method

.method private final s()V
    .locals 4

    iget-boolean v0, p0, Lcom/transsion/publish/view/UploadView;->r:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/publish/view/BaseFloatView;->getH()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/publish/view/UploadView;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/transsion/publish/view/BaseFloatView;->getH()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/publish/view/UploadView;->s:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/publish/view/UploadView;->r:Z

    :cond_0
    return-void
.end method

.method private final t()V
    .locals 0

    return-void
.end method

.method private final u()V
    .locals 4

    sget-object v0, Lnh/m;->a:Lnh/m;

    invoke-virtual {v0}, Lnh/m;->e()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/transsion/publish/view/UploadView;->v:Lcom/transsion/publish/view/UploadView$c;

    invoke-virtual {v0, v1}, Lnh/m;->l(Lnh/n;)V

    invoke-virtual {p0}, Lcom/transsion/publish/view/BaseFloatView;->getH()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/publish/view/UploadView;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/transsion/publish/view/BaseFloatView;->getH()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/publish/view/UploadView;->t:Ljava/lang/Runnable;

    const-wide/32 v2, 0x36ee80

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private final v(Z)V
    .locals 14

    const-wide/16 v0, 0x1f4

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/transsion/publish/view/UploadView;->l:Landroid/widget/RelativeLayout;

    const/16 v4, 0x8

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-ne p1, v4, :cond_0

    return-void

    :cond_0
    new-instance p1, Landroid/view/animation/TranslateAnimation;

    invoke-direct {p0}, Lcom/transsion/publish/view/UploadView;->A()Z

    invoke-direct {p0}, Lcom/transsion/publish/view/UploadView;->A()Z

    move-result v5

    if-eqz v5, :cond_1

    move v9, v3

    goto :goto_0

    :cond_1
    move v9, v2

    :goto_0
    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v5, p1

    invoke-direct/range {v5 .. v13}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/transsion/publish/view/UploadView;->l:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    iget-object p1, p0, Lcom/transsion/publish/view/UploadView;->l:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_7

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/transsion/publish/view/UploadView;->l:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    return-void

    :cond_4
    new-instance p1, Landroid/view/animation/TranslateAnimation;

    invoke-direct {p0}, Lcom/transsion/publish/view/UploadView;->A()Z

    move-result v4

    if-eqz v4, :cond_5

    move v6, v3

    goto :goto_1

    :cond_5
    move v6, v2

    :goto_1
    invoke-direct {p0}, Lcom/transsion/publish/view/UploadView;->A()Z

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v4, p1

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/transsion/publish/view/UploadView;->l:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_6
    iget-object p1, p0, Lcom/transsion/publish/view/UploadView;->l:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_7

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    :goto_2
    return-void
.end method

.method private final w()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x1

    aget v0, v0, v2

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    neg-float v0, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v2, 0x2bc

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v0, Lcom/transsion/publish/view/UploadView$b;

    invoke-direct {v0, p0}, Lcom/transsion/publish/view/UploadView$b;-><init>(Lcom/transsion/publish/view/UploadView;)V

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private final x(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/publish/R$layout;->upload_float_view:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    sget v0, Lcom/transsion/publish/R$id;->ufv_tv_status:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/publish/view/UploadView;->i:Landroid/widget/TextView;

    sget v0, Lcom/transsion/publish/R$id;->ufv_tv_progress:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/publish/view/UploadView;->h:Landroid/widget/TextView;

    sget v0, Lcom/transsion/publish/R$id;->ufv_iv_retry:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/publish/view/UploadView;->j:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/publish/R$id;->right_state:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/publish/view/UploadView;->k:Landroid/widget/TextView;

    sget v0, Lcom/transsion/publish/R$id;->ufv_view2:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/transsion/publish/view/UploadView;->l:Landroid/widget/RelativeLayout;

    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/transsion/publish/view/BaseFloatView;->setLayoutParams(Landroidx/constraintlayout/widget/ConstraintLayout$b;)V

    invoke-static {}, Lcom/blankj/utilcode/util/d;->c()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/publish/view/BaseFloatView;->getLayoutParams()Landroidx/constraintlayout/widget/ConstraintLayout$b;

    move-result-object v0

    if-eqz v0, :cond_1

    const/high16 v1, 0x42880000    # 68.0f

    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/publish/view/BaseFloatView;->getLayoutParams()Landroidx/constraintlayout/widget/ConstraintLayout$b;

    move-result-object v1

    if-eqz v1, :cond_1

    const/high16 v2, 0x42400000    # 48.0f

    invoke-static {v2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/publish/view/BaseFloatView;->getLayoutParams()Landroidx/constraintlayout/widget/ConstraintLayout$b;

    move-result-object v0

    const/high16 v1, 0x41800000    # 16.0f

    if-eqz v0, :cond_2

    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/publish/view/BaseFloatView;->getLayoutParams()Landroidx/constraintlayout/widget/ConstraintLayout$b;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    :cond_3
    iget-object v0, p0, Lcom/transsion/publish/view/UploadView;->j:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    new-instance v1, Lnp/t;

    invoke-direct {v1}, Lnp/t;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    iget-object v0, p0, Lcom/transsion/publish/view/UploadView;->k:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    new-instance v1, Lnp/u;

    invoke-direct {v1, p0, p1}, Lnp/u;-><init>(Lcom/transsion/publish/view/UploadView;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    iget-object p1, p0, Lcom/transsion/publish/view/UploadView;->h:Landroid/widget/TextView;

    if-eqz p1, :cond_6

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    invoke-direct {p0}, Lcom/transsion/publish/view/UploadView;->C()V

    return-void
.end method

.method private static final y(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private static final z(Lcom/transsion/publish/view/UploadView;Landroid/content/Context;Landroid/view/View;)V
    .locals 8

    sget-object p2, Lcom/transsion/baseui/util/c;->a:Lcom/transsion/baseui/util/c;

    iget-object v0, p0, Lcom/transsion/publish/view/UploadView;->k:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-wide/16 v1, 0x7d0

    invoke-virtual {p2, v0, v1, v2}, Lcom/transsion/baseui/util/c;->a(IJ)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    :cond_1
    iget-object p2, p0, Lcom/transsion/publish/view/UploadView;->k:Landroid/widget/TextView;

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_1

    :cond_2
    move-object p2, v0

    :goto_1
    sget v1, Lcom/transsion/publish/R$string;->postint_state_cancel:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object p1, Lcom/transsion/publish/PublishManager;->Companion:Lcom/transsion/publish/PublishManager$a;

    invoke-virtual {p1}, Lcom/transsion/publish/PublishManager$a;->a()Lcom/transsion/publish/PublishManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/publish/PublishManager;->cancel()V

    invoke-direct {p0}, Lcom/transsion/publish/view/UploadView;->w()V

    sget-object v0, Llg/a;->a:Llg/a$a;

    sget-object v1, Lcom/transsion/publish/view/UploadView;->w:Ljava/lang/String;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "click cancel"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_2

    :cond_3
    sget v1, Lcom/transsion/publish/R$string;->postint_state_retry:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/transsion/publish/view/UploadView;->E()V

    invoke-direct {p0}, Lcom/transsion/publish/view/UploadView;->w()V

    sget-object v2, Llg/a;->a:Llg/a$a;

    sget-object v3, Lcom/transsion/publish/view/UploadView;->w:Ljava/lang/String;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v4, "click retry"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_2

    :cond_4
    sget v1, Lcom/tn/lib/widget/R$string;->View:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    sget-object v1, Llg/a;->a:Llg/a$a;

    sget-object v2, Lcom/transsion/publish/view/UploadView;->w:Ljava/lang/String;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v3, "click view now"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/transsion/publish/view/UploadView;->p:J

    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {p0}, Lcom/transsion/publish/view/BaseFloatView;->dismiss()V

    iget-object p2, p0, Lcom/transsion/publish/view/UploadView;->n:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    const-string p2, "/post/detail"

    invoke-static {p2}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p2

    const-string v1, "page_from"

    iget-object v2, p0, Lcom/transsion/publish/view/UploadView;->g:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p2

    const-string v1, "id"

    iget-object p0, p0, Lcom/transsion/publish/view/UploadView;->n:Ljava/lang/String;

    invoke-virtual {p2, v1, p0}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p0

    const/4 p2, 0x2

    invoke-static {p0, p1, v0, p2, v0}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/view/UploadView;->m:Landroidx/lifecycle/w;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final setPageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/publish/view/UploadView;->g:Ljava/lang/String;

    return-void
.end method

.method public final showFloatView(Lcom/transsion/publish/bean/PublishResult;)V
    .locals 4

    iput-object p1, p0, Lcom/transsion/publish/view/UploadView;->e:Lcom/transsion/publish/bean/PublishResult;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/publish/bean/PublishResult;->getState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    invoke-direct {p0}, Lcom/transsion/publish/view/UploadView;->G()V

    goto :goto_5

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    invoke-virtual {p1}, Lcom/transsion/publish/bean/PublishResult;->getPostId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/publish/view/UploadView;->n:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/publish/bean/PublishResult;->getSource()I

    move-result p1

    iput p1, p0, Lcom/transsion/publish/view/UploadView;->o:I

    invoke-direct {p0}, Lcom/transsion/publish/view/UploadView;->I()V

    goto :goto_5

    :cond_4
    :goto_2
    const-string v1, ""

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_6

    iput-object v1, p0, Lcom/transsion/publish/view/UploadView;->n:Ljava/lang/String;

    invoke-direct {p0}, Lcom/transsion/publish/view/UploadView;->H()V

    goto :goto_5

    :cond_6
    :goto_3
    if-nez v0, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_8

    invoke-virtual {p1}, Lcom/transsion/publish/bean/PublishResult;->getProgress()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/publish/view/UploadView;->K(Ljava/lang/Integer;)V

    goto :goto_5

    :cond_8
    :goto_4
    if-nez v0, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_a

    iput-object v1, p0, Lcom/transsion/publish/view/UploadView;->n:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/publish/view/BaseFloatView;->dismiss()V

    :cond_a
    :goto_5
    return-void
.end method
