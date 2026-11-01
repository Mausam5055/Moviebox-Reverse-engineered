.class final Lretrofit2/a0$n;
.super Lretrofit2/a0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "n"
.end annotation


# instance fields
.field private final a:Lretrofit2/k;

.field private final b:Z


# direct methods
.method constructor <init>(Lretrofit2/k;Z)V
    .locals 0

    invoke-direct {p0}, Lretrofit2/a0;-><init>()V

    iput-object p1, p0, Lretrofit2/a0$n;->a:Lretrofit2/k;

    iput-boolean p2, p0, Lretrofit2/a0$n;->b:Z

    return-void
.end method


# virtual methods
.method a(Lretrofit2/h0;Ljava/lang/Object;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lretrofit2/a0$n;->a:Lretrofit2/k;

    invoke-interface {v0, p2}, Lretrofit2/k;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const/4 v0, 0x0

    iget-boolean v1, p0, Lretrofit2/a0$n;->b:Z

    invoke-virtual {p1, p2, v0, v1}, Lretrofit2/h0;->g(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
