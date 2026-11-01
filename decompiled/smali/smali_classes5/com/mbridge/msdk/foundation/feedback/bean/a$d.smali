.class Lcom/mbridge/msdk/foundation/feedback/bean/a$d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/foundation/feedback/bean/a;->a(Landroid/widget/RadioButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/foundation/feedback/bean/a;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/foundation/feedback/bean/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/feedback/bean/a$d;->a:Lcom/mbridge/msdk/foundation/feedback/bean/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/feedback/bean/a;->a(Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    iget-object p1, p0, Lcom/mbridge/msdk/foundation/feedback/bean/a$d;->a:Lcom/mbridge/msdk/foundation/feedback/bean/a;

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/feedback/bean/a;->d(Lcom/mbridge/msdk/foundation/feedback/bean/a;)Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/mbridge/msdk/foundation/feedback/bean/a$d;->a:Lcom/mbridge/msdk/foundation/feedback/bean/a;

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/feedback/bean/a;->d(Lcom/mbridge/msdk/foundation/feedback/bean/a;)Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;

    move-result-object p1

    invoke-static {}, Lcom/mbridge/msdk/foundation/feedback/bean/a;->a()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;->setCancelButtonClickable(Z)V

    :cond_1
    return-void
.end method
