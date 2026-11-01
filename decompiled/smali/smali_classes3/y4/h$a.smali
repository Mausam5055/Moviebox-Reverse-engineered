.class Ly4/h$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly4/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ly4/h;


# direct methods
.method constructor <init>(Ly4/h;)V
    .locals 0

    iput-object p1, p0, Ly4/h$a;->a:Ly4/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 3

    iget-object v0, p0, Ly4/h$a;->a:Ly4/h;

    invoke-static {v0}, Ly4/h;->a(Ly4/h;)Lcom/alibaba/fastjson/util/g;

    move-result-object v0

    const-class v1, Ljava/sql/Timestamp;

    sget-object v2, Lz4/i3;->c:Lz4/i3;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Ly4/h$a;->a:Ly4/h;

    invoke-static {v0}, Ly4/h;->a(Ly4/h;)Lcom/alibaba/fastjson/util/g;

    move-result-object v0

    const-class v1, Ljava/sql/Date;

    sget-object v2, Lz4/i3;->b:Lz4/i3;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Ly4/h$a;->a:Ly4/h;

    invoke-static {v0}, Ly4/h;->a(Ly4/h;)Lcom/alibaba/fastjson/util/g;

    move-result-object v0

    const-class v1, Ljava/sql/Time;

    sget-object v2, Lz4/l3;->a:Lz4/l3;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Ly4/h$a;->a:Ly4/h;

    invoke-static {v0}, Ly4/h;->a(Ly4/h;)Lcom/alibaba/fastjson/util/g;

    move-result-object v0

    const-class v1, Ljava/util/Date;

    sget-object v2, La5/c0;->a:La5/c0;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ly4/h$a;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
