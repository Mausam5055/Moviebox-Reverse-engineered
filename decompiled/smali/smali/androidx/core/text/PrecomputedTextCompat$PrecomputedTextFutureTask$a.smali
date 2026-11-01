.class Landroidx/core/text/PrecomputedTextCompat$PrecomputedTextFutureTask$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/text/PrecomputedTextCompat$PrecomputedTextFutureTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Landroidx/core/text/PrecomputedTextCompat$b;

.field private b:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Landroidx/core/text/PrecomputedTextCompat$b;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/text/PrecomputedTextCompat$PrecomputedTextFutureTask$a;->a:Landroidx/core/text/PrecomputedTextCompat$b;

    iput-object p2, p0, Landroidx/core/text/PrecomputedTextCompat$PrecomputedTextFutureTask$a;->b:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public a()Landroidx/core/text/PrecomputedTextCompat;
    .locals 2

    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat$PrecomputedTextFutureTask$a;->b:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroidx/core/text/PrecomputedTextCompat$PrecomputedTextFutureTask$a;->a:Landroidx/core/text/PrecomputedTextCompat$b;

    invoke-static {v0, v1}, Landroidx/core/text/PrecomputedTextCompat;->a(Ljava/lang/CharSequence;Landroidx/core/text/PrecomputedTextCompat$b;)Landroidx/core/text/PrecomputedTextCompat;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroidx/core/text/PrecomputedTextCompat$PrecomputedTextFutureTask$a;->a()Landroidx/core/text/PrecomputedTextCompat;

    move-result-object v0

    return-object v0
.end method
