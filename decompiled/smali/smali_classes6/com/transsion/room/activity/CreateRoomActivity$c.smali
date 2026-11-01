.class public final Lcom/transsion/room/activity/CreateRoomActivity$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/room/activity/CreateRoomActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/room/activity/CreateRoomActivity;


# direct methods
.method constructor <init>(Lcom/transsion/room/activity/CreateRoomActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/room/activity/CreateRoomActivity$c;->a:Lcom/transsion/room/activity/CreateRoomActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/transsion/room/activity/CreateRoomActivity$c;->a:Lcom/transsion/room/activity/CreateRoomActivity;

    invoke-static {v0}, Lcom/transsion/room/activity/CreateRoomActivity;->n0(Lcom/transsion/room/activity/CreateRoomActivity;)I

    move-result v0

    if-lt p1, v0, :cond_1

    sget-object p1, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    iget-object v0, p0, Lcom/transsion/room/activity/CreateRoomActivity$c;->a:Lcom/transsion/room/activity/CreateRoomActivity;

    sget v1, Lcom/transsion/room/R$string;->str_community_desc_limit:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tn/lib/widget/toast/core/h;->l(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
