.class public final Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;
.super Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o<",
        "Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;",
        ">;"
    }
.end annotation


# instance fields
.field public final OooO:Lkotlin/Lazy;

.field public final OooO00o:Ljava/lang/String;

.field public OooO0O0:Lcom/cloud/tmc/miniapp/dialog/o0OOO0o;

.field public final OooO0OO:Lkotlin/Lazy;

.field public final OooO0Oo:Lkotlin/Lazy;

.field public final OooO0o:Lkotlin/Lazy;

.field public final OooO0o0:Lkotlin/Lazy;

.field public final OooO0oO:Lkotlin/Lazy;

.field public final OooO0oo:Lkotlin/Lazy;

.field public final OooOO0:Lkotlin/Lazy;

.field public final OooOO0O:Lkotlin/Lazy;

.field public final OooOO0o:Lkotlin/Lazy;

.field public final OooOOO:Ljava/lang/String;

.field public OooOOO0:Z

.field public final OooOOOO:Ljava/lang/String;

.field public final OooOOOo:Ljava/lang/String;

.field public final OooOOo:Ljava/lang/String;

.field public final OooOOo0:Ljava/lang/String;

.field public final OooOOoo:Ljava/lang/String;

.field public final OooOo:Ljava/lang/String;

.field public final OooOo0:Ljava/lang/String;

.field public final OooOo00:Ljava/lang/String;

.field public final OooOo0O:Ljava/lang/String;

.field public final OooOo0o:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;-><init>(Landroid/content/Context;)V

    const-string p1, "MiniScopePermissionDialog"

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooO00o:Ljava/lang/String;

    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo$OooO0OO;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo$OooO0OO;-><init>(Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooO0OO:Lkotlin/Lazy;

    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo$OooOOO;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo$OooOOO;-><init>(Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooO0Oo:Lkotlin/Lazy;

    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo$OooOOOO;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo$OooOOOO;-><init>(Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooO0o0:Lkotlin/Lazy;

    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo$OooOO0O;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo$OooOO0O;-><init>(Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooO0o:Lkotlin/Lazy;

    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo$OooO0o;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo$OooO0o;-><init>(Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooO0oO:Lkotlin/Lazy;

    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo$OooOO0;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo$OooOO0;-><init>(Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooO0oo:Lkotlin/Lazy;

    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo$OooO;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo$OooO;-><init>(Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooO:Lkotlin/Lazy;

    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo$OooO00o;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo$OooO00o;-><init>(Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooOO0:Lkotlin/Lazy;

    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo$OooO0O0;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo$OooO0O0;-><init>(Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooOO0O:Lkotlin/Lazy;

    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo$OooOOO0;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo$OooOOO0;-><init>(Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo$OooOo00;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo$OooOo00;-><init>(Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooOO0o:Lkotlin/Lazy;

    sget p1, Lcom/cloud/tmc/miniapp/R$layout;->mini_dialog_layout_permission_scope:I

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setContentView(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    sget-object p1, Lcom/cloud/tmc/miniapp/action/AnimAction;->Companion:Lcom/cloud/tmc/miniapp/action/AnimAction$Companion;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/action/AnimAction$Companion;->getANIM_BOTTOM()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setAnimStyle(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setBackgroundDimEnabled(Z)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooO00o()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooO0OO()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooO0O0()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooO0Oo()Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Landroid/view/View;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    aput-object v1, v4, p1

    const/4 p1, 0x2

    aput-object v2, v4, p1

    const/4 p1, 0x3

    aput-object v3, v4, p1

    invoke-virtual {p0, v4}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setOnClickListener([Landroid/view/View;)V

    invoke-virtual {p0, v5}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setCancelable(Z)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    const-string p1, "isShow"

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooOOO:Ljava/lang/String;

    const-string p1, "bgcolor"

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooOOOO:Ljava/lang/String;

    const-string p1, "text"

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooOOOo:Ljava/lang/String;

    const-string p1, "customText"

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooOOo0:Ljava/lang/String;

    const-string p1, "1"

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooOOo:Ljava/lang/String;

    const-string v0, "2"

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooOOoo:Ljava/lang/String;

    const-string v0, "3"

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooOo00:Ljava/lang/String;

    const-string v0, "4"

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooOo0:Ljava/lang/String;

    const-string v0, "5"

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooOo0O:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooOo0o:Ljava/lang/String;

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooOo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final OooO00o()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooO0oO:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final OooO00o(Landroid/widget/TextView;Lcom/google/gson/JsonObject;)V
    .locals 6

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooOOO:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x0

    if-nez v0, :cond_3

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooO00o:Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initBtnConfig:-> btn is not show->"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooOOOO:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    move-object v0, v2

    :goto_2
    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooOo0o:Ljava/lang/String;

    :cond_5
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x1

    if-lez v3, :cond_6

    move v3, v4

    goto :goto_3

    :cond_6
    move v3, v1

    :goto_3
    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooOo0o:Ljava/lang/String;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    if-nez p1, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_4

    :cond_8
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooOo:Ljava/lang/String;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    if-nez p1, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_a
    :goto_4
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooOOo0:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_b
    move-object v0, v2

    :goto_5
    const-string v3, ""

    if-nez v0, :cond_c

    move-object v0, v3

    :cond_c
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_d

    move v1, v4

    :cond_d
    if-eqz v1, :cond_f

    if-nez p1, :cond_e

    goto :goto_6

    :cond_e
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_6
    return-void

    :cond_f
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooOOOo:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    if-eqz p2, :cond_10

    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    :cond_10
    if-nez v2, :cond_11

    move-object v2, v3

    :cond_11
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooOOo:Ljava/lang/String;

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_12

    sget p2, Lcom/cloud/tmc/miniapp/R$string;->mini_permission_allow:I

    invoke-virtual {p0, p2}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_12
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooOOoo:Ljava/lang/String;

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_13

    sget p2, Lcom/cloud/tmc/miniapp/R$string;->mini_permission_dont_allow:I

    invoke-virtual {p0, p2}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_13
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooOo00:Ljava/lang/String;

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_14

    sget p2, Lcom/cloud/tmc/miniapp/R$string;->mini_permission_only_this_time:I

    invoke-virtual {p0, p2}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_14
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooOo0:Ljava/lang/String;

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_15

    sget p2, Lcom/cloud/tmc/miniapp/R$string;->mini_permission_only_use_time:I

    invoke-virtual {p0, p2}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_15
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooOo0O:Ljava/lang/String;

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_16

    sget p2, Lcom/cloud/tmc/miniapp/R$string;->mini_permission_dont_allow_not_show:I

    invoke-virtual {p0, p2}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_16
    :goto_7
    if-nez p1, :cond_17

    goto :goto_8

    :cond_17
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_8
    return-void
.end method

.method public final OooO0O0()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooO:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final OooO0OO()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooO0oo:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final OooO0Oo()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooOO0o:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->onClick(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/cloud/tmc/miniapp/R$id;->tv_btn_one:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooO00o:Ljava/lang/String;

    const-string v0, "click1"

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooO0O0:Lcom/cloud/tmc/miniapp/dialog/o0OOO0o;

    if-eqz p1, :cond_0

    invoke-interface {p1, v1}, Lcom/cloud/tmc/miniapp/dialog/o0OOO0o;->OooO00o(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dismiss()V

    goto :goto_1

    :cond_1
    sget v0, Lcom/cloud/tmc/miniapp/R$id;->tv_btn_two:I

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooO00o:Ljava/lang/String;

    const-string v0, "click2"

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooO0O0:Lcom/cloud/tmc/miniapp/dialog/o0OOO0o;

    if-eqz p1, :cond_2

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/cloud/tmc/miniapp/dialog/o0OOO0o;->OooO00o(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dismiss()V

    goto :goto_1

    :cond_3
    sget v0, Lcom/cloud/tmc/miniapp/R$id;->tv_btn_three:I

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooO00o:Ljava/lang/String;

    const-string v0, "click3"

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooO0O0:Lcom/cloud/tmc/miniapp/dialog/o0OOO0o;

    if-eqz p1, :cond_4

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lcom/cloud/tmc/miniapp/dialog/o0OOO0o;->OooO00o(I)V

    :cond_4
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dismiss()V

    goto :goto_1

    :cond_5
    sget v0, Lcom/cloud/tmc/miniapp/R$id;->view_click_show_again_check:I

    if-ne p1, v0, :cond_7

    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooOOO0:Z

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooOOO0:Z

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooOO0O:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooOOO0:Z

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    :goto_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooO00o:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooOOO0:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNotShowAgain = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooO0O0:Lcom/cloud/tmc/miniapp/dialog/o0OOO0o;

    if-eqz p1, :cond_7

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooOOO0:Z

    invoke-interface {p1, v0}, Lcom/cloud/tmc/miniapp/dialog/o0OOO0o;->clickNotShowAgagin(Z)V

    :cond_7
    :goto_1
    return-void
.end method
