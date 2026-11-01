.class Lcom/transsion/ninegridview/preview/q$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/photoview/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ninegridview/preview/q;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/ninegridview/preview/q;


# direct methods
.method constructor <init>(Lcom/transsion/ninegridview/preview/q;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/ninegridview/preview/q$a;->a:Lcom/transsion/ninegridview/preview/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/ninegridview/preview/q$a;->a:Lcom/transsion/ninegridview/preview/q;

    invoke-static {v0}, Lcom/transsion/ninegridview/preview/q;->d(Lcom/transsion/ninegridview/preview/q;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;

    invoke-virtual {v0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->finish()V

    return-void
.end method
