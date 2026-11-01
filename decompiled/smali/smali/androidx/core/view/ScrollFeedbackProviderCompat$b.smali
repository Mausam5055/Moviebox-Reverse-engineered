.class Landroidx/core/view/ScrollFeedbackProviderCompat$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/core/view/ScrollFeedbackProviderCompat$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ScrollFeedbackProviderCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/view/ScrollFeedbackProvider;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/view/ScrollFeedbackProvider;->createProvider(Landroid/view/View;)Landroid/view/ScrollFeedbackProvider;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/view/ScrollFeedbackProviderCompat$b;->a:Landroid/view/ScrollFeedbackProvider;

    return-void
.end method


# virtual methods
.method public a(IIIZ)V
    .locals 1

    iget-object v0, p0, Landroidx/core/view/ScrollFeedbackProviderCompat$b;->a:Landroid/view/ScrollFeedbackProvider;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/ScrollFeedbackProvider;->onScrollLimit(IIIZ)V

    return-void
.end method

.method public b(IIII)V
    .locals 1

    iget-object v0, p0, Landroidx/core/view/ScrollFeedbackProviderCompat$b;->a:Landroid/view/ScrollFeedbackProvider;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/ScrollFeedbackProvider;->onScrollProgress(IIII)V

    return-void
.end method

.method public c(III)V
    .locals 1

    iget-object v0, p0, Landroidx/core/view/ScrollFeedbackProviderCompat$b;->a:Landroid/view/ScrollFeedbackProvider;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/ScrollFeedbackProvider;->onSnapToItem(III)V

    return-void
.end method
