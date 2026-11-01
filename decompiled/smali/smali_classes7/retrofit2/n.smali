.class public final synthetic Lretrofit2/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lretrofit2/l$b$a;

.field public final synthetic b:Lretrofit2/f;

.field public final synthetic c:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Lretrofit2/l$b$a;Lretrofit2/f;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lretrofit2/n;->a:Lretrofit2/l$b$a;

    iput-object p2, p0, Lretrofit2/n;->b:Lretrofit2/f;

    iput-object p3, p0, Lretrofit2/n;->c:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lretrofit2/n;->a:Lretrofit2/l$b$a;

    iget-object v1, p0, Lretrofit2/n;->b:Lretrofit2/f;

    iget-object v2, p0, Lretrofit2/n;->c:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Lretrofit2/l$b$a;->c(Lretrofit2/l$b$a;Lretrofit2/f;Ljava/lang/Throwable;)V

    return-void
.end method
