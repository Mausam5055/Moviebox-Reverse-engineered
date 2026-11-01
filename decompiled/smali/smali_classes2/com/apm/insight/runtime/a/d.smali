.class final Lcom/apm/insight/runtime/a/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apm/insight/runtime/a/d$a;
    }
.end annotation


# instance fields
.field private a:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/apm/insight/runtime/m;->a()Lcom/apm/insight/runtime/p;

    move-result-object v0

    new-instance v1, Lcom/apm/insight/runtime/a/d$1;

    invoke-direct {v1, p0, p1}, Lcom/apm/insight/runtime/a/d$1;-><init>(Lcom/apm/insight/runtime/a/d;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/apm/insight/runtime/p;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic a(Lcom/apm/insight/runtime/a/d;I)I
    .locals 0

    iput p1, p0, Lcom/apm/insight/runtime/a/d;->a:I

    return p1
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/apm/insight/runtime/a/d;->a:I

    return v0
.end method
