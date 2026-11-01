.class public final synthetic Lzc/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lbd/f;

.field public final synthetic b:Lbd/e;


# direct methods
.method public synthetic constructor <init>(Lbd/f;Lbd/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzc/d;->a:Lbd/f;

    iput-object p2, p0, Lzc/d;->b:Lbd/e;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lzc/d;->a:Lbd/f;

    iget-object v1, p0, Lzc/d;->b:Lbd/e;

    invoke-static {v0, v1}, Lzc/e;->b(Lbd/f;Lbd/e;)V

    return-void
.end method
