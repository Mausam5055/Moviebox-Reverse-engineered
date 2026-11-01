.class public Landroidx/constraintlayout/motion/widget/p;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/widget/p$b;
    }
.end annotation


# instance fields
.field private final a:Landroidx/constraintlayout/motion/widget/MotionLayout;

.field b:Landroidx/constraintlayout/widget/e;

.field c:Landroidx/constraintlayout/motion/widget/p$b;

.field private d:Z

.field private e:Ljava/util/ArrayList;

.field private f:Landroidx/constraintlayout/motion/widget/p$b;

.field private g:Ljava/util/ArrayList;

.field private h:Landroid/util/SparseArray;

.field private i:Ljava/util/HashMap;

.field private j:Landroid/util/SparseIntArray;

.field private k:Z

.field private l:I

.field private m:I

.field private n:Landroid/view/MotionEvent;

.field private o:Z

.field private p:Z

.field private q:Landroidx/constraintlayout/motion/widget/MotionLayout$e;

.field private r:Z

.field final s:Landroidx/constraintlayout/motion/widget/t;

.field t:F

.field u:F


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/constraintlayout/motion/widget/MotionLayout;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->b:Landroidx/constraintlayout/widget/e;

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$b;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/p;->d:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/p;->e:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->f:Landroidx/constraintlayout/motion/widget/p$b;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->g:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->h:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->i:Ljava/util/HashMap;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->j:Landroid/util/SparseIntArray;

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/p;->k:Z

    const/16 v0, 0x190

    iput v0, p0, Landroidx/constraintlayout/motion/widget/p;->l:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/p;->m:I

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/p;->o:Z

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/p;->p:Z

    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/p;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    new-instance v0, Landroidx/constraintlayout/motion/widget/t;

    invoke-direct {v0, p2}, Landroidx/constraintlayout/motion/widget/t;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->s:Landroidx/constraintlayout/motion/widget/t;

    invoke-direct {p0, p1, p3}, Landroidx/constraintlayout/motion/widget/p;->M(Landroid/content/Context;I)V

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/p;->h:Landroid/util/SparseArray;

    sget p2, Landroidx/constraintlayout/widget/R$id;->motion_base:I

    new-instance p3, Landroidx/constraintlayout/widget/b;

    invoke-direct {p3}, Landroidx/constraintlayout/widget/b;-><init>()V

    invoke-virtual {p1, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/p;->i:Ljava/util/HashMap;

    sget p2, Landroidx/constraintlayout/widget/R$id;->motion_base:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "motion_base"

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private J(I)Z
    .locals 4

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->j:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/p;->j:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    :goto_0
    if-lez v0, :cond_2

    const/4 v2, 0x1

    if-ne v0, p1, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v1, -0x1

    if-gez v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/p;->j:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    move v1, v3

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private K()Z
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->q:Landroidx/constraintlayout/motion/widget/MotionLayout$e;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private M(Landroid/content/Context;I)V
    .locals 8

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-eq v1, v3, :cond_8

    if-eqz v1, :cond_6

    const/4 v4, 0x2

    if-eq v1, v4, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    iget-boolean v5, p0, Landroidx/constraintlayout/motion/widget/p;->k:Z

    if-eqz v5, :cond_1

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parsing = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto/16 :goto_6

    :catch_1
    move-exception p1

    goto/16 :goto_7

    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "MotionScene"

    const/4 v7, -0x1

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    :try_start_1
    const-string v3, "include"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v3, 0x6

    goto :goto_3

    :sswitch_1
    const-string v3, "StateSet"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v3, 0x4

    goto :goto_3

    :sswitch_2
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v3, 0x0

    goto :goto_3

    :sswitch_3
    const-string v3, "OnSwipe"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v3, v4

    goto :goto_3

    :sswitch_4
    const-string v3, "OnClick"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v3, 0x3

    goto :goto_3

    :sswitch_5
    const-string v4, "Transition"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_3

    :sswitch_6
    const-string v3, "ViewTransition"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v3, 0x9

    goto :goto_3

    :sswitch_7
    const-string v3, "Include"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v3, 0x7

    goto :goto_3

    :sswitch_8
    const-string v3, "KeyFrameSet"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v3, 0x8

    goto :goto_3

    :sswitch_9
    const-string v3, "ConstraintSet"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v3, 0x5

    goto :goto_3

    :cond_2
    :goto_2
    move v3, v7

    :goto_3
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    new-instance v1, Landroidx/constraintlayout/motion/widget/s;

    invoke-direct {v1, p1, v0}, Landroidx/constraintlayout/motion/widget/s;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/p;->s:Landroidx/constraintlayout/motion/widget/t;

    invoke-virtual {v3, v1}, Landroidx/constraintlayout/motion/widget/t;->a(Landroidx/constraintlayout/motion/widget/s;)V

    goto/16 :goto_5

    :pswitch_1
    new-instance v1, Landroidx/constraintlayout/motion/widget/g;

    invoke-direct {v1, p1, v0}, Landroidx/constraintlayout/motion/widget/g;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    if-eqz v2, :cond_7

    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/p$b;->f(Landroidx/constraintlayout/motion/widget/p$b;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_2
    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/motion/widget/p;->P(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_5

    :pswitch_3
    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/motion/widget/p;->N(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)I

    goto/16 :goto_5

    :pswitch_4
    new-instance v1, Landroidx/constraintlayout/widget/e;

    invoke-direct {v1, p1, v0}, Landroidx/constraintlayout/widget/e;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/p;->b:Landroidx/constraintlayout/widget/e;

    goto/16 :goto_5

    :pswitch_5
    if-eqz v2, :cond_7

    invoke-virtual {v2, p1, v0}, Landroidx/constraintlayout/motion/widget/p$b;->u(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_5

    :pswitch_6
    if-nez v2, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " OnSwipe ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".xml:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz v2, :cond_7

    new-instance v1, Landroidx/constraintlayout/motion/widget/q;

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/p;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-direct {v1, p1, v3, v0}, Landroidx/constraintlayout/motion/widget/q;-><init>(Landroid/content/Context;Landroidx/constraintlayout/motion/widget/MotionLayout;Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-static {v2, v1}, Landroidx/constraintlayout/motion/widget/p$b;->n(Landroidx/constraintlayout/motion/widget/p$b;Landroidx/constraintlayout/motion/widget/q;)Landroidx/constraintlayout/motion/widget/q;

    goto :goto_5

    :pswitch_7
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/p;->e:Ljava/util/ArrayList;

    new-instance v2, Landroidx/constraintlayout/motion/widget/p$b;

    invoke-direct {v2, p0, p1, v0}, Landroidx/constraintlayout/motion/widget/p$b;-><init>(Landroidx/constraintlayout/motion/widget/p;Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$b;

    if-nez v1, :cond_4

    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/p$b;->e(Landroidx/constraintlayout/motion/widget/p$b;)Z

    move-result v1

    if-nez v1, :cond_4

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$b;

    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/p$b;->l(Landroidx/constraintlayout/motion/widget/p$b;)Landroidx/constraintlayout/motion/widget/q;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$b;

    invoke-static {v1}, Landroidx/constraintlayout/motion/widget/p$b;->l(Landroidx/constraintlayout/motion/widget/p$b;)Landroidx/constraintlayout/motion/widget/q;

    move-result-object v1

    iget-boolean v3, p0, Landroidx/constraintlayout/motion/widget/p;->r:Z

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/motion/widget/q;->x(Z)V

    :cond_4
    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/p$b;->e(Landroidx/constraintlayout/motion/widget/p$b;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/p$b;->a(Landroidx/constraintlayout/motion/widget/p$b;)I

    move-result v1

    if-ne v1, v7, :cond_5

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/p;->f:Landroidx/constraintlayout/motion/widget/p$b;

    goto :goto_4

    :cond_5
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/p;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/p;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    :pswitch_8
    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/motion/widget/p;->Q(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_5

    :cond_6
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    :cond_7
    :goto_5
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :goto_6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8

    :goto_7
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :cond_8
    :goto_8
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x50764adb -> :sswitch_9
        -0x49df9cec -> :sswitch_8
        -0x28fe1378 -> :sswitch_7
        0x3b205fa -> :sswitch_6
        0x100d4975 -> :sswitch_5
        0x12a432c9 -> :sswitch_4
        0x138aac7b -> :sswitch_3
        0x2f487256 -> :sswitch_2
        0x526c4e31 -> :sswitch_1
        0x73c954a8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private N(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v4, 0x3

    const/4 v6, 0x1

    new-instance v7, Landroidx/constraintlayout/widget/b;

    invoke-direct {v7}, Landroidx/constraintlayout/widget/b;-><init>()V

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/widget/b;->V(Z)V

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v9

    move v11, v8

    const/4 v12, -0x1

    const/4 v13, -0x1

    :goto_0
    if-ge v11, v9, :cond_9

    invoke-interface {v2, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v2, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v15

    iget-boolean v10, v0, Landroidx/constraintlayout/motion/widget/p;->k:Z

    if-eqz v10, :cond_0

    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "id string = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :goto_1
    const/4 v3, -0x1

    goto :goto_2

    :sswitch_0
    const-string v3, "id"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    goto :goto_2

    :sswitch_1
    const-string v3, "constraintRotate"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    move v3, v6

    goto :goto_2

    :sswitch_2
    const-string v3, "deriveConstraintsFrom"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    move v3, v8

    :goto_2
    packed-switch v3, :pswitch_data_0

    :goto_3
    goto :goto_4

    :pswitch_0
    invoke-direct {v0, v1, v15}, Landroidx/constraintlayout/motion/widget/p;->s(Landroid/content/Context;Ljava/lang/String;)I

    move-result v12

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/p;->i:Ljava/util/HashMap;

    invoke-static {v15}, Landroidx/constraintlayout/motion/widget/p;->c0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v12}, Landroidx/constraintlayout/motion/widget/a;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v7, Landroidx/constraintlayout/widget/b;->b:Ljava/lang/String;

    :goto_4
    const/4 v3, 0x2

    :goto_5
    const/4 v5, 0x4

    goto/16 :goto_8

    :pswitch_1
    :try_start_0
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v7, Landroidx/constraintlayout/widget/b;->d:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_1

    :goto_6
    const/4 v3, -0x1

    goto :goto_7

    :sswitch_3
    const-string v3, "x_right"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_6

    :cond_4
    const/4 v3, 0x4

    goto :goto_7

    :sswitch_4
    const-string v3, "right"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_6

    :cond_5
    move v3, v4

    goto :goto_7

    :sswitch_5
    const-string v3, "none"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_6

    :cond_6
    const/4 v3, 0x2

    goto :goto_7

    :sswitch_6
    const-string v3, "left"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_6

    :cond_7
    move v3, v6

    goto :goto_7

    :sswitch_7
    const-string v3, "x_left"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_6

    :cond_8
    move v3, v8

    :goto_7
    packed-switch v3, :pswitch_data_1

    goto :goto_3

    :pswitch_2
    iput v4, v7, Landroidx/constraintlayout/widget/b;->d:I

    goto :goto_4

    :pswitch_3
    iput v6, v7, Landroidx/constraintlayout/widget/b;->d:I

    goto :goto_4

    :pswitch_4
    iput v8, v7, Landroidx/constraintlayout/widget/b;->d:I

    goto :goto_4

    :pswitch_5
    const/4 v3, 0x2

    iput v3, v7, Landroidx/constraintlayout/widget/b;->d:I

    goto :goto_5

    :pswitch_6
    const/4 v3, 0x2

    const/4 v5, 0x4

    iput v5, v7, Landroidx/constraintlayout/widget/b;->d:I

    goto :goto_8

    :pswitch_7
    const/4 v3, 0x2

    const/4 v5, 0x4

    invoke-direct {v0, v1, v15}, Landroidx/constraintlayout/motion/widget/p;->s(Landroid/content/Context;Ljava/lang/String;)I

    move-result v13

    :goto_8
    add-int/2addr v11, v6

    goto/16 :goto_0

    :cond_9
    const/4 v10, -0x1

    if-eq v12, v10, :cond_c

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/p;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    if-eqz v3, :cond_a

    invoke-virtual {v7, v6}, Landroidx/constraintlayout/widget/b;->Y(Z)V

    :cond_a
    invoke-virtual {v7, v1, v2}, Landroidx/constraintlayout/widget/b;->I(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    if-eq v13, v10, :cond_b

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/p;->j:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    :cond_b
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/p;->h:Landroid/util/SparseArray;

    invoke-virtual {v1, v12, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_c
    return v12

    nop

    :sswitch_data_0
    .sparse-switch
        -0x59328327 -> :sswitch_2
        -0x44bbba68 -> :sswitch_1
        0xd1b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x2dcd1c92 -> :sswitch_7
        0x32a007 -> :sswitch_6
        0x33af38 -> :sswitch_5
        0x677c21c -> :sswitch_4
        0x747feb95 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private O(Landroid/content/Context;I)I
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p2

    :try_start_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    if-ne v2, v0, :cond_0

    const-string v0, "ConstraintSet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/p;->N(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)I

    move-result p1

    return p1

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :cond_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :goto_2
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :cond_1
    :goto_3
    const/4 p1, -0x1

    return p1
.end method

.method private P(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4

    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p2

    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->include:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    sget v3, Landroidx/constraintlayout/widget/R$styleable;->include_constraintSet:I

    if-ne v2, v3, :cond_0

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-direct {p0, p1, v2}, Landroidx/constraintlayout/motion/widget/p;->O(Landroid/content/Context;I)I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private Q(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4

    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p2

    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->MotionScene:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_2

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    sget v3, Landroidx/constraintlayout/widget/R$styleable;->MotionScene_defaultDuration:I

    if-ne v2, v3, :cond_0

    iget v3, p0, Landroidx/constraintlayout/motion/widget/p;->l:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/motion/widget/p;->l:I

    const/16 v3, 0x8

    if-ge v2, v3, :cond_1

    iput v3, p0, Landroidx/constraintlayout/motion/widget/p;->l:I

    goto :goto_1

    :cond_0
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->MotionScene_layoutDuringTransition:I

    if-ne v2, v3, :cond_1

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/motion/widget/p;->m:I

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private U(ILandroidx/constraintlayout/motion/widget/MotionLayout;)V
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->h:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/b;

    iget-object v1, v0, Landroidx/constraintlayout/widget/b;->b:Ljava/lang/String;

    iput-object v1, v0, Landroidx/constraintlayout/widget/b;->c:Ljava/lang/String;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/p;->j:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    if-lez p1, :cond_1

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/p;->U(ILandroidx/constraintlayout/motion/widget/MotionLayout;)V

    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/p;->h:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/constraintlayout/widget/b;

    if-nez p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ERROR! invalid deriveConstraintsFrom: @id/"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/constraintlayout/motion/widget/a;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MotionScene"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v0, Landroidx/constraintlayout/widget/b;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Landroidx/constraintlayout/widget/b;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroidx/constraintlayout/widget/b;->c:Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroidx/constraintlayout/widget/b;->Q(Landroidx/constraintlayout/widget/b;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v0, Landroidx/constraintlayout/widget/b;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  layout"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroidx/constraintlayout/widget/b;->c:Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroidx/constraintlayout/widget/b;->P(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :goto_0
    invoke-virtual {v0, v0}, Landroidx/constraintlayout/widget/b;->h(Landroidx/constraintlayout/widget/b;)V

    return-void
.end method

.method static synthetic a(Landroidx/constraintlayout/motion/widget/p;)I
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/motion/widget/p;->m:I

    return p0
.end method

.method static synthetic b(Landroidx/constraintlayout/motion/widget/p;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/p;->h:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic c(Landroidx/constraintlayout/motion/widget/p;Landroid/content/Context;I)I
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/p;->O(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static c0(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Landroidx/constraintlayout/motion/widget/p;)Landroidx/constraintlayout/motion/widget/MotionLayout;
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/p;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    return-object p0
.end method

.method static synthetic e(Landroidx/constraintlayout/motion/widget/p;)I
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/motion/widget/p;->l:I

    return p0
.end method

.method private s(Landroid/content/Context;Ljava/lang/String;)I
    .locals 5

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    const/16 v0, 0x2f

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v0, v4, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/p;->k:Z

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id getMap res = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move p1, v2

    :cond_1
    :goto_0
    if-ne p1, v2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_2

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_1

    :cond_2
    const-string p2, "MotionScene"

    const-string v0, "error in parsing id"

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return p1
.end method

.method private z(I)I
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->b:Landroidx/constraintlayout/widget/e;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1, v1}, Landroidx/constraintlayout/widget/e;->c(III)I

    move-result v0

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    return p1
.end method


# virtual methods
.method A()I
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$b;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/p$b;->l(Landroidx/constraintlayout/motion/widget/p$b;)Landroidx/constraintlayout/motion/widget/q;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$b;

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/p$b;->l(Landroidx/constraintlayout/motion/widget/p$b;)Landroidx/constraintlayout/motion/widget/q;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/q;->k()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method B()F
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$b;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/p$b;->l(Landroidx/constraintlayout/motion/widget/p$b;)Landroidx/constraintlayout/motion/widget/q;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$b;

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/p$b;->l(Landroidx/constraintlayout/motion/widget/p$b;)Landroidx/constraintlayout/motion/widget/q;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/q;->l()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method C()F
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$b;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/p$b;->l(Landroidx/constraintlayout/motion/widget/p$b;)Landroidx/constraintlayout/motion/widget/q;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$b;

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/p$b;->l(Landroidx/constraintlayout/motion/widget/p$b;)Landroidx/constraintlayout/motion/widget/q;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/q;->m()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method D()F
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$b;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/p$b;->l(Landroidx/constraintlayout/motion/widget/p$b;)Landroidx/constraintlayout/motion/widget/q;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$b;

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/p$b;->l(Landroidx/constraintlayout/motion/widget/p$b;)Landroidx/constraintlayout/motion/widget/q;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/q;->n()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method E()F
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$b;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/p$b;->l(Landroidx/constraintlayout/motion/widget/p$b;)Landroidx/constraintlayout/motion/widget/q;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$b;

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/p$b;->l(Landroidx/constraintlayout/motion/widget/p$b;)Landroidx/constraintlayout/motion/widget/q;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/q;->o()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public F()F
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$b;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/p$b;->m(Landroidx/constraintlayout/motion/widget/p$b;)F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method G()I
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$b;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/p$b;->c(Landroidx/constraintlayout/motion/widget/p$b;)I

    move-result v0

    return v0
.end method

.method public H(I)Landroidx/constraintlayout/motion/widget/p$b;
    .locals 3

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/p$b;

    invoke-static {v1}, Landroidx/constraintlayout/motion/widget/p$b;->o(Landroidx/constraintlayout/motion/widget/p$b;)I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public I(I)Ljava/util/List;
    .locals 4

    invoke-direct {p0, p1}, Landroidx/constraintlayout/motion/widget/p;->z(I)I

    move-result p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/p;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/p$b;

    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/p$b;->c(Landroidx/constraintlayout/motion/widget/p$b;)I

    move-result v3

    if-eq v3, p1, :cond_1

    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/p$b;->a(Landroidx/constraintlayout/motion/widget/p$b;)I

    move-result v3

    if-ne v3, p1, :cond_0

    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public L(I)Z
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->s:Landroidx/constraintlayout/motion/widget/t;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/t;->g(I)Z

    move-result p1

    return p1
.end method

.method R(FF)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$b;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/p$b;->l(Landroidx/constraintlayout/motion/widget/p$b;)Landroidx/constraintlayout/motion/widget/q;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$b;

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/p$b;->l(Landroidx/constraintlayout/motion/widget/p$b;)Landroidx/constraintlayout/motion/widget/q;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/motion/widget/q;->u(FF)V

    :cond_0
    return-void
.end method

.method S(FF)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$b;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/p$b;->l(Landroidx/constraintlayout/motion/widget/p$b;)Landroidx/constraintlayout/motion/widget/q;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$b;

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/p$b;->l(Landroidx/constraintlayout/motion/widget/p$b;)Landroidx/constraintlayout/motion/widget/q;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/motion/widget/q;->v(FF)V

    :cond_0
    return-void
.end method

.method T(Landroid/view/MotionEvent;ILandroidx/constraintlayout/motion/widget/MotionLayout;)V
    .locals 11

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/p;->q:Landroidx/constraintlayout/motion/widget/MotionLayout$e;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/p;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->U()Landroidx/constraintlayout/motion/widget/MotionLayout$e;

    move-result-object v1

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/p;->q:Landroidx/constraintlayout/motion/widget/MotionLayout$e;

    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/p;->q:Landroidx/constraintlayout/motion/widget/MotionLayout$e;

    invoke-interface {v1, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a(Landroid/view/MotionEvent;)V

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq p2, v2, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_7

    const/4 v6, 0x2

    if-eq v4, v6, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-boolean v4, p0, Landroidx/constraintlayout/motion/widget/p;->o:Z

    if-eqz v4, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iget v6, p0, Landroidx/constraintlayout/motion/widget/p;->u:F

    sub-float/2addr v4, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    iget v7, p0, Landroidx/constraintlayout/motion/widget/p;->t:F

    sub-float/2addr v6, v7

    float-to-double v7, v6

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_3

    float-to-double v7, v4

    cmpl-double v7, v7, v9

    if-eqz v7, :cond_4

    :cond_3
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/p;->n:Landroid/view/MotionEvent;

    if-nez v7, :cond_5

    :cond_4
    return-void

    :cond_5
    invoke-virtual {p0, p2, v6, v4, v7}, Landroidx/constraintlayout/motion/widget/p;->i(IFFLandroid/view/MotionEvent;)Landroidx/constraintlayout/motion/widget/p$b;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {p3, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Landroidx/constraintlayout/motion/widget/p$b;)V

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$b;

    invoke-static {v4}, Landroidx/constraintlayout/motion/widget/p$b;->l(Landroidx/constraintlayout/motion/widget/p$b;)Landroidx/constraintlayout/motion/widget/q;

    move-result-object v4

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/p;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v4, v6, v0}, Landroidx/constraintlayout/motion/widget/q;->p(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/p;->n:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/p;->n:Landroid/view/MotionEvent;

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v0, v4, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_6

    move v5, v3

    :cond_6
    iput-boolean v5, p0, Landroidx/constraintlayout/motion/widget/p;->p:Z

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$b;

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/p$b;->l(Landroidx/constraintlayout/motion/widget/p$b;)Landroidx/constraintlayout/motion/widget/q;

    move-result-object v0

    iget v4, p0, Landroidx/constraintlayout/motion/widget/p;->t:F

    iget v5, p0, Landroidx/constraintlayout/motion/widget/p;->u:F

    invoke-virtual {v0, v4, v5}, Landroidx/constraintlayout/motion/widget/q;->z(FF)V

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p2

    iput p2, p0, Landroidx/constraintlayout/motion/widget/p;->t:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iput p2, p0, Landroidx/constraintlayout/motion/widget/p;->u:F

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/p;->n:Landroid/view/MotionEvent;

    iput-boolean v5, p0, Landroidx/constraintlayout/motion/widget/p;->o:Z

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$b;

    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/p$b;->l(Landroidx/constraintlayout/motion/widget/p$b;)Landroidx/constraintlayout/motion/widget/q;

    move-result-object p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$b;

    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/p$b;->l(Landroidx/constraintlayout/motion/widget/p$b;)Landroidx/constraintlayout/motion/widget/q;

    move-result-object p1

    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/p;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {p1, p2, v0}, Landroidx/constraintlayout/motion/widget/q;->f(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/p;->n:Landroid/view/MotionEvent;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    iget-object p3, p0, Landroidx/constraintlayout/motion/widget/p;->n:Landroid/view/MotionEvent;

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-nez p1, :cond_8

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/p;->n:Landroid/view/MotionEvent;

    iput-boolean v3, p0, Landroidx/constraintlayout/motion/widget/p;->o:Z

    return-void

    :cond_8
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$b;

    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/p$b;->l(Landroidx/constraintlayout/motion/widget/p$b;)Landroidx/constraintlayout/motion/widget/q;

    move-result-object p1

    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/p;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {p1, p2, v0}, Landroidx/constraintlayout/motion/widget/q;->p(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/p;->n:Landroid/view/MotionEvent;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    iget-object p3, p0, Landroidx/constraintlayout/motion/widget/p;->n:Landroid/view/MotionEvent;

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-nez p1, :cond_9

    iput-boolean v3, p0, Landroidx/constraintlayout/motion/widget/p;->p:Z

    goto :goto_0

    :cond_9
    iput-boolean v5, p0, Landroidx/constraintlayout/motion/widget/p;->p:Z

    :goto_0
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$b;

    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/p$b;->l(Landroidx/constraintlayout/motion/widget/p$b;)Landroidx/constraintlayout/motion/widget/q;

    move-result-object p1

    iget p2, p0, Landroidx/constraintlayout/motion/widget/p;->t:F

    iget p3, p0, Landroidx/constraintlayout/motion/widget/p;->u:F

    invoke-virtual {p1, p2, p3}, Landroidx/constraintlayout/motion/widget/q;->w(FF)V

    :cond_a
    return-void

    :cond_b
    :goto_1
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/p;->o:Z

    if-eqz v0, :cond_c

    return-void

    :cond_c
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$b;

    if-eqz v0, :cond_d

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/p$b;->l(Landroidx/constraintlayout/motion/widget/p$b;)Landroidx/constraintlayout/motion/widget/q;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/p;->p:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$b;

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/p$b;->l(Landroidx/constraintlayout/motion/widget/p$b;)Landroidx/constraintlayout/motion/widget/q;

    move-result-object v0

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/p;->q:Landroidx/constraintlayout/motion/widget/MotionLayout$e;

    invoke-virtual {v0, p1, v4, p2, p0}, Landroidx/constraintlayout/motion/widget/q;->s(Landroid/view/MotionEvent;Landroidx/constraintlayout/motion/widget/MotionLayout$e;ILandroidx/constraintlayout/motion/widget/p;)V

    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p2

    iput p2, p0, Landroidx/constraintlayout/motion/widget/p;->t:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iput p2, p0, Landroidx/constraintlayout/motion/widget/p;->u:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v3, :cond_e

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/p;->q:Landroidx/constraintlayout/motion/widget/MotionLayout$e;

    if-eqz p1, :cond_e

    invoke-interface {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->recycle()V

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/p;->q:Landroidx/constraintlayout/motion/widget/MotionLayout$e;

    iget p1, p3, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    if-eq p1, v2, :cond_e

    invoke-virtual {p0, p3, p1}, Landroidx/constraintlayout/motion/widget/p;->h(Landroidx/constraintlayout/motion/widget/MotionLayout;I)Z

    :cond_e
    return-void
.end method

.method V(Landroidx/constraintlayout/motion/widget/MotionLayout;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/p;->h:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/p;->h:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-direct {p0, v1}, Landroidx/constraintlayout/motion/widget/p;->J(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p1, "MotionScene"

    const-string v0, "Cannot be derived from yourself"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0, v1, p1}, Landroidx/constraintlayout/motion/widget/p;->U(ILandroidx/constraintlayout/motion/widget/MotionLayout;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public W(ILandroidx/constraintlayout/widget/b;)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->h:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public X(I)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/p$b;->E(I)V

    goto :goto_0

    :cond_0
    iput p1, p0, Landroidx/constraintlayout/motion/widget/p;->l:I

    :goto_0
    return-void
.end method

.method public Y(Z)V
    .locals 1

    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/p;->r:Z

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$b;

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/p$b;->l(Landroidx/constraintlayout/motion/widget/p$b;)Landroidx/constraintlayout/motion/widget/q;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$b;

    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/p$b;->l(Landroidx/constraintlayout/motion/widget/p$b;)Landroidx/constraintlayout/motion/widget/q;

    move-result-object p1

    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/p;->r:Z

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/q;->x(Z)V

    :cond_0
    return-void
.end method

.method Z(II)V
    .locals 6

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->b:Landroidx/constraintlayout/widget/e;

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, v1, v1}, Landroidx/constraintlayout/widget/e;->c(III)I

    move-result v0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/p;->b:Landroidx/constraintlayout/widget/e;

    invoke-virtual {v2, p2, v1, v1}, Landroidx/constraintlayout/widget/e;->c(III)I

    move-result v2

    if-eq v2, v1, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    move v2, p2

    goto :goto_2

    :cond_2
    move v0, p1

    goto :goto_1

    :goto_2
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$b;

    if-eqz v3, :cond_3

    invoke-static {v3}, Landroidx/constraintlayout/motion/widget/p$b;->a(Landroidx/constraintlayout/motion/widget/p$b;)I

    move-result v3

    if-ne v3, p2, :cond_3

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$b;

    invoke-static {v3}, Landroidx/constraintlayout/motion/widget/p$b;->c(Landroidx/constraintlayout/motion/widget/p$b;)I

    move-result v3

    if-ne v3, p1, :cond_3

    return-void

    :cond_3
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/p;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/motion/widget/p$b;

    invoke-static {v4}, Landroidx/constraintlayout/motion/widget/p$b;->a(Landroidx/constraintlayout/motion/widget/p$b;)I

    move-result v5

    if-ne v5, v2, :cond_5

    invoke-static {v4}, Landroidx/constraintlayout/motion/widget/p$b;->c(Landroidx/constraintlayout/motion/widget/p$b;)I

    move-result v5

    if-eq v5, v0, :cond_6

    :cond_5
    invoke-static {v4}, Landroidx/constraintlayout/motion/widget/p$b;->a(Landroidx/constraintlayout/motion/widget/p$b;)I

    move-result v5

    if-ne v5, p2, :cond_4

    invoke-static {v4}, Landroidx/constraintlayout/motion/widget/p$b;->c(Landroidx/constraintlayout/motion/widget/p$b;)I

    move-result v5

    if-ne v5, p1, :cond_4

    :cond_6
    iput-object v4, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$b;

    if-eqz v4, :cond_7

    invoke-static {v4}, Landroidx/constraintlayout/motion/widget/p$b;->l(Landroidx/constraintlayout/motion/widget/p$b;)Landroidx/constraintlayout/motion/widget/q;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$b;

    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/p$b;->l(Landroidx/constraintlayout/motion/widget/p$b;)Landroidx/constraintlayout/motion/widget/q;

    move-result-object p1

    iget-boolean p2, p0, Landroidx/constraintlayout/motion/widget/p;->r:Z

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/q;->x(Z)V

    :cond_7
    return-void

    :cond_8
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/p;->f:Landroidx/constraintlayout/motion/widget/p$b;

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/p;->g:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/motion/widget/p$b;

    invoke-static {v4}, Landroidx/constraintlayout/motion/widget/p$b;->a(Landroidx/constraintlayout/motion/widget/p$b;)I

    move-result v5

    if-ne v5, p2, :cond_9

    move-object p1, v4

    goto :goto_3

    :cond_a
    new-instance p2, Landroidx/constraintlayout/motion/widget/p$b;

    invoke-direct {p2, p0, p1}, Landroidx/constraintlayout/motion/widget/p$b;-><init>(Landroidx/constraintlayout/motion/widget/p;Landroidx/constraintlayout/motion/widget/p$b;)V

    invoke-static {p2, v0}, Landroidx/constraintlayout/motion/widget/p$b;->d(Landroidx/constraintlayout/motion/widget/p$b;I)I

    invoke-static {p2, v2}, Landroidx/constraintlayout/motion/widget/p$b;->b(Landroidx/constraintlayout/motion/widget/p$b;I)I

    if-eq v0, v1, :cond_b

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/p;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$b;

    return-void
.end method

.method public a0(Landroidx/constraintlayout/motion/widget/p$b;)V
    .locals 1

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$b;

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/p$b;->l(Landroidx/constraintlayout/motion/widget/p$b;)Landroidx/constraintlayout/motion/widget/q;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$b;

    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/p$b;->l(Landroidx/constraintlayout/motion/widget/p$b;)Landroidx/constraintlayout/motion/widget/q;

    move-result-object p1

    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/p;->r:Z

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/q;->x(Z)V

    :cond_0
    return-void
.end method

.method b0()V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$b;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/p$b;->l(Landroidx/constraintlayout/motion/widget/p$b;)Landroidx/constraintlayout/motion/widget/q;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$b;

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/p$b;->l(Landroidx/constraintlayout/motion/widget/p$b;)Landroidx/constraintlayout/motion/widget/q;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/q;->A()V

    :cond_0
    return-void
.end method

.method d0()Z
    .locals 3

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/p$b;

    invoke-static {v1}, Landroidx/constraintlayout/motion/widget/p$b;->l(Landroidx/constraintlayout/motion/widget/p$b;)Landroidx/constraintlayout/motion/widget/q;

    move-result-object v1

    if-eqz v1, :cond_0

    return v2

    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$b;

    if-eqz v0, :cond_2

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/p$b;->l(Landroidx/constraintlayout/motion/widget/p$b;)Landroidx/constraintlayout/motion/widget/q;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public varargs e0(I[Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->s:Landroidx/constraintlayout/motion/widget/t;

    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/motion/widget/t;->k(I[Landroid/view/View;)V

    return-void
.end method

.method public f(Landroidx/constraintlayout/motion/widget/MotionLayout;I)V
    .locals 4

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/p$b;

    invoke-static {v1}, Landroidx/constraintlayout/motion/widget/p$b;->p(Landroidx/constraintlayout/motion/widget/p$b;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-static {v1}, Landroidx/constraintlayout/motion/widget/p$b;->p(Landroidx/constraintlayout/motion/widget/p$b;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/p$b$a;

    invoke-virtual {v2, p1}, Landroidx/constraintlayout/motion/widget/p$b$a;->c(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/p$b;

    invoke-static {v1}, Landroidx/constraintlayout/motion/widget/p$b;->p(Landroidx/constraintlayout/motion/widget/p$b;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    invoke-static {v1}, Landroidx/constraintlayout/motion/widget/p$b;->p(Landroidx/constraintlayout/motion/widget/p$b;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/p$b$a;

    invoke-virtual {v2, p1}, Landroidx/constraintlayout/motion/widget/p$b$a;->c(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/p$b;

    invoke-static {v1}, Landroidx/constraintlayout/motion/widget/p$b;->p(Landroidx/constraintlayout/motion/widget/p$b;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    invoke-static {v1}, Landroidx/constraintlayout/motion/widget/p$b;->p(Landroidx/constraintlayout/motion/widget/p$b;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/motion/widget/p$b$a;

    invoke-virtual {v3, p1, p2, v1}, Landroidx/constraintlayout/motion/widget/p$b$a;->a(Landroidx/constraintlayout/motion/widget/MotionLayout;ILandroidx/constraintlayout/motion/widget/p$b;)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/p$b;

    invoke-static {v1}, Landroidx/constraintlayout/motion/widget/p$b;->p(Landroidx/constraintlayout/motion/widget/p$b;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    invoke-static {v1}, Landroidx/constraintlayout/motion/widget/p$b;->p(Landroidx/constraintlayout/motion/widget/p$b;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/motion/widget/p$b$a;

    invoke-virtual {v3, p1, p2, v1}, Landroidx/constraintlayout/motion/widget/p$b$a;->a(Landroidx/constraintlayout/motion/widget/MotionLayout;ILandroidx/constraintlayout/motion/widget/p$b;)V

    goto :goto_3

    :cond_7
    return-void
.end method

.method public g(ILandroidx/constraintlayout/motion/widget/m;)Z
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->s:Landroidx/constraintlayout/motion/widget/t;

    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/motion/widget/t;->d(ILandroidx/constraintlayout/motion/widget/m;)Z

    move-result p1

    return p1
.end method

.method h(Landroidx/constraintlayout/motion/widget/MotionLayout;I)Z
    .locals 7

    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/p;->K()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/p;->d:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/p$b;

    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/p$b;->r(Landroidx/constraintlayout/motion/widget/p$b;)I

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$b;

    const/4 v4, 0x2

    if-ne v3, v2, :cond_4

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/motion/widget/p$b;->D(I)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/p$b;->c(Landroidx/constraintlayout/motion/widget/p$b;)I

    move-result v3

    const/4 v5, 0x1

    if-ne p2, v3, :cond_7

    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/p$b;->r(Landroidx/constraintlayout/motion/widget/p$b;)I

    move-result v3

    const/4 v6, 0x4

    if-eq v3, v6, :cond_5

    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/p$b;->r(Landroidx/constraintlayout/motion/widget/p$b;)I

    move-result v3

    if-ne v3, v4, :cond_7

    :cond_5
    sget-object p2, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Landroidx/constraintlayout/motion/widget/p$b;)V

    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/p$b;->r(Landroidx/constraintlayout/motion/widget/p$b;)I

    move-result v0

    if-ne v0, v6, :cond_6

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToEnd()V

    sget-object p2, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->SETUP:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    sget-object p2, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    goto :goto_1

    :cond_6
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    invoke-virtual {p1, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->M(Z)V

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->SETUP:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->V()V

    :goto_1
    return v5

    :cond_7
    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/p$b;->a(Landroidx/constraintlayout/motion/widget/p$b;)I

    move-result v3

    if-ne p2, v3, :cond_2

    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/p$b;->r(Landroidx/constraintlayout/motion/widget/p$b;)I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_8

    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/p$b;->r(Landroidx/constraintlayout/motion/widget/p$b;)I

    move-result v3

    if-ne v3, v5, :cond_2

    :cond_8
    sget-object p2, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Landroidx/constraintlayout/motion/widget/p$b;)V

    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/p$b;->r(Landroidx/constraintlayout/motion/widget/p$b;)I

    move-result v0

    if-ne v0, v4, :cond_9

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToStart()V

    sget-object p2, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->SETUP:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    sget-object p2, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    goto :goto_2

    :cond_9
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    invoke-virtual {p1, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->M(Z)V

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->SETUP:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->V()V

    :goto_2
    return v5

    :cond_a
    return v1
.end method

.method public i(IFFLandroid/view/MotionEvent;)Landroidx/constraintlayout/motion/widget/p$b;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    const/4 v4, -0x1

    if-eq v1, v4, :cond_7

    invoke-virtual/range {p0 .. p1}, Landroidx/constraintlayout/motion/widget/p;->I(I)Ljava/util/List;

    move-result-object v4

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/motion/widget/p$b;

    invoke-static {v8}, Landroidx/constraintlayout/motion/widget/p$b;->q(Landroidx/constraintlayout/motion/widget/p$b;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v8}, Landroidx/constraintlayout/motion/widget/p$b;->l(Landroidx/constraintlayout/motion/widget/p$b;)Landroidx/constraintlayout/motion/widget/q;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-static {v8}, Landroidx/constraintlayout/motion/widget/p$b;->l(Landroidx/constraintlayout/motion/widget/p$b;)Landroidx/constraintlayout/motion/widget/q;

    move-result-object v9

    iget-boolean v10, v0, Landroidx/constraintlayout/motion/widget/p;->r:Z

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/motion/widget/q;->x(Z)V

    invoke-static {v8}, Landroidx/constraintlayout/motion/widget/p$b;->l(Landroidx/constraintlayout/motion/widget/p$b;)Landroidx/constraintlayout/motion/widget/q;

    move-result-object v9

    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/p;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v9, v10, v5}, Landroidx/constraintlayout/motion/widget/q;->p(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v9

    if-eqz v9, :cond_2

    if-eqz p4, :cond_2

    invoke-virtual/range {p4 .. p4}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual/range {p4 .. p4}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v8}, Landroidx/constraintlayout/motion/widget/p$b;->l(Landroidx/constraintlayout/motion/widget/p$b;)Landroidx/constraintlayout/motion/widget/q;

    move-result-object v9

    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/p;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v9, v10, v5}, Landroidx/constraintlayout/motion/widget/q;->f(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v9

    if-eqz v9, :cond_3

    if-eqz p4, :cond_3

    invoke-virtual/range {p4 .. p4}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual/range {p4 .. p4}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {v8}, Landroidx/constraintlayout/motion/widget/p$b;->l(Landroidx/constraintlayout/motion/widget/p$b;)Landroidx/constraintlayout/motion/widget/q;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Landroidx/constraintlayout/motion/widget/q;->a(FF)F

    move-result v9

    invoke-static {v8}, Landroidx/constraintlayout/motion/widget/p$b;->l(Landroidx/constraintlayout/motion/widget/p$b;)Landroidx/constraintlayout/motion/widget/q;

    move-result-object v10

    iget-boolean v10, v10, Landroidx/constraintlayout/motion/widget/q;->l:Z

    if-eqz v10, :cond_4

    if-eqz p4, :cond_4

    invoke-virtual/range {p4 .. p4}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-static {v8}, Landroidx/constraintlayout/motion/widget/p$b;->l(Landroidx/constraintlayout/motion/widget/p$b;)Landroidx/constraintlayout/motion/widget/q;

    move-result-object v10

    iget v10, v10, Landroidx/constraintlayout/motion/widget/q;->i:F

    sub-float/2addr v9, v10

    invoke-virtual/range {p4 .. p4}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-static {v8}, Landroidx/constraintlayout/motion/widget/p$b;->l(Landroidx/constraintlayout/motion/widget/p$b;)Landroidx/constraintlayout/motion/widget/q;

    move-result-object v11

    iget v11, v11, Landroidx/constraintlayout/motion/widget/q;->j:F

    sub-float/2addr v10, v11

    add-float v11, v2, v9

    add-float v12, v3, v10

    float-to-double v12, v12

    float-to-double v14, v11

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v11

    float-to-double v13, v9

    float-to-double v9, v10

    invoke-static {v13, v14, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v9

    sub-double/2addr v11, v9

    double-to-float v9, v11

    const/high16 v10, 0x41200000    # 10.0f

    mul-float/2addr v9, v10

    :cond_4
    invoke-static {v8}, Landroidx/constraintlayout/motion/widget/p$b;->a(Landroidx/constraintlayout/motion/widget/p$b;)I

    move-result v10

    if-ne v10, v1, :cond_5

    const/high16 v10, -0x40800000    # -1.0f

    :goto_1
    mul-float/2addr v9, v10

    goto :goto_2

    :cond_5
    const v10, 0x3f8ccccd    # 1.1f

    goto :goto_1

    :goto_2
    cmpl-float v10, v9, v6

    if-lez v10, :cond_0

    move-object v7, v8

    move v6, v9

    goto/16 :goto_0

    :cond_6
    return-object v7

    :cond_7
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$b;

    return-object v1
.end method

.method public j(IZ)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->s:Landroidx/constraintlayout/motion/widget/t;

    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/motion/widget/t;->e(IZ)V

    return-void
.end method

.method public k()I
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$b;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/p$b;->k(Landroidx/constraintlayout/motion/widget/p$b;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method l()I
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$b;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/p$b;->l(Landroidx/constraintlayout/motion/widget/p$b;)Landroidx/constraintlayout/motion/widget/q;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$b;

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/p$b;->l(Landroidx/constraintlayout/motion/widget/p$b;)Landroidx/constraintlayout/motion/widget/q;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/q;->d()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method m(I)Landroidx/constraintlayout/widget/b;
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, v0}, Landroidx/constraintlayout/motion/widget/p;->n(III)Landroidx/constraintlayout/widget/b;

    move-result-object p1

    return-object p1
.end method

.method n(III)Landroidx/constraintlayout/widget/b;
    .locals 3

    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/p;->k:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/p;->h:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->b:Landroidx/constraintlayout/widget/e;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2, p3}, Landroidx/constraintlayout/widget/e;->c(III)I

    move-result p2

    const/4 p3, -0x1

    if-eq p2, p3, :cond_1

    move p1, p2

    :cond_1
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/p;->h:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Warning could not find ConstraintSet id/"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Landroidx/constraintlayout/motion/widget/p;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p1}, Landroidx/constraintlayout/motion/widget/a;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " In MotionScene"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MotionScene"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/p;->h:Landroid/util/SparseArray;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/b;

    return-object p1

    :cond_2
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/p;->h:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/b;

    return-object p1
.end method

.method public o()[I
    .locals 4

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->h:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/p;->h:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public p()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method public q()I
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$b;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/p$b;->j(Landroidx/constraintlayout/motion/widget/p$b;)I

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/p;->l:I

    return v0
.end method

.method r()I
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$b;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/p$b;->a(Landroidx/constraintlayout/motion/widget/p$b;)I

    move-result v0

    return v0
.end method

.method public t()Landroid/view/animation/Interpolator;
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$b;

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/p$b;->g(Landroidx/constraintlayout/motion/widget/p$b;)I

    move-result v0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_7

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AnticipateInterpolator;-><init>()V

    return-object v0

    :cond_1
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v0}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    return-object v0

    :cond_2
    new-instance v0, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v0}, Landroid/view/animation/BounceInterpolator;-><init>()V

    return-object v0

    :cond_3
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    return-object v0

    :cond_4
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    return-object v0

    :cond_5
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    return-object v0

    :cond_6
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$b;

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/p$b;->h(Landroidx/constraintlayout/motion/widget/p$b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/constraintlayout/core/motion/utils/c;->c(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/c;

    move-result-object v0

    new-instance v1, Landroidx/constraintlayout/motion/widget/p$a;

    invoke-direct {v1, p0, v0}, Landroidx/constraintlayout/motion/widget/p$a;-><init>(Landroidx/constraintlayout/motion/widget/p;Landroidx/constraintlayout/core/motion/utils/c;)V

    return-object v1

    :cond_7
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$b;

    invoke-static {v1}, Landroidx/constraintlayout/motion/widget/p$b;->i(Landroidx/constraintlayout/motion/widget/p$b;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    return-object v0
.end method

.method public u(Landroidx/constraintlayout/motion/widget/m;)V
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$b;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->f:Landroidx/constraintlayout/motion/widget/p$b;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/p$b;->f(Landroidx/constraintlayout/motion/widget/p$b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/g;

    invoke-virtual {v1, p1}, Landroidx/constraintlayout/motion/widget/g;->b(Landroidx/constraintlayout/motion/widget/m;)V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/p$b;->f(Landroidx/constraintlayout/motion/widget/p$b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/g;

    invoke-virtual {v1, p1}, Landroidx/constraintlayout/motion/widget/g;->b(Landroidx/constraintlayout/motion/widget/m;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method v()F
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$b;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/p$b;->l(Landroidx/constraintlayout/motion/widget/p$b;)Landroidx/constraintlayout/motion/widget/q;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$b;

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/p$b;->l(Landroidx/constraintlayout/motion/widget/p$b;)Landroidx/constraintlayout/motion/widget/q;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/q;->g()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method w()F
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$b;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/p$b;->l(Landroidx/constraintlayout/motion/widget/p$b;)Landroidx/constraintlayout/motion/widget/q;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$b;

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/p$b;->l(Landroidx/constraintlayout/motion/widget/p$b;)Landroidx/constraintlayout/motion/widget/q;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/q;->h()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method x()Z
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$b;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/p$b;->l(Landroidx/constraintlayout/motion/widget/p$b;)Landroidx/constraintlayout/motion/widget/q;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$b;

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/p$b;->l(Landroidx/constraintlayout/motion/widget/p$b;)Landroidx/constraintlayout/motion/widget/q;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/q;->i()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method y(FF)F
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$b;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/p$b;->l(Landroidx/constraintlayout/motion/widget/p$b;)Landroidx/constraintlayout/motion/widget/q;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$b;

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/p$b;->l(Landroidx/constraintlayout/motion/widget/p$b;)Landroidx/constraintlayout/motion/widget/q;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/motion/widget/q;->j(FF)F

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
