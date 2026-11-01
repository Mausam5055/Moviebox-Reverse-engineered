.class Lcom/mbridge/msdk/splash/manager/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/splash/manager/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/splash/manager/b;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/splash/manager/b;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/splash/manager/b$a;->a:Lcom/mbridge/msdk/splash/manager/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/mbridge/msdk/splash/manager/b$a;->a:Lcom/mbridge/msdk/splash/manager/b;

    invoke-static {p1}, Lcom/mbridge/msdk/splash/manager/b;->a(Lcom/mbridge/msdk/splash/manager/b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mbridge/msdk/splash/manager/b$a;->a:Lcom/mbridge/msdk/splash/manager/b;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/splash/manager/b;->b(I)V

    iget-object p1, p0, Lcom/mbridge/msdk/splash/manager/b$a;->a:Lcom/mbridge/msdk/splash/manager/b;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/mbridge/msdk/splash/manager/b;->a(Lcom/mbridge/msdk/splash/manager/b;I)V

    :cond_0
    return-void
.end method
