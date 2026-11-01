.class public final Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;
.super Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o<",
        "Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field public final OooO:I

.field public final OooO00o:Lcom/cloud/tmc/integration/structure/App;

.field public final OooO0O0:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

.field public OooO0OO:Ljava/lang/String;

.field public OooO0Oo:Z

.field public OooO0o:Z

.field public OooO0o0:Z

.field public final OooO0oO:Ljava/lang/String;

.field public final OooO0oo:I

.field public final OooOO0:Ljava/lang/String;

.field public final OooOO0O:Ljava/lang/String;

.field public final OooOO0o:Lkotlin/Lazy;

.field public final OooOOO:Lkotlin/Lazy;

.field public final OooOOO0:Lkotlin/Lazy;

.field public final OooOOOO:Lkotlin/Lazy;

.field public final OooOOOo:Lkotlin/Lazy;

.field public final OooOOo:Lkotlin/Lazy;

.field public final OooOOo0:Lkotlin/Lazy;

.field public final OooOOoo:Lkotlin/Lazy;

.field public final OooOo:Lkotlin/Lazy;

.field public final OooOo0:Lkotlin/Lazy;

.field public final OooOo00:Lkotlin/Lazy;

.field public final OooOo0O:Lkotlin/Lazy;

.field public final OooOo0o:Lkotlin/Lazy;

.field public final OooOoO:Lkotlin/Lazy;

.field public final OooOoO0:Lkotlin/Lazy;

.field public final OooOoOO:Lkotlin/Lazy;

.field public final OooOoo:Lkotlin/Lazy;

.field public final OooOoo0:Lkotlin/Lazy;

.field public final OooOooO:Lkotlin/Lazy;

.field public final OooOooo:Lkotlin/Lazy;

.field public Oooo:Z

.field public final Oooo0:Lkotlin/Lazy;

.field public final Oooo000:Lkotlin/Lazy;

.field public final Oooo00O:Lkotlin/Lazy;

.field public final Oooo00o:Lkotlin/Lazy;

.field public final Oooo0O0:Lkotlin/Lazy;

.field public final Oooo0OO:Lkotlin/Lazy;

.field public final Oooo0o:Lkotlin/Lazy;

.field public final Oooo0o0:Lkotlin/Lazy;

.field public final Oooo0oO:Lkotlin/Lazy;

.field public final Oooo0oo:Lkotlin/Lazy;

.field public OoooO0:I

.field public OoooO00:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO00o:Lcom/cloud/tmc/integration/structure/App;

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO0O0:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    const-string p1, ""

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO0OO:Ljava/lang/String;

    const-string p1, "PrivacyAgreementDialog"

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO0oO:Ljava/lang/String;

    const/4 p1, 0x1

    iput p1, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO0oo:I

    const/4 p2, 0x2

    iput p2, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO:I

    const-string p2, "1"

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooOO0:Ljava/lang/String;

    const-string p2, "2"

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooOO0O:Ljava/lang/String;

    new-instance p2, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$OooO0OO;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$OooO0OO;-><init>(Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;)V

    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooOO0o:Lkotlin/Lazy;

    new-instance p2, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$oo000o;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$oo000o;-><init>(Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;)V

    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooOOO0:Lkotlin/Lazy;

    new-instance p2, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$o00Ooo;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$o00Ooo;-><init>(Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;)V

    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooOOO:Lkotlin/Lazy;

    new-instance p2, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$OooOOO0;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$OooOOO0;-><init>(Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;)V

    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooOOOO:Lkotlin/Lazy;

    new-instance p2, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$OooOOOO;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$OooOOOO;-><init>(Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;)V

    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooOOOo:Lkotlin/Lazy;

    new-instance p2, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$Oooo0;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$Oooo0;-><init>(Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;)V

    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooOOo0:Lkotlin/Lazy;

    new-instance p2, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$Oooo000;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$Oooo000;-><init>(Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;)V

    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooOOo:Lkotlin/Lazy;

    new-instance p2, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$o000oOoO;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$o000oOoO;-><init>(Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;)V

    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooOOoo:Lkotlin/Lazy;

    new-instance p2, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$OooOO0O;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$OooOO0O;-><init>(Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;)V

    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooOo00:Lkotlin/Lazy;

    new-instance p2, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$OooOO0;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$OooOO0;-><init>(Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;)V

    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooOo0:Lkotlin/Lazy;

    new-instance p2, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$o0ooOOo;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$o0ooOOo;-><init>(Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;)V

    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooOo0O:Lkotlin/Lazy;

    new-instance p2, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$o00Oo0;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$o00Oo0;-><init>(Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;)V

    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooOo0o:Lkotlin/Lazy;

    new-instance p2, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$o00oO0o;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$o00oO0o;-><init>(Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;)V

    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooOo:Lkotlin/Lazy;

    new-instance p2, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$o00000OO;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$o00000OO;-><init>(Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;)V

    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooOoO0:Lkotlin/Lazy;

    new-instance p2, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$OooO;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$OooO;-><init>(Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;)V

    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooOoO:Lkotlin/Lazy;

    new-instance p2, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$o0000;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$o0000;-><init>(Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;)V

    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooOoOO:Lkotlin/Lazy;

    new-instance p2, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$OooO0o;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$OooO0o;-><init>(Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;)V

    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooOoo0:Lkotlin/Lazy;

    new-instance p2, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$OooOo;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$OooOo;-><init>(Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;)V

    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooOoo:Lkotlin/Lazy;

    new-instance p2, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$o000OOo;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$o000OOo;-><init>(Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;)V

    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooOooO:Lkotlin/Lazy;

    new-instance p2, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$o0OO00O;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$o0OO00O;-><init>(Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;)V

    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooOooo:Lkotlin/Lazy;

    new-instance p2, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$oo0o0Oo;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$oo0o0Oo;-><init>(Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;)V

    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->Oooo000:Lkotlin/Lazy;

    new-instance p2, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$OooOOO;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$OooOOO;-><init>(Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;)V

    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->Oooo00O:Lkotlin/Lazy;

    new-instance p2, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$o00O0O;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$o00O0O;-><init>(Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;)V

    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->Oooo00o:Lkotlin/Lazy;

    new-instance p2, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$o0OoOo0;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$o0OoOo0;-><init>(Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;)V

    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->Oooo0:Lkotlin/Lazy;

    new-instance p2, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$OooOo00;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$OooOo00;-><init>(Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;)V

    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->Oooo0O0:Lkotlin/Lazy;

    new-instance p2, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$o0Oo0oo;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$o0Oo0oo;-><init>(Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;)V

    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->Oooo0OO:Lkotlin/Lazy;

    new-instance p2, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$o0OOO0o;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$o0OOO0o;-><init>(Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;)V

    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->Oooo0o0:Lkotlin/Lazy;

    new-instance p2, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$o0O0O00;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$o0O0O00;-><init>(Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;)V

    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->Oooo0o:Lkotlin/Lazy;

    new-instance p2, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$o00000O;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$o00000O;-><init>(Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;)V

    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->Oooo0oO:Lkotlin/Lazy;

    new-instance p2, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$o0000Ooo;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$o0000Ooo;-><init>(Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;)V

    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->Oooo0oo:Lkotlin/Lazy;

    :try_start_0
    sget p2, Lcom/cloud/tmc/miniapp/R$layout;->mini_layout_privacy_agreement_dialog:I

    invoke-virtual {p0, p2}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setContentView(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setBackgroundDimEnabled(Z)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setCancelable(Z)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO0o0()Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p2, Lcom/cloud/tmc/miniapp/dialog/x;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/dialog/x;-><init>(Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO0oO()Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p2, Lcom/cloud/tmc/miniapp/dialog/y;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/dialog/y;-><init>(Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO0Oo()Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance p2, Lcom/cloud/tmc/miniapp/dialog/z;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/dialog/z;-><init>(Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO0OO()Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance p2, Lcom/cloud/tmc/miniapp/dialog/a0;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/dialog/a0;-><init>(Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$OooO00o;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$OooO00o;-><init>(Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;)V

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->addOnShowListener(Lcom/cloud/tmc/miniapp/dialog/OooO0O0$Oooo000;)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$OooO0O0;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$OooO0O0;-><init>(Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;)V

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->addOnCancelListener(Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOOO0;)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO0oO:Ljava/lang/String;

    const-string p3, "updateDialogLayout"

    invoke-static {p2, p3, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public static final OooO00o(Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooOoOO:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method public static final OooO00o(Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO00o:Lcom/cloud/tmc/integration/structure/App;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO0O0:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    iget v1, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO00o(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;I)V

    return-void
.end method

.method public static final OooO00o(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;)V
    .locals 1

    const-string v0, "$autoSelect"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    iput-boolean p0, p1, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->Oooo:Z

    iput-boolean p0, p1, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OoooO00:Z

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO00o()Landroid/widget/ImageView;

    move-result-object p0

    if-eqz p0, :cond_0

    sget v0, Lcom/cloud/tmc/miniapp/R$drawable;->mini_sel_privacy_checkbox_checked:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO0O0()Landroid/widget/ImageView;

    move-result-object p0

    if-eqz p0, :cond_1

    sget v0, Lcom/cloud/tmc/miniapp/R$drawable;->mini_sel_privacy_checkbox_checked:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooOO0()V

    return-void
.end method

.method public static final OooO0O0(Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;)V
    .locals 10

    const-string v0, ""

    const-string v1, "this$0"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/cloud/tmc/integration/utils/MccMncUtils;->getMcc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO0oO:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initAutoCheckStatus mcc:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    iput-boolean v4, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    goto :goto_0

    :cond_0
    const-string v3, "310,311,312,313,314,315,316,302,232,206,284,280,230,219,238,248,244,208,262,202,216,272,222,247,246,270,278,204,260,268,231,293,214,240,234,235,286,274,242,228,259,250,404,405"

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {v3, v1, v7, v6, v5}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iput-boolean v4, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    :cond_1
    sget-object v3, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    const-string v8, "privacyAutoBlackCountry"

    invoke-virtual {v3, v8, v0}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-lez v9, :cond_2

    invoke-static {v8, v1, v7, v6, v5}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    iput-boolean v7, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    goto :goto_0

    :cond_2
    const-string v8, "privacyAutoWhiteCountry"

    invoke-virtual {v3, v8, v0}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v0, v1, v7, v6, v5}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v4, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    :cond_3
    :goto_0
    sget-object v0, Lcom/cloud/tmc/kernel/executor/ExecutorType;->UI:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    new-instance v1, Lcom/cloud/tmc/miniapp/dialog/v;

    invoke-direct {v1, v2, p0}, Lcom/cloud/tmc/miniapp/dialog/v;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;)V

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->execute(Lcom/cloud/tmc/kernel/executor/ExecutorType;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static final OooO0O0(Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;Landroid/view/View;)V
    .locals 6

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO0O0:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v1, "status"

    const-string v2, "cancel"

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "clickBtn"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO0O0:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :try_start_1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO0OO:Ljava/lang/String;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooOO0O:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-class p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO00o:Lcom/cloud/tmc/integration/structure/App;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    const-string v2, "miniapp_agree_popup_click"

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "miniappid"

    iget-object v5, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO00o:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v5, :cond_3

    invoke-interface {v5}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-virtual {v3, v4, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "content"

    const-string v4, "0"

    invoke-virtual {v3, v1, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {p1, v0, v2, v3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->recordForCommon(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_4
    :try_start_2
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dismiss()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :goto_2
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO0oO:Ljava/lang/String;

    const-string v0, "tvPrivacyCancel error"

    invoke-static {p0, v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method public static final OooO0OO(Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO00o:Lcom/cloud/tmc/integration/structure/App;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO0O0:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    iget v1, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO0oo:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO00o(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;I)V

    return-void
.end method

.method public static final OooO0Oo(Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;Landroid/view/View;)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO0O0:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v1, "status"

    const-string v2, "cancel"

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "clickBtn"

    const-string v2, "4"

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO0O0:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->close()V

    :cond_1
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO0oO:Ljava/lang/String;

    const-string v0, "tvPrivacyCancel error"

    invoke-static {p0, v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public static final OooO0o(Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;Landroid/view/View;)V
    .locals 1

    const-string p1, "$this_apply"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OoooO00:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO0O0()Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_1

    sget v0, Lcom/cloud/tmc/miniapp/R$drawable;->mini_sel_privacy_checkbox_unchecked:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO0O0()Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_1

    sget v0, Lcom/cloud/tmc/miniapp/R$drawable;->mini_sel_privacy_checkbox_checked:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OoooO00:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OoooO00:Z

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooOO0()V

    return-void
.end method

.method public static final OooO0o0(Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;Landroid/view/View;)V
    .locals 1

    const-string p1, "$this_apply"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->Oooo:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO00o()Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_1

    sget v0, Lcom/cloud/tmc/miniapp/R$drawable;->mini_sel_privacy_checkbox_unchecked:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO00o()Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_1

    sget v0, Lcom/cloud/tmc/miniapp/R$drawable;->mini_sel_privacy_checkbox_checked:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->Oooo:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->Oooo:Z

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooOO0()V

    return-void
.end method

.method public static final OooO0oO(Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;Landroid/view/View;)V
    .locals 2

    const-string p1, "$this_apply"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->Oooo:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OoooO00:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO00o:Lcom/cloud/tmc/integration/structure/App;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO0O0:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    iget v1, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO00o(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;I)V

    :cond_0
    return-void
.end method

.method public static final OooO0oo(Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;Landroid/view/View;)V
    .locals 3

    const-string p1, "$this_apply"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO0O0:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v1, "status"

    const-string v2, "cancel"

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "clickBtn"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO0O0:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->close()V

    :cond_1
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO0oO:Ljava/lang/String;

    const-string v0, "tvPrivacyCancel error"

    invoke-static {p0, v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public final OooO()V
    .locals 3

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_3

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/BarUtils;->getNavBarHeight()I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getDialog()Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO00o(Landroid/view/Window;)V

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooOoO0:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lcom/cloud/tmc/miniutils/util/SizeUtils;->dp2px(F)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OoooO0:I

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooOoO0:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    :cond_2
    const/high16 v0, 0x41e00000    # 28.0f

    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/SizeUtils;->dp2px(F)I

    move-result v0

    iput v0, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OoooO0:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO0oO:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    return-void
.end method

.method public final OooO00o()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->Oooo00O:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public final OooO00o(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v20, v0

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move/from16 v18, p17

    move/from16 v19, p18

    move-object/from16 v21, v1

    const-string v1, "title"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "baseContent"

    move-object/from16 v2, p3

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "privacyPolocyContent"

    move-object/from16 v2, p4

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "userAgreementContent"

    move-object/from16 v2, p5

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "buttonText"

    move-object/from16 v2, p6

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "privacyPolocyUrl"

    move-object/from16 v2, p7

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "userAgreementUrl"

    move-object/from16 v2, p8

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO00o:Lcom/cloud/tmc/integration/structure/App;

    move-object/from16 v17, v1

    move/from16 v2, p2

    move-object/from16 v1, v21

    invoke-virtual/range {v0 .. v19}, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO00o(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/structure/App;ZZ)V

    return-object p0
.end method

.method public final OooO00o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;
    .locals 23

    move-object/from16 v15, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p9

    const-string v4, "privacyDialogType"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "title"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "privacyTitle"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "baseContent"

    move-object/from16 v12, p4

    invoke-static {v12, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "privacyPolocyContent"

    move-object/from16 v5, p5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "userAgreementContent"

    move-object/from16 v7, p6

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "privacyPolocyUrl"

    move-object/from16 v8, p7

    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "userAgreementUrl"

    move-object/from16 v13, p8

    invoke-static {v13, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "secondPrivacyTitle"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "secondBaseContent"

    move-object/from16 v6, p10

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "secondPrivacyPolocyContent"

    move-object/from16 v14, p11

    invoke-static {v14, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "secondUserAgreementContent"

    move-object/from16 v11, p12

    invoke-static {v11, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "secondPrivacyPolocyUrl"

    move-object/from16 v10, p13

    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "secondUserAgreementUrl"

    move-object/from16 v9, p14

    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "gdprNoticeContent"

    move-object/from16 v6, p15

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "highlightContent"

    move-object/from16 v11, p16

    invoke-static {v11, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "privacyCancelTv"

    move-object/from16 v11, p17

    invoke-static {v11, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "privacyAgreeTv"

    move-object/from16 v11, p18

    invoke-static {v11, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, v15, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO0OO:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    iget-object v11, v15, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooOO0O:Ljava/lang/String;

    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    :goto_0
    if-eqz v11, :cond_1

    const-string v16, ""

    const/16 v17, 0x1

    const-string v0, ""

    move-object v6, v0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p19

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v12, p20

    move-object/from16 v13, p15

    move-object/from16 v14, p17

    move-object/from16 v15, p18

    move/from16 v18, p21

    invoke-virtual/range {v0 .. v18}, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO00o(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;

    move-object/from16 v15, p0

    goto/16 :goto_21

    :cond_1
    iget-object v6, v15, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooOO0:Ljava/lang/String;

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    const/4 v11, 0x1

    iput-boolean v11, v15, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO0Oo:Z

    const/4 v6, 0x0

    iput-boolean v6, v15, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO0o0:Z

    iput-boolean v11, v15, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO0o:Z

    iget-object v0, v15, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooOO0o:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    move v0, v11

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_5

    iget-object v0, v15, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooOooO:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_3
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    move v0, v11

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_8

    iget-object v0, v15, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->Oooo00o:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    :goto_5
    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    move v0, v11

    goto :goto_6

    :cond_9
    const/4 v0, 0x0

    :goto_6
    if-eqz v0, :cond_b

    iget-object v0, v15, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->Oooo0OO:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_a

    goto :goto_7

    :cond_a
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    :goto_7
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/high16 v1, 0x43820000    # 260.0f

    invoke-static {v1}, Lcom/cloud/tmc/miniutils/util/SizeUtils;->dp2px(F)I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, v15, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OoooO0:I

    sub-int/2addr v0, v1

    iget-object v1, v15, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooOoo:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/widget/NestedScrollView;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    goto :goto_8

    :cond_c
    const/4 v1, 0x0

    :goto_8
    const-string v2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object v2, v15, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO0oO:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " two in one maxPrivacyHeight:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->U:I

    iget-object v0, v15, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooOoo:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    if-nez v0, :cond_d

    goto :goto_9

    :cond_d
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_9
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    move v0, v11

    goto :goto_a

    :cond_e
    const/4 v0, 0x0

    :goto_a
    if-eqz v0, :cond_f

    sget v0, Lcom/cloud/tmc/miniapp/R$string;->mini_two_in_one_first_check_content:I

    invoke-virtual {v15, v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_b

    :cond_f
    move-object v2, v12

    :goto_b
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_10

    move v0, v11

    goto :goto_c

    :cond_10
    const/4 v0, 0x0

    :goto_c
    if-eqz v0, :cond_12

    sget v0, Lcom/cloud/tmc/miniapp/R$string;->mini_two_in_one_first_check_user_agreement:I

    invoke-virtual {v15, v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_11

    move-object/from16 v16, v4

    goto :goto_d

    :cond_11
    move-object/from16 v16, v0

    goto :goto_d

    :cond_12
    move-object/from16 v16, v7

    :goto_d
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_13

    move v0, v11

    goto :goto_e

    :cond_13
    const/4 v0, 0x0

    :goto_e
    if-eqz v0, :cond_15

    sget v0, Lcom/cloud/tmc/miniapp/R$string;->mini_two_in_one_first_check_privacy_policy:I

    invoke-virtual {v15, v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    move-object v5, v4

    goto :goto_f

    :cond_14
    move-object v5, v0

    :cond_15
    :goto_f
    invoke-virtual/range {p8 .. p8}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_16

    move v0, v11

    goto :goto_10

    :cond_16
    const/4 v0, 0x0

    :goto_10
    const-string v17, "https://h5.dlight-app.com/outside/user-agreement?lang="

    if-eqz v0, :cond_17

    move-object/from16 v13, v17

    :cond_17
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_18

    move v0, v11

    goto :goto_11

    :cond_18
    const/4 v0, 0x0

    :goto_11
    const-string v18, "https://h5.dlight-app.com/outside/privacy-policy?lang="

    if-eqz v0, :cond_19

    move-object/from16 v8, v18

    :cond_19
    if-eqz v2, :cond_1a

    :try_start_1
    const-string v0, "#"

    const/4 v1, 0x6

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 p5, v2

    move-object/from16 p6, v0

    move/from16 p7, v6

    move/from16 p8, v7

    move/from16 p9, v1

    move-object/from16 p10, v3

    invoke-static/range {p5 .. p10}, Lkotlin/text/StringsKt;->o0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v3

    const-string v0, "#"

    const/4 v1, 0x6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v19, 0x0

    move-object/from16 p5, v2

    move-object/from16 p6, v0

    move/from16 p7, v7

    move/from16 p8, v19

    move/from16 p9, v1

    move-object/from16 p10, v6

    invoke-static/range {p5 .. p10}, Lkotlin/text/StringsKt;->v0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v6

    const-string v0, "*"

    const/4 v1, 0x6

    const/4 v7, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 p5, v2

    move-object/from16 p6, v0

    move/from16 p7, v19

    move/from16 p8, v20

    move/from16 p9, v1

    move-object/from16 p10, v7

    invoke-static/range {p5 .. p10}, Lkotlin/text/StringsKt;->o0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v7

    const-string v0, "*"

    const/4 v1, 0x6

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 p5, v2

    move-object/from16 p6, v0

    move/from16 p7, v20

    move/from16 p8, v21

    move/from16 p9, v1

    move-object/from16 p10, v19

    invoke-static/range {p5 .. p10}, Lkotlin/text/StringsKt;->v0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v19

    iget-object v0, v15, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->Oooo0:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v21, v4

    move-object v4, v5

    move-object v5, v8

    const/16 v22, 0x0

    move-object/from16 v8, v16

    move-object v9, v13

    move/from16 v10, v19

    move v13, v11

    move/from16 v11, v20

    :try_start_2
    invoke-virtual/range {v0 .. v11}, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO00o(Landroid/widget/TextView;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_12

    :catchall_1
    :cond_1a
    move-object/from16 v21, v4

    move v13, v11

    const/16 v22, 0x0

    :catchall_2
    :goto_12
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1b

    move v11, v13

    goto :goto_13

    :cond_1b
    move/from16 v11, v22

    :goto_13
    if-eqz v11, :cond_1c

    sget v0, Lcom/cloud/tmc/miniapp/R$string;->mini_two_in_one_secondt_check_content:I

    invoke-virtual {v15, v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    :cond_1c
    invoke-virtual/range {p12 .. p12}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1d

    move v11, v13

    goto :goto_14

    :cond_1d
    move/from16 v11, v22

    :goto_14
    if-eqz v11, :cond_1e

    sget v0, Lcom/cloud/tmc/miniapp/R$string;->mini_two_in_one_second_check_user_agreement:I

    invoke-virtual {v15, v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1f

    move-object/from16 v0, v21

    goto :goto_15

    :cond_1e
    move-object/from16 v0, p12

    :cond_1f
    :goto_15
    invoke-virtual/range {p11 .. p11}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_20

    move v11, v13

    goto :goto_16

    :cond_20
    move/from16 v11, v22

    :goto_16
    if-eqz v11, :cond_22

    sget v1, Lcom/cloud/tmc/miniapp/R$string;->mini_two_in_one_second_check_privacy_policy:I

    invoke-virtual {v15, v1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_21

    move-object/from16 v14, v21

    goto :goto_17

    :cond_21
    move-object v14, v1

    :cond_22
    :goto_17
    invoke-virtual/range {p14 .. p14}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_23

    move v11, v13

    goto :goto_18

    :cond_23
    move/from16 v11, v22

    :goto_18
    if-eqz v11, :cond_24

    goto :goto_19

    :cond_24
    move-object/from16 v17, p14

    :goto_19
    invoke-virtual/range {p13 .. p13}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_25

    move v11, v13

    goto :goto_1a

    :cond_25
    move/from16 v11, v22

    :goto_1a
    if-eqz v11, :cond_26

    goto :goto_1b

    :cond_26
    move-object/from16 v18, p13

    :goto_1b
    if-eqz v12, :cond_27

    :try_start_3
    const-string v1, "#"

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 p1, v12

    move-object/from16 p2, v1

    move/from16 p3, v4

    move/from16 p4, v5

    move/from16 p5, v2

    move-object/from16 p6, v3

    invoke-static/range {p1 .. p6}, Lkotlin/text/StringsKt;->o0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v1

    const-string v2, "#"

    const/4 v3, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 p1, v12

    move-object/from16 p2, v2

    move/from16 p3, v5

    move/from16 p4, v6

    move/from16 p5, v3

    move-object/from16 p6, v4

    invoke-static/range {p1 .. p6}, Lkotlin/text/StringsKt;->v0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v2

    const-string v3, "*"

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 p1, v12

    move-object/from16 p2, v3

    move/from16 p3, v6

    move/from16 p4, v7

    move/from16 p5, v4

    move-object/from16 p6, v5

    invoke-static/range {p1 .. p6}, Lkotlin/text/StringsKt;->o0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v3

    const-string v4, "*"

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 p1, v12

    move-object/from16 p2, v4

    move/from16 p3, v7

    move/from16 p4, v8

    move/from16 p5, v5

    move-object/from16 p6, v6

    invoke-static/range {p1 .. p6}, Lkotlin/text/StringsKt;->v0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v4

    iget-object v5, v15, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->Oooo0o0:Lkotlin/Lazy;

    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const/4 v6, 0x1

    move-object/from16 p1, p0

    move-object/from16 p2, v5

    move-object/from16 p3, v12

    move/from16 p4, v1

    move-object/from16 p5, v14

    move-object/from16 p6, v18

    move/from16 p7, v2

    move/from16 p8, v3

    move-object/from16 p9, v0

    move-object/from16 p10, v17

    move/from16 p11, v4

    move/from16 p12, v6

    invoke-virtual/range {p1 .. p12}, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO00o(Landroid/widget/TextView;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    :cond_27
    invoke-virtual/range {p15 .. p15}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_28

    move v11, v13

    goto :goto_1c

    :cond_28
    move/from16 v11, v22

    :goto_1c
    if-eqz v11, :cond_29

    sget v0, Lcom/cloud/tmc/miniapp/R$string;->mini_two_in_one_gdpr_notice_content:I

    invoke-virtual {v15, v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2a

    move-object/from16 v0, v21

    goto :goto_1d

    :cond_29
    move-object/from16 v0, p15

    :cond_2a
    :goto_1d
    invoke-virtual/range {p16 .. p16}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2b

    move v11, v13

    goto :goto_1e

    :cond_2b
    move/from16 v11, v22

    :goto_1e
    if-eqz v11, :cond_2c

    sget v1, Lcom/cloud/tmc/miniapp/R$string;->mini_two_in_one_gdpr_highlight:I

    invoke-virtual {v15, v1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2d

    move-object/from16 v1, v21

    goto :goto_1f

    :cond_2c
    move-object/from16 v1, p16

    :cond_2d
    :goto_1f
    iget-object v2, v15, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->Oooo0o:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-nez v2, :cond_2e

    goto :goto_20

    :cond_2e
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 p1, v0

    move-object/from16 p2, v1

    move/from16 p3, v6

    move/from16 p4, v7

    move/from16 p5, v4

    move-object/from16 p6, v5

    :try_start_4
    invoke-static/range {p1 .. p6}, Lkotlin/text/StringsKt;->o0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    if-le v1, v0, :cond_2f

    new-instance v4, Landroid/text/style/StyleSpan;

    invoke-direct {v4, v13}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v5, 0x21

    invoke-virtual {v3, v4, v0, v1, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :catchall_4
    :cond_2f
    new-instance v0, Landroid/text/SpannedString;

    invoke-direct {v0, v3}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_20
    iget-object v0, v15, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->Oooo0oO:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_30

    new-instance v1, Lcom/cloud/tmc/miniapp/dialog/r;

    invoke-direct {v1, v15}, Lcom/cloud/tmc/miniapp/dialog/r;-><init>(Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_30
    iget-object v0, v15, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->Oooo0oo:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_31

    new-instance v1, Lcom/cloud/tmc/miniapp/dialog/s;

    invoke-direct {v1, v15}, Lcom/cloud/tmc/miniapp/dialog/s;-><init>(Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_31
    invoke-virtual/range {p0 .. p0}, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO0oo()V

    iget-object v0, v15, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooOooo:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_32

    new-instance v1, Lcom/cloud/tmc/miniapp/dialog/t;

    invoke-direct {v1, v15}, Lcom/cloud/tmc/miniapp/dialog/t;-><init>(Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_32
    iget-object v0, v15, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->Oooo000:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_33

    new-instance v1, Lcom/cloud/tmc/miniapp/dialog/u;

    invoke-direct {v1, v15}, Lcom/cloud/tmc/miniapp/dialog/u;-><init>(Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_33
    :goto_21
    return-object v15
.end method

.method public final OooO00o(Landroid/view/Window;)V
    .locals 5

    const-string v0, "window"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    invoke-static {p1, v3}, Lcom/cloud/tmc/miniapp/dialog/l;->a(Landroid/view/Window;Z)V

    :cond_0
    const/high16 v2, 0x8000000

    invoke-virtual {p1, v2}, Landroid/view/Window;->clearFlags(I)V

    const/high16 v2, -0x80000000

    invoke-virtual {p1, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    or-int/lit16 v2, v2, 0x200

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {p1, v3}, Landroid/view/Window;->setNavigationBarColor(I)V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "uimode"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type android.app.UiModeManager"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/app/UiModeManager;

    invoke-virtual {v2}, Landroid/app/UiModeManager;->getNightMode()I

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x1a

    if-lt v1, v0, :cond_1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    or-int/lit8 v0, v0, 0x10

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    return-void
.end method

.method public final OooO00o(Landroid/widget/TextView;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p7

    move/from16 v5, p11

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {v2, v7, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v8

    move-object/from16 v9, p8

    invoke-virtual {v8, v9}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget v10, Lcom/cloud/tmc/miniapp/R$color;->mini_color_primary:I

    invoke-virtual {p0, v10}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getColor(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-instance v11, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$o00000;

    move-object/from16 v12, p9

    invoke-direct {v11, v12, p0, v5}, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$o00000;-><init>(Ljava/lang/String;Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;Z)V

    invoke-static {v6, v8, v10, v7, v11}, Lcom/cloud/tmc/integration/utils/ext/SpannableExtKt;->appendClickable(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Ljava/lang/Integer;ZLkotlin/jvm/functions/Function1;)Landroid/text/SpannableStringBuilder;

    const/16 v8, 0x21

    const/4 v10, 0x1

    :try_start_1
    new-instance v11, Landroid/text/style/StyleSpan;

    invoke-direct {v11, v10}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual/range {p8 .. p8}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v12, v3

    invoke-virtual {v6, v11, v3, v12, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    add-int/lit8 v3, p6, 0x1

    :try_start_2
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v3

    move-object/from16 v11, p4

    invoke-virtual {v3, v11}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v12, Lcom/cloud/tmc/miniapp/R$color;->mini_color_primary:I

    invoke-virtual {p0, v12}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getColor(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    new-instance v13, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$o00000O0;

    move-object/from16 v14, p5

    invoke-direct {v13, v14, p0, v5}, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$o00000O0;-><init>(Ljava/lang/String;Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;Z)V

    invoke-static {v6, v3, v12, v7, v13}, Lcom/cloud/tmc/integration/utils/ext/SpannableExtKt;->appendClickable(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Ljava/lang/Integer;ZLkotlin/jvm/functions/Function1;)Landroid/text/SpannableStringBuilder;

    :try_start_3
    invoke-virtual/range {p8 .. p8}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x4

    new-instance v4, Landroid/text/style/StyleSpan;

    invoke-direct {v4, v10}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v6, v4, v3, v5, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    add-int/lit8 v3, p10, 0x1

    :try_start_4
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :catchall_4
    new-instance v2, Landroid/text/SpannedString;

    invoke-direct {v2, v6}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :goto_1
    if-eqz v1, :cond_2

    invoke-static/range {p1 .. p1}, Lcom/cloud/tmc/integration/utils/ext/TextViewExtKt;->transparentHighlightColor(Landroid/widget/TextView;)V

    :cond_2
    return-void
.end method

.method public final OooO00o(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;I)V
    .locals 10

    const-string v0, "miniappid"

    const-string v1, "1"

    const-class v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {}, Lcom/cloud/tmc/integration/utils/FastClickUtil;->isFastDoubleClick()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    :try_start_0
    iget-boolean v4, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO0Oo:Z

    if-eqz v4, :cond_2

    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :catchall_0
    move-exception v4

    goto :goto_5

    :cond_1
    move-object v5, v3

    :goto_0
    const-string v6, "privacy_click"

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v4, v5, v6, v7}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->recordForCommon(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v4, Lcom/cloud/tmc/integration/utils/DeviceUtil;->INSTANCE:Lcom/cloud/tmc/integration/utils/DeviceUtil;

    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->updateIsNewUserStatus(Ljava/lang/String;)V

    :cond_2
    iget-boolean v4, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO0o0:Z

    if-eqz v4, :cond_8

    if-eqz v4, :cond_4

    sget-object v4, Lcom/cloud/tmc/integration/utils/DeviceUtil;->INSTANCE:Lcom/cloud/tmc/integration/utils/DeviceUtil;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_3
    move-object v5, v3

    :goto_1
    invoke-virtual {v4, v5}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->updateIsNewUserStatus(Ljava/lang/String;)V

    :cond_4
    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_5
    move-object v5, v3

    :goto_2
    const-string v6, "appstart_add_click"

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    :cond_6
    move-object v8, v3

    :goto_3
    invoke-virtual {v7, v0, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v8, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO0o:Z

    if-eqz v8, :cond_7

    const-string v8, "2"

    goto :goto_4

    :cond_7
    move-object v8, v1

    :goto_4
    const-string v9, "type"

    invoke-virtual {v7, v9, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v8, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v4, v5, v6, v7}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->recordForCommon(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :goto_5
    :try_start_1
    iget-object v5, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO0oO:Ljava/lang/String;

    invoke-static {v5, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :cond_8
    :goto_6
    :try_start_2
    sget-object v4, Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;->INSTANCE:Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;

    if-eqz p1, :cond_9

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object v5

    goto :goto_7

    :catchall_1
    move-exception v4

    goto :goto_8

    :cond_9
    move-object v5, v3

    :goto_7
    invoke-virtual {v4, v5}, Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;->noticeClickAllowBtn(Ljava/lang/String;)V

    if-eqz p1, :cond_a

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_a

    sget-object v4, Lcom/cloud/tmc/miniapp/bridge/PrivacyBridge;->Companion:Lcom/cloud/tmc/miniapp/bridge/PrivacyBridge$OooO00o;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/cloud/tmc/miniapp/bridge/PrivacyBridge;->access$getPrivacyDialogMap$cp()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static {}, Lcom/cloud/tmc/miniapp/bridge/PrivacyBridge;->access$getPrivacyDialogMap$cp()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-class v4, Lcom/cloud/tmc/integration/point/PermissionDialogPoint;

    invoke-static {v4}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->as(Ljava/lang/Class;)Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->create()Lcom/cloud/tmc/kernel/extension/Extension;

    move-result-object v4

    check-cast v4, Lcom/cloud/tmc/integration/point/PermissionDialogPoint;

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "app.appId"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getStartToken()J

    move-result-wide v6

    invoke-interface {v4, v5, v6, v7}, Lcom/cloud/tmc/integration/point/PermissionDialogPoint;->privacyDialogDismiss(Ljava/lang/String;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_9

    :goto_8
    :try_start_3
    iget-object v5, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO0oO:Ljava/lang/String;

    const-string v6, "privacyDialogDismiss"

    invoke-static {v5, v6, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_a
    :goto_9
    iget v4, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO0oo:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const-string v5, "clickBtn"

    const-string v6, "agreeClick"

    const-string v7, "status"

    if-ne p3, v4, :cond_c

    if-eqz p2, :cond_b

    :try_start_4
    new-instance p3, Lcom/google/gson/JsonObject;

    invoke-direct {p3}, Lcom/google/gson/JsonObject;-><init>()V

    invoke-virtual {p3, v7, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "3"

    invoke-virtual {p3, v5, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, p3}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    goto :goto_a

    :catchall_2
    move-exception p1

    goto :goto_d

    :cond_b
    :goto_a
    if-eqz p2, :cond_e

    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->close()V

    goto :goto_b

    :cond_c
    iget v4, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO:I

    if-ne p3, v4, :cond_e

    if-eqz p2, :cond_d

    new-instance p3, Lcom/google/gson/JsonObject;

    invoke-direct {p3}, Lcom/google/gson/JsonObject;-><init>()V

    invoke-virtual {p3, v7, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v5, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, p3}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    :cond_d
    if-eqz p2, :cond_e

    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->close()V

    :cond_e
    :goto_b
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO0OO:Ljava/lang/String;

    iget-object p3, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooOO0O:Ljava/lang/String;

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_11

    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    if-eqz p1, :cond_f

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object p3

    goto :goto_c

    :cond_f
    move-object p3, v3

    :goto_c
    const-string v2, "miniapp_agree_popup_click"

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_10

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    :cond_10
    invoke-virtual {v4, v0, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "content"

    invoke-virtual {v4, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {p2, p3, v2, v4}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->recordForCommon(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_11
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dismiss()V

    goto :goto_e

    :goto_d
    :try_start_5
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO0oO:Ljava/lang/String;

    const-string p3, "callback error"

    invoke-static {p2, p3, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dismiss()V

    :goto_e
    return-void

    :catchall_3
    move-exception p1

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dismiss()V

    throw p1
.end method

.method public final OooO00o(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p6

    move/from16 v4, p10

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO0o()Landroid/widget/TextView;

    move-result-object v5

    if-nez v5, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {v1, v7, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v8

    move-object/from16 v9, p7

    invoke-virtual {v8, v9}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget v10, Lcom/cloud/tmc/miniapp/R$color;->mini_color_primary:I

    invoke-virtual {p0, v10}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getColor(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-instance v11, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$o000000;

    move-object/from16 v12, p8

    invoke-direct {v11, v12, p0, v4}, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$o000000;-><init>(Ljava/lang/String;Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;Z)V

    invoke-static {v6, v8, v10, v7, v11}, Lcom/cloud/tmc/integration/utils/ext/SpannableExtKt;->appendClickable(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Ljava/lang/Integer;ZLkotlin/jvm/functions/Function1;)Landroid/text/SpannableStringBuilder;

    const/16 v8, 0x21

    const/4 v10, 0x1

    :try_start_0
    new-instance v11, Landroid/text/style/StyleSpan;

    invoke-direct {v11, v10}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v12, v2

    invoke-virtual {v6, v11, v2, v12, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    add-int/lit8 v2, p5, 0x1

    :try_start_1
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v2

    move-object/from16 v11, p3

    invoke-virtual {v2, v11}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v12, Lcom/cloud/tmc/miniapp/R$color;->mini_color_primary:I

    invoke-virtual {p0, v12}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getColor(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    new-instance v13, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$o000000O;

    move-object/from16 v14, p4

    invoke-direct {v13, v14, p0, v4}, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$o000000O;-><init>(Ljava/lang/String;Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;Z)V

    invoke-static {v6, v2, v12, v7, v13}, Lcom/cloud/tmc/integration/utils/ext/SpannableExtKt;->appendClickable(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Ljava/lang/Integer;ZLkotlin/jvm/functions/Function1;)Landroid/text/SpannableStringBuilder;

    :try_start_2
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x4

    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, v10}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v6, v3, v2, v4, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    add-int/lit8 v2, p9, 0x1

    :try_start_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    new-instance v1, Landroid/text/SpannedString;

    invoke-direct {v1, v6}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public final OooO00o(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/structure/App;ZZ)V
    .locals 19

    move-object/from16 v12, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v13, p6

    move/from16 v0, p9

    move-object/from16 v3, p17

    const-string v4, "title"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "baseContent"

    move-object/from16 v5, p3

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "privacyPolocyContent"

    move-object/from16 v6, p4

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "userAgreementContent"

    move-object/from16 v7, p5

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "buttonText"

    invoke-static {v13, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "privacyPolocyUrl"

    move-object/from16 v8, p7

    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "userAgreementUrl"

    move-object/from16 v9, p8

    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    const/16 v4, 0x64

    invoke-interface {v3, v4}, Lcom/cloud/tmc/integration/structure/App;->updateAddHomeShowStatus(I)V

    :cond_0
    move/from16 v4, p10

    iput-boolean v4, v12, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO0Oo:Z

    iput-boolean v0, v12, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO0o0:Z

    move/from16 v4, p11

    iput-boolean v4, v12, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO0o:Z

    const/16 v10, 0x8

    const/4 v11, 0x0

    if-eqz v0, :cond_5

    iget-object v0, v12, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooOOOO:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Group;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v11}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    :goto_0
    if-eqz v3, :cond_4

    invoke-interface/range {p17 .. p17}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getLogo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v14, v12, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooOOOo:Lkotlin/Lazy;

    invoke-interface {v14}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    if-eqz v14, :cond_2

    :try_start_0
    const-class v15, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;

    invoke-static {v15}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;

    invoke-virtual/range {p0 .. p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v16, 0x41600000    # 14.0f

    invoke-static/range {v16 .. v16}, Lcom/cloud/tmc/miniutils/util/SizeUtils;->dp2px(F)I

    move-result v11

    invoke-interface {v15, v4, v0, v14, v11}, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;->loadImgRoundCorners(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v4, v12, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO0oO:Ljava/lang/String;

    const-string v11, "showAddhomeLayout"

    invoke-static {v4, v11, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_3

    iget-object v0, v12, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO0oO:Ljava/lang/String;

    const-string v4, "privacy dialog add home ,ivLogo is null"

    invoke-static {v0, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_7

    iget-object v0, v12, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO0oO:Ljava/lang/String;

    const-string v4, "privacy dialog add home ,logoUrl is null"

    invoke-static {v0, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    iget-object v0, v12, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO0oO:Ljava/lang/String;

    const-string v4, "privacy dialog add home ,showAddHome is false"

    invoke-static {v0, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v12, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooOOOO:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Group;

    if-nez v0, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v0, v10}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    :cond_7
    :goto_4
    iget-object v0, v12, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooOOO0:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    if-eqz v2, :cond_a

    iget-object v0, v12, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooOOO0:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_a
    :goto_6
    iget-object v0, v12, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooOOoo:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_b

    goto :goto_8

    :cond_b
    if-eqz v3, :cond_c

    invoke-interface/range {p17 .. p17}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/AppModel;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    :cond_c
    const/4 v4, 0x0

    :goto_7
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_8
    iget-boolean v0, v12, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO0Oo:Z

    if-eqz v0, :cond_21

    :try_start_1
    iget-object v0, v12, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooOo0:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Group;

    if-nez v0, :cond_d

    const/4 v1, 0x0

    goto :goto_9

    :cond_d
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    :goto_9
    iget-object v0, v12, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooOo00:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Group;

    if-nez v0, :cond_e

    goto :goto_a

    :cond_e
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    :goto_a
    iget-object v0, v12, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooOoO:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Group;

    if-nez v0, :cond_f

    goto :goto_b

    :cond_f
    invoke-virtual {v0, v10}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_b
    const-string v0, ""

    if-eqz p12, :cond_10

    move-object v10, v5

    goto :goto_d

    :cond_10
    if-eqz p19, :cond_12

    :try_start_2
    sget v1, Lcom/cloud/tmc/miniapp/R$string;->mini_privacy_reading_notice_only_en:I

    invoke-virtual {v12, v1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_11

    goto :goto_c

    :cond_11
    move-object v10, v1

    goto :goto_d

    :catchall_1
    move-exception v0

    goto/16 :goto_1c

    :cond_12
    sget v1, Lcom/cloud/tmc/miniapp/R$string;->mini_privacy_reading_notice:I

    invoke-virtual {v12, v1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_11

    :goto_c
    move-object v10, v0

    :goto_d
    if-eqz p12, :cond_13

    move-object v11, v6

    goto :goto_f

    :cond_13
    if-eqz p19, :cond_15

    sget v1, Lcom/cloud/tmc/miniapp/R$string;->mini_privacy_privacy_policy_only_en:I

    invoke-virtual {v12, v1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_14

    goto :goto_e

    :cond_14
    move-object v11, v1

    goto :goto_f

    :cond_15
    sget v1, Lcom/cloud/tmc/miniapp/R$string;->mini_privacy_privacy_policy:I

    invoke-virtual {v12, v1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_14

    :goto_e
    move-object v11, v0

    :goto_f
    if-eqz p12, :cond_16

    move-object v14, v7

    goto :goto_11

    :cond_16
    if-eqz p19, :cond_18

    sget v1, Lcom/cloud/tmc/miniapp/R$string;->mini_privacy_user_agreement_only_en:I

    invoke-virtual {v12, v1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_17

    goto :goto_10

    :cond_17
    move-object v14, v1

    goto :goto_11

    :cond_18
    sget v1, Lcom/cloud/tmc/miniapp/R$string;->mini_privacy_user_agreement:I

    invoke-virtual {v12, v1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_17

    :goto_10
    move-object v14, v0

    :goto_11
    const-string v3, "#"

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, v10

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->o0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v15

    const-string v3, "#"

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, v10

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->v0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v16

    const-string v3, "*"

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, v10

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->o0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v17

    const-string v3, "*"

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, v10

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->v0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v18

    move-object/from16 v1, p0

    move-object v2, v10

    move v3, v15

    move-object v4, v11

    move-object/from16 v5, p7

    move/from16 v6, v16

    move/from16 v7, v17

    move-object v8, v14

    move-object/from16 v9, p8

    move/from16 v10, v18

    move/from16 v11, p18

    invoke-virtual/range {v1 .. v11}, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO00o(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IZ)V

    iget-object v1, v12, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooOo0O:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-nez v1, :cond_19

    goto :goto_14

    :cond_19
    if-eqz p13, :cond_1a

    invoke-virtual/range {p13 .. p13}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1a

    move-object/from16 v2, p13

    goto :goto_13

    :cond_1a
    if-eqz p19, :cond_1b

    sget v2, Lcom/cloud/tmc/miniapp/R$string;->mini_gdpr_privacy_only_en:I

    invoke-virtual {v12, v2}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1c

    goto :goto_12

    :cond_1b
    sget v2, Lcom/cloud/tmc/miniapp/R$string;->mini_gdpr_privacy:I

    invoke-virtual {v12, v2}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1c

    :goto_12
    move-object v2, v0

    :cond_1c
    :goto_13
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_14
    iget-object v0, v12, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooOo0O:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_1d

    goto :goto_15

    :cond_1d
    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :goto_15
    iget-object v0, v12, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooOo0o:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_1e

    goto :goto_16

    :cond_1e
    move-object/from16 v1, p15

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_16
    iget-object v0, v12, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooOo:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_1f

    goto :goto_17

    :cond_1f
    move-object/from16 v1, p14

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_17
    invoke-virtual/range {p0 .. p0}, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO0o()Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_20

    goto :goto_18

    :cond_20
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :goto_18
    invoke-virtual/range {p0 .. p0}, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO0o()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/TextViewExtKt;->transparentHighlightColor(Landroid/widget/TextView;)V

    goto :goto_1d

    :cond_21
    iget-object v0, v12, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooOo0:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Group;

    if-nez v0, :cond_22

    goto :goto_19

    :cond_22
    invoke-virtual {v0, v10}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    :goto_19
    iget-object v0, v12, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooOo00:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Group;

    if-nez v0, :cond_23

    goto :goto_1a

    :cond_23
    invoke-virtual {v0, v10}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    :goto_1a
    iget-object v0, v12, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooOoO:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Group;

    if-nez v0, :cond_24

    goto :goto_1b

    :cond_24
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    :goto_1b
    iget-object v0, v12, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO0oO:Ljava/lang/String;

    const-string v1, "privacy dialog add home ,showPrivacy is false"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1d

    :goto_1c
    iget-object v1, v12, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO0oO:Ljava/lang/String;

    const-string v2, "privacy dialog add home error"

    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_25
    :goto_1d
    iget-object v0, v12, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooOOo0:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_26

    goto :goto_1e

    :cond_26
    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1e
    iget-object v0, v12, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooOOo:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_27

    goto :goto_1f

    :cond_27
    move-object/from16 v1, p16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1f
    return-void
.end method

.method public final OooO00o(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/cloud/tmc/integration/structure/App;)V
    .locals 20

    move-object/from16 v15, p0

    move-object/from16 v0, p1

    const-string v1, "privacyDialogType"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "title"

    move-object/from16 v2, p2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "baseContent"

    move-object/from16 v3, p4

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "privacyPolocyContent"

    move-object/from16 v4, p5

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "userAgreementContent"

    move-object/from16 v5, p6

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "buttonText"

    move-object/from16 v6, p7

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "privacyPolocyUrl"

    move-object/from16 v7, p8

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "userAgreementUrl"

    move-object/from16 v8, p9

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, v15, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO0OO:Ljava/lang/String;

    iget-object v0, v15, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooOO0o:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, v15, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooOoo0:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    const/4 v11, 0x0

    const/16 v18, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    move-object/from16 v17, p16

    move/from16 v19, p15

    invoke-virtual/range {v0 .. v19}, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO00o(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/structure/App;ZZ)V

    return-void
.end method

.method public final OooO0O0()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->Oooo0O0:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public final OooO0OO()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooOOo:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final OooO0Oo()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooOOo0:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final OooO0o()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooOOO:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final OooO0o0()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooOo0o:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final OooO0oO()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooOo:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final OooO0oo()V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    new-instance v1, Lcom/cloud/tmc/miniapp/dialog/w;

    invoke-direct {v1, p0}, Lcom/cloud/tmc/miniapp/dialog/w;-><init>(Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;)V

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->execute(Lcom/cloud/tmc/kernel/executor/ExecutorType;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final OooOO0()V
    .locals 2

    :try_start_0
    sget v0, Lcom/cloud/tmc/miniapp/R$drawable;->mini_privacy_button_unclick_bg:I

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->Oooo:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OoooO00:Z

    if-eqz v1, :cond_1

    sget v1, Lcom/cloud/tmc/miniapp/R$color;->mini_color_primary:I

    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getColor(I)I

    move-result v1

    goto :goto_1

    :cond_1
    sget v1, Lcom/cloud/tmc/miniapp/R$color;->mini_two_in_one_agree_unchecked_bg:I

    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getColor(I)I

    move-result v1

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_2
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooOooo:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO0oO:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method
