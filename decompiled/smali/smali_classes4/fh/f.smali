.class public final synthetic Lfh/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lfh/i;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Lfh/i;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfh/f;->a:Lfh/i;

    iput-object p2, p0, Lfh/f;->b:Ljava/lang/String;

    iput-object p3, p0, Lfh/f;->c:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lfh/f;->a:Lfh/i;

    iget-object v1, p0, Lfh/f;->b:Ljava/lang/String;

    iget-object v2, p0, Lfh/f;->c:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Lfh/i;->g(Lfh/i;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
