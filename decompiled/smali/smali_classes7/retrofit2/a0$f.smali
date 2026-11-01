.class final Lretrofit2/a0$f;
.super Lretrofit2/a0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "f"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lretrofit2/k;

.field private final c:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Lretrofit2/k;Z)V
    .locals 1

    invoke-direct {p0}, Lretrofit2/a0;-><init>()V

    const-string v0, "name == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lretrofit2/a0$f;->a:Ljava/lang/String;

    iput-object p2, p0, Lretrofit2/a0$f;->b:Lretrofit2/k;

    iput-boolean p3, p0, Lretrofit2/a0$f;->c:Z

    return-void
.end method


# virtual methods
.method a(Lretrofit2/h0;Ljava/lang/Object;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lretrofit2/a0$f;->b:Lretrofit2/k;

    invoke-interface {v0, p2}, Lretrofit2/k;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lretrofit2/a0$f;->a:Ljava/lang/String;

    iget-boolean v1, p0, Lretrofit2/a0$f;->c:Z

    invoke-virtual {p1, v0, p2, v1}, Lretrofit2/h0;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
