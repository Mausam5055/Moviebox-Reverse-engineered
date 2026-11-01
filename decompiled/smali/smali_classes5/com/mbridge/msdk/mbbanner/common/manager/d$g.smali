.class Lcom/mbridge/msdk/mbbanner/common/manager/d$g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/mbbanner/common/manager/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/mbbanner/common/manager/d;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/mbbanner/common/manager/d;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d$g;->a:Lcom/mbridge/msdk/mbbanner/common/manager/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d$g;->a:Lcom/mbridge/msdk/mbbanner/common/manager/d;

    iget-boolean v0, p1, Lcom/mbridge/msdk/mbbanner/common/manager/d;->o:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/mbridge/msdk/mbbanner/common/manager/d;->a(Lcom/mbridge/msdk/mbbanner/common/manager/d;I)I

    iget-object p1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d$g;->a:Lcom/mbridge/msdk/mbbanner/common/manager/d;

    invoke-static {p1}, Lcom/mbridge/msdk/mbbanner/common/manager/d;->k(Lcom/mbridge/msdk/mbbanner/common/manager/d;)V

    :cond_0
    return-void
.end method
