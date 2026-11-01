.class public Lcom/bigkoo/pickerview/view/b;
.super Ljava/lang/Object;


# static fields
.field public static y:Ljava/text/DateFormat;


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcom/contrarywind/view/WheelView;

.field private c:Lcom/contrarywind/view/WheelView;

.field private d:Lcom/contrarywind/view/WheelView;

.field private e:Lcom/contrarywind/view/WheelView;

.field private f:Lcom/contrarywind/view/WheelView;

.field private g:Lcom/contrarywind/view/WheelView;

.field private h:I

.field private i:[Z

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:F

.field private v:Lcom/contrarywind/view/WheelView$DividerType;

.field private w:Z

.field private x:Lq5/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/bigkoo/pickerview/view/b;->y:Ljava/text/DateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;[ZII)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x76c

    iput v0, p0, Lcom/bigkoo/pickerview/view/b;->j:I

    const/16 v0, 0x834

    iput v0, p0, Lcom/bigkoo/pickerview/view/b;->k:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/bigkoo/pickerview/view/b;->l:I

    const/16 v1, 0xc

    iput v1, p0, Lcom/bigkoo/pickerview/view/b;->m:I

    iput v0, p0, Lcom/bigkoo/pickerview/view/b;->n:I

    const/16 v0, 0x1f

    iput v0, p0, Lcom/bigkoo/pickerview/view/b;->o:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bigkoo/pickerview/view/b;->w:Z

    iput-object p1, p0, Lcom/bigkoo/pickerview/view/b;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/bigkoo/pickerview/view/b;->i:[Z

    iput p3, p0, Lcom/bigkoo/pickerview/view/b;->h:I

    iput p4, p0, Lcom/bigkoo/pickerview/view/b;->q:I

    invoke-virtual {p0, p1}, Lcom/bigkoo/pickerview/view/b;->N(Landroid/view/View;)V

    return-void
.end method

.method private B(IIIZIII)V
    .locals 3

    iget-object p7, p0, Lcom/bigkoo/pickerview/view/b;->a:Landroid/view/View;

    sget v0, Lcom/bigkoo/pickerview/R$id;->year:I

    invoke-virtual {p7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p7

    check-cast p7, Lcom/contrarywind/view/WheelView;

    iput-object p7, p0, Lcom/bigkoo/pickerview/view/b;->b:Lcom/contrarywind/view/WheelView;

    new-instance v0, Ln5/a;

    iget v1, p0, Lcom/bigkoo/pickerview/view/b;->j:I

    iget v2, p0, Lcom/bigkoo/pickerview/view/b;->k:I

    invoke-static {v1, v2}, Lr5/a;->e(II)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ln5/a;-><init>(Ljava/util/List;)V

    invoke-virtual {p7, v0}, Lcom/contrarywind/view/WheelView;->setAdapter(Lm7/a;)V

    iget-object p7, p0, Lcom/bigkoo/pickerview/view/b;->b:Lcom/contrarywind/view/WheelView;

    const-string v0, ""

    invoke-virtual {p7, v0}, Lcom/contrarywind/view/WheelView;->setLabel(Ljava/lang/String;)V

    iget-object p7, p0, Lcom/bigkoo/pickerview/view/b;->b:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/b;->j:I

    sub-int v1, p1, v1

    invoke-virtual {p7, v1}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    iget-object p7, p0, Lcom/bigkoo/pickerview/view/b;->b:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/b;->h:I

    invoke-virtual {p7, v1}, Lcom/contrarywind/view/WheelView;->setGravity(I)V

    iget-object p7, p0, Lcom/bigkoo/pickerview/view/b;->a:Landroid/view/View;

    sget v1, Lcom/bigkoo/pickerview/R$id;->month:I

    invoke-virtual {p7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p7

    check-cast p7, Lcom/contrarywind/view/WheelView;

    iput-object p7, p0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    new-instance v1, Ln5/a;

    invoke-static {p1}, Lr5/a;->d(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Ln5/a;-><init>(Ljava/util/List;)V

    invoke-virtual {p7, v1}, Lcom/contrarywind/view/WheelView;->setAdapter(Lm7/a;)V

    iget-object p7, p0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    invoke-virtual {p7, v0}, Lcom/contrarywind/view/WheelView;->setLabel(Ljava/lang/String;)V

    iget-object p7, p0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    const/4 v1, 0x1

    invoke-virtual {p7, v1}, Lcom/contrarywind/view/WheelView;->setConvertMonth(Z)V

    invoke-static {p1}, Lr5/a;->g(I)I

    move-result p7

    if-eqz p7, :cond_1

    sub-int/2addr p7, v1

    if-gt p2, p7, :cond_0

    if-eqz p4, :cond_1

    :cond_0
    iget-object p4, p0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    add-int/lit8 p7, p2, 0x1

    invoke-virtual {p4, p7}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    goto :goto_0

    :cond_1
    iget-object p4, p0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    invoke-virtual {p4, p2}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    :goto_0
    iget-object p4, p0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    iget p7, p0, Lcom/bigkoo/pickerview/view/b;->h:I

    invoke-virtual {p4, p7}, Lcom/contrarywind/view/WheelView;->setGravity(I)V

    iget-object p4, p0, Lcom/bigkoo/pickerview/view/b;->a:Landroid/view/View;

    sget p7, Lcom/bigkoo/pickerview/R$id;->day:I

    invoke-virtual {p4, p7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Lcom/contrarywind/view/WheelView;

    iput-object p4, p0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    invoke-static {p1}, Lr5/a;->g(I)I

    move-result p4

    if-nez p4, :cond_2

    iget-object p4, p0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    new-instance p7, Ln5/a;

    invoke-static {p1, p2}, Lr5/a;->h(II)I

    move-result p1

    invoke-static {p1}, Lr5/a;->b(I)Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p7, p1}, Ln5/a;-><init>(Ljava/util/List;)V

    invoke-virtual {p4, p7}, Lcom/contrarywind/view/WheelView;->setAdapter(Lm7/a;)V

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    new-instance p4, Ln5/a;

    invoke-static {p1}, Lr5/a;->f(I)I

    move-result p1

    invoke-static {p1}, Lr5/a;->b(I)Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p4, p1}, Ln5/a;-><init>(Ljava/util/List;)V

    invoke-virtual {p2, p4}, Lcom/contrarywind/view/WheelView;->setAdapter(Lm7/a;)V

    :goto_1
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    invoke-virtual {p1, v0}, Lcom/contrarywind/view/WheelView;->setLabel(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    sub-int/2addr p3, v1

    invoke-virtual {p1, p3}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    iget p2, p0, Lcom/bigkoo/pickerview/view/b;->h:I

    invoke-virtual {p1, p2}, Lcom/contrarywind/view/WheelView;->setGravity(I)V

    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->a:Landroid/view/View;

    sget p2, Lcom/bigkoo/pickerview/R$id;->hour:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/contrarywind/view/WheelView;

    iput-object p1, p0, Lcom/bigkoo/pickerview/view/b;->e:Lcom/contrarywind/view/WheelView;

    new-instance p2, Ln5/b;

    const/16 p3, 0x17

    const/4 p4, 0x0

    invoke-direct {p2, p4, p3}, Ln5/b;-><init>(II)V

    invoke-virtual {p1, p2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lm7/a;)V

    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->e:Lcom/contrarywind/view/WheelView;

    invoke-virtual {p1, p5}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->e:Lcom/contrarywind/view/WheelView;

    iget p2, p0, Lcom/bigkoo/pickerview/view/b;->h:I

    invoke-virtual {p1, p2}, Lcom/contrarywind/view/WheelView;->setGravity(I)V

    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->a:Landroid/view/View;

    sget p2, Lcom/bigkoo/pickerview/R$id;->min:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/contrarywind/view/WheelView;

    iput-object p1, p0, Lcom/bigkoo/pickerview/view/b;->f:Lcom/contrarywind/view/WheelView;

    new-instance p2, Ln5/b;

    const/16 p3, 0x3b

    invoke-direct {p2, p4, p3}, Ln5/b;-><init>(II)V

    invoke-virtual {p1, p2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lm7/a;)V

    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->f:Lcom/contrarywind/view/WheelView;

    invoke-virtual {p1, p6}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->f:Lcom/contrarywind/view/WheelView;

    iget p2, p0, Lcom/bigkoo/pickerview/view/b;->h:I

    invoke-virtual {p1, p2}, Lcom/contrarywind/view/WheelView;->setGravity(I)V

    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->a:Landroid/view/View;

    sget p2, Lcom/bigkoo/pickerview/R$id;->second:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/contrarywind/view/WheelView;

    iput-object p1, p0, Lcom/bigkoo/pickerview/view/b;->g:Lcom/contrarywind/view/WheelView;

    new-instance p2, Ln5/b;

    invoke-direct {p2, p4, p3}, Ln5/b;-><init>(II)V

    invoke-virtual {p1, p2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lm7/a;)V

    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->g:Lcom/contrarywind/view/WheelView;

    invoke-virtual {p1, p6}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->g:Lcom/contrarywind/view/WheelView;

    iget p2, p0, Lcom/bigkoo/pickerview/view/b;->h:I

    invoke-virtual {p1, p2}, Lcom/contrarywind/view/WheelView;->setGravity(I)V

    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->b:Lcom/contrarywind/view/WheelView;

    new-instance p2, Lcom/bigkoo/pickerview/view/b$a;

    invoke-direct {p2, p0}, Lcom/bigkoo/pickerview/view/b$a;-><init>(Lcom/bigkoo/pickerview/view/b;)V

    invoke-virtual {p1, p2}, Lcom/contrarywind/view/WheelView;->setOnItemSelectedListener(Ln7/b;)V

    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    new-instance p2, Lcom/bigkoo/pickerview/view/b$b;

    invoke-direct {p2, p0}, Lcom/bigkoo/pickerview/view/b$b;-><init>(Lcom/bigkoo/pickerview/view/b;)V

    invoke-virtual {p1, p2}, Lcom/contrarywind/view/WheelView;->setOnItemSelectedListener(Ln7/b;)V

    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    invoke-direct {p0, p1}, Lcom/bigkoo/pickerview/view/b;->q(Lcom/contrarywind/view/WheelView;)V

    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->e:Lcom/contrarywind/view/WheelView;

    invoke-direct {p0, p1}, Lcom/bigkoo/pickerview/view/b;->q(Lcom/contrarywind/view/WheelView;)V

    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->f:Lcom/contrarywind/view/WheelView;

    invoke-direct {p0, p1}, Lcom/bigkoo/pickerview/view/b;->q(Lcom/contrarywind/view/WheelView;)V

    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->g:Lcom/contrarywind/view/WheelView;

    invoke-direct {p0, p1}, Lcom/bigkoo/pickerview/view/b;->q(Lcom/contrarywind/view/WheelView;)V

    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->i:[Z

    array-length p2, p1

    const/4 p3, 0x6

    if-ne p2, p3, :cond_9

    iget-object p2, p0, Lcom/bigkoo/pickerview/view/b;->b:Lcom/contrarywind/view/WheelView;

    aget-boolean p1, p1, p4

    const/16 p3, 0x8

    if-eqz p1, :cond_3

    move p1, p4

    goto :goto_2

    :cond_3
    move p1, p3

    :goto_2
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    iget-object p2, p0, Lcom/bigkoo/pickerview/view/b;->i:[Z

    aget-boolean p2, p2, v1

    if-eqz p2, :cond_4

    move p2, p4

    goto :goto_3

    :cond_4
    move p2, p3

    :goto_3
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    iget-object p2, p0, Lcom/bigkoo/pickerview/view/b;->i:[Z

    const/4 p5, 0x2

    aget-boolean p2, p2, p5

    if-eqz p2, :cond_5

    move p2, p4

    goto :goto_4

    :cond_5
    move p2, p3

    :goto_4
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->e:Lcom/contrarywind/view/WheelView;

    iget-object p2, p0, Lcom/bigkoo/pickerview/view/b;->i:[Z

    const/4 p5, 0x3

    aget-boolean p2, p2, p5

    if-eqz p2, :cond_6

    move p2, p4

    goto :goto_5

    :cond_6
    move p2, p3

    :goto_5
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->f:Lcom/contrarywind/view/WheelView;

    iget-object p2, p0, Lcom/bigkoo/pickerview/view/b;->i:[Z

    const/4 p5, 0x4

    aget-boolean p2, p2, p5

    if-eqz p2, :cond_7

    move p2, p4

    goto :goto_6

    :cond_7
    move p2, p3

    :goto_6
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->g:Lcom/contrarywind/view/WheelView;

    iget-object p2, p0, Lcom/bigkoo/pickerview/view/b;->i:[Z

    const/4 p5, 0x5

    aget-boolean p2, p2, p5

    if-eqz p2, :cond_8

    goto :goto_7

    :cond_8
    move p4, p3

    :goto_7
    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/bigkoo/pickerview/view/b;->r()V

    return-void

    :cond_9
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "type[] length is not 6"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private F(IIIILjava/util/List;Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p5, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_1

    const/16 p1, 0x1f

    if-le p4, p1, :cond_0

    move p4, p1

    :cond_0
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    new-instance p2, Ln5/b;

    invoke-direct {p2, p3, p4}, Ln5/b;-><init>(II)V

    invoke-virtual {p1, p2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lm7/a;)V

    goto :goto_0

    :cond_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p6, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/16 p1, 0x1e

    if-le p4, p1, :cond_2

    move p4, p1

    :cond_2
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    new-instance p2, Ln5/b;

    invoke-direct {p2, p3, p4}, Ln5/b;-><init>(II)V

    invoke-virtual {p1, p2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lm7/a;)V

    goto :goto_0

    :cond_3
    rem-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_4

    rem-int/lit8 p2, p1, 0x64

    if-nez p2, :cond_5

    :cond_4
    rem-int/lit16 p1, p1, 0x190

    if-nez p1, :cond_7

    :cond_5
    const/16 p1, 0x1d

    if-le p4, p1, :cond_6

    move p4, p1

    :cond_6
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    new-instance p2, Ln5/b;

    invoke-direct {p2, p3, p4}, Ln5/b;-><init>(II)V

    invoke-virtual {p1, p2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lm7/a;)V

    goto :goto_0

    :cond_7
    const/16 p1, 0x1c

    if-le p4, p1, :cond_8

    move p4, p1

    :cond_8
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    new-instance p2, Ln5/b;

    invoke-direct {p2, p3, p4}, Ln5/b;-><init>(II)V

    invoke-virtual {p1, p2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lm7/a;)V

    :goto_0
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    invoke-virtual {p1}, Lcom/contrarywind/view/WheelView;->getAdapter()Lm7/a;

    move-result-object p1

    invoke-interface {p1}, Lm7/a;->a()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-le v0, p1, :cond_9

    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    invoke-virtual {p1}, Lcom/contrarywind/view/WheelView;->getAdapter()Lm7/a;

    move-result-object p1

    invoke-interface {p1}, Lm7/a;->a()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iget-object p2, p0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    invoke-virtual {p2, p1}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    :cond_9
    return-void
.end method

.method private G(IIIIII)V
    .locals 14

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    const-string v8, "10"

    const-string v9, "12"

    const-string v3, "1"

    const-string v4, "3"

    const-string v5, "5"

    const-string v6, "7"

    const-string v7, "8"

    filled-new-array/range {v3 .. v9}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "9"

    const-string v5, "11"

    const-string v6, "4"

    const-string v7, "6"

    filled-new-array {v6, v7, v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iput v1, v0, Lcom/bigkoo/pickerview/view/b;->p:I

    iget-object v5, v0, Lcom/bigkoo/pickerview/view/b;->a:Landroid/view/View;

    sget v6, Lcom/bigkoo/pickerview/R$id;->year:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/contrarywind/view/WheelView;

    iput-object v5, v0, Lcom/bigkoo/pickerview/view/b;->b:Lcom/contrarywind/view/WheelView;

    new-instance v6, Ln5/b;

    iget v7, v0, Lcom/bigkoo/pickerview/view/b;->j:I

    iget v8, v0, Lcom/bigkoo/pickerview/view/b;->k:I

    invoke-direct {v6, v7, v8}, Ln5/b;-><init>(II)V

    invoke-virtual {v5, v6}, Lcom/contrarywind/view/WheelView;->setAdapter(Lm7/a;)V

    iget-object v5, v0, Lcom/bigkoo/pickerview/view/b;->b:Lcom/contrarywind/view/WheelView;

    iget v6, v0, Lcom/bigkoo/pickerview/view/b;->j:I

    sub-int v6, v1, v6

    invoke-virtual {v5, v6}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    iget-object v5, v0, Lcom/bigkoo/pickerview/view/b;->b:Lcom/contrarywind/view/WheelView;

    iget v6, v0, Lcom/bigkoo/pickerview/view/b;->h:I

    invoke-virtual {v5, v6}, Lcom/contrarywind/view/WheelView;->setGravity(I)V

    iget-object v5, v0, Lcom/bigkoo/pickerview/view/b;->a:Landroid/view/View;

    sget v6, Lcom/bigkoo/pickerview/R$id;->month:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/contrarywind/view/WheelView;

    iput-object v5, v0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/contrarywind/view/WheelView;->setConvertMonth(Z)V

    iget v5, v0, Lcom/bigkoo/pickerview/view/b;->j:I

    iget v7, v0, Lcom/bigkoo/pickerview/view/b;->k:I

    if-ne v5, v7, :cond_0

    iget-object v5, v0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    new-instance v7, Ln5/b;

    iget v8, v0, Lcom/bigkoo/pickerview/view/b;->l:I

    iget v9, v0, Lcom/bigkoo/pickerview/view/b;->m:I

    invoke-direct {v7, v8, v9}, Ln5/b;-><init>(II)V

    invoke-virtual {v5, v7}, Lcom/contrarywind/view/WheelView;->setAdapter(Lm7/a;)V

    iget-object v5, v0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    add-int/lit8 v7, v2, 0x1

    iget v8, v0, Lcom/bigkoo/pickerview/view/b;->l:I

    sub-int/2addr v7, v8

    invoke-virtual {v5, v7}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    goto :goto_0

    :cond_0
    const/16 v8, 0xc

    if-ne v1, v5, :cond_1

    iget-object v5, v0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    new-instance v7, Ln5/b;

    iget v9, v0, Lcom/bigkoo/pickerview/view/b;->l:I

    invoke-direct {v7, v9, v8}, Ln5/b;-><init>(II)V

    invoke-virtual {v5, v7}, Lcom/contrarywind/view/WheelView;->setAdapter(Lm7/a;)V

    iget-object v5, v0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    add-int/lit8 v7, v2, 0x1

    iget v8, v0, Lcom/bigkoo/pickerview/view/b;->l:I

    sub-int/2addr v7, v8

    invoke-virtual {v5, v7}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    goto :goto_0

    :cond_1
    if-ne v1, v7, :cond_2

    iget-object v5, v0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    new-instance v7, Ln5/b;

    iget v8, v0, Lcom/bigkoo/pickerview/view/b;->m:I

    invoke-direct {v7, v6, v8}, Ln5/b;-><init>(II)V

    invoke-virtual {v5, v7}, Lcom/contrarywind/view/WheelView;->setAdapter(Lm7/a;)V

    iget-object v5, v0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v5, v2}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    goto :goto_0

    :cond_2
    iget-object v5, v0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    new-instance v7, Ln5/b;

    invoke-direct {v7, v6, v8}, Ln5/b;-><init>(II)V

    invoke-virtual {v5, v7}, Lcom/contrarywind/view/WheelView;->setAdapter(Lm7/a;)V

    iget-object v5, v0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v5, v2}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    :goto_0
    iget-object v5, v0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    iget v7, v0, Lcom/bigkoo/pickerview/view/b;->h:I

    invoke-virtual {v5, v7}, Lcom/contrarywind/view/WheelView;->setGravity(I)V

    iget-object v5, v0, Lcom/bigkoo/pickerview/view/b;->a:Landroid/view/View;

    sget v7, Lcom/bigkoo/pickerview/R$id;->day:I

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/contrarywind/view/WheelView;

    iput-object v5, v0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    iget v5, v0, Lcom/bigkoo/pickerview/view/b;->j:I

    iget v7, v0, Lcom/bigkoo/pickerview/view/b;->k:I

    const/16 v8, 0x1c

    const/16 v9, 0x1d

    const/16 v10, 0x1e

    const/16 v11, 0x1f

    if-ne v5, v7, :cond_c

    iget v12, v0, Lcom/bigkoo/pickerview/view/b;->l:I

    iget v13, v0, Lcom/bigkoo/pickerview/view/b;->m:I

    if-ne v12, v13, :cond_c

    add-int/2addr v2, v6

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget v1, v0, Lcom/bigkoo/pickerview/view/b;->o:I

    if-le v1, v11, :cond_3

    iput v11, v0, Lcom/bigkoo/pickerview/view/b;->o:I

    :cond_3
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    new-instance v2, Ln5/b;

    iget v5, v0, Lcom/bigkoo/pickerview/view/b;->n:I

    iget v7, v0, Lcom/bigkoo/pickerview/view/b;->o:I

    invoke-direct {v2, v5, v7}, Ln5/b;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lm7/a;)V

    goto :goto_1

    :cond_4
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget v1, v0, Lcom/bigkoo/pickerview/view/b;->o:I

    if-le v1, v10, :cond_5

    iput v10, v0, Lcom/bigkoo/pickerview/view/b;->o:I

    :cond_5
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    new-instance v2, Ln5/b;

    iget v5, v0, Lcom/bigkoo/pickerview/view/b;->n:I

    iget v7, v0, Lcom/bigkoo/pickerview/view/b;->o:I

    invoke-direct {v2, v5, v7}, Ln5/b;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lm7/a;)V

    goto :goto_1

    :cond_6
    rem-int/lit8 v2, v1, 0x4

    if-nez v2, :cond_7

    rem-int/lit8 v2, v1, 0x64

    if-nez v2, :cond_8

    :cond_7
    rem-int/lit16 v1, v1, 0x190

    if-nez v1, :cond_a

    :cond_8
    iget v1, v0, Lcom/bigkoo/pickerview/view/b;->o:I

    if-le v1, v9, :cond_9

    iput v9, v0, Lcom/bigkoo/pickerview/view/b;->o:I

    :cond_9
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    new-instance v2, Ln5/b;

    iget v5, v0, Lcom/bigkoo/pickerview/view/b;->n:I

    iget v7, v0, Lcom/bigkoo/pickerview/view/b;->o:I

    invoke-direct {v2, v5, v7}, Ln5/b;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lm7/a;)V

    goto :goto_1

    :cond_a
    iget v1, v0, Lcom/bigkoo/pickerview/view/b;->o:I

    if-le v1, v8, :cond_b

    iput v8, v0, Lcom/bigkoo/pickerview/view/b;->o:I

    :cond_b
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    new-instance v2, Ln5/b;

    iget v5, v0, Lcom/bigkoo/pickerview/view/b;->n:I

    iget v7, v0, Lcom/bigkoo/pickerview/view/b;->o:I

    invoke-direct {v2, v5, v7}, Ln5/b;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lm7/a;)V

    :goto_1
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    iget v2, v0, Lcom/bigkoo/pickerview/view/b;->n:I

    sub-int v2, p3, v2

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    goto/16 :goto_5

    :cond_c
    if-ne v1, v5, :cond_12

    add-int/lit8 v5, v2, 0x1

    iget v12, v0, Lcom/bigkoo/pickerview/view/b;->l:I

    if-ne v5, v12, :cond_12

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    new-instance v2, Ln5/b;

    iget v5, v0, Lcom/bigkoo/pickerview/view/b;->n:I

    invoke-direct {v2, v5, v11}, Ln5/b;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lm7/a;)V

    goto :goto_2

    :cond_d
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    new-instance v2, Ln5/b;

    iget v5, v0, Lcom/bigkoo/pickerview/view/b;->n:I

    invoke-direct {v2, v5, v10}, Ln5/b;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lm7/a;)V

    goto :goto_2

    :cond_e
    rem-int/lit8 v2, v1, 0x4

    if-nez v2, :cond_f

    rem-int/lit8 v2, v1, 0x64

    if-nez v2, :cond_10

    :cond_f
    rem-int/lit16 v1, v1, 0x190

    if-nez v1, :cond_11

    :cond_10
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    new-instance v2, Ln5/b;

    iget v5, v0, Lcom/bigkoo/pickerview/view/b;->n:I

    invoke-direct {v2, v5, v9}, Ln5/b;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lm7/a;)V

    goto :goto_2

    :cond_11
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    new-instance v2, Ln5/b;

    iget v5, v0, Lcom/bigkoo/pickerview/view/b;->n:I

    invoke-direct {v2, v5, v8}, Ln5/b;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lm7/a;)V

    :goto_2
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    iget v2, v0, Lcom/bigkoo/pickerview/view/b;->n:I

    sub-int v2, p3, v2

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    goto/16 :goto_5

    :cond_12
    if-ne v1, v7, :cond_1c

    add-int/lit8 v5, v2, 0x1

    iget v7, v0, Lcom/bigkoo/pickerview/view/b;->m:I

    if-ne v5, v7, :cond_1c

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    iget v1, v0, Lcom/bigkoo/pickerview/view/b;->o:I

    if-le v1, v11, :cond_13

    iput v11, v0, Lcom/bigkoo/pickerview/view/b;->o:I

    :cond_13
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    new-instance v2, Ln5/b;

    iget v5, v0, Lcom/bigkoo/pickerview/view/b;->o:I

    invoke-direct {v2, v6, v5}, Ln5/b;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lm7/a;)V

    goto :goto_3

    :cond_14
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    iget v1, v0, Lcom/bigkoo/pickerview/view/b;->o:I

    if-le v1, v10, :cond_15

    iput v10, v0, Lcom/bigkoo/pickerview/view/b;->o:I

    :cond_15
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    new-instance v2, Ln5/b;

    iget v5, v0, Lcom/bigkoo/pickerview/view/b;->o:I

    invoke-direct {v2, v6, v5}, Ln5/b;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lm7/a;)V

    goto :goto_3

    :cond_16
    rem-int/lit8 v2, v1, 0x4

    if-nez v2, :cond_17

    rem-int/lit8 v2, v1, 0x64

    if-nez v2, :cond_18

    :cond_17
    rem-int/lit16 v1, v1, 0x190

    if-nez v1, :cond_1a

    :cond_18
    iget v1, v0, Lcom/bigkoo/pickerview/view/b;->o:I

    if-le v1, v9, :cond_19

    iput v9, v0, Lcom/bigkoo/pickerview/view/b;->o:I

    :cond_19
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    new-instance v2, Ln5/b;

    iget v5, v0, Lcom/bigkoo/pickerview/view/b;->o:I

    invoke-direct {v2, v6, v5}, Ln5/b;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lm7/a;)V

    goto :goto_3

    :cond_1a
    iget v1, v0, Lcom/bigkoo/pickerview/view/b;->o:I

    if-le v1, v8, :cond_1b

    iput v8, v0, Lcom/bigkoo/pickerview/view/b;->o:I

    :cond_1b
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    new-instance v2, Ln5/b;

    iget v5, v0, Lcom/bigkoo/pickerview/view/b;->o:I

    invoke-direct {v2, v6, v5}, Ln5/b;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lm7/a;)V

    :goto_3
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    add-int/lit8 v2, p3, -0x1

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    goto :goto_5

    :cond_1c
    add-int/2addr v2, v6

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    new-instance v2, Ln5/b;

    invoke-direct {v2, v6, v11}, Ln5/b;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lm7/a;)V

    goto :goto_4

    :cond_1d
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    new-instance v2, Ln5/b;

    invoke-direct {v2, v6, v10}, Ln5/b;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lm7/a;)V

    goto :goto_4

    :cond_1e
    rem-int/lit8 v2, v1, 0x4

    if-nez v2, :cond_1f

    rem-int/lit8 v2, v1, 0x64

    if-nez v2, :cond_20

    :cond_1f
    rem-int/lit16 v1, v1, 0x190

    if-nez v1, :cond_21

    :cond_20
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    new-instance v2, Ln5/b;

    invoke-direct {v2, v6, v9}, Ln5/b;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lm7/a;)V

    goto :goto_4

    :cond_21
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    new-instance v2, Ln5/b;

    invoke-direct {v2, v6, v8}, Ln5/b;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lm7/a;)V

    :goto_4
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    add-int/lit8 v2, p3, -0x1

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    :goto_5
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    iget v2, v0, Lcom/bigkoo/pickerview/view/b;->h:I

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setGravity(I)V

    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->a:Landroid/view/View;

    sget v2, Lcom/bigkoo/pickerview/R$id;->hour:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/contrarywind/view/WheelView;

    iput-object v1, v0, Lcom/bigkoo/pickerview/view/b;->e:Lcom/contrarywind/view/WheelView;

    new-instance v2, Ln5/b;

    const/16 v5, 0x17

    const/4 v7, 0x0

    invoke-direct {v2, v7, v5}, Ln5/b;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lm7/a;)V

    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->e:Lcom/contrarywind/view/WheelView;

    move/from16 v2, p4

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->e:Lcom/contrarywind/view/WheelView;

    iget v2, v0, Lcom/bigkoo/pickerview/view/b;->h:I

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setGravity(I)V

    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->a:Landroid/view/View;

    sget v2, Lcom/bigkoo/pickerview/R$id;->min:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/contrarywind/view/WheelView;

    iput-object v1, v0, Lcom/bigkoo/pickerview/view/b;->f:Lcom/contrarywind/view/WheelView;

    new-instance v2, Ln5/b;

    const/16 v5, 0x3b

    invoke-direct {v2, v7, v5}, Ln5/b;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lm7/a;)V

    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->f:Lcom/contrarywind/view/WheelView;

    move/from16 v2, p5

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->f:Lcom/contrarywind/view/WheelView;

    iget v2, v0, Lcom/bigkoo/pickerview/view/b;->h:I

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setGravity(I)V

    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->a:Landroid/view/View;

    sget v2, Lcom/bigkoo/pickerview/R$id;->second:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/contrarywind/view/WheelView;

    iput-object v1, v0, Lcom/bigkoo/pickerview/view/b;->g:Lcom/contrarywind/view/WheelView;

    new-instance v2, Ln5/b;

    invoke-direct {v2, v7, v5}, Ln5/b;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lm7/a;)V

    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->g:Lcom/contrarywind/view/WheelView;

    move/from16 v2, p6

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->g:Lcom/contrarywind/view/WheelView;

    iget v2, v0, Lcom/bigkoo/pickerview/view/b;->h:I

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setGravity(I)V

    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->b:Lcom/contrarywind/view/WheelView;

    new-instance v2, Lcom/bigkoo/pickerview/view/b$c;

    invoke-direct {v2, p0, v3, v4}, Lcom/bigkoo/pickerview/view/b$c;-><init>(Lcom/bigkoo/pickerview/view/b;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setOnItemSelectedListener(Ln7/b;)V

    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    new-instance v2, Lcom/bigkoo/pickerview/view/b$d;

    invoke-direct {v2, p0, v3, v4}, Lcom/bigkoo/pickerview/view/b$d;-><init>(Lcom/bigkoo/pickerview/view/b;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setOnItemSelectedListener(Ln7/b;)V

    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    invoke-direct {p0, v1}, Lcom/bigkoo/pickerview/view/b;->q(Lcom/contrarywind/view/WheelView;)V

    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->e:Lcom/contrarywind/view/WheelView;

    invoke-direct {p0, v1}, Lcom/bigkoo/pickerview/view/b;->q(Lcom/contrarywind/view/WheelView;)V

    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->f:Lcom/contrarywind/view/WheelView;

    invoke-direct {p0, v1}, Lcom/bigkoo/pickerview/view/b;->q(Lcom/contrarywind/view/WheelView;)V

    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->g:Lcom/contrarywind/view/WheelView;

    invoke-direct {p0, v1}, Lcom/bigkoo/pickerview/view/b;->q(Lcom/contrarywind/view/WheelView;)V

    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->i:[Z

    array-length v2, v1

    const/4 v3, 0x6

    if-ne v2, v3, :cond_28

    iget-object v2, v0, Lcom/bigkoo/pickerview/view/b;->b:Lcom/contrarywind/view/WheelView;

    aget-boolean v1, v1, v7

    const/16 v3, 0x8

    if-eqz v1, :cond_22

    move v1, v7

    goto :goto_6

    :cond_22
    move v1, v3

    :goto_6
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    iget-object v2, v0, Lcom/bigkoo/pickerview/view/b;->i:[Z

    aget-boolean v2, v2, v6

    if-eqz v2, :cond_23

    move v2, v7

    goto :goto_7

    :cond_23
    move v2, v3

    :goto_7
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    iget-object v2, v0, Lcom/bigkoo/pickerview/view/b;->i:[Z

    const/4 v4, 0x2

    aget-boolean v2, v2, v4

    if-eqz v2, :cond_24

    move v2, v7

    goto :goto_8

    :cond_24
    move v2, v3

    :goto_8
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->e:Lcom/contrarywind/view/WheelView;

    iget-object v2, v0, Lcom/bigkoo/pickerview/view/b;->i:[Z

    const/4 v4, 0x3

    aget-boolean v2, v2, v4

    if-eqz v2, :cond_25

    move v2, v7

    goto :goto_9

    :cond_25
    move v2, v3

    :goto_9
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->f:Lcom/contrarywind/view/WheelView;

    iget-object v2, v0, Lcom/bigkoo/pickerview/view/b;->i:[Z

    const/4 v4, 0x4

    aget-boolean v2, v2, v4

    if-eqz v2, :cond_26

    move v2, v7

    goto :goto_a

    :cond_26
    move v2, v3

    :goto_a
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->g:Lcom/contrarywind/view/WheelView;

    iget-object v2, v0, Lcom/bigkoo/pickerview/view/b;->i:[Z

    const/4 v4, 0x5

    aget-boolean v2, v2, v4

    if-eqz v2, :cond_27

    goto :goto_b

    :cond_27
    move v7, v3

    :goto_b
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/bigkoo/pickerview/view/b;->r()V

    return-void

    :cond_28
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "type[] length is not 6"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private I()V
    .locals 2

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/b;->s:I

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setTextColorCenter(I)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/b;->s:I

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setTextColorCenter(I)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->b:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/b;->s:I

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setTextColorCenter(I)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->e:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/b;->s:I

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setTextColorCenter(I)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->f:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/b;->s:I

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setTextColorCenter(I)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->g:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/b;->s:I

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setTextColorCenter(I)V

    return-void
.end method

.method private K()V
    .locals 2

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/b;->r:I

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setTextColorOut(I)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/b;->r:I

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setTextColorOut(I)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->b:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/b;->r:I

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setTextColorOut(I)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->e:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/b;->r:I

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setTextColorOut(I)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->f:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/b;->r:I

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setTextColorOut(I)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->g:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/b;->r:I

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setTextColorOut(I)V

    return-void
.end method

.method static bridge synthetic a(Lcom/bigkoo/pickerview/view/b;)I
    .locals 0

    iget p0, p0, Lcom/bigkoo/pickerview/view/b;->p:I

    return p0
.end method

.method static bridge synthetic b(Lcom/bigkoo/pickerview/view/b;)I
    .locals 0

    iget p0, p0, Lcom/bigkoo/pickerview/view/b;->o:I

    return p0
.end method

.method static bridge synthetic c(Lcom/bigkoo/pickerview/view/b;)I
    .locals 0

    iget p0, p0, Lcom/bigkoo/pickerview/view/b;->m:I

    return p0
.end method

.method static bridge synthetic d(Lcom/bigkoo/pickerview/view/b;)I
    .locals 0

    iget p0, p0, Lcom/bigkoo/pickerview/view/b;->k:I

    return p0
.end method

.method static bridge synthetic e(Lcom/bigkoo/pickerview/view/b;)Lq5/a;
    .locals 0

    iget-object p0, p0, Lcom/bigkoo/pickerview/view/b;->x:Lq5/a;

    return-object p0
.end method

.method static bridge synthetic f(Lcom/bigkoo/pickerview/view/b;)I
    .locals 0

    iget p0, p0, Lcom/bigkoo/pickerview/view/b;->n:I

    return p0
.end method

.method static bridge synthetic g(Lcom/bigkoo/pickerview/view/b;)I
    .locals 0

    iget p0, p0, Lcom/bigkoo/pickerview/view/b;->l:I

    return p0
.end method

.method static bridge synthetic h(Lcom/bigkoo/pickerview/view/b;)I
    .locals 0

    iget p0, p0, Lcom/bigkoo/pickerview/view/b;->j:I

    return p0
.end method

.method static bridge synthetic i(Lcom/bigkoo/pickerview/view/b;)Lcom/contrarywind/view/WheelView;
    .locals 0

    iget-object p0, p0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    return-object p0
.end method

.method static bridge synthetic j(Lcom/bigkoo/pickerview/view/b;)Lcom/contrarywind/view/WheelView;
    .locals 0

    iget-object p0, p0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    return-object p0
.end method

.method static bridge synthetic k(Lcom/bigkoo/pickerview/view/b;)Lcom/contrarywind/view/WheelView;
    .locals 0

    iget-object p0, p0, Lcom/bigkoo/pickerview/view/b;->b:Lcom/contrarywind/view/WheelView;

    return-object p0
.end method

.method static bridge synthetic l(Lcom/bigkoo/pickerview/view/b;I)V
    .locals 0

    iput p1, p0, Lcom/bigkoo/pickerview/view/b;->p:I

    return-void
.end method

.method static bridge synthetic m(Lcom/bigkoo/pickerview/view/b;IIIILjava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/bigkoo/pickerview/view/b;->F(IIIILjava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private n()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/b;->b:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    iget v2, p0, Lcom/bigkoo/pickerview/view/b;->j:I

    add-int/2addr v1, v2

    invoke-static {v1}, Lr5/a;->g(I)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v2}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v2

    :goto_0
    add-int/2addr v2, v3

    :goto_1
    move v5, v4

    goto :goto_2

    :cond_0
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v2}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v2

    add-int/2addr v2, v3

    invoke-static {v1}, Lr5/a;->g(I)I

    move-result v5

    sub-int/2addr v2, v5

    if-gtz v2, :cond_1

    iget-object v2, p0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v2}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v2}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v2

    add-int/2addr v2, v3

    invoke-static {v1}, Lr5/a;->g(I)I

    move-result v5

    sub-int/2addr v2, v5

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v2}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v2

    move v5, v3

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v2}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v2

    goto :goto_1

    :goto_2
    iget-object v6, p0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v6}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v6

    add-int/2addr v6, v3

    invoke-static {v1, v2, v6, v5}, Lr5/b;->b(IIIZ)[I

    move-result-object v1

    aget v2, v1, v4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v1, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/b;->e:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bigkoo/pickerview/view/b;->f:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v2}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/b;->g:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private q(Lcom/contrarywind/view/WheelView;)V
    .locals 1

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->x:Lq5/a;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bigkoo/pickerview/view/b$e;

    invoke-direct {v0, p0}, Lcom/bigkoo/pickerview/view/b$e;-><init>(Lcom/bigkoo/pickerview/view/b;)V

    invoke-virtual {p1, v0}, Lcom/contrarywind/view/WheelView;->setOnItemSelectedListener(Ln7/b;)V

    :cond_0
    return-void
.end method

.method private r()V
    .locals 2

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/b;->q:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setTextSize(F)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/b;->q:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setTextSize(F)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->b:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/b;->q:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setTextSize(F)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->e:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/b;->q:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setTextSize(F)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->f:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/b;->q:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setTextSize(F)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->g:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/b;->q:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setTextSize(F)V

    return-void
.end method

.method private t()V
    .locals 2

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/b;->t:I

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setDividerColor(I)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/b;->t:I

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setDividerColor(I)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->b:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/b;->t:I

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setDividerColor(I)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->e:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/b;->t:I

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setDividerColor(I)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->f:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/b;->t:I

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setDividerColor(I)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->g:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/b;->t:I

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setDividerColor(I)V

    return-void
.end method

.method private v()V
    .locals 2

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/b;->v:Lcom/contrarywind/view/WheelView$DividerType;

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setDividerType(Lcom/contrarywind/view/WheelView$DividerType;)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/b;->v:Lcom/contrarywind/view/WheelView$DividerType;

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setDividerType(Lcom/contrarywind/view/WheelView$DividerType;)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->b:Lcom/contrarywind/view/WheelView;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/b;->v:Lcom/contrarywind/view/WheelView$DividerType;

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setDividerType(Lcom/contrarywind/view/WheelView$DividerType;)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->e:Lcom/contrarywind/view/WheelView;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/b;->v:Lcom/contrarywind/view/WheelView$DividerType;

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setDividerType(Lcom/contrarywind/view/WheelView$DividerType;)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->f:Lcom/contrarywind/view/WheelView;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/b;->v:Lcom/contrarywind/view/WheelView$DividerType;

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setDividerType(Lcom/contrarywind/view/WheelView$DividerType;)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->g:Lcom/contrarywind/view/WheelView;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/b;->v:Lcom/contrarywind/view/WheelView$DividerType;

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setDividerType(Lcom/contrarywind/view/WheelView$DividerType;)V

    return-void
.end method

.method private z()V
    .locals 2

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/b;->u:F

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setLineSpacingMultiplier(F)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/b;->u:F

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setLineSpacingMultiplier(F)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->b:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/b;->u:F

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setLineSpacingMultiplier(F)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->e:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/b;->u:F

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setLineSpacingMultiplier(F)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->f:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/b;->u:F

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setLineSpacingMultiplier(F)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->g:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/b;->u:F

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setLineSpacingMultiplier(F)V

    return-void
.end method


# virtual methods
.method public A(F)V
    .locals 0

    iput p1, p0, Lcom/bigkoo/pickerview/view/b;->u:F

    invoke-direct {p0}, Lcom/bigkoo/pickerview/view/b;->z()V

    return-void
.end method

.method public C(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bigkoo/pickerview/view/b;->w:Z

    return-void
.end method

.method public D(IIIIII)V
    .locals 9

    iget-boolean v0, p0, Lcom/bigkoo/pickerview/view/b;->w:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    add-int/2addr p2, v0

    invoke-static {p1, p2, p3}, Lr5/b;->d(III)[I

    move-result-object p1

    const/4 p2, 0x0

    aget v2, p1, p2

    aget p3, p1, v0

    add-int/lit8 v3, p3, -0x1

    const/4 p3, 0x2

    aget v4, p1, p3

    const/4 p3, 0x3

    aget p1, p1, p3

    if-ne p1, v0, :cond_0

    move v5, v0

    goto :goto_0

    :cond_0
    move v5, p2

    :goto_0
    move-object v1, p0

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/bigkoo/pickerview/view/b;->B(IIIZIII)V

    goto :goto_1

    :cond_1
    invoke-direct/range {p0 .. p6}, Lcom/bigkoo/pickerview/view/b;->G(IIIIII)V

    :goto_1
    return-void
.end method

.method public E(Ljava/util/Calendar;Ljava/util/Calendar;)V
    .locals 4

    const/4 v0, 0x5

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez p1, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    iget v0, p0, Lcom/bigkoo/pickerview/view/b;->j:I

    if-le p1, v0, :cond_0

    iput p1, p0, Lcom/bigkoo/pickerview/view/b;->k:I

    iput v1, p0, Lcom/bigkoo/pickerview/view/b;->m:I

    iput p2, p0, Lcom/bigkoo/pickerview/view/b;->o:I

    goto/16 :goto_0

    :cond_0
    if-ne p1, v0, :cond_6

    iget v0, p0, Lcom/bigkoo/pickerview/view/b;->l:I

    if-le v1, v0, :cond_1

    iput p1, p0, Lcom/bigkoo/pickerview/view/b;->k:I

    iput v1, p0, Lcom/bigkoo/pickerview/view/b;->m:I

    iput p2, p0, Lcom/bigkoo/pickerview/view/b;->o:I

    goto/16 :goto_0

    :cond_1
    if-ne v1, v0, :cond_6

    iget v0, p0, Lcom/bigkoo/pickerview/view/b;->n:I

    if-le p2, v0, :cond_6

    iput p1, p0, Lcom/bigkoo/pickerview/view/b;->k:I

    iput v1, p0, Lcom/bigkoo/pickerview/view/b;->m:I

    iput p2, p0, Lcom/bigkoo/pickerview/view/b;->o:I

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_5

    if-nez p2, :cond_5

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iget v0, p0, Lcom/bigkoo/pickerview/view/b;->k:I

    if-ge p2, v0, :cond_3

    iput v1, p0, Lcom/bigkoo/pickerview/view/b;->l:I

    iput p1, p0, Lcom/bigkoo/pickerview/view/b;->n:I

    iput p2, p0, Lcom/bigkoo/pickerview/view/b;->j:I

    goto :goto_0

    :cond_3
    if-ne p2, v0, :cond_6

    iget v0, p0, Lcom/bigkoo/pickerview/view/b;->m:I

    if-ge v1, v0, :cond_4

    iput v1, p0, Lcom/bigkoo/pickerview/view/b;->l:I

    iput p1, p0, Lcom/bigkoo/pickerview/view/b;->n:I

    iput p2, p0, Lcom/bigkoo/pickerview/view/b;->j:I

    goto :goto_0

    :cond_4
    if-ne v1, v0, :cond_6

    iget v0, p0, Lcom/bigkoo/pickerview/view/b;->o:I

    if-ge p1, v0, :cond_6

    iput v1, p0, Lcom/bigkoo/pickerview/view/b;->l:I

    iput p1, p0, Lcom/bigkoo/pickerview/view/b;->n:I

    iput p2, p0, Lcom/bigkoo/pickerview/view/b;->j:I

    goto :goto_0

    :cond_5
    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, Lcom/bigkoo/pickerview/view/b;->j:I

    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, Lcom/bigkoo/pickerview/view/b;->k:I

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v2

    iput v3, p0, Lcom/bigkoo/pickerview/view/b;->l:I

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/bigkoo/pickerview/view/b;->m:I

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/bigkoo/pickerview/view/b;->n:I

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/bigkoo/pickerview/view/b;->o:I

    :cond_6
    :goto_0
    return-void
.end method

.method public H(I)V
    .locals 0

    iput p1, p0, Lcom/bigkoo/pickerview/view/b;->j:I

    return-void
.end method

.method public J(I)V
    .locals 0

    iput p1, p0, Lcom/bigkoo/pickerview/view/b;->s:I

    invoke-direct {p0}, Lcom/bigkoo/pickerview/view/b;->I()V

    return-void
.end method

.method public L(I)V
    .locals 0

    iput p1, p0, Lcom/bigkoo/pickerview/view/b;->r:I

    invoke-direct {p0}, Lcom/bigkoo/pickerview/view/b;->K()V

    return-void
.end method

.method public M(IIIIII)V
    .locals 1

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->setTextXOffset(I)V

    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    invoke-virtual {p1, p2}, Lcom/contrarywind/view/WheelView;->setTextXOffset(I)V

    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->b:Lcom/contrarywind/view/WheelView;

    invoke-virtual {p1, p3}, Lcom/contrarywind/view/WheelView;->setTextXOffset(I)V

    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->e:Lcom/contrarywind/view/WheelView;

    invoke-virtual {p1, p4}, Lcom/contrarywind/view/WheelView;->setTextXOffset(I)V

    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->f:Lcom/contrarywind/view/WheelView;

    invoke-virtual {p1, p5}, Lcom/contrarywind/view/WheelView;->setTextXOffset(I)V

    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->g:Lcom/contrarywind/view/WheelView;

    invoke-virtual {p1, p6}, Lcom/contrarywind/view/WheelView;->setTextXOffset(I)V

    return-void
.end method

.method public N(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/bigkoo/pickerview/view/b;->a:Landroid/view/View;

    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 6

    iget-boolean v0, p0, Lcom/bigkoo/pickerview/view/b;->w:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/bigkoo/pickerview/view/b;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/bigkoo/pickerview/view/b;->p:I

    iget v2, p0, Lcom/bigkoo/pickerview/view/b;->j:I

    const-string v3, " "

    const-string v4, ":"

    const-string v5, "-"

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    iget v2, p0, Lcom/bigkoo/pickerview/view/b;->l:I

    add-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/b;->b:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    iget v2, p0, Lcom/bigkoo/pickerview/view/b;->j:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    iget v2, p0, Lcom/bigkoo/pickerview/view/b;->l:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    iget v2, p0, Lcom/bigkoo/pickerview/view/b;->n:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/b;->e:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/b;->f:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/b;->g:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_1
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/b;->b:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    iget v2, p0, Lcom/bigkoo/pickerview/view/b;->j:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    iget v2, p0, Lcom/bigkoo/pickerview/view/b;->l:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/b;->e:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/b;->f:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/b;->g:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/b;->b:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    iget v2, p0, Lcom/bigkoo/pickerview/view/b;->j:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/b;->e:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/b;->f:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/b;->g:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->isCenterLabel(Z)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->isCenterLabel(Z)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->b:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->isCenterLabel(Z)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->e:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->isCenterLabel(Z)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->f:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->isCenterLabel(Z)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->g:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->isCenterLabel(Z)V

    return-void
.end method

.method public s(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->b:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->setCyclic(Z)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->setCyclic(Z)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->setCyclic(Z)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->e:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->setCyclic(Z)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->f:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->setCyclic(Z)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->g:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->setCyclic(Z)V

    return-void
.end method

.method public u(I)V
    .locals 0

    iput p1, p0, Lcom/bigkoo/pickerview/view/b;->t:I

    invoke-direct {p0}, Lcom/bigkoo/pickerview/view/b;->t()V

    return-void
.end method

.method public w(Lcom/contrarywind/view/WheelView$DividerType;)V
    .locals 0

    iput-object p1, p0, Lcom/bigkoo/pickerview/view/b;->v:Lcom/contrarywind/view/WheelView$DividerType;

    invoke-direct {p0}, Lcom/bigkoo/pickerview/view/b;->v()V

    return-void
.end method

.method public x(I)V
    .locals 0

    iput p1, p0, Lcom/bigkoo/pickerview/view/b;->k:I

    return-void
.end method

.method public y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/bigkoo/pickerview/view/b;->w:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->b:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->setLabel(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->b:Lcom/contrarywind/view/WheelView;

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/bigkoo/pickerview/R$string;->pickerview_year:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/contrarywind/view/WheelView;->setLabel(Ljava/lang/String;)V

    :goto_0
    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    invoke-virtual {p1, p2}, Lcom/contrarywind/view/WheelView;->setLabel(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    iget-object p2, p0, Lcom/bigkoo/pickerview/view/b;->a:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/bigkoo/pickerview/R$string;->pickerview_month:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/contrarywind/view/WheelView;->setLabel(Ljava/lang/String;)V

    :goto_1
    if-eqz p3, :cond_3

    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    invoke-virtual {p1, p3}, Lcom/contrarywind/view/WheelView;->setLabel(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    iget-object p2, p0, Lcom/bigkoo/pickerview/view/b;->a:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/bigkoo/pickerview/R$string;->pickerview_day:I

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/contrarywind/view/WheelView;->setLabel(Ljava/lang/String;)V

    :goto_2
    if-eqz p4, :cond_4

    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->e:Lcom/contrarywind/view/WheelView;

    invoke-virtual {p1, p4}, Lcom/contrarywind/view/WheelView;->setLabel(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->e:Lcom/contrarywind/view/WheelView;

    iget-object p2, p0, Lcom/bigkoo/pickerview/view/b;->a:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/bigkoo/pickerview/R$string;->pickerview_hours:I

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/contrarywind/view/WheelView;->setLabel(Ljava/lang/String;)V

    :goto_3
    if-eqz p5, :cond_5

    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->f:Lcom/contrarywind/view/WheelView;

    invoke-virtual {p1, p5}, Lcom/contrarywind/view/WheelView;->setLabel(Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->f:Lcom/contrarywind/view/WheelView;

    iget-object p2, p0, Lcom/bigkoo/pickerview/view/b;->a:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/bigkoo/pickerview/R$string;->pickerview_minutes:I

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/contrarywind/view/WheelView;->setLabel(Ljava/lang/String;)V

    :goto_4
    if-eqz p6, :cond_6

    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->g:Lcom/contrarywind/view/WheelView;

    invoke-virtual {p1, p6}, Lcom/contrarywind/view/WheelView;->setLabel(Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->g:Lcom/contrarywind/view/WheelView;

    iget-object p2, p0, Lcom/bigkoo/pickerview/view/b;->a:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/bigkoo/pickerview/R$string;->pickerview_seconds:I

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/contrarywind/view/WheelView;->setLabel(Ljava/lang/String;)V

    :goto_5
    return-void
.end method
