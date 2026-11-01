.class public final synthetic Lrx/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lrx/a;


# direct methods
.method public synthetic constructor <init>(Lrx/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrx/b;->a:Lrx/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lrx/b;->a:Lrx/a;

    invoke-static {v0}, Lrx/a$b;->a(Lrx/a;)V

    return-void
.end method
