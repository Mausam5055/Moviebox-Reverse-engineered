.class public abstract Landroidx/databinding/ViewDataBinding;
.super Landroidx/databinding/a;

# interfaces
.implements Lg4/a;


# static fields
.field static a:I

.field private static final b:Z

.field private static final c:Landroidx/databinding/d;

.field private static final d:Landroidx/databinding/d;

.field private static final e:Landroidx/databinding/d;

.field private static final f:Landroidx/databinding/d;

.field private static final g:Landroidx/databinding/c$a;

.field private static final h:Ljava/lang/ref/ReferenceQueue;

.field private static final i:Landroid/view/View$OnAttachStateChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Landroidx/databinding/ViewDataBinding;->a:I

    const/4 v0, 0x1

    sput-boolean v0, Landroidx/databinding/ViewDataBinding;->b:Z

    new-instance v0, Landroidx/databinding/ViewDataBinding$a;

    invoke-direct {v0}, Landroidx/databinding/ViewDataBinding$a;-><init>()V

    sput-object v0, Landroidx/databinding/ViewDataBinding;->c:Landroidx/databinding/d;

    new-instance v0, Landroidx/databinding/ViewDataBinding$b;

    invoke-direct {v0}, Landroidx/databinding/ViewDataBinding$b;-><init>()V

    sput-object v0, Landroidx/databinding/ViewDataBinding;->d:Landroidx/databinding/d;

    new-instance v0, Landroidx/databinding/ViewDataBinding$c;

    invoke-direct {v0}, Landroidx/databinding/ViewDataBinding$c;-><init>()V

    sput-object v0, Landroidx/databinding/ViewDataBinding;->e:Landroidx/databinding/d;

    new-instance v0, Landroidx/databinding/ViewDataBinding$d;

    invoke-direct {v0}, Landroidx/databinding/ViewDataBinding$d;-><init>()V

    sput-object v0, Landroidx/databinding/ViewDataBinding;->f:Landroidx/databinding/d;

    new-instance v0, Landroidx/databinding/ViewDataBinding$e;

    invoke-direct {v0}, Landroidx/databinding/ViewDataBinding$e;-><init>()V

    sput-object v0, Landroidx/databinding/ViewDataBinding;->g:Landroidx/databinding/c$a;

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Landroidx/databinding/ViewDataBinding;->h:Ljava/lang/ref/ReferenceQueue;

    new-instance v0, Landroidx/databinding/ViewDataBinding$f;

    invoke-direct {v0}, Landroidx/databinding/ViewDataBinding$f;-><init>()V

    sput-object v0, Landroidx/databinding/ViewDataBinding;->i:Landroid/view/View$OnAttachStateChangeListener;

    return-void
.end method

.method static synthetic a(Landroidx/databinding/ViewDataBinding;Z)Z
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method static synthetic b(Landroidx/databinding/ViewDataBinding;)Ljava/lang/Runnable;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method static synthetic c(Landroidx/databinding/ViewDataBinding;Z)Z
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method static synthetic d()V
    .locals 0

    invoke-static {}, Landroidx/databinding/ViewDataBinding;->h()V

    return-void
.end method

.method static synthetic e(Landroidx/databinding/ViewDataBinding;)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method static synthetic f()Landroid/view/View$OnAttachStateChangeListener;
    .locals 1

    sget-object v0, Landroidx/databinding/ViewDataBinding;->i:Landroid/view/View$OnAttachStateChangeListener;

    return-object v0
.end method

.method static g(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    sget v1, Landroidx/databinding/library/R$id;->dataBinding:I

    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private static h()V
    .locals 1

    :goto_0
    sget-object v0, Landroidx/databinding/ViewDataBinding;->h:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void
.end method
