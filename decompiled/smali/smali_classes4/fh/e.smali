.class public final synthetic Lfh/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lfh/i;


# direct methods
.method public synthetic constructor <init>(Lfh/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfh/e;->a:Lfh/i;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lfh/e;->a:Lfh/i;

    invoke-static {v0}, Lfh/i;->f(Lfh/i;)V

    return-void
.end method
