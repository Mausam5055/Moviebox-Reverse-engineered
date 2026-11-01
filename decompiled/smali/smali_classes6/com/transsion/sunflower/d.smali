.class public final Lcom/transsion/sunflower/d;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lkotlin/jvm/functions/Function1;

.field private c:Lkotlin/jvm/functions/Function1;

.field private d:Lkotlin/jvm/functions/Function0;

.field private e:Lkotlin/jvm/functions/Function0;

.field private f:Lcom/transsion/sunflower/FSNConfig;

.field private g:I

.field private h:Z

.field private i:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/sunflower/d;->a:Landroid/content/Context;

    sget p1, Lcom/transsion/sunflower/R$mipmap;->ic_launcher:I

    iput p1, p0, Lcom/transsion/sunflower/d;->g:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/transsion/sunflower/FSNManager;
    .locals 1

    sget-object v0, Lcom/transsion/sunflower/FSNManager;->f:Lcom/transsion/sunflower/FSNManager$a;

    invoke-virtual {v0, p0}, Lcom/transsion/sunflower/FSNManager$a;->b(Lcom/transsion/sunflower/d;)Lcom/transsion/sunflower/FSNManager;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/transsion/sunflower/FSNConfig;
    .locals 1

    iget-object v0, p0, Lcom/transsion/sunflower/d;->f:Lcom/transsion/sunflower/FSNConfig;

    return-object v0
.end method

.method public final c()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/transsion/sunflower/d;->a:Landroid/content/Context;

    return-object v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/transsion/sunflower/d;->g:I

    return v0
.end method

.method public final e()Lkotlin/jvm/functions/Function1;
    .locals 1

    iget-object v0, p0, Lcom/transsion/sunflower/d;->b:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final f()Lkotlin/jvm/functions/Function1;
    .locals 1

    iget-object v0, p0, Lcom/transsion/sunflower/d;->c:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final g()Lkotlin/jvm/functions/Function0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/sunflower/d;->e:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final h()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/transsion/sunflower/d;->i:Landroid/content/Intent;

    return-object v0
.end method

.method public final i()Lkotlin/jvm/functions/Function0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/sunflower/d;->d:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/sunflower/d;->h:Z

    return v0
.end method

.method public final k(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sunflower/d;->d:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final l(Lcom/transsion/sunflower/FSNConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sunflower/d;->f:Lcom/transsion/sunflower/FSNConfig;

    return-void
.end method

.method public final m(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/sunflower/d;->h:Z

    return-void
.end method

.method public final n(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/sunflower/d;->g:I

    return-void
.end method

.method public final o(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sunflower/d;->b:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final p(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sunflower/d;->c:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final q(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sunflower/d;->e:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final r(Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sunflower/d;->i:Landroid/content/Intent;

    return-void
.end method
