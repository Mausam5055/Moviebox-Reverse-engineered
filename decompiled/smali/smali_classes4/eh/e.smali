.class public final synthetic Leh/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field public final synthetic a:Ldh/b;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ldh/b;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leh/e;->a:Ldh/b;

    iput-object p2, p0, Leh/e;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Leh/e;->a:Ldh/b;

    iget-object v1, p0, Leh/e;->b:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Leh/f$a;->a(Ldh/b;Ljava/lang/String;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
