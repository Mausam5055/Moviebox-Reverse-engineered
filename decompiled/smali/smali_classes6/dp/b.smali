.class public final synthetic Ldp/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ldp/e;


# direct methods
.method public synthetic constructor <init>(Ldp/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldp/b;->a:Ldp/e;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ldp/b;->a:Ldp/e;

    invoke-static {v0}, Ldp/e;->d(Ldp/e;)V

    return-void
.end method
