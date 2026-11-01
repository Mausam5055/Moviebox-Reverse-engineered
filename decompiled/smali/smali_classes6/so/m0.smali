.class public final Lso/m0;
.super Ljava/lang/Object;

# interfaces
.implements Lg4/a;


# instance fields
.field private final a:Lcom/tn/lib/view/expand/ExpandView;

.field public final b:Lcom/tn/lib/view/expand/ExpandView;


# direct methods
.method private constructor <init>(Lcom/tn/lib/view/expand/ExpandView;Lcom/tn/lib/view/expand/ExpandView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lso/m0;->a:Lcom/tn/lib/view/expand/ExpandView;

    iput-object p2, p0, Lso/m0;->b:Lcom/tn/lib/view/expand/ExpandView;

    return-void
.end method

.method public static a(Landroid/view/View;)Lso/m0;
    .locals 1

    if-eqz p0, :cond_0

    check-cast p0, Lcom/tn/lib/view/expand/ExpandView;

    new-instance v0, Lso/m0;

    invoke-direct {v0, p0, p0}, Lso/m0;-><init>(Lcom/tn/lib/view/expand/ExpandView;Lcom/tn/lib/view/expand/ExpandView;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "rootView"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public b()Lcom/tn/lib/view/expand/ExpandView;
    .locals 1

    iget-object v0, p0, Lso/m0;->a:Lcom/tn/lib/view/expand/ExpandView;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lso/m0;->b()Lcom/tn/lib/view/expand/ExpandView;

    move-result-object v0

    return-object v0
.end method
