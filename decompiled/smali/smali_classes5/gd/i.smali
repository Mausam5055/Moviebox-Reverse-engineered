.class public final synthetic Lgd/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lgd/h$b;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lgd/h$b;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgd/i;->a:Lgd/h$b;

    iput-boolean p2, p0, Lgd/i;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lgd/i;->a:Lgd/h$b;

    iget-boolean v1, p0, Lgd/i;->b:Z

    invoke-static {v0, v1}, Lgd/h$b;->a(Lgd/h$b;Z)V

    return-void
.end method
