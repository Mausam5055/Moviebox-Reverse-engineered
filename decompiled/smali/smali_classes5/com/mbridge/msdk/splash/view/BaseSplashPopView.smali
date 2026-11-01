.class public Lcom/mbridge/msdk/splash/view/BaseSplashPopView;
.super Landroid/widget/RelativeLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/splash/view/BaseSplashPopView$i;
    }
.end annotation


# static fields
.field public static final TYPE_POP_DEFAULT:I = 0x1

.field public static final TYPE_POP_LARGE:I = 0x4

.field public static final TYPE_POP_MEDIUM:I = 0x3

.field public static final TYPE_POP_SMALL:I = 0x2

.field private static final v:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field private c:I

.field private d:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

.field protected e:Lcom/mbridge/msdk/splash/middle/d;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:I

.field protected n:Landroid/os/Handler;

.field private o:Z

.field protected p:Lcom/mbridge/msdk/click/a;

.field private q:Lcom/mbridge/msdk/click/j;

.field private r:Ljava/lang/Runnable;

.field private s:Ljava/lang/Runnable;

.field t:Landroid/view/View$OnClickListener;

.field u:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->c:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->m:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->n:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->o:Z

    new-instance v0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$a;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$a;-><init>(Lcom/mbridge/msdk/splash/view/BaseSplashPopView;)V

    iput-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->q:Lcom/mbridge/msdk/click/j;

    new-instance v0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$e;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$e;-><init>(Lcom/mbridge/msdk/splash/view/BaseSplashPopView;)V

    iput-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->r:Ljava/lang/Runnable;

    new-instance v0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$f;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$f;-><init>(Lcom/mbridge/msdk/splash/view/BaseSplashPopView;)V

    iput-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->s:Ljava/lang/Runnable;

    new-instance v0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$g;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$g;-><init>(Lcom/mbridge/msdk/splash/view/BaseSplashPopView;)V

    iput-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->t:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$h;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$h;-><init>(Lcom/mbridge/msdk/splash/view/BaseSplashPopView;)V

    iput-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->u:Landroid/view/View$OnClickListener;

    iput p1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->c:I

    const-string p1, "MBSplashPopView"

    const-string v0, "Please call setPopViewType() to init."

    invoke-static {p1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->c:I

    const/4 p2, -0x1

    iput p2, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->m:I

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->n:Landroid/os/Handler;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->o:Z

    new-instance p2, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$a;

    invoke-direct {p2, p0}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$a;-><init>(Lcom/mbridge/msdk/splash/view/BaseSplashPopView;)V

    iput-object p2, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->q:Lcom/mbridge/msdk/click/j;

    new-instance p2, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$e;

    invoke-direct {p2, p0}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$e;-><init>(Lcom/mbridge/msdk/splash/view/BaseSplashPopView;)V

    iput-object p2, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->r:Ljava/lang/Runnable;

    new-instance p2, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$f;

    invoke-direct {p2, p0}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$f;-><init>(Lcom/mbridge/msdk/splash/view/BaseSplashPopView;)V

    iput-object p2, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->s:Ljava/lang/Runnable;

    new-instance p2, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$g;

    invoke-direct {p2, p0}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$g;-><init>(Lcom/mbridge/msdk/splash/view/BaseSplashPopView;)V

    iput-object p2, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->t:Landroid/view/View$OnClickListener;

    new-instance p2, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$h;

    invoke-direct {p2, p0}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$h;-><init>(Lcom/mbridge/msdk/splash/view/BaseSplashPopView;)V

    iput-object p2, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->u:Landroid/view/View$OnClickListener;

    iput p1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->c:I

    const-string p1, "MBSplashPopView"

    const-string p2, "Please call setPopViewType() to init."

    invoke-static {p1, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->c:I

    const/4 p2, -0x1

    iput p2, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->m:I

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->n:Landroid/os/Handler;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->o:Z

    new-instance p2, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$a;

    invoke-direct {p2, p0}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$a;-><init>(Lcom/mbridge/msdk/splash/view/BaseSplashPopView;)V

    iput-object p2, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->q:Lcom/mbridge/msdk/click/j;

    new-instance p2, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$e;

    invoke-direct {p2, p0}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$e;-><init>(Lcom/mbridge/msdk/splash/view/BaseSplashPopView;)V

    iput-object p2, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->r:Ljava/lang/Runnable;

    new-instance p2, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$f;

    invoke-direct {p2, p0}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$f;-><init>(Lcom/mbridge/msdk/splash/view/BaseSplashPopView;)V

    iput-object p2, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->s:Ljava/lang/Runnable;

    new-instance p2, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$g;

    invoke-direct {p2, p0}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$g;-><init>(Lcom/mbridge/msdk/splash/view/BaseSplashPopView;)V

    iput-object p2, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->t:Landroid/view/View$OnClickListener;

    new-instance p2, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$h;

    invoke-direct {p2, p0}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$h;-><init>(Lcom/mbridge/msdk/splash/view/BaseSplashPopView;)V

    iput-object p2, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->u:Landroid/view/View$OnClickListener;

    iput p1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->c:I

    const-string p1, "MBSplashPopView"

    const-string p2, "Please call setPopViewType() to init."

    invoke-static {p1, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->c:I

    const/4 p2, -0x1

    iput p2, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->m:I

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->n:Landroid/os/Handler;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->o:Z

    new-instance p2, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$a;

    invoke-direct {p2, p0}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$a;-><init>(Lcom/mbridge/msdk/splash/view/BaseSplashPopView;)V

    iput-object p2, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->q:Lcom/mbridge/msdk/click/j;

    new-instance p2, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$e;

    invoke-direct {p2, p0}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$e;-><init>(Lcom/mbridge/msdk/splash/view/BaseSplashPopView;)V

    iput-object p2, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->r:Ljava/lang/Runnable;

    new-instance p2, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$f;

    invoke-direct {p2, p0}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$f;-><init>(Lcom/mbridge/msdk/splash/view/BaseSplashPopView;)V

    iput-object p2, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->s:Ljava/lang/Runnable;

    new-instance p2, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$g;

    invoke-direct {p2, p0}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$g;-><init>(Lcom/mbridge/msdk/splash/view/BaseSplashPopView;)V

    iput-object p2, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->t:Landroid/view/View$OnClickListener;

    new-instance p2, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$h;

    invoke-direct {p2, p0}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$h;-><init>(Lcom/mbridge/msdk/splash/view/BaseSplashPopView;)V

    iput-object p2, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->u:Landroid/view/View$OnClickListener;

    iput p1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->c:I

    const-string p1, "MBSplashPopView"

    const-string p2, "Please call setPopViewType() to init."

    invoke-static {p1, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mbridge/msdk/splash/view/BaseSplashPopView$i;Lcom/mbridge/msdk/splash/middle/d;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->c:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->m:I

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->n:Landroid/os/Handler;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->o:Z

    new-instance p1, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$a;

    invoke-direct {p1, p0}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$a;-><init>(Lcom/mbridge/msdk/splash/view/BaseSplashPopView;)V

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->q:Lcom/mbridge/msdk/click/j;

    new-instance p1, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$e;

    invoke-direct {p1, p0}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$e;-><init>(Lcom/mbridge/msdk/splash/view/BaseSplashPopView;)V

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->r:Ljava/lang/Runnable;

    new-instance p1, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$f;

    invoke-direct {p1, p0}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$f;-><init>(Lcom/mbridge/msdk/splash/view/BaseSplashPopView;)V

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->s:Ljava/lang/Runnable;

    new-instance p1, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$g;

    invoke-direct {p1, p0}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$g;-><init>(Lcom/mbridge/msdk/splash/view/BaseSplashPopView;)V

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->t:Landroid/view/View$OnClickListener;

    new-instance p1, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$h;

    invoke-direct {p1, p0}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$h;-><init>(Lcom/mbridge/msdk/splash/view/BaseSplashPopView;)V

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->u:Landroid/view/View$OnClickListener;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$i;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->b:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$i;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->a:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$i;->d()I

    move-result p1

    iput p1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->c:I

    invoke-virtual {p2}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$i;->a()Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->d:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iput-object p3, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->e:Lcom/mbridge/msdk/splash/middle/d;

    invoke-direct {p0}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->a()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Parameters is NULL, can\'t gen view."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lcom/mbridge/msdk/splash/view/BaseSplashPopView;)I
    .locals 0

    iget p0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->c:I

    return p0
.end method

.method static synthetic a(Lcom/mbridge/msdk/splash/view/BaseSplashPopView;I)I
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->m:I

    return p1
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->d:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->c:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->d()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->e()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->f()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->c()V

    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/same/image/b;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/same/image/b;

    move-result-object v0

    new-instance v1, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$b;

    invoke-direct {v1, p0, p2}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$b;-><init>(Lcom/mbridge/msdk/splash/view/BaseSplashPopView;Z)V

    invoke-virtual {v0, p1, v1}, Lcom/mbridge/msdk/foundation/same/image/b;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/image/c;)V

    return-void
.end method

.method static synthetic b(Lcom/mbridge/msdk/splash/view/BaseSplashPopView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->f:Landroid/widget/ImageView;

    return-object p0
.end method

.method private b()V
    .locals 4

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->i:Landroid/widget/ImageView;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42000000    # 32.0f

    invoke-static {v1, v2}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41500000    # 13.0f

    invoke-static {v2, v3}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->f:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->i:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "ZH"

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MBSplashPopView"

    invoke-static {v2, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "drawable"

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mbridge_splash_pop_ad_en"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mbridge_splash_pop_ad"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_2
    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->i:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->i:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic c(Lcom/mbridge/msdk/splash/view/BaseSplashPopView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->h:Landroid/widget/ImageView;

    return-object p0
.end method

.method private c()V
    .locals 7

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42a00000    # 80.0f

    invoke-static {v2, v3}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v2, v3}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-static {}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->generateViewId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/controller/a;->h()Ljava/lang/String;

    move-result-object v2

    const-string v4, "mbridge_splash_popview_default"

    const-string v5, "drawable"

    invoke-virtual {v1, v4, v5, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->f:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v4, 0x42700000    # 60.0f

    invoke-static {v2, v4}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v4, 0x6

    invoke-virtual {v1, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v4, 0x40e00000    # 7.0f

    invoke-static {v2, v4}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v2, v4}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v2, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->f:Landroid/widget/ImageView;

    invoke-static {}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->generateViewId()I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/view/View;->setId(I)V

    iget-object v2, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->f:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->f:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->d:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/mbridge/msdk/out/Campaign;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->d:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/out/Campaign;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->a(Ljava/lang/String;Z)V

    :cond_0
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->l:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v6, 0x5

    invoke-virtual {v1, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    const/16 v6, 0x8

    invoke-virtual {v1, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v6, 0x42780000    # 62.0f

    invoke-static {v2, v6}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v6, 0x428c0000    # 70.0f

    invoke-static {v2, v6}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object v2, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->l:Landroid/widget/TextView;

    invoke-static {}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->generateViewId()I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/view/View;->setId(I)V

    iget-object v2, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->l:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v2, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->l:Landroid/widget/TextView;

    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->l:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->l:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMinWidth(I)V

    iget-object v2, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->l:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxHeight(I)V

    iget-object v2, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->l:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->l:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/controller/a;->h()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mbridge_cm_circle_50black"

    invoke-virtual {v2, v4, v5, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->l:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->f:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->d:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getFlbSkipTime()I

    move-result v0

    if-gtz v0, :cond_1

    invoke-direct {p0}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->g()V

    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->l:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->u:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic d(Lcom/mbridge/msdk/splash/view/BaseSplashPopView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->g:Landroid/widget/ImageView;

    return-object p0
.end method

.method private d()V
    .locals 10

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->h:Landroid/widget/ImageView;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x43030000    # 131.0f

    invoke-static {v1, v2}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v1

    const/4 v3, -0x1

    invoke-direct {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v4, 0xe

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v5, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->h:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v5, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->h:Landroid/widget/ImageView;

    invoke-static {}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->generateViewId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setId(I)V

    iget-object v5, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->h:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->d:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/out/Campaign;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->setBackgroundImage(Ljava/lang/String;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->g:Landroid/widget/ImageView;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v2

    const/4 v5, -0x2

    invoke-direct {v0, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->g:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->g:Landroid/widget/ImageView;

    invoke-static {}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->generateViewId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->d:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/out/Campaign;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->setForegroundImage(Ljava/lang/String;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->f:Landroid/widget/ImageView;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42480000    # 50.0f

    invoke-static {v1, v2}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->h:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v1, 0x14

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->f:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->f:Landroid/widget/ImageView;

    invoke-static {}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->generateViewId()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setId(I)V

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->d:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/out/Campaign;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->a(Ljava/lang/String;Z)V

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->f:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    const/4 v6, 0x1

    invoke-virtual {v1, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v4, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->f:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    const/4 v7, 0x6

    invoke-virtual {v1, v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v4, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->f:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    const/16 v7, 0x8

    invoke-virtual {v1, v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v7, 0x41000000    # 8.0f

    invoke-static {v4, v7}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v4

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v7}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v4

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v4, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->j:Landroid/widget/TextView;

    invoke-static {}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->generateViewId()I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/view/View;->setId(I)V

    iget-object v4, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->j:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v4, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->j:Landroid/widget/TextView;

    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v8, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->j:Landroid/widget/TextView;

    const/high16 v8, 0x41400000    # 12.0f

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v4, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->j:Landroid/widget/TextView;

    const/high16 v8, -0x1000000

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->j:Landroid/widget/TextView;

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v4, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->j:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    iget-object v4, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->j:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v4, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->j:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v4, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->j:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->d:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v9}, Lcom/mbridge/msdk/out/Campaign;->getAppName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v4, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->k:Landroid/widget/TextView;

    invoke-static {}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->generateViewId()I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/view/View;->setId(I)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v5, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->j:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    const/4 v9, 0x5

    invoke-virtual {v4, v9, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v5, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->j:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v4, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v2, v5}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v5, 0x42100000    # 36.0f

    invoke-static {v2, v5}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v4, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object v2, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->k:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->k:Landroid/widget/TextView;

    const v2, -0x99999a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->k:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->d:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mbridge/msdk/out/Campaign;->getAppDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->h:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->g:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->f:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->b()V

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic e(Lcom/mbridge/msdk/splash/view/BaseSplashPopView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->l:Landroid/widget/TextView;

    return-object p0
.end method

.method private e()V
    .locals 10

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v0

    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->f:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x42480000    # 50.0f

    invoke-static {v3, v4}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v3, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->f:Landroid/widget/ImageView;

    invoke-static {}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->generateViewId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    iget-object v3, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->f:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->f:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v2, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->f:Landroid/widget/ImageView;

    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->d:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/out/Campaign;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->a(Ljava/lang/String;Z)V

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v5, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->f:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v2, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v5, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->f:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    const/4 v7, 0x6

    invoke-virtual {v2, v7, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v5, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->f:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    const/16 v7, 0x8

    invoke-virtual {v2, v7, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v7, 0x41000000    # 8.0f

    invoke-static {v5, v7}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v5

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v7}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v5

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setGravity(I)V

    new-instance v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v5, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->j:Landroid/widget/TextView;

    invoke-static {}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->generateViewId()I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/view/View;->setId(I)V

    iget-object v5, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->j:Landroid/widget/TextView;

    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v8, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->j:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v5, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->j:Landroid/widget/TextView;

    const/high16 v8, 0x41400000    # 12.0f

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v5, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->j:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v5, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->j:Landroid/widget/TextView;

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v5, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->j:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    iget-object v5, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->j:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v5, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->j:Landroid/widget/TextView;

    const/high16 v9, -0x1000000

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->j:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->d:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v9}, Lcom/mbridge/msdk/out/Campaign;->getAppName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v5, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->k:Landroid/widget/TextView;

    invoke-static {}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->generateViewId()I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/view/View;->setId(I)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->j:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    const/4 v9, 0x5

    invoke-virtual {v5, v9, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v4, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->j:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    const/4 v9, 0x3

    invoke-virtual {v5, v9, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v4, 0x42100000    # 36.0f

    invoke-static {v1, v4}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->k:Landroid/widget/TextView;

    const v2, -0x99999a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->k:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->d:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mbridge/msdk/out/Campaign;->getAppDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/controller/a;->h()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mbridge_shape_corners_bg"

    const-string v4, "drawable"

    invoke-virtual {v1, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->f:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->b()V

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic f(Lcom/mbridge/msdk/splash/view/BaseSplashPopView;)I
    .locals 0

    iget p0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->m:I

    return p0
.end method

.method private f()V
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v0

    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->f:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41e00000    # 28.0f

    invoke-static {v3, v4}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v3, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->f:Landroid/widget/ImageView;

    invoke-static {}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->generateViewId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    iget-object v3, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->f:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->f:Landroid/widget/ImageView;

    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->f:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->d:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/out/Campaign;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->a(Ljava/lang/String;Z)V

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->j:Landroid/widget/TextView;

    invoke-static {}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->generateViewId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->f:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->f:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v4, 0x6

    invoke-virtual {v0, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->f:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    const/16 v4, 0x8

    invoke-virtual {v0, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {v1, v2}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->j:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->j:Landroid/widget/TextView;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->j:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->j:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->j:Landroid/widget/TextView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->d:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/out/Campaign;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mbridge_shape_corners_bg"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->f:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->j:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->b()V

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic g(Lcom/mbridge/msdk/splash/view/BaseSplashPopView;)I
    .locals 2

    iget v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->m:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->m:I

    return v0
.end method

.method private g()V
    .locals 4

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->l:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v1, v2}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->l:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->l:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mbridge_splash_popview_close"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public static generateViewId()I
    .locals 4

    :cond_0
    sget-object v0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    const v3, 0xffffff

    if-le v2, v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1
.end method

.method static synthetic h(Lcom/mbridge/msdk/splash/view/BaseSplashPopView;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->g()V

    return-void
.end method

.method static synthetic i(Lcom/mbridge/msdk/splash/view/BaseSplashPopView;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->r:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic j(Lcom/mbridge/msdk/splash/view/BaseSplashPopView;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->d:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    return-object p0
.end method

.method private setBackgroundImage(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/same/image/b;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/same/image/b;

    move-result-object v0

    new-instance v1, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$c;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$c;-><init>(Lcom/mbridge/msdk/splash/view/BaseSplashPopView;)V

    invoke-virtual {v0, p1, v1}, Lcom/mbridge/msdk/foundation/same/image/b;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/image/c;)V

    return-void
.end method

.method private setForegroundImage(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/same/image/b;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/same/image/b;

    move-result-object v0

    new-instance v1, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$d;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$d;-><init>(Lcom/mbridge/msdk/splash/view/BaseSplashPopView;)V

    invoke-virtual {v0, p1, v1}, Lcom/mbridge/msdk/foundation/same/image/b;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/image/c;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 3

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->p:Lcom/mbridge/msdk/click/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mbridge/msdk/click/a;

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/mbridge/msdk/click/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->p:Lcom/mbridge/msdk/click/a;

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->q:Lcom/mbridge/msdk/click/j;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/click/a;->a(Lcom/mbridge/msdk/click/j;)V

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setCampaignUnitId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->p:Lcom/mbridge/msdk/click/a;

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/click/a;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isReportClick()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setReportClick(Z)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/mbridge/msdk/splash/report/a;->a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    :cond_1
    iget-object p1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->e:Lcom/mbridge/msdk/splash/middle/d;

    if-eqz p1, :cond_2

    new-instance v0, Lcom/mbridge/msdk/out/MBridgeIds;

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/mbridge/msdk/out/MBridgeIds;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/splash/middle/d;->a(Lcom/mbridge/msdk/out/MBridgeIds;)V

    iget-object p1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->e:Lcom/mbridge/msdk/splash/middle/d;

    new-instance v0, Lcom/mbridge/msdk/out/MBridgeIds;

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/mbridge/msdk/out/MBridgeIds;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/mbridge/msdk/splash/middle/d;->a(Lcom/mbridge/msdk/out/MBridgeIds;I)V

    :cond_2
    return-void
.end method

.method protected b(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mbridge/msdk/splash/report/a;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->e:Lcom/mbridge/msdk/splash/middle/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->s:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->release()V

    return-void
.end method

.method public pauseCountDown()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->o:Z

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->l:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->n:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public reStartCountDown()V
    .locals 4

    iget-boolean v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->o:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->o:Z

    iget v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->m:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->l:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->n:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->r:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->g()V

    :cond_2
    :goto_1
    return-void
.end method

.method public release()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->n:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->n:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->r:Ljava/lang/Runnable;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->detachAllViewsFromParent()V

    iput-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->d:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iput-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->e:Lcom/mbridge/msdk/splash/middle/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MBSplashPopView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setPopViewType(Lcom/mbridge/msdk/splash/view/BaseSplashPopView$i;Lcom/mbridge/msdk/splash/middle/d;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$i;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$i;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$i;->d()I

    move-result v0

    iput v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->c:I

    invoke-virtual {p1}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$i;->a()Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->d:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iput-object p2, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->e:Lcom/mbridge/msdk/splash/middle/d;

    invoke-direct {p0}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->a()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Parameters is NULL, can\'t gen view."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startCountDown()V
    .locals 4

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->n:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->d:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->c:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getFlbSkipTime()I

    move-result v0

    if-lez v0, :cond_0

    iput v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->m:I

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->l:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->n:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->r:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->g()V

    :cond_1
    :goto_0
    return-void
.end method
