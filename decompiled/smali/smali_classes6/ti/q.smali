.class public final Lti/q;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lti/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lti/q;

    invoke-direct {v0}, Lti/q;-><init>()V

    sput-object v0, Lti/q;->a:Lti/q;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    return-void
.end method
