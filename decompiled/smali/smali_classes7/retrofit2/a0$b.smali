.class Lretrofit2/a0$b;
.super Lretrofit2/a0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit2/a0;->b()Lretrofit2/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lretrofit2/a0;


# direct methods
.method constructor <init>(Lretrofit2/a0;)V
    .locals 0

    iput-object p1, p0, Lretrofit2/a0$b;->a:Lretrofit2/a0;

    invoke-direct {p0}, Lretrofit2/a0;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lretrofit2/h0;Ljava/lang/Object;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lretrofit2/a0$b;->a:Lretrofit2/a0;

    invoke-static {p2, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lretrofit2/a0;->a(Lretrofit2/h0;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
