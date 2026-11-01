.class Landroidx/core/provider/i$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/provider/i;->e(Landroid/content/Context;Landroidx/core/provider/e;Landroidx/core/provider/CallbackWrapper;II)Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Landroidx/core/provider/e;

.field final synthetic d:I


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Landroidx/core/provider/e;I)V
    .locals 0

    iput-object p1, p0, Landroidx/core/provider/i$a;->a:Ljava/lang/String;

    iput-object p2, p0, Landroidx/core/provider/i$a;->b:Landroid/content/Context;

    iput-object p3, p0, Landroidx/core/provider/i$a;->c:Landroidx/core/provider/e;

    iput p4, p0, Landroidx/core/provider/i$a;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroidx/core/provider/i$e;
    .locals 4

    iget-object v0, p0, Landroidx/core/provider/i$a;->a:Ljava/lang/String;

    iget-object v1, p0, Landroidx/core/provider/i$a;->b:Landroid/content/Context;

    iget-object v2, p0, Landroidx/core/provider/i$a;->c:Landroidx/core/provider/e;

    invoke-static {v2}, Landroidx/core/provider/h;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget v3, p0, Landroidx/core/provider/i$a;->d:I

    invoke-static {v0, v1, v2, v3}, Landroidx/core/provider/i;->c(Ljava/lang/String;Landroid/content/Context;Ljava/util/List;I)Landroidx/core/provider/i$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroidx/core/provider/i$a;->a()Landroidx/core/provider/i$e;

    move-result-object v0

    return-object v0
.end method
