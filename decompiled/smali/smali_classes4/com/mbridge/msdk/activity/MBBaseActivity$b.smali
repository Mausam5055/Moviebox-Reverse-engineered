.class Lcom/mbridge/msdk/activity/MBBaseActivity$b;
.super Landroid/view/OrientationEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/activity/MBBaseActivity;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/activity/MBBaseActivity;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/activity/MBBaseActivity;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/activity/MBBaseActivity$b;->a:Lcom/mbridge/msdk/activity/MBBaseActivity;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 4

    iget-object p1, p0, Lcom/mbridge/msdk/activity/MBBaseActivity$b;->a:Lcom/mbridge/msdk/activity/MBBaseActivity;

    invoke-static {p1}, Lcom/mbridge/msdk/activity/MBBaseActivity;->b(Lcom/mbridge/msdk/activity/MBBaseActivity;)Landroid/view/Display;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mbridge/msdk/activity/MBBaseActivity$b;->a:Lcom/mbridge/msdk/activity/MBBaseActivity;

    invoke-static {p1}, Lcom/mbridge/msdk/activity/MBBaseActivity;->b(Lcom/mbridge/msdk/activity/MBBaseActivity;)Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x1

    const-string v1, "MBBaseActivity"

    if-ne p1, v0, :cond_1

    iget-object v2, p0, Lcom/mbridge/msdk/activity/MBBaseActivity$b;->a:Lcom/mbridge/msdk/activity/MBBaseActivity;

    invoke-static {v2}, Lcom/mbridge/msdk/activity/MBBaseActivity;->c(Lcom/mbridge/msdk/activity/MBBaseActivity;)I

    move-result v2

    if-eq v2, v0, :cond_1

    iget-object p1, p0, Lcom/mbridge/msdk/activity/MBBaseActivity$b;->a:Lcom/mbridge/msdk/activity/MBBaseActivity;

    invoke-static {p1, v0}, Lcom/mbridge/msdk/activity/MBBaseActivity;->a(Lcom/mbridge/msdk/activity/MBBaseActivity;I)I

    iget-object p1, p0, Lcom/mbridge/msdk/activity/MBBaseActivity$b;->a:Lcom/mbridge/msdk/activity/MBBaseActivity;

    invoke-virtual {p1}, Lcom/mbridge/msdk/activity/MBBaseActivity;->getNotchParams()V

    const-string p1, "Orientation Left"

    invoke-static {v1, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x2

    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    iget-object v3, p0, Lcom/mbridge/msdk/activity/MBBaseActivity$b;->a:Lcom/mbridge/msdk/activity/MBBaseActivity;

    invoke-static {v3}, Lcom/mbridge/msdk/activity/MBBaseActivity;->c(Lcom/mbridge/msdk/activity/MBBaseActivity;)I

    move-result v3

    if-eq v3, v0, :cond_2

    iget-object p1, p0, Lcom/mbridge/msdk/activity/MBBaseActivity$b;->a:Lcom/mbridge/msdk/activity/MBBaseActivity;

    invoke-static {p1, v0}, Lcom/mbridge/msdk/activity/MBBaseActivity;->a(Lcom/mbridge/msdk/activity/MBBaseActivity;I)I

    iget-object p1, p0, Lcom/mbridge/msdk/activity/MBBaseActivity$b;->a:Lcom/mbridge/msdk/activity/MBBaseActivity;

    invoke-virtual {p1}, Lcom/mbridge/msdk/activity/MBBaseActivity;->getNotchParams()V

    const-string p1, "Orientation Right"

    invoke-static {v1, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    if-nez p1, :cond_3

    iget-object v3, p0, Lcom/mbridge/msdk/activity/MBBaseActivity$b;->a:Lcom/mbridge/msdk/activity/MBBaseActivity;

    invoke-static {v3}, Lcom/mbridge/msdk/activity/MBBaseActivity;->c(Lcom/mbridge/msdk/activity/MBBaseActivity;)I

    move-result v3

    if-eq v3, v2, :cond_3

    iget-object p1, p0, Lcom/mbridge/msdk/activity/MBBaseActivity$b;->a:Lcom/mbridge/msdk/activity/MBBaseActivity;

    invoke-static {p1, v2}, Lcom/mbridge/msdk/activity/MBBaseActivity;->a(Lcom/mbridge/msdk/activity/MBBaseActivity;I)I

    iget-object p1, p0, Lcom/mbridge/msdk/activity/MBBaseActivity$b;->a:Lcom/mbridge/msdk/activity/MBBaseActivity;

    invoke-virtual {p1}, Lcom/mbridge/msdk/activity/MBBaseActivity;->getNotchParams()V

    const-string p1, "Orientation Top"

    invoke-static {v1, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/mbridge/msdk/activity/MBBaseActivity$b;->a:Lcom/mbridge/msdk/activity/MBBaseActivity;

    invoke-static {p1}, Lcom/mbridge/msdk/activity/MBBaseActivity;->c(Lcom/mbridge/msdk/activity/MBBaseActivity;)I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    iget-object p1, p0, Lcom/mbridge/msdk/activity/MBBaseActivity$b;->a:Lcom/mbridge/msdk/activity/MBBaseActivity;

    invoke-static {p1, v0}, Lcom/mbridge/msdk/activity/MBBaseActivity;->a(Lcom/mbridge/msdk/activity/MBBaseActivity;I)I

    iget-object p1, p0, Lcom/mbridge/msdk/activity/MBBaseActivity$b;->a:Lcom/mbridge/msdk/activity/MBBaseActivity;

    invoke-virtual {p1}, Lcom/mbridge/msdk/activity/MBBaseActivity;->getNotchParams()V

    const-string p1, "Orientation Bottom"

    invoke-static {v1, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method
