.class public Lnw/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroidx/lifecycle/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnw/b$a;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Lnw/b$a;

.field private f:Lcom/google/android/material/bottomsheet/c;

.field private g:Ljava/lang/String;

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lnw/b$a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnw/b;->a:Landroid/app/Activity;

    iput-object p2, p0, Lnw/b;->e:Lnw/b$a;

    iput-object p3, p0, Lnw/b;->g:Ljava/lang/String;

    invoke-direct {p0}, Lnw/b;->a()V

    return-void
.end method

.method private a()V
    .locals 4

    iget-object v0, p0, Lnw/b;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/usercenter/R$layout;->dialog_edit_gender:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/transsion/usercenter/R$id;->tv_first:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lnw/b;->b:Landroid/widget/TextView;

    sget v1, Lcom/transsion/usercenter/R$id;->tv_second:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lnw/b;->c:Landroid/widget/TextView;

    sget v1, Lcom/transsion/usercenter/R$id;->tv_third:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lnw/b;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lnw/b;->b:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lnw/b;->c:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lnw/b;->d:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/google/android/material/bottomsheet/c;

    iget-object v2, p0, Lnw/b;->a:Landroid/app/Activity;

    sget v3, Lcom/transsion/usercenter/R$style;->BottomDialog1:I

    invoke-direct {v1, v2, v3}, Lcom/google/android/material/bottomsheet/c;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lnw/b;->f:Lcom/google/android/material/bottomsheet/c;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    sget v2, Lcom/transsion/usercenter/R$style;->bottom_dialog_animation:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    iget-object v1, p0, Lnw/b;->f:Lcom/google/android/material/bottomsheet/c;

    invoke-virtual {v1, v0}, Lcom/google/android/material/bottomsheet/c;->setContentView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 3

    iget-object v0, p0, Lnw/b;->g:Ljava/lang/String;

    iget-object v1, p0, Lnw/b;->a:Landroid/app/Activity;

    sget v2, Lcom/transsion/usercenter/R$string;->profile_female:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnw/b;->b:Landroid/widget/TextView;

    sget v1, Lcom/tn/lib/widget/R$color;->white:I

    invoke-static {v1}, Lcom/blankj/utilcode/util/h;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lnw/b;->c:Landroid/widget/TextView;

    sget v1, Lcom/tn/lib/widget/R$color;->text_03:I

    invoke-static {v1}, Lcom/blankj/utilcode/util/h;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lnw/b;->d:Landroid/widget/TextView;

    sget v1, Lcom/tn/lib/widget/R$color;->text_03:I

    invoke-static {v1}, Lcom/blankj/utilcode/util/h;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnw/b;->g:Ljava/lang/String;

    iget-object v1, p0, Lnw/b;->a:Landroid/app/Activity;

    sget v2, Lcom/transsion/usercenter/R$string;->profile_male:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnw/b;->c:Landroid/widget/TextView;

    sget v1, Lcom/tn/lib/widget/R$color;->white:I

    invoke-static {v1}, Lcom/blankj/utilcode/util/h;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lnw/b;->b:Landroid/widget/TextView;

    sget v1, Lcom/tn/lib/widget/R$color;->text_03:I

    invoke-static {v1}, Lcom/blankj/utilcode/util/h;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lnw/b;->d:Landroid/widget/TextView;

    sget v1, Lcom/tn/lib/widget/R$color;->text_03:I

    invoke-static {v1}, Lcom/blankj/utilcode/util/h;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnw/b;->d:Landroid/widget/TextView;

    sget v1, Lcom/tn/lib/widget/R$color;->white:I

    invoke-static {v1}, Lcom/blankj/utilcode/util/h;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lnw/b;->b:Landroid/widget/TextView;

    sget v1, Lcom/tn/lib/widget/R$color;->text_03:I

    invoke-static {v1}, Lcom/blankj/utilcode/util/h;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lnw/b;->c:Landroid/widget/TextView;

    sget v1, Lcom/tn/lib/widget/R$color;->text_03:I

    invoke-static {v1}, Lcom/blankj/utilcode/util/h;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    iget-object v0, p0, Lnw/b;->b:Landroid/widget/TextView;

    sget v1, Lcom/transsion/usercenter/R$string;->profile_female:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lnw/b;->c:Landroid/widget/TextView;

    sget v1, Lcom/transsion/usercenter/R$string;->profile_male:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lnw/b;->d:Landroid/widget/TextView;

    sget v1, Lcom/transsion/usercenter/R$string;->profile_gender_other:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lnw/b;->f:Lcom/google/android/material/bottomsheet/c;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/usercenter/R$id;->tv_first:I

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lnw/b;->e:Lnw/b$a;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lnw/b;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lnw/b$a;->onDialogSelect(ILjava/lang/String;)V

    iget-object p1, p0, Lnw/b;->f:Lcom/google/android/material/bottomsheet/c;

    invoke-virtual {p1}, Landroidx/appcompat/app/w;->dismiss()V

    goto :goto_0

    :cond_0
    sget v0, Lcom/transsion/usercenter/R$id;->tv_second:I

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lnw/b;->e:Lnw/b$a;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lnw/b;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1, v1, v0}, Lnw/b$a;->onDialogSelect(ILjava/lang/String;)V

    iget-object p1, p0, Lnw/b;->f:Lcom/google/android/material/bottomsheet/c;

    invoke-virtual {p1}, Landroidx/appcompat/app/w;->dismiss()V

    goto :goto_0

    :cond_1
    sget v0, Lcom/transsion/usercenter/R$id;->tv_third:I

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lnw/b;->e:Lnw/b$a;

    iget-object v0, p0, Lnw/b;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {p1, v1, v0}, Lnw/b$a;->onDialogSelect(ILjava/lang/String;)V

    iget-object p1, p0, Lnw/b;->f:Lcom/google/android/material/bottomsheet/c;

    invoke-virtual {p1}, Landroidx/appcompat/app/w;->dismiss()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onLifecycleChanged(Landroidx/lifecycle/u;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0
    .annotation runtime Landroidx/lifecycle/d0;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_ANY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    return-void
.end method

.method public onPause(Landroidx/lifecycle/u;)V
    .locals 0
    .annotation runtime Landroidx/lifecycle/d0;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnw/b;->h:Z

    return-void
.end method

.method public onResume(Landroidx/lifecycle/u;)V
    .locals 0
    .annotation runtime Landroidx/lifecycle/d0;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    const/4 p1, 0x1

    iput-boolean p1, p0, Lnw/b;->h:Z

    return-void
.end method
