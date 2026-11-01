.class final Lcom/apm/insight/b/g$3;
.super Lcom/apm/insight/b/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apm/insight/b/g;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic d:Lcom/apm/insight/b/g;


# direct methods
.method constructor <init>(Lcom/apm/insight/b/g;)V
    .locals 0

    iput-object p1, p0, Lcom/apm/insight/b/g$3;->d:Lcom/apm/insight/b/g;

    invoke-direct {p0}, Lcom/apm/insight/b/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/apm/insight/b/g$3;->d:Lcom/apm/insight/b/g;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/apm/insight/b/g;->a(Lcom/apm/insight/b/g;Z)Z

    iget-object v0, p0, Lcom/apm/insight/b/g$3;->d:Lcom/apm/insight/b/g;

    invoke-static {v0, p1}, Lcom/apm/insight/b/g;->a(Lcom/apm/insight/b/g;Ljava/lang/String;)Ljava/lang/String;

    invoke-super {p0, p1}, Lcom/apm/insight/b/e;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/apm/insight/b/g$3;->d:Lcom/apm/insight/b/g;

    sget-wide v2, Lcom/apm/insight/b/e;->a:J

    invoke-static {p1, v1, v2, v3}, Lcom/apm/insight/b/g;->a(Lcom/apm/insight/b/g;ZJ)V

    return-void
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/apm/insight/b/e;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/apm/insight/b/g$3;->d:Lcom/apm/insight/b/g;

    invoke-static {p1}, Lcom/apm/insight/b/g;->d(Lcom/apm/insight/b/g;)I

    iget-object p1, p0, Lcom/apm/insight/b/g$3;->d:Lcom/apm/insight/b/g;

    sget-wide v0, Lcom/apm/insight/b/e;->a:J

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/apm/insight/b/g;->a(Lcom/apm/insight/b/g;ZJ)V

    iget-object p1, p0, Lcom/apm/insight/b/g$3;->d:Lcom/apm/insight/b/g;

    invoke-static {p1}, Lcom/apm/insight/b/g;->e(Lcom/apm/insight/b/g;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/apm/insight/b/g;->b(Lcom/apm/insight/b/g;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/apm/insight/b/g$3;->d:Lcom/apm/insight/b/g;

    const-string v0, "no message running"

    invoke-static {p1, v0}, Lcom/apm/insight/b/g;->a(Lcom/apm/insight/b/g;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/apm/insight/b/g$3;->d:Lcom/apm/insight/b/g;

    invoke-static {p1, v2}, Lcom/apm/insight/b/g;->a(Lcom/apm/insight/b/g;Z)Z

    return-void
.end method
