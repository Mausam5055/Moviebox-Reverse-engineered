.class public final Lcom/tn/lib/widget/dialog/TRDialog$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tn/lib/widget/dialog/TRDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/tn/lib/widget/dialog/TRDialogListener;

.field private f:Z

.field private g:F

.field private h:Ljava/lang/String;

.field private i:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private j:I

.field private k:Z

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/tn/lib/widget/dialog/TRDialog$a;->g:F

    const/16 v0, 0x8

    iput v0, p0, Lcom/tn/lib/widget/dialog/TRDialog$a;->j:I

    const/16 v0, 0x11

    iput v0, p0, Lcom/tn/lib/widget/dialog/TRDialog$a;->t:I

    iput v0, p0, Lcom/tn/lib/widget/dialog/TRDialog$a;->u:I

    iput v0, p0, Lcom/tn/lib/widget/dialog/TRDialog$a;->v:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/tn/lib/widget/dialog/TRBaseDialog;
    .locals 4

    new-instance v0, Lcom/tn/lib/widget/dialog/TRDialog;

    invoke-direct {v0}, Lcom/tn/lib/widget/dialog/TRDialog;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "title"

    iget-object v3, p0, Lcom/tn/lib/widget/dialog/TRDialog$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "message"

    iget-object v3, p0, Lcom/tn/lib/widget/dialog/TRDialog$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "leftBtn"

    iget-object v3, p0, Lcom/tn/lib/widget/dialog/TRDialog$a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "rightBtn"

    iget-object v3, p0, Lcom/tn/lib/widget/dialog/TRDialog$a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "cb_tip"

    iget-object v3, p0, Lcom/tn/lib/widget/dialog/TRDialog$a;->h:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "is_show_close"

    iget-boolean v3, p0, Lcom/tn/lib/widget/dialog/TRDialog$a;->k:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    iget v1, p0, Lcom/tn/lib/widget/dialog/TRDialog$a;->g:F

    invoke-virtual {v0, v1}, Lcom/tn/lib/widget/dialog/TRBaseDialog;->a0(F)V

    invoke-virtual {p0}, Lcom/tn/lib/widget/dialog/TRDialog$a;->b()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tn/lib/widget/dialog/TRBaseDialog;->b0(Z)V

    :cond_0
    iget-object v1, p0, Lcom/tn/lib/widget/dialog/TRDialog$a;->e:Lcom/tn/lib/widget/dialog/TRDialogListener;

    invoke-static {v0, v1}, Lcom/tn/lib/widget/dialog/TRDialog;->s0(Lcom/tn/lib/widget/dialog/TRDialog;Lcom/tn/lib/widget/dialog/TRDialogListener;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tn/lib/widget/dialog/TRDialog;->m0(Lcom/tn/lib/widget/dialog/TRDialog;Lcom/tn/lib/widget/dialog/i;)V

    iget-object v1, p0, Lcom/tn/lib/widget/dialog/TRDialog$a;->i:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-static {v0, v1}, Lcom/tn/lib/widget/dialog/TRDialog;->u0(Lcom/tn/lib/widget/dialog/TRDialog;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget v1, p0, Lcom/tn/lib/widget/dialog/TRDialog$a;->l:I

    invoke-static {v0, v1}, Lcom/tn/lib/widget/dialog/TRDialog;->p0(Lcom/tn/lib/widget/dialog/TRDialog;I)V

    iget v1, p0, Lcom/tn/lib/widget/dialog/TRDialog$a;->m:I

    invoke-static {v0, v1}, Lcom/tn/lib/widget/dialog/TRDialog;->x0(Lcom/tn/lib/widget/dialog/TRDialog;I)V

    iget v1, p0, Lcom/tn/lib/widget/dialog/TRDialog$a;->n:I

    invoke-static {v0, v1}, Lcom/tn/lib/widget/dialog/TRDialog;->q0(Lcom/tn/lib/widget/dialog/TRDialog;I)V

    iget v1, p0, Lcom/tn/lib/widget/dialog/TRDialog$a;->o:I

    invoke-static {v0, v1}, Lcom/tn/lib/widget/dialog/TRDialog;->y0(Lcom/tn/lib/widget/dialog/TRDialog;I)V

    iget v1, p0, Lcom/tn/lib/widget/dialog/TRDialog$a;->p:I

    invoke-static {v0, v1}, Lcom/tn/lib/widget/dialog/TRDialog;->r0(Lcom/tn/lib/widget/dialog/TRDialog;I)V

    iget v1, p0, Lcom/tn/lib/widget/dialog/TRDialog$a;->q:I

    invoke-static {v0, v1}, Lcom/tn/lib/widget/dialog/TRDialog;->o0(Lcom/tn/lib/widget/dialog/TRDialog;I)V

    iget v1, p0, Lcom/tn/lib/widget/dialog/TRDialog$a;->r:I

    invoke-static {v0, v1}, Lcom/tn/lib/widget/dialog/TRDialog;->z0(Lcom/tn/lib/widget/dialog/TRDialog;I)V

    iget v1, p0, Lcom/tn/lib/widget/dialog/TRDialog$a;->s:I

    invoke-static {v0, v1}, Lcom/tn/lib/widget/dialog/TRDialog;->w0(Lcom/tn/lib/widget/dialog/TRDialog;I)V

    iget v1, p0, Lcom/tn/lib/widget/dialog/TRDialog$a;->t:I

    invoke-static {v0, v1}, Lcom/tn/lib/widget/dialog/TRDialog;->v0(Lcom/tn/lib/widget/dialog/TRDialog;I)V

    iget v1, p0, Lcom/tn/lib/widget/dialog/TRDialog$a;->u:I

    invoke-static {v0, v1}, Lcom/tn/lib/widget/dialog/TRDialog;->n0(Lcom/tn/lib/widget/dialog/TRDialog;I)V

    iget v1, p0, Lcom/tn/lib/widget/dialog/TRDialog$a;->v:I

    invoke-static {v0, v1}, Lcom/tn/lib/widget/dialog/TRDialog;->t0(Lcom/tn/lib/widget/dialog/TRDialog;I)V

    return-object v0
.end method

.method public final b()Ljava/lang/Boolean;
    .locals 1

    iget-boolean v0, p0, Lcom/tn/lib/widget/dialog/TRDialog$a;->f:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final c(I)Lcom/tn/lib/widget/dialog/TRDialog$a;
    .locals 0

    iput p1, p0, Lcom/tn/lib/widget/dialog/TRDialog$a;->l:I

    return-object p0
.end method

.method public final d(I)Lcom/tn/lib/widget/dialog/TRDialog$a;
    .locals 0

    iput p1, p0, Lcom/tn/lib/widget/dialog/TRDialog$a;->n:I

    return-object p0
.end method

.method public final e(Ljava/lang/String;)Lcom/tn/lib/widget/dialog/TRDialog$a;
    .locals 1

    const-string v0, "leftText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tn/lib/widget/dialog/TRDialog$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final f(Lcom/tn/lib/widget/dialog/TRDialogListener;)Lcom/tn/lib/widget/dialog/TRDialog$a;
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tn/lib/widget/dialog/TRDialog$a;->e:Lcom/tn/lib/widget/dialog/TRDialogListener;

    return-object p0
.end method

.method public final g(Ljava/lang/String;)Lcom/tn/lib/widget/dialog/TRDialog$a;
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tn/lib/widget/dialog/TRDialog$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final h(I)Lcom/tn/lib/widget/dialog/TRDialog$a;
    .locals 0

    iput p1, p0, Lcom/tn/lib/widget/dialog/TRDialog$a;->m:I

    return-object p0
.end method

.method public final i(I)Lcom/tn/lib/widget/dialog/TRDialog$a;
    .locals 0

    iput p1, p0, Lcom/tn/lib/widget/dialog/TRDialog$a;->o:I

    return-object p0
.end method

.method public final j(Ljava/lang/String;)Lcom/tn/lib/widget/dialog/TRDialog$a;
    .locals 1

    const-string v0, "rightText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tn/lib/widget/dialog/TRDialog$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final k(Ljava/lang/String;)Lcom/tn/lib/widget/dialog/TRDialog$a;
    .locals 1

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tn/lib/widget/dialog/TRDialog$a;->a:Ljava/lang/String;

    return-object p0
.end method
