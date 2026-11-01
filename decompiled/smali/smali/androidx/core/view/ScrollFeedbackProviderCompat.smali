.class public Landroidx/core/view/ScrollFeedbackProviderCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/ScrollFeedbackProviderCompat$b;,
        Landroidx/core/view/ScrollFeedbackProviderCompat$d;,
        Landroidx/core/view/ScrollFeedbackProviderCompat$c;
    }
.end annotation


# instance fields
.field private final mImpl:Landroidx/core/view/ScrollFeedbackProviderCompat$d;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_0

    new-instance v0, Landroidx/core/view/ScrollFeedbackProviderCompat$b;

    invoke-direct {v0, p1}, Landroidx/core/view/ScrollFeedbackProviderCompat$b;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroidx/core/view/ScrollFeedbackProviderCompat;->mImpl:Landroidx/core/view/ScrollFeedbackProviderCompat$d;

    goto :goto_0

    :cond_0
    new-instance p1, Landroidx/core/view/ScrollFeedbackProviderCompat$c;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroidx/core/view/ScrollFeedbackProviderCompat$c;-><init>(Landroidx/core/view/ScrollFeedbackProviderCompat$a;)V

    iput-object p1, p0, Landroidx/core/view/ScrollFeedbackProviderCompat;->mImpl:Landroidx/core/view/ScrollFeedbackProviderCompat$d;

    :goto_0
    return-void
.end method

.method public static createProvider(Landroid/view/View;)Landroidx/core/view/ScrollFeedbackProviderCompat;
    .locals 1

    new-instance v0, Landroidx/core/view/ScrollFeedbackProviderCompat;

    invoke-direct {v0, p0}, Landroidx/core/view/ScrollFeedbackProviderCompat;-><init>(Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public onScrollLimit(IIIZ)V
    .locals 1

    iget-object v0, p0, Landroidx/core/view/ScrollFeedbackProviderCompat;->mImpl:Landroidx/core/view/ScrollFeedbackProviderCompat$d;

    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/core/view/ScrollFeedbackProviderCompat$d;->a(IIIZ)V

    return-void
.end method

.method public onScrollProgress(IIII)V
    .locals 1

    iget-object v0, p0, Landroidx/core/view/ScrollFeedbackProviderCompat;->mImpl:Landroidx/core/view/ScrollFeedbackProviderCompat$d;

    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/core/view/ScrollFeedbackProviderCompat$d;->b(IIII)V

    return-void
.end method

.method public onSnapToItem(III)V
    .locals 1

    iget-object v0, p0, Landroidx/core/view/ScrollFeedbackProviderCompat;->mImpl:Landroidx/core/view/ScrollFeedbackProviderCompat$d;

    invoke-interface {v0, p1, p2, p3}, Landroidx/core/view/ScrollFeedbackProviderCompat$d;->c(III)V

    return-void
.end method
