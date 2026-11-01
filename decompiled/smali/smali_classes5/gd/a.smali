.class public final synthetic Lgd/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lgd/b;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lgd/b;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgd/a;->a:Lgd/b;

    iput-boolean p2, p0, Lgd/a;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lgd/a;->a:Lgd/b;

    iget-boolean v1, p0, Lgd/a;->b:Z

    invoke-static {v0, v1}, Lgd/b;->a(Lgd/b;Z)V

    return-void
.end method
