.class public abstract Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static c:Z = true

.field private static final d:Ljava/lang/Runnable;


# instance fields
.field private a:J

.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener$1;

    invoke-direct {v0}, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener$1;-><init>()V

    sput-object v0, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;->d:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const-wide/16 v1, 0x3e8

    invoke-direct {p0, v0, v1, v2}, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;-><init>(ZJ)V

    return-void
.end method

.method public constructor <init>(ZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;->b:Z

    iput-wide p2, p0, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;->a:J

    return-void
.end method

.method static synthetic a(Z)Z
    .locals 0

    sput-boolean p0, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;->c:Z

    return p0
.end method

.method private static b(Landroid/view/View;J)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/e0;->E(Landroid/view/View;J)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public abstract c(Landroid/view/View;)V
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-boolean v0, p0, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;->b:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;->c:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;->c:Z

    sget-object v0, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;->d:Ljava/lang/Runnable;

    iget-wide v1, p0, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;->a:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0, p1}, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;->c(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;->a:J

    invoke-static {p1, v0, v1}, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;->b(Landroid/view/View;J)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;->c(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method
