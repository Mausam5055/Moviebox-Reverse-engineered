.class Lz6/f$a;
.super Lz6/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz6/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method constructor <init>(Lz6/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lz6/a$a;-><init>(Lz6/a;)V

    return-void
.end method


# virtual methods
.method public f()Lcom/cloud/hisavana/sdk/api/listener/g;
    .locals 2

    iget-object v0, p0, Lz6/a$a;->a:Lz6/a;

    instance-of v1, v0, Lz6/f;

    if-eqz v1, :cond_0

    check-cast v0, Lz6/f;

    invoke-static {v0}, Lz6/f;->s(Lz6/f;)Lcom/cloud/hisavana/sdk/api/listener/g;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
