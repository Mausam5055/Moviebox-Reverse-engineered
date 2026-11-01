.class public Lcom/bigkoo/pickerview/view/a;
.super Lcom/bigkoo/pickerview/view/BasePickerView;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private p:Lcom/bigkoo/pickerview/view/b;


# direct methods
.method public constructor <init>(Lp5/a;)V
    .locals 1

    iget-object v0, p1, Lp5/a;->C:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/bigkoo/pickerview/view/BasePickerView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->e:Lp5/a;

    iget-object p1, p1, Lp5/a;->C:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/bigkoo/pickerview/view/a;->y(Landroid/content/Context;)V

    return-void
.end method

.method private D()V
    .locals 3

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/a;->p:Lcom/bigkoo/pickerview/view/b;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->e:Lp5/a;

    iget-object v2, v1, Lp5/a;->h:Ljava/util/Calendar;

    iget-object v1, v1, Lp5/a;->i:Ljava/util/Calendar;

    invoke-virtual {v0, v2, v1}, Lcom/bigkoo/pickerview/view/b;->E(Ljava/util/Calendar;Ljava/util/Calendar;)V

    invoke-direct {p0}, Lcom/bigkoo/pickerview/view/a;->x()V

    return-void
.end method

.method private E()V
    .locals 2

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/a;->p:Lcom/bigkoo/pickerview/view/b;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->e:Lp5/a;

    iget v1, v1, Lp5/a;->j:I

    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/view/b;->H(I)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/a;->p:Lcom/bigkoo/pickerview/view/b;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->e:Lp5/a;

    iget v1, v1, Lp5/a;->k:I

    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/view/b;->x(I)V

    return-void
.end method

.method private F()V
    .locals 14

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->e:Lp5/a;

    iget-object v1, v1, Lp5/a;->g:Ljava/util/Calendar;

    const/16 v2, 0xd

    const/16 v3, 0xc

    const/16 v4, 0xb

    const/4 v5, 0x5

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-nez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    :goto_0
    move v13, v0

    move v8, v1

    move v12, v3

    move v11, v4

    move v10, v5

    move v9, v6

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->e:Lp5/a;

    iget-object v0, v0, Lp5/a;->g:Ljava/util/Calendar;

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->e:Lp5/a;

    iget-object v0, v0, Lp5/a;->g:Ljava/util/Calendar;

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->e:Lp5/a;

    iget-object v0, v0, Lp5/a;->g:Ljava/util/Calendar;

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->e:Lp5/a;

    iget-object v0, v0, Lp5/a;->g:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->e:Lp5/a;

    iget-object v0, v0, Lp5/a;->g:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    goto :goto_0

    :goto_1
    iget-object v7, p0, Lcom/bigkoo/pickerview/view/a;->p:Lcom/bigkoo/pickerview/view/b;

    invoke-virtual/range {v7 .. v13}, Lcom/bigkoo/pickerview/view/b;->D(IIIIII)V

    return-void
.end method

.method private x()V
    .locals 4

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->e:Lp5/a;

    iget-object v1, v0, Lp5/a;->h:Ljava/util/Calendar;

    if-eqz v1, :cond_1

    iget-object v2, v0, Lp5/a;->i:Ljava/util/Calendar;

    if-eqz v2, :cond_1

    iget-object v0, v0, Lp5/a;->g:Ljava/util/Calendar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->e:Lp5/a;

    iget-object v2, v2, Lp5/a;->h:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->e:Lp5/a;

    iget-object v0, v0, Lp5/a;->g:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->e:Lp5/a;

    iget-object v2, v2, Lp5/a;->i:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->e:Lp5/a;

    iget-object v1, v0, Lp5/a;->h:Ljava/util/Calendar;

    iput-object v1, v0, Lp5/a;->g:Ljava/util/Calendar;

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    iput-object v1, v0, Lp5/a;->g:Ljava/util/Calendar;

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lp5/a;->i:Ljava/util/Calendar;

    if-eqz v1, :cond_3

    iput-object v1, v0, Lp5/a;->g:Ljava/util/Calendar;

    :cond_3
    :goto_0
    return-void
.end method

.method private y(Landroid/content/Context;)V
    .locals 5

    invoke-virtual {p0}, Lcom/bigkoo/pickerview/view/BasePickerView;->s()V

    invoke-virtual {p0}, Lcom/bigkoo/pickerview/view/BasePickerView;->o()V

    invoke-virtual {p0}, Lcom/bigkoo/pickerview/view/BasePickerView;->n()V

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->e:Lp5/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/bigkoo/pickerview/R$layout;->pickerview_time:I

    iget-object v2, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    sget v0, Lcom/bigkoo/pickerview/R$id;->tvTitle:I

    invoke-virtual {p0, v0}, Lcom/bigkoo/pickerview/view/BasePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/bigkoo/pickerview/R$id;->btnSubmit:I

    invoke-virtual {p0, v1}, Lcom/bigkoo/pickerview/view/BasePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lcom/bigkoo/pickerview/R$id;->tv_ok:I

    invoke-virtual {p0, v2}, Lcom/bigkoo/pickerview/view/BasePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v3, Lcom/bigkoo/pickerview/R$id;->btnCancel:I

    invoke-virtual {p0, v3}, Lcom/bigkoo/pickerview/view/BasePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, "submit"

    invoke-virtual {v1, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const-string v4, "cancel"

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->e:Lp5/a;

    iget-object v2, v2, Lp5/a;->D:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/bigkoo/pickerview/R$string;->pickerview_submit:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->e:Lp5/a;

    iget-object v2, v2, Lp5/a;->D:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->e:Lp5/a;

    iget-object v1, v1, Lp5/a;->E:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/bigkoo/pickerview/R$string;->pickerview_cancel:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->e:Lp5/a;

    iget-object p1, p1, Lp5/a;->E:Ljava/lang/String;

    :goto_1
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->e:Lp5/a;

    iget-object p1, p1, Lp5/a;->F:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, ""

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->e:Lp5/a;

    iget-object p1, p1, Lp5/a;->F:Ljava/lang/String;

    :goto_2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->e:Lp5/a;

    iget p1, p1, Lp5/a;->I:I

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->e:Lp5/a;

    iget p1, p1, Lp5/a;->M:I

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    sget p1, Lcom/bigkoo/pickerview/R$id;->timepicker:I

    invoke-virtual {p0, p1}, Lcom/bigkoo/pickerview/view/BasePickerView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-direct {p0, p1}, Lcom/bigkoo/pickerview/view/a;->z(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method private z(Landroid/widget/LinearLayout;)V
    .locals 17

    move-object/from16 v0, p0

    new-instance v1, Lcom/bigkoo/pickerview/view/b;

    iget-object v2, v0, Lcom/bigkoo/pickerview/view/BasePickerView;->e:Lp5/a;

    iget-object v3, v2, Lp5/a;->f:[Z

    iget v4, v2, Lp5/a;->B:I

    iget v2, v2, Lp5/a;->N:I

    move-object/from16 v5, p1

    invoke-direct {v1, v5, v3, v4, v2}, Lcom/bigkoo/pickerview/view/b;-><init>(Landroid/view/View;[ZII)V

    iput-object v1, v0, Lcom/bigkoo/pickerview/view/a;->p:Lcom/bigkoo/pickerview/view/b;

    iget-object v1, v0, Lcom/bigkoo/pickerview/view/BasePickerView;->e:Lp5/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/bigkoo/pickerview/view/a;->p:Lcom/bigkoo/pickerview/view/b;

    iget-object v2, v0, Lcom/bigkoo/pickerview/view/BasePickerView;->e:Lp5/a;

    iget-boolean v2, v2, Lp5/a;->m:Z

    invoke-virtual {v1, v2}, Lcom/bigkoo/pickerview/view/b;->C(Z)V

    iget-object v1, v0, Lcom/bigkoo/pickerview/view/BasePickerView;->e:Lp5/a;

    iget v2, v1, Lp5/a;->j:I

    if-eqz v2, :cond_0

    iget v1, v1, Lp5/a;->k:I

    if-eqz v1, :cond_0

    if-gt v2, v1, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/bigkoo/pickerview/view/a;->E()V

    :cond_0
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/BasePickerView;->e:Lp5/a;

    iget-object v2, v1, Lp5/a;->h:Ljava/util/Calendar;

    if-eqz v2, :cond_2

    iget-object v3, v1, Lp5/a;->i:Ljava/util/Calendar;

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    iget-object v3, v0, Lcom/bigkoo/pickerview/view/BasePickerView;->e:Lp5/a;

    iget-object v3, v3, Lp5/a;->i:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gtz v1, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/bigkoo/pickerview/view/a;->D()V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "startDate can\'t be later than endDate"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    const/4 v3, 0x1

    if-eqz v2, :cond_4

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0x76c

    if-lt v1, v2, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/bigkoo/pickerview/view/a;->D()V

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The startDate can not as early as 1900"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    iget-object v1, v1, Lp5/a;->i:Ljava/util/Calendar;

    if-eqz v1, :cond_6

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0x834

    if-gt v1, v2, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/bigkoo/pickerview/view/a;->D()V

    goto :goto_0

    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The endDate should not be later than 2100"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/bigkoo/pickerview/view/a;->D()V

    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/bigkoo/pickerview/view/a;->F()V

    iget-object v3, v0, Lcom/bigkoo/pickerview/view/a;->p:Lcom/bigkoo/pickerview/view/b;

    iget-object v1, v0, Lcom/bigkoo/pickerview/view/BasePickerView;->e:Lp5/a;

    iget-object v4, v1, Lp5/a;->n:Ljava/lang/String;

    iget-object v5, v1, Lp5/a;->o:Ljava/lang/String;

    iget-object v6, v1, Lp5/a;->p:Ljava/lang/String;

    iget-object v7, v1, Lp5/a;->q:Ljava/lang/String;

    iget-object v8, v1, Lp5/a;->r:Ljava/lang/String;

    iget-object v9, v1, Lp5/a;->s:Ljava/lang/String;

    invoke-virtual/range {v3 .. v9}, Lcom/bigkoo/pickerview/view/b;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, v0, Lcom/bigkoo/pickerview/view/a;->p:Lcom/bigkoo/pickerview/view/b;

    iget-object v1, v0, Lcom/bigkoo/pickerview/view/BasePickerView;->e:Lp5/a;

    iget v11, v1, Lp5/a;->t:I

    iget v12, v1, Lp5/a;->u:I

    iget v13, v1, Lp5/a;->v:I

    iget v14, v1, Lp5/a;->w:I

    iget v15, v1, Lp5/a;->x:I

    iget v1, v1, Lp5/a;->y:I

    move/from16 v16, v1

    invoke-virtual/range {v10 .. v16}, Lcom/bigkoo/pickerview/view/b;->M(IIIIII)V

    iget-object v1, v0, Lcom/bigkoo/pickerview/view/BasePickerView;->e:Lp5/a;

    iget-boolean v1, v1, Lp5/a;->U:Z

    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/view/BasePickerView;->u(Z)Lcom/bigkoo/pickerview/view/BasePickerView;

    iget-object v1, v0, Lcom/bigkoo/pickerview/view/a;->p:Lcom/bigkoo/pickerview/view/b;

    iget-object v2, v0, Lcom/bigkoo/pickerview/view/BasePickerView;->e:Lp5/a;

    iget-boolean v2, v2, Lp5/a;->l:Z

    invoke-virtual {v1, v2}, Lcom/bigkoo/pickerview/view/b;->s(Z)V

    iget-object v1, v0, Lcom/bigkoo/pickerview/view/a;->p:Lcom/bigkoo/pickerview/view/b;

    iget-object v2, v0, Lcom/bigkoo/pickerview/view/BasePickerView;->e:Lp5/a;

    iget v2, v2, Lp5/a;->Q:I

    invoke-virtual {v1, v2}, Lcom/bigkoo/pickerview/view/b;->u(I)V

    iget-object v1, v0, Lcom/bigkoo/pickerview/view/a;->p:Lcom/bigkoo/pickerview/view/b;

    iget-object v2, v0, Lcom/bigkoo/pickerview/view/BasePickerView;->e:Lp5/a;

    iget-object v2, v2, Lp5/a;->X:Lcom/contrarywind/view/WheelView$DividerType;

    invoke-virtual {v1, v2}, Lcom/bigkoo/pickerview/view/b;->w(Lcom/contrarywind/view/WheelView$DividerType;)V

    iget-object v1, v0, Lcom/bigkoo/pickerview/view/a;->p:Lcom/bigkoo/pickerview/view/b;

    iget-object v2, v0, Lcom/bigkoo/pickerview/view/BasePickerView;->e:Lp5/a;

    iget v2, v2, Lp5/a;->S:F

    invoke-virtual {v1, v2}, Lcom/bigkoo/pickerview/view/b;->A(F)V

    iget-object v1, v0, Lcom/bigkoo/pickerview/view/a;->p:Lcom/bigkoo/pickerview/view/b;

    iget-object v2, v0, Lcom/bigkoo/pickerview/view/BasePickerView;->e:Lp5/a;

    iget v2, v2, Lp5/a;->O:I

    invoke-virtual {v1, v2}, Lcom/bigkoo/pickerview/view/b;->L(I)V

    iget-object v1, v0, Lcom/bigkoo/pickerview/view/a;->p:Lcom/bigkoo/pickerview/view/b;

    iget-object v2, v0, Lcom/bigkoo/pickerview/view/BasePickerView;->e:Lp5/a;

    iget v2, v2, Lp5/a;->P:I

    invoke-virtual {v1, v2}, Lcom/bigkoo/pickerview/view/b;->J(I)V

    iget-object v1, v0, Lcom/bigkoo/pickerview/view/a;->p:Lcom/bigkoo/pickerview/view/b;

    iget-object v2, v0, Lcom/bigkoo/pickerview/view/BasePickerView;->e:Lp5/a;

    iget-boolean v2, v2, Lp5/a;->V:Z

    invoke-virtual {v1, v2}, Lcom/bigkoo/pickerview/view/b;->p(Z)V

    return-void
.end method


# virtual methods
.method public A()V
    .locals 3

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->e:Lp5/a;

    iget-object v0, v0, Lp5/a;->a:Lq5/c;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/bigkoo/pickerview/view/b;->y:Ljava/text/DateFormat;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/a;->p:Lcom/bigkoo/pickerview/view/b;

    invoke-virtual {v1}, Lcom/bigkoo/pickerview/view/b;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->e:Lp5/a;

    iget-object v1, v1, Lp5/a;->a:Lq5/c;

    iget-object v2, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->l:Landroid/view/View;

    invoke-interface {v1, v0, v2}, Lq5/c;->a(Ljava/util/Date;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public B(Ljava/util/Calendar;)V
    .locals 1

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->e:Lp5/a;

    iput-object p1, v0, Lp5/a;->g:Ljava/util/Calendar;

    invoke-direct {p0}, Lcom/bigkoo/pickerview/view/a;->F()V

    return-void
.end method

.method public C()V
    .locals 3

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->e:Lp5/a;

    iget-object v0, v0, Lp5/a;->a:Lq5/c;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->l:Landroid/view/View;

    invoke-interface {v0, v1, v2}, Lq5/c;->a(Ljava/util/Date;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "submit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/bigkoo/pickerview/view/a;->A()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/bigkoo/pickerview/view/a;->C()V

    :goto_0
    invoke-virtual {p0}, Lcom/bigkoo/pickerview/view/BasePickerView;->f()V

    return-void
.end method

.method public p()Z
    .locals 1

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->e:Lp5/a;

    iget-boolean v0, v0, Lp5/a;->T:Z

    return v0
.end method
