.class public final synthetic Lfh/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lfh/i;

.field public final synthetic b:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Lfh/i;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfh/h;->a:Lfh/i;

    iput-object p2, p0, Lfh/h;->b:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lfh/h;->a:Lfh/i;

    iget-object v1, p0, Lfh/h;->b:Ljava/lang/Throwable;

    invoke-static {v0, v1}, Lfh/i;->d(Lfh/i;Ljava/lang/Throwable;)V

    return-void
.end method
