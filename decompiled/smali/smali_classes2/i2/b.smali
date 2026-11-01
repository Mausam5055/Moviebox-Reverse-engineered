.class final Li2/b;
.super Li3/j;


# instance fields
.field private final p:Li3/s;


# direct methods
.method public constructor <init>(Ljava/lang/String;Li3/s;)V
    .locals 0

    invoke-direct {p0, p1}, Li3/j;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Li2/b;->p:Li3/s;

    return-void
.end method


# virtual methods
.method protected y([BIZ)Li3/k;
    .locals 1

    if-eqz p3, :cond_0

    iget-object p3, p0, Li2/b;->p:Li3/s;

    invoke-interface {p3}, Li3/s;->reset()V

    :cond_0
    iget-object p3, p0, Li2/b;->p:Li3/s;

    const/4 v0, 0x0

    invoke-interface {p3, p1, v0, p2}, Li3/s;->b([BII)Li3/k;

    move-result-object p1

    return-object p1
.end method
