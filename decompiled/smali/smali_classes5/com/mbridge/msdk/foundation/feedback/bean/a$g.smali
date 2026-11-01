.class public Lcom/mbridge/msdk/foundation/feedback/bean/a$g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mbridge/msdk/widget/dialog/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/foundation/feedback/bean/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field private a:Lcom/mbridge/msdk/foundation/feedback/a;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/mbridge/msdk/foundation/feedback/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/mbridge/msdk/foundation/feedback/bean/a$g;->a:Lcom/mbridge/msdk/foundation/feedback/a;

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/feedback/bean/a$g;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/mbridge/msdk/foundation/feedback/b;->f:Z

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/feedback/bean/a$g;->a:Lcom/mbridge/msdk/foundation/feedback/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mbridge/msdk/foundation/feedback/a;->close()V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/mbridge/msdk/foundation/feedback/b;->f:Z

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/feedback/bean/a$g;->a:Lcom/mbridge/msdk/foundation/feedback/a;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    invoke-interface {v0}, Lcom/mbridge/msdk/foundation/feedback/a;->a()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/mbridge/msdk/foundation/feedback/b;->f:Z

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/feedback/bean/a$g;->a:Lcom/mbridge/msdk/foundation/feedback/a;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mbridge/msdk/foundation/feedback/bean/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mbridge/msdk/foundation/feedback/a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/feedback/bean/a$g;->a:Lcom/mbridge/msdk/foundation/feedback/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mbridge/msdk/foundation/feedback/a;->close()V

    :cond_0
    return-void
.end method
