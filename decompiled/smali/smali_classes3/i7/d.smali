.class public final synthetic Li7/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Li7/e;


# direct methods
.method public synthetic constructor <init>(Li7/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li7/d;->a:Li7/e;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Li7/d;->a:Li7/e;

    invoke-static {v0}, Li7/e;->a(Li7/e;)V

    return-void
.end method
