.class Lcom/mbridge/msdk/video/dynview/wrapper/a$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mbridge/msdk/foundation/feedback/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/video/dynview/wrapper/a;->a(Ljava/lang/String;Landroid/content/Context;Landroid/view/View;ILjava/util/Map;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/video/dynview/wrapper/a;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/video/dynview/wrapper/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$b;->a:Lcom/mbridge/msdk/video/dynview/wrapper/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$b;->a:Lcom/mbridge/msdk/video/dynview/wrapper/a;

    invoke-static {v0}, Lcom/mbridge/msdk/video/dynview/wrapper/a;->b(Lcom/mbridge/msdk/video/dynview/wrapper/a;)Lcom/mbridge/msdk/video/dynview/util/time/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$b;->a:Lcom/mbridge/msdk/video/dynview/wrapper/a;

    invoke-static {v0}, Lcom/mbridge/msdk/video/dynview/wrapper/a;->b(Lcom/mbridge/msdk/video/dynview/wrapper/a;)Lcom/mbridge/msdk/video/dynview/util/time/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/video/dynview/util/time/b;->a()V

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$b;->a:Lcom/mbridge/msdk/video/dynview/wrapper/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/video/dynview/wrapper/a;->a(Lcom/mbridge/msdk/video/dynview/wrapper/a;Z)Z

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    iget-object p1, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$b;->a:Lcom/mbridge/msdk/video/dynview/wrapper/a;

    invoke-static {p1}, Lcom/mbridge/msdk/video/dynview/wrapper/a;->a(Lcom/mbridge/msdk/video/dynview/wrapper/a;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$b;->a:Lcom/mbridge/msdk/video/dynview/wrapper/a;

    invoke-static {p1}, Lcom/mbridge/msdk/video/dynview/wrapper/a;->b(Lcom/mbridge/msdk/video/dynview/wrapper/a;)Lcom/mbridge/msdk/video/dynview/util/time/b;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$b;->a:Lcom/mbridge/msdk/video/dynview/wrapper/a;

    invoke-static {p1}, Lcom/mbridge/msdk/video/dynview/wrapper/a;->b(Lcom/mbridge/msdk/video/dynview/wrapper/a;)Lcom/mbridge/msdk/video/dynview/util/time/b;

    move-result-object p1

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$b;->a:Lcom/mbridge/msdk/video/dynview/wrapper/a;

    invoke-static {v0}, Lcom/mbridge/msdk/video/dynview/wrapper/a;->d(Lcom/mbridge/msdk/video/dynview/wrapper/a;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    iget-object v2, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$b;->a:Lcom/mbridge/msdk/video/dynview/wrapper/a;

    invoke-static {v2}, Lcom/mbridge/msdk/video/dynview/wrapper/a;->e(Lcom/mbridge/msdk/video/dynview/wrapper/a;)Lcom/mbridge/msdk/video/dynview/util/time/a;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/mbridge/msdk/video/dynview/util/time/b;->a(JLcom/mbridge/msdk/video/dynview/util/time/a;)V

    iget-object p1, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$b;->a:Lcom/mbridge/msdk/video/dynview/wrapper/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/mbridge/msdk/video/dynview/wrapper/a;->a(Lcom/mbridge/msdk/video/dynview/wrapper/a;Z)Z

    :cond_0
    return-void
.end method

.method public close()V
    .locals 4

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$b;->a:Lcom/mbridge/msdk/video/dynview/wrapper/a;

    invoke-static {v0}, Lcom/mbridge/msdk/video/dynview/wrapper/a;->a(Lcom/mbridge/msdk/video/dynview/wrapper/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$b;->a:Lcom/mbridge/msdk/video/dynview/wrapper/a;

    invoke-static {v0}, Lcom/mbridge/msdk/video/dynview/wrapper/a;->b(Lcom/mbridge/msdk/video/dynview/wrapper/a;)Lcom/mbridge/msdk/video/dynview/util/time/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$b;->a:Lcom/mbridge/msdk/video/dynview/wrapper/a;

    invoke-static {v0}, Lcom/mbridge/msdk/video/dynview/wrapper/a;->b(Lcom/mbridge/msdk/video/dynview/wrapper/a;)Lcom/mbridge/msdk/video/dynview/util/time/b;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$b;->a:Lcom/mbridge/msdk/video/dynview/wrapper/a;

    invoke-static {v1}, Lcom/mbridge/msdk/video/dynview/wrapper/a;->d(Lcom/mbridge/msdk/video/dynview/wrapper/a;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    iget-object v3, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$b;->a:Lcom/mbridge/msdk/video/dynview/wrapper/a;

    invoke-static {v3}, Lcom/mbridge/msdk/video/dynview/wrapper/a;->e(Lcom/mbridge/msdk/video/dynview/wrapper/a;)Lcom/mbridge/msdk/video/dynview/util/time/a;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/mbridge/msdk/video/dynview/util/time/b;->a(JLcom/mbridge/msdk/video/dynview/util/time/a;)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$b;->a:Lcom/mbridge/msdk/video/dynview/wrapper/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mbridge/msdk/video/dynview/wrapper/a;->a(Lcom/mbridge/msdk/video/dynview/wrapper/a;Z)Z

    :cond_0
    return-void
.end method
