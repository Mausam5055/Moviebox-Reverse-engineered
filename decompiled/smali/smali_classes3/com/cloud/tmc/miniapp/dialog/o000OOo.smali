.class public final Lcom/cloud/tmc/miniapp/dialog/o000OOo;
.super Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o<",
        "Lcom/cloud/tmc/miniapp/dialog/o000OOo;",
        ">;"
    }
.end annotation


# instance fields
.field public final OooO00o:Lkotlin/Lazy;

.field public final OooO0O0:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/o000OOo$OooO0o;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/o000OOo$OooO0o;-><init>(Lcom/cloud/tmc/miniapp/dialog/o000OOo;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/o000OOo$OooO0OO;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/o000OOo$OooO0OO;-><init>(Lcom/cloud/tmc/miniapp/dialog/o000OOo;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o000OOo;->OooO00o:Lkotlin/Lazy;

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o000OOo;->OooO0O0:Landroid/animation/AnimatorSet;

    sget p1, Lcom/cloud/tmc/miniapp/R$layout;->layout_mini_waiting_dialog:I

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setContentView(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setAnimStyle(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setBackgroundDimEnabled(Z)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setCancelable(Z)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/o000OOo$OooO00o;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/o000OOo$OooO00o;-><init>(Lcom/cloud/tmc/miniapp/dialog/o000OOo;)V

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->addOnShowListener(Lcom/cloud/tmc/miniapp/dialog/OooO0O0$Oooo000;)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/o000OOo$OooO0O0;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/o000OOo$OooO0O0;-><init>(Lcom/cloud/tmc/miniapp/dialog/o000OOo;)V

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->addOnDismissListener(Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOo00;)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    return-void
.end method
